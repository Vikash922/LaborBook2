.class public final Lcom/boilerplate/analytics/AnalyticsManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/boilerplate/analytics/AnalyticsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boilerplate/analytics/AnalyticsManagerImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0008\u0018\u0000 *2\u00020\u0001:\u0001*B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0007H\u0016J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\tH\u0016J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000bH\u0016J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\rH\u0016J\u0016\u0010\u0017\u001a\u00020\u00122\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0018H\u0016JG\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00102\"\u0010\u001b\u001a\u001e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001d0\u001ej\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001d`\u001c2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0018H\u0016\u00a2\u0006\u0002\u0010 J*\u0010!\u001a\u00020\u00122\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001d0#2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0018H\u0016J,\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00102\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001d0#H\u0002J\u0018\u0010\'\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0010H\u0002J$\u0010(\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u00102\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001d0#H\u0002J\u0010\u0010)\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/boilerplate/analytics/AnalyticsManagerImpl;",
        "Lcom/boilerplate/analytics/AnalyticsManager;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "cleverTapAPI",
        "Lcom/clevertap/android/sdk/CleverTapAPI;",
        "mixpanelAPI",
        "Lcom/mixpanel/android/mpmetrics/MixpanelAPI;",
        "appsFlyerLib",
        "Lcom/appsflyer/AppsFlyerLib;",
        "firebaseAnalytics",
        "Lcom/google/firebase/analytics/FirebaseAnalytics;",
        "enabledPlatforms",
        "",
        "",
        "setCleverTapInstance",
        "",
        "instance",
        "setMixpanelInstance",
        "setAppsFlyerInstance",
        "setFirebaseAnalyticsInstance",
        "configurePlatforms",
        "",
        "logEvent",
        "eventName",
        "properties",
        "Lkotlin/collections/HashMap;",
        "",
        "Ljava/util/HashMap;",
        "eventPlatforms",
        "(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V",
        "setUserProperties",
        "userProperties",
        "",
        "userPropertyPlatforms",
        "logEventSuccess",
        "platform",
        "logEventFailure",
        "logUserPropertiesSuccess",
        "logUserPropertiesFailure",
        "Companion",
        "analytics_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/boilerplate/analytics/AnalyticsManagerImpl$Companion;

.field private static volatile INSTANCE:Lcom/boilerplate/analytics/AnalyticsManagerImpl;


# instance fields
.field private appsFlyerLib:Lcom/appsflyer/AppsFlyerLib;

.field private cleverTapAPI:Lcom/clevertap/android/sdk/CleverTapAPI;

.field private final context:Landroid/content/Context;

.field private final enabledPlatforms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/boilerplate/analytics/AnalyticsManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->Companion:Lcom/boilerplate/analytics/AnalyticsManagerImpl$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->context:Landroid/content/Context;

    .line 11
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->enabledPlatforms:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getAppsFlyerLib$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Lcom/appsflyer/AppsFlyerLib;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->appsFlyerLib:Lcom/appsflyer/AppsFlyerLib;

    return-object p0
.end method

.method public static final synthetic access$getCleverTapAPI$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Lcom/clevertap/android/sdk/CleverTapAPI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->cleverTapAPI:Lcom/clevertap/android/sdk/CleverTapAPI;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getEnabledPlatforms$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->enabledPlatforms:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getFirebaseAnalytics$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/boilerplate/analytics/AnalyticsManagerImpl;
    .locals 1

    .line 1
    sget-object v0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->INSTANCE:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    return-object v0
.end method

.method public static final synthetic access$getMixpanelAPI$p(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    return-object p0
.end method

.method public static final synthetic access$logEventFailure(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->logEventFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$logEventSuccess(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->logEventSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$logUserPropertiesFailure(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->logUserPropertiesFailure(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$logUserPropertiesSuccess(Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->logUserPropertiesSuccess(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/boilerplate/analytics/AnalyticsManagerImpl;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->INSTANCE:Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    return-void
.end method

.method private final logEventFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " instance not set or platform not enabled, skipping event "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AnalyticsManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final logEventSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " successfully sent to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " with properties: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AnalyticsManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final logUserPropertiesFailure(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " instance not set or platform not enabled, skipping user properties update"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AnalyticsManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final logUserPropertiesSuccess(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User properties successfully sent to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " with properties: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AnalyticsManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public configurePlatforms(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "enabledPlatforms"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->enabledPlatforms:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2
    iget-object v0, p0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->enabledPlatforms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "properties"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventPlatforms"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/boilerplate/analytics/b;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/boilerplate/analytics/b;-><init>(Ljava/util/List;Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public setAppsFlyerInstance(Lcom/appsflyer/AppsFlyerLib;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->appsFlyerLib:Lcom/appsflyer/AppsFlyerLib;

    return-void
.end method

.method public setCleverTapInstance(Lcom/clevertap/android/sdk/CleverTapAPI;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->cleverTapAPI:Lcom/clevertap/android/sdk/CleverTapAPI;

    return-void
.end method

.method public setFirebaseAnalyticsInstance(Lcom/google/firebase/analytics/FirebaseAnalytics;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-void
.end method

.method public setMixpanelInstance(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->mixpanelAPI:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    return-void
.end method

.method public setUserProperties(Ljava/util/Map;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "userProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userPropertyPlatforms"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/boilerplate/analytics/d;

    const/4 v0, 0x0

    invoke-direct {v4, p2, p0, p1, v0}, Lcom/boilerplate/analytics/d;-><init>(Ljava/util/List;Lcom/boilerplate/analytics/AnalyticsManagerImpl;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
