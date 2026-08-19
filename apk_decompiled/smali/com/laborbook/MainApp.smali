.class public final Lcom/laborbook/MainApp;
.super Landroid/app/Application;
.source "MainApp.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainApp.kt\ncom/laborbook/MainApp\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n1#1,152:1\n50#2,5:153\n50#2,5:158\n*S KotlinDebug\n*F\n+ 1 MainApp.kt\ncom/laborbook/MainApp\n*L\n41#1:153,5\n42#1:158,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0012\u001a\u00020\u0010H\u0002J\u0008\u0010\u0013\u001a\u00020\u0010H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/laborbook/MainApp;",
        "Landroid/app/Application;",
        "<init>",
        "()V",
        "analyticsManager",
        "Lcom/boilerplate/analytics/AnalyticsManager;",
        "getAnalyticsManager",
        "()Lcom/boilerplate/analytics/AnalyticsManager;",
        "analyticsManager$delegate",
        "Lkotlin/Lazy;",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "getDataStoreManager",
        "()Lcom/laborbook/base/datastore/DataStoreManager;",
        "dataStoreManager$delegate",
        "onCreate",
        "",
        "setInstallSourceOnce",
        "initialiseFacebookSdk",
        "initialiseInMobiAds",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final analyticsManager$delegate:Lkotlin/Lazy;

