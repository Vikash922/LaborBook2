.class public final Lcom/amplitude/analytics/connector/EventBridgeImpl;
.super Ljava/lang/Object;
.source "EventBridge.kt"

# interfaces
.implements Lcom/amplitude/analytics/connector/EventBridge;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventBridge.kt\ncom/amplitude/analytics/connector/EventBridgeImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,45:1\n1849#2,2:46\n*S KotlinDebug\n*F\n+ 1 EventBridge.kt\ncom/amplitude/analytics/connector/EventBridgeImpl\n*L\n40#1:46,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0007H\u0016J$\u0010\u000e\u001a\u00020\n2\u001a\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\u0004\u0018\u0001`\u000bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\u0004\u0018\u0001`\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/amplitude/analytics/connector/EventBridgeImpl;",
        "Lcom/amplitude/analytics/connector/EventBridge;",
        "()V",
        "lock",
        "",
        "queue",
        "Ljava/util/concurrent/ArrayBlockingQueue;",
        "Lcom/amplitude/analytics/connector/AnalyticsEvent;",
        "receiver",
        "Lkotlin/Function1;",
        "",
        "Lcom/amplitude/analytics/connector/AnalyticsEventReceiver;",
        "logEvent",
        "event",
        "setEventReceiver",
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


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final queue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/amplitude/analytics/connector/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amplitude/analytics/connector/AnalyticsEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amplitude/analytics/connector/EventBridgeImpl;->lock:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/amplitude/analytics/connector/EventBridgeImpl;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method


# virtual methods
.method public logEvent(Lcom/amplitude/analytics/connector/AnalyticsEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/amplitude/analytics/connector/EventBridgeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/analytics/connector/EventBridgeImpl;->receiver:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/amplitude/analytics/connector/EventBridgeImpl;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/amplitude/analytics/connector/EventBridgeImpl;->receiver:Lkotlin/jvm/functions/Function1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit v0

    if-nez v1, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v0

    throw p1
.end method

.method public setEventReceiver(Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amplitude/analytics/connector/AnalyticsEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amplitude/analytics/connector/EventBridgeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    iput-object p1, p0, Lcom/amplitude/analytics/connector/EventBridgeImpl;->receiver:Lkotlin/jvm/functions/Function1;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 38
    iget-object v2, p0, Lcom/amplitude/analytics/connector/EventBridgeImpl;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v0

    check-cast v1, Ljava/lang/Iterable;

    .line 46
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amplitude/analytics/connector/AnalyticsEvent;

    if-nez p1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0

    throw p1
.end method
