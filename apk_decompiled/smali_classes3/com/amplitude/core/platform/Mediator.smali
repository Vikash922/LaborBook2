.class public final Lcom/amplitude/core/platform/Mediator;
.super Ljava/lang/Object;
.source "Mediator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mediator.kt\ncom/amplitude/core/platform/Mediator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n1849#2,2:63\n1849#2,2:65\n*S KotlinDebug\n*F\n+ 1 Mediator.kt\ncom/amplitude/core/platform/Mediator\n*L\n20#1:63,2\n57#1:65,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004J\u001a\u0010\u000b\u001a\u00020\u000c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000c0\u000eJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004R\u001a\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/amplitude/core/platform/Mediator;",
        "",
        "plugins",
        "",
        "Lcom/amplitude/core/platform/Plugin;",
        "(Ljava/util/List;)V",
        "getPlugins$core",
        "()Ljava/util/List;",
        "add",
        "",
        "plugin",
        "applyClosure",
        "",
        "closure",
        "Lkotlin/Function1;",
        "execute",
        "Lcom/amplitude/core/events/BaseEvent;",
        "event",
        "remove",
        "core"
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
.field private final plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amplitude/core/platform/Plugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amplitude/core/platform/Plugin;",
            ">;)V"
        }
    .end annotation

    const-string v0, "plugins"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amplitude/core/platform/Mediator;->plugins:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(Lcom/amplitude/core/platform/Plugin;)Z
    .locals 2

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/amplitude/core/platform/Mediator;->plugins:Ljava/util/List;

    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/core/platform/Mediator;->getPlugins$core()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final applyClosure(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amplitude/core/platform/Plugin;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "closure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/amplitude/core/platform/Mediator;->plugins:Ljava/util/List;

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/core/platform/Mediator;->getPlugins$core()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 65
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amplitude/core/platform/Plugin;

    .line 58
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final execute(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/amplitude/core/platform/Mediator;->plugins:Ljava/util/List;

    monitor-enter v0

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/core/platform/Mediator;->getPlugins$core()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 63
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amplitude/core/platform/Plugin;

    if-eqz p1, :cond_0

    .line 23
    instance-of v3, v2, Lcom/amplitude/core/platform/DestinationPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 25
    :try_start_1
    check-cast v2, Lcom/amplitude/core/platform/DestinationPlugin;

    move-object v3, p1

    check-cast v3, Lcom/amplitude/core/events/BaseEvent;

    invoke-virtual {v2, p1}, Lcom/amplitude/core/platform/DestinationPlugin;->process(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 27
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 30
    :cond_1
    instance-of v3, v2, Lcom/amplitude/core/platform/EventPlugin;

    if-eqz v3, :cond_9

    .line 31
    move-object v3, p1

    check-cast v3, Lcom/amplitude/core/events/BaseEvent;

    invoke-interface {v2, p1}, Lcom/amplitude/core/platform/Plugin;->execute(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;

    move-result-object p1

    .line 33
    instance-of v3, p1, Lcom/amplitude/core/events/IdentifyEvent;

    if-eqz v3, :cond_3

    .line 34
    check-cast v2, Lcom/amplitude/core/platform/EventPlugin;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/amplitude/core/events/IdentifyEvent;

    invoke-interface {v2, p1}, Lcom/amplitude/core/platform/EventPlugin;->identify(Lcom/amplitude/core/events/IdentifyEvent;)Lcom/amplitude/core/events/IdentifyEvent;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.amplitude.core.events.IdentifyEvent"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_3
    instance-of v3, p1, Lcom/amplitude/core/events/GroupIdentifyEvent;

    if-eqz v3, :cond_5

    .line 37
    check-cast v2, Lcom/amplitude/core/platform/EventPlugin;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/amplitude/core/events/GroupIdentifyEvent;

    invoke-interface {v2, p1}, Lcom/amplitude/core/platform/EventPlugin;->groupIdentify(Lcom/amplitude/core/events/GroupIdentifyEvent;)Lcom/amplitude/core/events/GroupIdentifyEvent;

    move-result-object p1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.amplitude.core.events.GroupIdentifyEvent"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_5
    instance-of v3, p1, Lcom/amplitude/core/events/RevenueEvent;

    if-eqz v3, :cond_7

    .line 40
    check-cast v2, Lcom/amplitude/core/platform/EventPlugin;

    if-eqz p1, :cond_6

    check-cast p1, Lcom/amplitude/core/events/RevenueEvent;

    invoke-interface {v2, p1}, Lcom/amplitude/core/platform/EventPlugin;->revenue(Lcom/amplitude/core/events/RevenueEvent;)Lcom/amplitude/core/events/RevenueEvent;

    move-result-object p1

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.amplitude.core.events.RevenueEvent"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-eqz p1, :cond_0

    .line 43
    check-cast v2, Lcom/amplitude/core/platform/EventPlugin;

    if-eqz p1, :cond_8

    invoke-interface {v2, p1}, Lcom/amplitude/core/platform/EventPlugin;->track(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;

    move-result-object p1

    goto :goto_0

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.amplitude.core.events.BaseEvent"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_9
    move-object v3, p1

    check-cast v3, Lcom/amplitude/core/events/BaseEvent;

    invoke-interface {v2, p1}, Lcom/amplitude/core/platform/Plugin;->execute(Lcom/amplitude/core/events/BaseEvent;)Lcom/amplitude/core/events/BaseEvent;

    move-result-object p1

    goto/16 :goto_0

    .line 53
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/amplitude/core/events/BaseEvent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getPlugins$core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amplitude/core/platform/Plugin;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/amplitude/core/platform/Mediator;->plugins:Ljava/util/List;

    return-object v0
.end method

.method public final remove(Lcom/amplitude/core/platform/Plugin;)Z
    .locals 3

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/amplitude/core/platform/Mediator;->plugins:Ljava/util/List;

    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/core/platform/Mediator;->getPlugins$core()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/amplitude/core/platform/Mediator$remove$1$1;

    invoke-direct {v2, p1}, Lcom/amplitude/core/platform/Mediator$remove$1$1;-><init>(Lcom/amplitude/core/platform/Plugin;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
