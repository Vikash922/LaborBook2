package com.rebuilt.app.receiver;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import com.boilerplate.analytics.AnalyticsPlatforms;
import com.rebuilt.app.C3544R;
import com.rebuilt.app.RoutingActivity;
import com.rebuilt.app.base.analytics.Analytics;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p048mp.KoinPlatformTools;

/* JADX INFO: compiled from: AttendanceReminderReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J?\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00142(\b\u0002\u0010\u0015\u001a\"\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0018j\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0017\u0018\u0001`\u0016H\u0002¢\u0006\u0002\u0010\u0019R\u001b\u0010\u0005\u001a\u00020\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u001a"}, m2722d2 = {"Lcom/laborbook/receiver/AttendanceReminderReceiver;", "Landroid/content/BroadcastReceiver;", "Lorg/koin/core/component/KoinComponent;", "<init>", "()V", "analytics", "Lcom/laborbook/base/analytics/Analytics;", "getAnalytics", "()Lcom/laborbook/base/analytics/Analytics;", "analytics$delegate", "Lkotlin/Lazy;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "createNotificationChannel", "triggerImpressionEvent", "eventName", "", "hashMap", "Lkotlin/collections/HashMap;", "", "Ljava/util/HashMap;", "(Ljava/lang/String;Ljava/util/HashMap;)V", "app_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AttendanceReminderReceiver extends BroadcastReceiver implements KoinComponent {

    /* JADX INFO: renamed from: analytics$delegate, reason: from kotlin metadata */
    private final Lazy analytics;

    /* JADX WARN: Multi-variable type inference failed */
    public AttendanceReminderReceiver() {
        final AttendanceReminderReceiver attendanceReminderReceiver = this;
        LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.analytics = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode, (Function0) new Function0<Analytics>() { // from class: com.rebuilt.app.receiver.AttendanceReminderReceiver$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [com.rebuilt.app.base.analytics.Analytics, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final Analytics invoke() {
                Scope rootScope;
                KoinComponent koinComponent = attendanceReminderReceiver;
                Qualifier qualifier2 = qualifier;
                Function0<? extends DefinitionParameters> function0 = objArr;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(Analytics.class), qualifier2, function0);
            }
        });
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    public final Analytics getAnalytics() {
        return (Analytics) this.analytics.getValue();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (ContextCompat.checkSelfPermission(context, "android.permission.POST_NOTIFICATIONS") == 0) {
            createNotificationChannel(context);
            Intent intent2 = new Intent(context, (Class<?>) RoutingActivity.class);
            intent2.setFlags(268468224);
            Notification notificationBuild = new NotificationCompat.Builder(context, "attendance_channel_id").setSmallIcon(C3544R.drawable.ic_notification_small).setContentTitle(context.getString(C3544R.string.attendance_reminder_title)).setContentText(context.getString(C3544R.string.attendance_reminder_content)).setPriority(1).setAutoCancel(true).setContentIntent(PendingIntent.getActivity(context, 0, intent2, 201326592)).build();
            Intrinsics.checkNotNullExpressionValue(notificationBuild, "build(...)");
            try {
                NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(context);
                Intrinsics.checkNotNullExpressionValue(notificationManagerCompatFrom, "from(...)");
                notificationManagerCompatFrom.notify(0, notificationBuild);
                triggerImpressionEvent$default(this, ConstantEventNames.DAILY_REMINDER_TRIGGERED, null, 2, null);
            } catch (SecurityException e) {
                e.printStackTrace();
            }
        }
    }

    private final void createNotificationChannel(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel("attendance_channel_id", "Attendance Reminder Channel", 4);
            notificationChannel.setDescription("Channel for daily attendance reminder notifications");
            Object systemService = context.getSystemService("notification");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
            ((NotificationManager) systemService).createNotificationChannel(notificationChannel);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void triggerImpressionEvent$default(AttendanceReminderReceiver attendanceReminderReceiver, String str, HashMap map, int i, Object obj) {
        if ((i & 2) != 0) {
            map = null;
        }
        attendanceReminderReceiver.triggerImpressionEvent(str, map);
    }

    private final void triggerImpressionEvent(String eventName, HashMap<String, Object> hashMap) {
        getAnalytics().logEvent(eventName, Analytics.SYSTEM, CollectionsKt.listOf((Object[]) new String[]{AnalyticsPlatforms.MIXPANEL, AnalyticsPlatforms.FIREBASE}), hashMap);
    }
}