.field private final dataStoreManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$VgOhIRFn96D3Jo-6qr5s7Nd6fgs(Lcom/laborbook/MainApp;Lorg/koin/core/KoinApplication;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/MainApp;->onCreate$lambda$0(Lcom/laborbook/MainApp;Lorg/koin/core/KoinApplication;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 4

    .line 39
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 41
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 155
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 157
    new-instance v2, Lcom/laborbook/MainApp$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/MainApp$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 41
    iput-object v1, p0, Lcom/laborbook/MainApp;->analyticsManager$delegate:Lkotlin/Lazy;

    .line 160
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 162
    new-instance v2, Lcom/laborbook/MainApp$special$$inlined$inject$default$2;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/MainApp$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/laborbook/MainApp;->dataStoreManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDataStoreManager(Lcom/laborbook/MainApp;)Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/laborbook/MainApp;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p0

    return-object p0
.end method

.method private final getAnalyticsManager()Lcom/boilerplate/analytics/AnalyticsManager;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/laborbook/MainApp;->analyticsManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boilerplate/analytics/AnalyticsManager;

    return-object v0
.end method

.method private final getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/laborbook/MainApp;->dataStoreManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/datastore/DataStoreManager;

    return-object v0
.end method

.method private final initialiseFacebookSdk()V
    .locals 4

    .line 115
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 116
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setAutoInitEnabled(Z)V

    .line 117
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setAutoLogAppEventsEnabled(Z)V

    .line 118
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setAdvertiserIDCollectionEnabled(Z)V

    .line 119
    invoke-static {}, Lcom/facebook/FacebookSdk;->fullyInitialize()V

    .line 122
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    move-object v1, p0

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->activateApp(Landroid/app/Application;)V

    .line 124
    sget-object v0, Lcom/laborbook/base/Logger;->INSTANCE:Lcom/laborbook/base/Logger;

    const-string v1, "Facebook SDK initialized successfully"

    invoke-virtual {v0, v1}, Lcom/laborbook/base/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    sget-object v1, Lcom/laborbook/base/Logger;->INSTANCE:Lcom/laborbook/base/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Facebook SDK initialization failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/laborbook/base/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final initialiseInMobiAds()V
    .locals 4

    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 134
    :try_start_0
    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->IM_GDPR_CONSENT_AVAILABLE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 136
    const-string v1, "gdpr"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 138
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 141
    :goto_0
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 142
    new-instance v2, Lcom/laborbook/MainApp$initialiseInMobiAds$1;

    invoke-direct {v2}, Lcom/laborbook/MainApp$initialiseInMobiAds$1;-><init>()V

    check-cast v2, Lcom/inmobi/sdk/SdkInitializationListener;

    .line 140
    const-string v3, "c5554ec7671548e49b8fb4a624c315b9"

    invoke-static {v1, v3, v0, v2}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/inmobi/sdk/SdkInitializationListener;)V

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/laborbook/MainApp;Lorg/koin/core/KoinApplication;)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$startKoin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    check-cast p0, Landroid/content/Context;

    invoke-static {p1, p0}, Lorg/koin/android/ext/koin/KoinExtKt;->androidContext(Lorg/koin/core/KoinApplication;Landroid/content/Context;)Lorg/koin/core/KoinApplication;

    .line 49
    invoke-static {}, Lcom/laborbook/di/AppModuleKt;->getAppModule()Lorg/koin/core/module/Module;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/koin/core/KoinApplication;->modules(Lorg/koin/core/module/Module;)Lorg/koin/core/KoinApplication;

    .line 50
    invoke-static {}, Lcom/laborbook/auth/di/AuthModuleKt;->getAuthModule()Lorg/koin/core/module/Module;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/koin/core/KoinApplication;->modules(Lorg/koin/core/module/Module;)Lorg/koin/core/KoinApplication;

    .line 51
    invoke-static {}, Lcom/laborbook/keep/di/KeepModuleKt;->getKeepModule()Lorg/koin/core/module/Module;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/koin/core/KoinApplication;->modules(Lorg/koin/core/module/Module;)Lorg/koin/core/KoinApplication;

    .line 52
    invoke-static {}, Lcom/laborbook/expense/di/TransactionModuleKt;->getExpenseModule()Lorg/koin/core/module/Module;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/koin/core/KoinApplication;->modules(Lorg/koin/core/module/Module;)Lorg/koin/core/KoinApplication;

    .line 53
    invoke-static {}, Lcom/laborbook/income/di/IncomeModuleKt;->getIncomeModule()Lorg/koin/core/module/Module;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/koin/core/KoinApplication;->modules(Lorg/koin/core/module/Module;)Lorg/koin/core/KoinApplication;

    .line 54
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setInstallSourceOnce()V
    .locals 7

    .line 99
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/laborbook/MainApp$setInstallSourceOnce$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/MainApp$setInstallSourceOnce$1;-><init>(Lcom/laborbook/MainApp;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 43

    move-object/from16 v0, p0

    .line 45
    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    .line 46
    sget-object v1, Lcom/boilerplate/uikit/ThemeUtils;->INSTANCE:Lcom/boilerplate/uikit/ThemeUtils;

    invoke-virtual {v1}, Lcom/boilerplate/uikit/ThemeUtils;->applyTheme()V

    .line 47
    new-instance v1, Lcom/laborbook/MainApp$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/laborbook/MainApp$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/MainApp;)V

    invoke-static {v1}, Lorg/koin/core/context/DefaultContextExtKt;->startKoin(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    move-object v4, v1

    invoke-static {v1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 56
    invoke-static {v1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    .line 58
    invoke-static {v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    const-string v2, "getInstance(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/MainApp;->getAnalyticsManager()Lcom/boilerplate/analytics/AnalyticsManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/boilerplate/analytics/AnalyticsManager;->setFirebaseAnalyticsInstance(Lcom/google/firebase/analytics/FirebaseAnalytics;)V

    .line 67
    new-instance v1, Lcom/amplitude/android/Amplitude;

    new-instance v15, Lcom/amplitude/android/Configuration;

    move-object v2, v15

    const/16 v40, 0x3

    const/16 v41, 0x0

    const-string v3, "d0a4a5ed1590d8bfa29213c6f9ab786f"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v42, v15

    move/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, -0x4

    invoke-direct/range {v2 .. v41}, Lcom/amplitude/android/Configuration;-><init>(Ljava/lang/String;Landroid/content/Context;IILjava/lang/String;ZLcom/amplitude/core/StorageProvider;Lcom/amplitude/core/LoggerProvider;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function3;IZLcom/amplitude/core/ServerZone;Ljava/lang/String;Lcom/amplitude/core/events/Plan;Lcom/amplitude/core/events/IngestionMetadata;ZZZLcom/amplitude/android/TrackingOptions;ZZZJZLcom/amplitude/android/DefaultTrackingOptions;JLcom/amplitude/core/StorageProvider;Lcom/amplitude/id/IdentityStorageProvider;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v42

    invoke-direct {v1, v2}, Lcom/amplitude/android/Amplitude;-><init>(Lcom/amplitude/android/Configuration;)V

    .line 71
    sget-object v2, Lcom/laborbook/base/analytics/AmplitudeHolder;->INSTANCE:Lcom/laborbook/base/analytics/AmplitudeHolder;

    invoke-virtual {v2, v1}, Lcom/laborbook/base/analytics/AmplitudeHolder;->setInstance(Lcom/amplitude/android/Amplitude;)V

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/MainApp;->getAnalyticsManager()Lcom/boilerplate/analytics/AnalyticsManager;

    move-result-object v1

    .line 75
    const-string v2, "Firebase"

    .line 74
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 73
    invoke-interface {v1, v2}, Lcom/boilerplate/analytics/AnalyticsManager;->configurePlatforms(Ljava/util/List;)V

    .line 79
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v1, Lcom/laborbook/MainApp$onCreate$2;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/laborbook/MainApp$onCreate$2;-><init>(Lcom/laborbook/MainApp;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 92
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/MainApp;->initialiseFacebookSdk()V

    .line 93
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/MainApp;->initialiseInMobiAds()V

    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/MainApp;->setInstallSourceOnce()V

    return-void
.end method
