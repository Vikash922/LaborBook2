.class public final Lcom/amplitude/eventbridge/EventBridgeContainer;
.super Ljava/lang/Object;
.source "EventBridgeContainer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/eventbridge/EventBridgeContainer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/amplitude/eventbridge/EventBridgeContainer;",
        "",
        "()V",
        "eventBridge",
        "Lcom/amplitude/eventbridge/EventBridge;",
        "getEventBridge",
        "()Lcom/amplitude/eventbridge/EventBridge;",
        "Companion",
        "event-bridge"
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
.field public static final Companion:Lcom/amplitude/eventbridge/EventBridgeContainer$Companion;

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amplitude/eventbridge/EventBridgeContainer;",
            ">;"
        }
    .end annotation
.end field

.field private static final instancesLock:Ljava/lang/Object;


# instance fields
.field private final eventBridge:Lcom/amplitude/eventbridge/EventBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/eventbridge/EventBridgeContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/eventbridge/EventBridgeContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/eventbridge/EventBridgeContainer;->Companion:Lcom/amplitude/eventbridge/EventBridgeContainer$Companion;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amplitude/eventbridge/EventBridgeContainer;->instancesLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/amplitude/eventbridge/EventBridgeContainer;->instances:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/amplitude/eventbridge/EventBridgeImpl;

    invoke-direct {v0}, Lcom/amplitude/eventbridge/EventBridgeImpl;-><init>()V

    check-cast v0, Lcom/amplitude/eventbridge/EventBridge;

    iput-object v0, p0, Lcom/amplitude/eventbridge/EventBridgeContainer;->eventBridge:Lcom/amplitude/eventbridge/EventBridge;

    return-void
.end method

.method public static final synthetic access$getInstances$cp()Ljava/util/Map;
    .locals 1

    .line 6
    sget-object v0, Lcom/amplitude/eventbridge/EventBridgeContainer;->instances:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getInstancesLock$cp()Ljava/lang/Object;
    .locals 1

    .line 6
    sget-object v0, Lcom/amplitude/eventbridge/EventBridgeContainer;->instancesLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Lcom/amplitude/eventbridge/EventBridgeContainer;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/amplitude/eventbridge/EventBridgeContainer;->Companion:Lcom/amplitude/eventbridge/EventBridgeContainer$Companion;

    invoke-virtual {v0, p0}, Lcom/amplitude/eventbridge/EventBridgeContainer$Companion;->getInstance(Ljava/lang/String;)Lcom/amplitude/eventbridge/EventBridgeContainer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getEventBridge()Lcom/amplitude/eventbridge/EventBridge;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amplitude/eventbridge/EventBridgeContainer;->eventBridge:Lcom/amplitude/eventbridge/EventBridge;

    return-object v0
.end method
