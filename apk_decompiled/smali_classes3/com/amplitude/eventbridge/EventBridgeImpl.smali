.class public final Lcom/amplitude/eventbridge/EventBridgeImpl;
.super Ljava/lang/Object;
.source "EventBridge.kt"

# interfaces
.implements Lcom/amplitude/eventbridge/EventBridge;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventBridge.kt\ncom/amplitude/eventbridge/EventBridgeImpl\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,83:1\n355#2,7:84\n355#2,7:91\n*S KotlinDebug\n*F\n+ 1 EventBridge.kt\ncom/amplitude/eventbridge/EventBridgeImpl\n*L\n35#1:84,7\n43#1:91,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/amplitude/eventbridge/EventBridgeImpl;",
        "Lcom/amplitude/eventbridge/EventBridge;",
        "()V",
        "channels",
        "",
        "Lcom/amplitude/eventbridge/EventChannel;",
        "Lcom/amplitude/eventbridge/EventBridgeChannel;",
        "lock",
        "",
        "sendEvent",
        "",
        "channel",
        "event",
        "Lcom/amplitude/eventbridge/Event;",
        "setEventReceiver",
        "receiver",
        "Lcom/amplitude/eventbridge/EventReceiver;",
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


# instance fields
.field private final channels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amplitude/eventbridge/EventChannel;",
            "Lcom/amplitude/eventbridge/EventBridgeChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amplitude/eventbridge/EventBridgeImpl;->lock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/amplitude/eventbridge/EventBridgeImpl;->channels:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public sendEvent(Lcom/amplitude/eventbridge/EventChannel;Lcom/amplitude/eventbridge/Event;)V
    .locals 3

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/amplitude/eventbridge/EventBridgeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/eventbridge/EventBridgeImpl;->channels:Ljava/util/Map;

    .line 84
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Lcom/amplitude/eventbridge/EventBridgeChannel;

    invoke-direct {v2, p1}, Lcom/amplitude/eventbridge/EventBridgeChannel;-><init>(Lcom/amplitude/eventbridge/EventChannel;)V

    .line 87
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    check-cast v2, Lcom/amplitude/eventbridge/EventBridgeChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v0

    .line 38
    invoke-virtual {v2, p2}, Lcom/amplitude/eventbridge/EventBridgeChannel;->sendEvent(Lcom/amplitude/eventbridge/Event;)V

    return-void

    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v0

    throw p1
.end method

.method public setEventReceiver(Lcom/amplitude/eventbridge/EventChannel;Lcom/amplitude/eventbridge/EventReceiver;)V
    .locals 3

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/amplitude/eventbridge/EventBridgeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/eventbridge/EventBridgeImpl;->channels:Ljava/util/Map;

    .line 91
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 44
    new-instance v2, Lcom/amplitude/eventbridge/EventBridgeChannel;

    invoke-direct {v2, p1}, Lcom/amplitude/eventbridge/EventBridgeChannel;-><init>(Lcom/amplitude/eventbridge/EventChannel;)V

    .line 94
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    check-cast v2, Lcom/amplitude/eventbridge/EventBridgeChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    .line 46
    invoke-virtual {v2, p2}, Lcom/amplitude/eventbridge/EventBridgeChannel;->setEventReceiver(Lcom/amplitude/eventbridge/EventReceiver;)V

    return-void

    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0

    throw p1
.end method
