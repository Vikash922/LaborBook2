package com.laborbook;

import android.app.Application;
import android.content.ComponentCallbacks;
import android.provider.Settings;
import com.amplitude.android.Amplitude;
import com.amplitude.android.Configuration;
import com.boilerplate.analytics.AnalyticsManager;
import com.boilerplate.analytics.AnalyticsPlatforms;
import com.boilerplate.network.NetworkHandler;
import com.boilerplate.network.utils.NetworkHandlerException;
import com.boilerplate.uikit.ThemeUtils;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.AppEventsLogger;
import com.google.android.gms.ads.MobileAds;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.inmobi.sdk.InMobiSdk;
import com.inmobi.sdk.SdkInitializationListener;
import com.laborbook.auth.p019di.AuthModuleKt;
import com.laborbook.base.BaseConstants;
import com.laborbook.base.Logger;
import com.laborbook.base.analytics.AmplitudeHolder;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.expense.p021di.TransactionModuleKt;
import com.laborbook.income.p022di.IncomeModuleKt;
import com.laborbook.keep.p023di.KeepModuleKt;
import com.laborbook.p020di.AppModuleKt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
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
import org.json.JSONException;
import org.json.JSONObject;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.android.ext.koin.KoinExtKt;
import org.koin.core.KoinApplication;
import org.koin.core.context.DefaultContextExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: MainApp.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0012\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0010H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\f\u0010\r¨\u0006\u0014"}, m2722d2 = {"Lcom/laborbook/MainApp;", "Landroid/app/Application;", "<init>", "()V", "analyticsManager", "Lcom/boilerplate/analytics/AnalyticsManager;", "getAnalyticsManager", "()Lcom/boilerplate/analytics/AnalyticsManager;", "analyticsManager$delegate", "Lkotlin/Lazy;", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStoreManager", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStoreManager$delegate", "onCreate", "", "setInstallSourceOnce", "initialiseFacebookSdk", "initialiseInMobiAds", "app_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class MainApp extends Application {

    /* JADX INFO: renamed from: analyticsManager$delegate, reason: from kotlin metadata */
    private final Lazy analyticsManager;

    /* JADX INFO: renamed from: dataStoreManager$delegate, reason: from kotlin metadata */
    private final Lazy dataStoreManager;

    /* JADX WARN: Multi-variable type inference failed */
    public MainApp() {
        final MainApp mainApp = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.analyticsManager = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<AnalyticsManager>() { // from class: com.laborbook.MainApp$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.boilerplate.analytics.AnalyticsManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final AnalyticsManager invoke() {
                ComponentCallbacks componentCallbacks = mainApp;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(AnalyticsManager.class), qualifier, objArr);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.dataStoreManager = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<DataStoreManager>() { // from class: com.laborbook.MainApp$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                ComponentCallbacks componentCallbacks = mainApp;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), objArr2, objArr3);
            }
        });
    }

    private final AnalyticsManager getAnalyticsManager() {
        return (AnalyticsManager) this.analyticsManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStoreManager getDataStoreManager() {
        return (DataStoreManager) this.dataStoreManager.getValue();
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        ThemeUtils.INSTANCE.applyTheme();
        DefaultContextExtKt.startKoin((Function1<? super KoinApplication, Unit>) new Function1() { // from class: com.laborbook.MainApp$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MainApp.onCreate$lambda$0(this.f$0, (KoinApplication) obj);
            }
        });
        MainApp mainApp = this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$0(MainApp this$0, KoinApplication startKoin) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(startKoin, "$this$startKoin");
        KoinExtKt.androidContext(startKoin, this$0);
        startKoin.modules(AppModuleKt.getAppModule());
        startKoin.modules(AuthModuleKt.getAuthModule());
        startKoin.modules(KeepModuleKt.getKeepModule());
        startKoin.modules(TransactionModuleKt.getExpenseModule());
        startKoin.modules(IncomeModuleKt.getIncomeModule());
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.laborbook.MainApp$onCreate$2 */
    /* JADX INFO: compiled from: MainApp.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.MainApp$onCreate$2", m2735f = "MainApp.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35422 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C35422(Continuation<? super C35422> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MainApp.this.new C35422(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35422) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws NetworkHandlerException {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            NetworkHandler companion = NetworkHandler.INSTANCE.getInstance();
            String string = Settings.Secure.getString(MainApp.this.getContentResolver(), "android_id");
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            companion.initialize("", string, BaseConstants.APP_VERSION);
            companion.enableDebugMode(false);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.laborbook.MainApp$setInstallSourceOnce$1 */
    /* JADX INFO: compiled from: MainApp.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.MainApp$setInstallSourceOnce$1", m2735f = "MainApp.kt", m2736i = {2}, m2737l = {101, 103, 104, 105}, m2738m = "invokeSuspend", m2739n = {"result"}, m2740s = {"L$0"})
    static final class C35431 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        C35431(Continuation<? super C35431> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MainApp.this.new C35431(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35431) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x0094 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x009b A[Catch: Exception -> 0x0031, TRY_LEAVE, TryCatch #0 {Exception -> 0x0031, blocks: (B:8:0x0014, B:13:0x0025, B:33:0x0095, B:35:0x009b, B:14:0x0029, B:30:0x0074, B:15:0x002d, B:23:0x0055, B:25:0x005f, B:27:0x0062, B:20:0x0037), top: B:41:0x000a }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                Method dump skipped, instruction units count: 206
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.laborbook.MainApp.C35431.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final void setInstallSourceOnce() {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new C35431(null), 3, null);
    }

    private final void initialiseFacebookSdk() {
        try {
            FacebookSdk.sdkInitialize(this);
            FacebookSdk.setAutoInitEnabled(true);
            FacebookSdk.setAutoLogAppEventsEnabled(true);
            FacebookSdk.setAdvertiserIDCollectionEnabled(true);
            FacebookSdk.fullyInitialize();
            AppEventsLogger.INSTANCE.activateApp(this);
            Logger.INSTANCE.m2676d("Facebook SDK initialized successfully");
        } catch (Exception e) {
            Logger.INSTANCE.m2677e("Facebook SDK initialization failed: " + e.getMessage());
        }
    }

    private final void initialiseInMobiAds() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(InMobiSdk.IM_GDPR_CONSENT_AVAILABLE, true);
            jSONObject.put(InMobiSdk.IM_GDPR_CONSENT_GDPR_APPLIES, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        InMobiSdk.init(this, BaseConstants.IN_MOBI_ACCOUNT_ID, jSONObject, new SdkInitializationListener() { // from class: com.laborbook.MainApp.initialiseInMobiAds.1
            @Override // com.inmobi.sdk.SdkInitializationListener
            public void onInitializationComplete(Error error) {
                if (error != null) {
                    Logger.INSTANCE.m2677e("InMobi Init failed -" + error.getMessage());
                } else {
                    Logger.INSTANCE.m2676d("InMobi Init Successful");
                }
            }
        });
    }
}
