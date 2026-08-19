.class public final Lcom/amplitude/core/State;
.super Ljava/lang/Object;
.source "State.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 State.kt\ncom/amplitude/core/State\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,33:1\n1849#2,2:34\n1849#2,2:36\n*S KotlinDebug\n*F\n+ 1 State.kt\ncom/amplitude/core/State\n*L\n9#1:34,2\n17#1:36,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000cR(\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR(\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0007\"\u0004\u0008\u0011\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/amplitude/core/State;",
        "",
        "()V",
        "value",
        "",
        "deviceId",
        "getDeviceId",
        "()Ljava/lang/String;",
        "setDeviceId",
        "(Ljava/lang/String;)V",
        "plugins",
        "",
        "Lcom/amplitude/core/platform/ObservePlugin;",
        "getPlugins",
        "()Ljava/util/List;",
        "userId",
        "getUserId",
        "setUserId",
        "add",
        "",
        "plugin",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
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
.field private deviceId:Ljava/lang/String;

.field private final plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amplitude/core/platform/ObservePlugin;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/amplitude/core/State;->plugins:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(Lcom/amplitude/core/platform/ObservePlugin;Lcom/amplitude/core/Amplitude;)Z
    .locals 1

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amplitude"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/amplitude/core/State;->plugins:Ljava/util/List;

    monitor-enter v0

    .line 25
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/amplitude/core/platform/ObservePlugin;->setup(Lcom/amplitude/core/Amplitude;)V

    .line 26
    invoke-virtual {p0}, Lcom/amplitude/core/State;->getPlugins()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amplitude/core/State;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlugins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amplitude/core/platform/ObservePlugin;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/amplitude/core/State;->plugins:Ljava/util/List;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/amplitude/core/State;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final remove(Lcom/amplitude/core/platform/ObservePlugin;)Z
    .locals 3

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/amplitude/core/State;->plugins:Ljava/util/List;

    monitor-enter v0

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/core/State;->getPlugins()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/amplitude/core/State$remove$1$1;

    invoke-direct {v2, p1}, Lcom/amplitude/core/State$remove$1$1;-><init>(Lcom/amplitude/core/platform/ObservePlugin;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 2

    .line 16
    iput-object p1, p0, Lcom/amplitude/core/State;->deviceId:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/amplitude/core/State;->plugins:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amplitude/core/platform/ObservePlugin;

    .line 18
    invoke-virtual {v1, p1}, Lcom/amplitude/core/platform/ObservePlugin;->onDeviceIdChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 2

    .line 8
    iput-object p1, p0, Lcom/amplitude/core/State;->userId:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/amplitude/core/State;->plugins:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amplitude/core/platform/ObservePlugin;

    .line 10
    invoke-virtual {v1, p1}, Lcom/amplitude/core/platform/ObservePlugin;->onUserIdChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
