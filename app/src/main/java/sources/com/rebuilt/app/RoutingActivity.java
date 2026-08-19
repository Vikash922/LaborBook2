package com.rebuilt.app;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.splashscreen.SplashScreen;
import androidx.lifecycle.LifecycleOwnerKt;
import com.boilerplate.analytics.AnalyticsPlatforms;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.ktx.Firebase;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.remoteconfig.ConfigUpdate;
import com.google.firebase.remoteconfig.ConfigUpdateListener;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigSettings;
import com.google.firebase.remoteconfig.ktx.RemoteConfigKt;
import com.itextpdf.kernel.xmp.XMPError;
import com.rebuilt.app.RoutingActivity;
import com.rebuilt.app.base.Logger;
import com.rebuilt.app.base.analytics.Analytics;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.base.languagemanager.LanguageManager;
import com.rebuilt.app.base.navigator.ActivitiesNameEnum;
import com.rebuilt.app.base.navigator.ModuleNavigator;
import com.rebuilt.app.reminder.AlarmScheduler;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.qualifier.Qualifier;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: RoutingActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u000e\u0010\u001f\u001a\u00020\u001cH\u0082@¢\u0006\u0002\u0010 J\u000e\u0010!\u001a\u00020\u001cH\u0082@¢\u0006\u0002\u0010 J\b\u0010\"\u001a\u00020\u001cH\u0002J\u0018\u0010#\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0002J\b\u0010'\u001a\u00020\u001cH\u0002J\u000e\u0010(\u001a\u00020\u001cH\u0082@¢\u0006\u0002\u0010 J\u000e\u0010)\u001a\u00020\u001cH\u0082@¢\u0006\u0002\u0010 J\b\u0010*\u001a\u00020\u001cH\u0002J\u000e\u0010+\u001a\u00020\u001cH\u0082@¢\u0006\u0002\u0010 J\u000e\u0010,\u001a\u00020%H\u0082@¢\u0006\u0002\u0010 J\u000e\u0010-\u001a\u00020\u001cH\u0082@¢\u0006\u0002\u0010 J\u000e\u0010.\u001a\u00020\u001cH\u0082@¢\u0006\u0002\u0010 J\b\u0010/\u001a\u00020\u001cH\u0002J\b\u00100\u001a\u00020\u001cH\u0002J\b\u00101\u001a\u00020\u001cH\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\f\u0010\rR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\t\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\t\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.¢\u0006\u0002\n\u0000¨\u00062"}, m2722d2 = {"Lcom/laborbook/RoutingActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "moduleNavigator", "Lcom/laborbook/base/navigator/ModuleNavigator;", "getModuleNavigator", "()Lcom/laborbook/base/navigator/ModuleNavigator;", "moduleNavigator$delegate", "Lkotlin/Lazy;", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStoreManager", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStoreManager$delegate", "languageManager", "Lcom/laborbook/base/languagemanager/LanguageManager;", "getLanguageManager", "()Lcom/laborbook/base/languagemanager/LanguageManager;", "languageManager$delegate", "analytics", "Lcom/laborbook/base/analytics/Analytics;", "getAnalytics", "()Lcom/laborbook/base/analytics/Analytics;", "analytics$delegate", "remoteConfig", "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "handleAppLaunch", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markExistingUserIfAlreadyLoggedIn", "initRemoteConfig", "updateGoogleAdsConfig", "googleAdsEnabled", "", "homePageAdsEnabled", "setupAlarms", "updateAppOpenCount", "ensureLocalOfferEndTimestamp", "fetchFCMToken", "loadUserLanguage", "isUserLoggedIn", "initializeNetworkHeaders", "initializeAnalytics", "navigateToHomeScreen", "navigateToLoginScreen", "recordAppOpenEvent", "app_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class RoutingActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: analytics$delegate, reason: from kotlin metadata */
    private final Lazy analytics;

    /* JADX INFO: renamed from: dataStoreManager$delegate, reason: from kotlin metadata */
    private final Lazy dataStoreManager;

    /* JADX INFO: renamed from: languageManager$delegate, reason: from kotlin metadata */
    private final Lazy languageManager;

    /* JADX INFO: renamed from: moduleNavigator$delegate, reason: from kotlin metadata */
    private final Lazy moduleNavigator;
    private FirebaseRemoteConfig remoteConfig;

    /* JADX INFO: renamed from: com.rebuilt.app.RoutingActivity$ensureLocalOfferEndTimestamp$1 */
    /* JADX INFO: compiled from: RoutingActivity.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.RoutingActivity", m2735f = "RoutingActivity.kt", m2736i = {0}, m2737l = {Opcodes.GOTO, Opcodes.LOOKUPSWITCH}, m2738m = "ensureLocalOfferEndTimestamp", m2739n = {"this"}, m2740s = {"L$0"})
    static final class C35451 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C35451(Continuation<? super C35451> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RoutingActivity.this.ensureLocalOfferEndTimestamp(this);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.RoutingActivity$handleAppLaunch$1 */
    /* JADX INFO: compiled from: RoutingActivity.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.RoutingActivity", m2735f = "RoutingActivity.kt", m2736i = {0, 1, 2, 3, 4, 5, 6, 7}, m2737l = {65, 66, 67, 69, 70, 71, 72, 73}, m2738m = "handleAppLaunch", m2739n = {"this", "this", "this", "this", "this", "this", "this", "this"}, m2740s = {"L$0", "L$0", "L$0", "L$0", "L$0", "L$0", "L$0", "L$0"})
    static final class C35461 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C35461(Continuation<? super C35461> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RoutingActivity.this.handleAppLaunch(this);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.RoutingActivity$initializeAnalytics$1 */
    /* JADX INFO: compiled from: RoutingActivity.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.RoutingActivity", m2735f = "RoutingActivity.kt", m2736i = {0, 1, 1, 1, 2, 2, 2, 3, 3}, m2737l = {209, 214, 215, 216}, m2738m = "initializeAnalytics", m2739n = {"this", "this", "userId", "identify", "this", "userId", "identify", "userId", "identify"}, m2740s = {"L$0", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1"})
    static final class C35481 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C35481(Continuation<? super C35481> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RoutingActivity.this.initializeAnalytics(this);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.RoutingActivity$initializeNetworkHeaders$1 */
    /* JADX INFO: compiled from: RoutingActivity.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.RoutingActivity", m2735f = "RoutingActivity.kt", m2736i = {0, 1, 2}, m2737l = {Opcodes.IFNULL, Opcodes.IFNONNULL, 200, XMPError.BADXML}, m2738m = "initializeNetworkHeaders", m2739n = {"this", "this", "this"}, m2740s = {"L$0", "L$0", "L$0"})
    static final class C35491 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C35491(Continuation<? super C35491> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RoutingActivity.this.initializeNetworkHeaders(this);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.RoutingActivity$markExistingUserIfAlreadyLoggedIn$1 */
    /* JADX INFO: compiled from: RoutingActivity.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.RoutingActivity", m2735f = "RoutingActivity.kt", m2736i = {0, 1}, m2737l = {94, 96, 98}, m2738m = "markExistingUserIfAlreadyLoggedIn", m2739n = {"this", "this"}, m2740s = {"L$0", "L$0"})
    static final class C35501 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C35501(Continuation<? super C35501> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RoutingActivity.this.markExistingUserIfAlreadyLoggedIn(this);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.RoutingActivity$updateAppOpenCount$1 */
    /* JADX INFO: compiled from: RoutingActivity.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.RoutingActivity", m2735f = "RoutingActivity.kt", m2736i = {0}, m2737l = {157, 158}, m2738m = "updateAppOpenCount", m2739n = {"this"}, m2740s = {"L$0"})
    static final class C35521 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C35521(Continuation<? super C35521> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RoutingActivity.this.updateAppOpenCount(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RoutingActivity() {
        final RoutingActivity routingActivity = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.moduleNavigator = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<ModuleNavigator>() { // from class: com.rebuilt.app.RoutingActivity$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.navigator.ModuleNavigator, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ModuleNavigator invoke() {
                ComponentCallbacks componentCallbacks = routingActivity;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(ModuleNavigator.class), qualifier, objArr);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.dataStoreManager = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<DataStoreManager>() { // from class: com.rebuilt.app.RoutingActivity$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                ComponentCallbacks componentCallbacks = routingActivity;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), objArr2, objArr3);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode3 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr4 = 0 == true ? 1 : 0;
        final Object[] objArr5 = 0 == true ? 1 : 0;
        this.languageManager = LazyKt.lazy(lazyThreadSafetyMode3, (Function0) new Function0<LanguageManager>() { // from class: com.rebuilt.app.RoutingActivity$special$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.languagemanager.LanguageManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final LanguageManager invoke() {
                ComponentCallbacks componentCallbacks = routingActivity;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(LanguageManager.class), objArr4, objArr5);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode4 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr6 = 0 == true ? 1 : 0;
        final Object[] objArr7 = 0 == true ? 1 : 0;
        this.analytics = LazyKt.lazy(lazyThreadSafetyMode4, (Function0) new Function0<Analytics>() { // from class: com.rebuilt.app.RoutingActivity$special$$inlined$inject$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.analytics.Analytics, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final Analytics invoke() {
                ComponentCallbacks componentCallbacks = routingActivity;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(Analytics.class), objArr6, objArr7);
            }
        });
    }

    private final ModuleNavigator getModuleNavigator() {
        return (ModuleNavigator) this.moduleNavigator.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStoreManager getDataStoreManager() {
        return (DataStoreManager) this.dataStoreManager.getValue();
    }

    private final LanguageManager getLanguageManager() {
        return (LanguageManager) this.languageManager.getValue();
    }

    private final Analytics getAnalytics() {
        return (Analytics) this.analytics.getValue();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        SplashScreen.INSTANCE.installSplashScreen(this);
        super.onCreate(savedInstanceState);
        startActivity(new android.content.Intent(this, com.rebuilt.app.auth.firebase.FirebaseAuthActivity.class));
        finish();
    }

    /* JADX INFO: renamed from: com.rebuilt.app.RoutingActivity$onCreate$1 */
    /* JADX INFO: compiled from: RoutingActivity.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.RoutingActivity$onCreate$1", m2735f = "RoutingActivity.kt", m2736i = {}, m2737l = {59}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35511 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C35511(Continuation<? super C35511> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return RoutingActivity.this.new C35511(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35511) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (RoutingActivity.this.handleAppLaunch(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0099 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object handleAppLaunch(kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            Method dump skipped, instruction units count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.RoutingActivity.handleAppLaunch(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object markExistingUserIfAlreadyLoggedIn(kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.rebuilt.app.RoutingActivity.C35501
            if (r0 == 0) goto L14
            r0 = r9
            com.rebuilt.app.RoutingActivity$markExistingUserIfAlreadyLoggedIn$1 r0 = (com.rebuilt.app.RoutingActivity.C35501) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.rebuilt.app.RoutingActivity$markExistingUserIfAlreadyLoggedIn$1 r0 = new com.rebuilt.app.RoutingActivity$markExistingUserIfAlreadyLoggedIn$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L4a
            if (r2 == r6) goto L42
            if (r2 == r5) goto L3a
            if (r2 != r4) goto L32
            kotlin.ResultKt.throwOnFailure(r9)
            goto Lb5
        L32:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3a:
            java.lang.Object r2 = r0.L$0
            com.rebuilt.app.RoutingActivity r2 = (com.rebuilt.app.RoutingActivity) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L93
        L42:
            java.lang.Object r2 = r0.L$0
            com.rebuilt.app.RoutingActivity r2 = (com.rebuilt.app.RoutingActivity) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6b
        L4a:
            kotlin.ResultKt.throwOnFailure(r9)
            com.rebuilt.app.base.datastore.DataStoreManager r9 = r8.getDataStoreManager()
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r2 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r2 = r2.getIS_EXISTING_USER()
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            kotlinx.coroutines.flow.Flow r9 = r9.read(r2, r7)
            r0.L$0 = r8
            r0.label = r6
            java.lang.Object r9 = kotlinx.coroutines.flow.FlowKt.first(r9, r0)
            if (r9 != r1) goto L6a
            return r1
        L6a:
            r2 = r8
        L6b:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L76
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L76:
            com.rebuilt.app.base.datastore.DataStoreManager r9 = r2.getDataStoreManager()
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r7 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r7 = r7.getIS_LOGGED_IN()
            java.lang.Boolean r3 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            kotlinx.coroutines.flow.Flow r9 = r9.read(r7, r3)
            r0.L$0 = r2
            r0.label = r5
            java.lang.Object r9 = kotlinx.coroutines.flow.FlowKt.first(r9, r0)
            if (r9 != r1) goto L93
            return r1
        L93:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto Lb8
            com.rebuilt.app.base.datastore.DataStoreManager r9 = r2.getDataStoreManager()
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r2 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r2 = r2.getIS_EXISTING_USER()
            java.lang.Boolean r3 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r6)
            r5 = 0
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r9 = r9.write(r2, r3, r0)
            if (r9 != r1) goto Lb5
            return r1
        Lb5:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        Lb8:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.RoutingActivity.markExistingUserIfAlreadyLoggedIn(kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void initRemoteConfig() {
        this.remoteConfig = RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE);
        FirebaseRemoteConfigSettings firebaseRemoteConfigSettingsRemoteConfigSettings = RemoteConfigKt.remoteConfigSettings(new Function1() { // from class: com.rebuilt.app.RoutingActivity$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoutingActivity.initRemoteConfig$lambda$0((FirebaseRemoteConfigSettings.Builder) obj);
            }
        });
        FirebaseRemoteConfig firebaseRemoteConfig = this.remoteConfig;
        FirebaseRemoteConfig firebaseRemoteConfig2 = null;
        if (firebaseRemoteConfig == null) {
            Intrinsics.throwUninitializedPropertyAccessException("remoteConfig");
            firebaseRemoteConfig = null;
        }
        firebaseRemoteConfig.setDefaultsAsync(C3544R.xml.remote_config_defaults);
        FirebaseRemoteConfig firebaseRemoteConfig3 = this.remoteConfig;
        if (firebaseRemoteConfig3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("remoteConfig");
            firebaseRemoteConfig3 = null;
        }
        firebaseRemoteConfig3.setConfigSettingsAsync(firebaseRemoteConfigSettingsRemoteConfigSettings);
        FirebaseRemoteConfig firebaseRemoteConfig4 = this.remoteConfig;
        if (firebaseRemoteConfig4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("remoteConfig");
            firebaseRemoteConfig4 = null;
        }
        firebaseRemoteConfig4.fetchAndActivate().addOnCompleteListener(this, new OnCompleteListener() { // from class: com.rebuilt.app.RoutingActivity$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                RoutingActivity.initRemoteConfig$lambda$1(this.f$0, task);
            }
        });
        FirebaseRemoteConfig firebaseRemoteConfig5 = this.remoteConfig;
        if (firebaseRemoteConfig5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("remoteConfig");
        } else {
            firebaseRemoteConfig2 = firebaseRemoteConfig5;
        }
        firebaseRemoteConfig2.addOnConfigUpdateListener(new C35472());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initRemoteConfig$lambda$0(FirebaseRemoteConfigSettings.Builder remoteConfigSettings) {
        Intrinsics.checkNotNullParameter(remoteConfigSettings, "$this$remoteConfigSettings");
        remoteConfigSettings.setMinimumFetchIntervalInSeconds(43200L);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initRemoteConfig$lambda$1(RoutingActivity this$0, Task task) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(task, "task");
        if (task.isSuccessful()) {
            FirebaseRemoteConfig firebaseRemoteConfig = this$0.remoteConfig;
            FirebaseRemoteConfig firebaseRemoteConfig2 = null;
            if (firebaseRemoteConfig == null) {
                Intrinsics.throwUninitializedPropertyAccessException("remoteConfig");
                firebaseRemoteConfig = null;
            }
            boolean z = firebaseRemoteConfig.getBoolean("google_ads_enabled");
            FirebaseRemoteConfig firebaseRemoteConfig3 = this$0.remoteConfig;
            if (firebaseRemoteConfig3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("remoteConfig");
            } else {
                firebaseRemoteConfig2 = firebaseRemoteConfig3;
            }
            this$0.updateGoogleAdsConfig(z, firebaseRemoteConfig2.getBoolean("home_page_ads_enabled"));
            return;
        }
        Logger.INSTANCE.m2676d("Config params updated: failed");
    }

    /* JADX INFO: renamed from: com.rebuilt.app.RoutingActivity$initRemoteConfig$2 */
    /* JADX INFO: compiled from: RoutingActivity.kt */
    @Metadata(m2721d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, m2722d2 = {"com/laborbook/RoutingActivity$initRemoteConfig$2", "Lcom/google/firebase/remoteconfig/ConfigUpdateListener;", "onUpdate", "", "configUpdate", "Lcom/google/firebase/remoteconfig/ConfigUpdate;", "onError", "error", "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;", "app_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class C35472 implements ConfigUpdateListener {
        @Override // com.google.firebase.remoteconfig.ConfigUpdateListener
        public void onError(FirebaseRemoteConfigException error) {
            Intrinsics.checkNotNullParameter(error, "error");
        }

        C35472() {
        }

        @Override // com.google.firebase.remoteconfig.ConfigUpdateListener
        public void onUpdate(ConfigUpdate configUpdate) {
            Intrinsics.checkNotNullParameter(configUpdate, "configUpdate");
            if (configUpdate.getUpdatedKeys().contains("google_ads_enabled") || configUpdate.getUpdatedKeys().contains("home_page_ads_enabled") || configUpdate.getUpdatedKeys().contains("custom_ad_enabled") || configUpdate.getUpdatedKeys().contains("custom_ad_image_url") || configUpdate.getUpdatedKeys().contains("custom_ad_redirect_url") || configUpdate.getUpdatedKeys().contains("custom_ad_title") || configUpdate.getUpdatedKeys().contains("subscriptions_enabled")) {
                FirebaseRemoteConfig firebaseRemoteConfig = RoutingActivity.this.remoteConfig;
                if (firebaseRemoteConfig == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("remoteConfig");
                    firebaseRemoteConfig = null;
                }
                Task<Boolean> taskActivate = firebaseRemoteConfig.activate();
                final RoutingActivity routingActivity = RoutingActivity.this;
                taskActivate.addOnCompleteListener(new OnCompleteListener() { // from class: com.rebuilt.app.RoutingActivity$initRemoteConfig$2$$ExternalSyntheticLambda0
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        RoutingActivity.C35472.onUpdate$lambda$0(routingActivity, task);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onUpdate$lambda$0(RoutingActivity this$0, Task it) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(it, "it");
            FirebaseRemoteConfig firebaseRemoteConfig = this$0.remoteConfig;
            FirebaseRemoteConfig firebaseRemoteConfig2 = null;
            if (firebaseRemoteConfig == null) {
                Intrinsics.throwUninitializedPropertyAccessException("remoteConfig");
                firebaseRemoteConfig = null;
            }
            boolean z = firebaseRemoteConfig.getBoolean("google_ads_enabled");
            FirebaseRemoteConfig firebaseRemoteConfig3 = this$0.remoteConfig;
            if (firebaseRemoteConfig3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("remoteConfig");
            } else {
                firebaseRemoteConfig2 = firebaseRemoteConfig3;
            }
            this$0.updateGoogleAdsConfig(z, firebaseRemoteConfig2.getBoolean("home_page_ads_enabled"));
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.RoutingActivity$updateGoogleAdsConfig$1 */
    /* JADX INFO: compiled from: RoutingActivity.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.RoutingActivity$updateGoogleAdsConfig$1", m2735f = "RoutingActivity.kt", m2736i = {}, m2737l = {Opcodes.I2S, Opcodes.LCMP}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35531 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $googleAdsEnabled;
        final /* synthetic */ boolean $homePageAdsEnabled;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35531(boolean z, boolean z2, Continuation<? super C35531> continuation) {
            super(2, continuation);
            this.$googleAdsEnabled = z;
            this.$homePageAdsEnabled = z2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return RoutingActivity.this.new C35531(this.$googleAdsEnabled, this.$homePageAdsEnabled, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35531) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (RoutingActivity.this.getDataStoreManager().write(DataStoreManager.INSTANCE.getGOOGLE_ADS_ENABLED(), Boxing.boxBoolean(this.$googleAdsEnabled), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
            }
            this.label = 2;
            if (RoutingActivity.this.getDataStoreManager().write(DataStoreManager.INSTANCE.getHOME_PAGE_ADS_ENABLED(), Boxing.boxBoolean(this.$homePageAdsEnabled), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateGoogleAdsConfig(boolean googleAdsEnabled, boolean homePageAdsEnabled) {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), Dispatchers.getIO(), null, new C35531(googleAdsEnabled, homePageAdsEnabled, null), 2, null);
    }

    private final void setupAlarms() {
        AlarmScheduler.INSTANCE.scheduleDailyAttendanceReminder(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateAppOpenCount(kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.rebuilt.app.RoutingActivity.C35521
            if (r0 == 0) goto L14
            r0 = r7
            com.rebuilt.app.RoutingActivity$updateAppOpenCount$1 r0 = (com.rebuilt.app.RoutingActivity.C35521) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            com.rebuilt.app.RoutingActivity$updateAppOpenCount$1 r0 = new com.rebuilt.app.RoutingActivity$updateAppOpenCount$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r7)
            goto L80
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L35:
            java.lang.Object r2 = r0.L$0
            com.rebuilt.app.RoutingActivity r2 = (com.rebuilt.app.RoutingActivity) r2
            kotlin.ResultKt.throwOnFailure(r7)
            goto L5f
        L3d:
            kotlin.ResultKt.throwOnFailure(r7)
            com.rebuilt.app.base.datastore.DataStoreManager r7 = r6.getDataStoreManager()
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r2 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r2 = r2.getAPP_OPEN_COUNT()
            r5 = 0
            java.lang.Integer r5 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r5)
            kotlinx.coroutines.flow.Flow r7 = r7.read(r2, r5)
            r0.L$0 = r6
            r0.label = r4
            java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r7, r0)
            if (r7 != r1) goto L5e
            return r1
        L5e:
            r2 = r6
        L5f:
            java.lang.Number r7 = (java.lang.Number) r7
            int r7 = r7.intValue()
            com.rebuilt.app.base.datastore.DataStoreManager r2 = r2.getDataStoreManager()
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r5 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r5 = r5.getAPP_OPEN_COUNT()
            int r7 = r7 + r4
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)
            r4 = 0
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r7 = r2.write(r5, r7, r0)
            if (r7 != r1) goto L80
            return r1
        L80:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.RoutingActivity.updateAppOpenCount(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object ensureLocalOfferEndTimestamp(kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.rebuilt.app.RoutingActivity.C35451
            if (r0 == 0) goto L14
            r0 = r9
            com.rebuilt.app.RoutingActivity$ensureLocalOfferEndTimestamp$1 r0 = (com.rebuilt.app.RoutingActivity.C35451) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.rebuilt.app.RoutingActivity$ensureLocalOfferEndTimestamp$1 r0 = new com.rebuilt.app.RoutingActivity$ensureLocalOfferEndTimestamp$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L3f
            if (r2 == r6) goto L37
            if (r2 != r5) goto L2f
            kotlin.ResultKt.throwOnFailure(r9)
            goto L8c
        L2f:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L37:
            java.lang.Object r2 = r0.L$0
            com.rebuilt.app.RoutingActivity r2 = (com.rebuilt.app.RoutingActivity) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L60
        L3f:
            kotlin.ResultKt.throwOnFailure(r9)
            com.rebuilt.app.base.datastore.DataStoreManager r9 = r8.getDataStoreManager()
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r2 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r2 = r2.getPREMIUM_OFFER_LOCAL_END_EPOCH_MS()
            java.lang.Long r7 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r3)
            kotlinx.coroutines.flow.Flow r9 = r9.read(r2, r7)
            r0.L$0 = r8
            r0.label = r6
            java.lang.Object r9 = kotlinx.coroutines.flow.FlowKt.first(r9, r0)
            if (r9 != r1) goto L5f
            return r1
        L5f:
            r2 = r8
        L60:
            java.lang.Number r9 = (java.lang.Number) r9
            long r6 = r9.longValue()
            int r9 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r9 > 0) goto L8f
            long r3 = java.lang.System.currentTimeMillis()
            com.rebuilt.app.base.datastore.DataStoreManager r9 = r2.getDataStoreManager()
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r2 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r2 = r2.getPREMIUM_OFFER_LOCAL_END_EPOCH_MS()
            r6 = 172800000(0xa4cb800, double:8.53745436E-316)
            long r3 = r3 + r6
            java.lang.Long r3 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r3)
            r4 = 0
            r0.L$0 = r4
            r0.label = r5
            java.lang.Object r9 = r9.write(r2, r3, r0)
            if (r9 != r1) goto L8c
            return r1
        L8c:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L8f:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.RoutingActivity.ensureLocalOfferEndTimestamp(kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void fetchFCMToken() {
        FirebaseMessaging.getInstance().getToken().addOnCompleteListener(new OnCompleteListener() { // from class: com.rebuilt.app.RoutingActivity$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                RoutingActivity.fetchFCMToken$lambda$2(this.f$0, task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchFCMToken$lambda$2(RoutingActivity this$0, Task task) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(task, "task");
        if (task.isSuccessful()) {
            String str = (String) task.getResult();
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new RoutingActivity$fetchFCMToken$1$1(this$0, str, null), 3, null);
            Logger logger = Logger.INSTANCE;
            Intrinsics.checkNotNull(str);
            logger.m2678i(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object loadUserLanguage(Continuation<? super Unit> continuation) {
        Object objLoadLocale = getLanguageManager().loadLocale(this, continuation);
        return objLoadLocale == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objLoadLocale : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object isUserLoggedIn(Continuation<? super Boolean> continuation) {
        return FlowKt.first(getDataStoreManager().read(DataStoreManager.INSTANCE.getIS_LOGGED_IN(), Boxing.boxBoolean(false)), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x012b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0157 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object initializeNetworkHeaders(kotlin.coroutines.Continuation<? super kotlin.Unit> r14) {
        /*
            Method dump skipped, instruction units count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.RoutingActivity.initializeNetworkHeaders(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0107 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0131 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object initializeAnalytics(kotlin.coroutines.Continuation<? super kotlin.Unit> r15) {
        /*
            Method dump skipped, instruction units count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.RoutingActivity.initializeAnalytics(kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void navigateToHomeScreen() {
        getModuleNavigator().startActivity(this, ActivitiesNameEnum.BookKeepActivityEnum);
        finish();
    }

    private final void navigateToLoginScreen() {
        getModuleNavigator().startActivity(this, ActivitiesNameEnum.LoginActivityEnum);
        finish();
    }

    private final void recordAppOpenEvent() {
        Analytics.logEvent$default(getAnalytics(), "app_open", "impression", CollectionsKt.listOf((Object[]) new String[]{AnalyticsPlatforms.MIXPANEL, AnalyticsPlatforms.FIREBASE}), null, 8, null);
    }
}
