package com.rebuilt.app.service;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentCallbacks;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.rebuilt.app.C3544R;
import com.rebuilt.app.RoutingActivity;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.mixpanel.android.mpmetrics.MPDbAdapter;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: MyFirebaseMessagingService.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00152\u00020\u00012\u00020\u0002:\u0001\u0015B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001c\u0010\u000f\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002J\u0010\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0011H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0016"}, m2722d2 = {"Lcom/laborbook/service/MyFirebaseMessagingService;", "Lcom/google/firebase/messaging/FirebaseMessagingService;", "Lorg/koin/core/component/KoinComponent;", "<init>", "()V", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStoreManager", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStoreManager$delegate", "Lkotlin/Lazy;", "onMessageReceived", "", "remoteMessage", "Lcom/google/firebase/messaging/RemoteMessage;", "showNotification", "title", "", "message", "onNewToken", MPDbAdapter.KEY_TOKEN, "Companion", "app_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class MyFirebaseMessagingService extends FirebaseMessagingService implements KoinComponent {
    private static final String TAG = "MyFirebaseMsgService";

    /* JADX INFO: renamed from: dataStoreManager$delegate, reason: from kotlin metadata */
    private final Lazy dataStoreManager;

    /* JADX WARN: Multi-variable type inference failed */
    public MyFirebaseMessagingService() {
        final MyFirebaseMessagingService myFirebaseMessagingService = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.dataStoreManager = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<DataStoreManager>() { // from class: com.rebuilt.app.service.MyFirebaseMessagingService$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                ComponentCallbacks componentCallbacks = myFirebaseMessagingService;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), qualifier, objArr);
            }
        });
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStoreManager getDataStoreManager() {
        return (DataStoreManager) this.dataStoreManager.getValue();
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        Intrinsics.checkNotNullParameter(remoteMessage, "remoteMessage");
        super.onMessageReceived(remoteMessage);
        RemoteMessage.Notification notification = remoteMessage.getNotification();
        if (notification != null) {
            showNotification(notification.getTitle(), notification.getBody());
        }
    }

    private final void showNotification(String title, String message) {
        MyFirebaseMessagingService myFirebaseMessagingService = this;
        Intent intent = new Intent(myFirebaseMessagingService, (Class<?>) RoutingActivity.class);
        intent.setFlags(603979776);
        PendingIntent activity = PendingIntent.getActivity(myFirebaseMessagingService, 0, intent, 201326592);
        Intrinsics.checkNotNullExpressionValue(activity, "getActivity(...)");
        NotificationCompat.Builder priority = new NotificationCompat.Builder(myFirebaseMessagingService, "communication_channel").setSmallIcon(C3544R.drawable.ic_notification_small).setContentTitle(title).setContentText(message).setAutoCancel(true).setContentIntent(activity).setPriority(1);
        Intrinsics.checkNotNullExpressionValue(priority, "setPriority(...)");
        Object systemService = getSystemService("notification");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(new NotificationChannel("communication_channel", "Communication Channel", 3));
        }
        notificationManager.notify(0, priority.build());
    }

    /* JADX INFO: renamed from: com.rebuilt.app.service.MyFirebaseMessagingService$onNewToken$1 */
    /* JADX INFO: compiled from: MyFirebaseMessagingService.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.service.MyFirebaseMessagingService$onNewToken$1", m2735f = "MyFirebaseMessagingService.kt", m2736i = {}, m2737l = {78}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38631 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $token;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38631(String str, Continuation<? super C38631> continuation) {
            super(2, continuation);
            this.$token = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MyFirebaseMessagingService.this.new C38631(this.$token, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38631) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (MyFirebaseMessagingService.this.getDataStoreManager().write(DataStoreManager.INSTANCE.getFCM_TOKEN(), this.$token, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
            } catch (Exception unused) {
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        super.onNewToken(token);
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new C38631(token, null), 3, null);
    }
}
