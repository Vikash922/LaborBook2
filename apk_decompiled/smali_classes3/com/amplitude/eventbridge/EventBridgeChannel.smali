.class public final Lcom/amplitude/eventbridge/EventBridgeChannel;
.super Ljava/lang/Object;
.source "EventBridge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/eventbridge/EventBridgeChannel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventBridge.kt\ncom/amplitude/eventbridge/EventBridgeChannel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1849#2,2:84\n*S KotlinDebug\n*F\n+ 1 EventBridge.kt\ncom/amplitude/eventbridge/EventBridgeChannel\n*L\n78#1:84,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008J\u0010\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/amplitude/eventbridge/EventBridgeChannel;",
        "",
        "channel",
        "Lcom/amplitude/eventbridge/EventChannel;",
        "(Lcom/amplitude/eventbridge/EventChannel;)V",
        "lock",
        "queue",
        "Ljava/util/concurrent/ArrayBlockingQueue;",
        "Lcom/amplitude/eventbridge/Event;",
        "receiver",
        "Lcom/amplitude/eventbridge/EventReceiver;",
        "sendEvent",
        "",
        "event",
        "setEventReceiver",
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
.field public static final Companion:Lcom/amplitude/eventbridge/EventBridgeChannel$Companion;

.field public static final QUEUE_CAPACITY:I = 0x200


# instance fields
.field private final channel:Lcom/amplitude/eventbridge/EventChannel;

.field private final lock:Ljava/lang/Object;

.field private final queue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/amplitude/eventbridge/Event;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Lcom/amplitude/eventbridge/EventReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/eventbridge/EventBridgeChannel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/eventbridge/EventBridgeChannel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/eventbridge/EventBridgeChannel;->Companion:Lcom/amplitude/eventbridge/EventBridgeChannel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amplitude/eventbridge/EventChannel;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amplitude/eventbridge/EventBridgeChannel;->channel:Lcom/amplitude/eventbridge/EventChannel;

    .line 55
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amplitude/eventbridge/EventBridgeChannel;->lock:Ljava/lang/Object;

    .line 57
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x200

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/amplitude/eventbridge/EventBridgeChannel;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method


# virtual methods
.method public final sendEvent(Lcom/amplitude/eventbridge/Event;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/amplitude/eventbridge/EventBridgeChannel;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/eventbridge/EventBridgeChannel;->receiver:Lcom/amplitude/eventbridge/EventReceiver;

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/amplitude/eventbridge/EventBridgeChannel;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/amplitude/eventbridge/EventBridgeChannel;->receiver:Lcom/amplitude/eventbridge/EventReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v0

    if-nez v1, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/amplitude/eventbridge/EventBridgeChannel;->channel:Lcom/amplitude/eventbridge/EventChannel;

    invoke-interface {v1, v0, p1}, Lcom/amplitude/eventbridge/EventReceiver;->receive(Lcom/amplitude/eventbridge/EventChannel;Lcom/amplitude/eventbridge/Event;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 60
    monitor-exit v0

    throw p1
.end method

.method public final setEventReceiver(Lcom/amplitude/eventbridge/EventReceiver;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/amplitude/eventbridge/EventBridgeChannel;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/eventbridge/EventBridgeChannel;->receiver:Lcom/amplitude/eventbridge/EventReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 72
    monitor-exit v0

    return-void

    .line 74
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/amplitude/eventbridge/EventBridgeChannel;->receiver:Lcom/amplitude/eventbridge/EventReceiver;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 76
    iget-object v2, p0, Lcom/amplitude/eventbridge/EventBridgeChannel;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    monitor-exit v0

    check-cast v1, Ljava/lang/Iterable;

    .line 84
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amplitude/eventbridge/Event;

    if-nez p1, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/amplitude/eventbridge/EventBridgeChannel;->channel:Lcom/amplitude/eventbridge/EventChannel;

    invoke-interface {p1, v2, v1}, Lcom/amplitude/eventbridge/EventReceiver;->receive(Lcom/amplitude/eventbridge/EventChannel;Lcom/amplitude/eventbridge/Event;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 69
    monitor-exit v0

    throw p1
.end method
