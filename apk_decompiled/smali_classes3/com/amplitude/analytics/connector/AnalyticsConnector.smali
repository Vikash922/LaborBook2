.class public final Lcom/amplitude/analytics/connector/AnalyticsConnector;
.super Ljava/lang/Object;
.source "AnalyticsConnector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/analytics/connector/AnalyticsConnector$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/amplitude/analytics/connector/AnalyticsConnector;",
        "",
        "()V",
        "eventBridge",
        "Lcom/amplitude/analytics/connector/EventBridge;",
        "getEventBridge",
        "()Lcom/amplitude/analytics/connector/EventBridge;",
        "identityStore",
        "Lcom/amplitude/analytics/connector/IdentityStore;",
        "getIdentityStore",
        "()Lcom/amplitude/analytics/connector/IdentityStore;",
        "Companion",
        "analytics-connector_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/amplitude/analytics/connector/AnalyticsConnector$Companion;

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amplitude/analytics/connector/AnalyticsConnector;",
            ">;"
        }
    .end annotation
.end field

.field private static final instancesLock:Ljava/lang/Object;


# instance fields
.field private final eventBridge:Lcom/amplitude/analytics/connector/EventBridge;

.field private final identityStore:Lcom/amplitude/analytics/connector/IdentityStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/analytics/connector/AnalyticsConnector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/analytics/connector/AnalyticsConnector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/analytics/connector/AnalyticsConnector;->Companion:Lcom/amplitude/analytics/connector/AnalyticsConnector$Companion;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amplitude/analytics/connector/AnalyticsConnector;->instancesLock:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/amplitude/analytics/connector/AnalyticsConnector;->instances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/amplitude/analytics/connector/IdentityStoreImpl;

    invoke-direct {v0}, Lcom/amplitude/analytics/connector/IdentityStoreImpl;-><init>()V

    check-cast v0, Lcom/amplitude/analytics/connector/IdentityStore;

    iput-object v0, p0, Lcom/amplitude/analytics/connector/AnalyticsConnector;->identityStore:Lcom/amplitude/analytics/connector/IdentityStore;

    .line 21
    new-instance v0, Lcom/amplitude/analytics/connector/EventBridgeImpl;

    invoke-direct {v0}, Lcom/amplitude/analytics/connector/EventBridgeImpl;-><init>()V

    check-cast v0, Lcom/amplitude/analytics/connector/EventBridge;

    iput-object v0, p0, Lcom/amplitude/analytics/connector/AnalyticsConnector;->eventBridge:Lcom/amplitude/analytics/connector/EventBridge;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/amplitude/analytics/connector/AnalyticsConnector;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstances$cp()Ljava/util/Map;
    .locals 1

    .line 3
    sget-object v0, Lcom/amplitude/analytics/connector/AnalyticsConnector;->instances:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getInstancesLock$cp()Ljava/lang/Object;
    .locals 1

    .line 3
    sget-object v0, Lcom/amplitude/analytics/connector/AnalyticsConnector;->instancesLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Lcom/amplitude/analytics/connector/AnalyticsConnector;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/amplitude/analytics/connector/AnalyticsConnector;->Companion:Lcom/amplitude/analytics/connector/AnalyticsConnector$Companion;

    invoke-virtual {v0, p0}, Lcom/amplitude/analytics/connector/AnalyticsConnector$Companion;->getInstance(Ljava/lang/String;)Lcom/amplitude/analytics/connector/AnalyticsConnector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getEventBridge()Lcom/amplitude/analytics/connector/EventBridge;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amplitude/analytics/connector/AnalyticsConnector;->eventBridge:Lcom/amplitude/analytics/connector/EventBridge;

    return-object v0
.end method

.method public final getIdentityStore()Lcom/amplitude/analytics/connector/IdentityStore;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amplitude/analytics/connector/AnalyticsConnector;->identityStore:Lcom/amplitude/analytics/connector/IdentityStore;

    return-object v0
.end method
