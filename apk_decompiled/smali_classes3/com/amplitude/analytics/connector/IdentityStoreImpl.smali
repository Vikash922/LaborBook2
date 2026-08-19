.class public final Lcom/amplitude/analytics/connector/IdentityStoreImpl;
.super Ljava/lang/Object;
.source "IdentityStore.kt"

# interfaces
.implements Lcom/amplitude/analytics/connector/IdentityStore;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u000e\u001a\u00020\n2\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\tj\u0002`\u000bH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0004H\u0016J \u0010\u0013\u001a\u00020\n2\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\tj\u0002`\u000bH\u0016J\u0010\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\tj\u0002`\u000b0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/amplitude/analytics/connector/IdentityStoreImpl;",
        "Lcom/amplitude/analytics/connector/IdentityStore;",
        "()V",
        "identity",
        "Lcom/amplitude/analytics/connector/Identity;",
        "identityLock",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "listeners",
        "",
        "Lkotlin/Function1;",
        "",
        "Lcom/amplitude/analytics/connector/IdentityListener;",
        "listenersLock",
        "",
        "addIdentityListener",
        "listener",
        "editIdentity",
        "Lcom/amplitude/analytics/connector/IdentityStore$Editor;",
        "getIdentity",
        "removeIdentityListener",
        "setIdentity",
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
.field private identity:Lcom/amplitude/analytics/connector/Identity;

.field private final identityLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amplitude/analytics/connector/Identity;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final listenersLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->identityLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 40
    new-instance v0, Lcom/amplitude/analytics/connector/Identity;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/amplitude/analytics/connector/Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->identity:Lcom/amplitude/analytics/connector/Identity;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->listenersLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->listeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addIdentityListener(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amplitude/analytics/connector/Identity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public editIdentity()Lcom/amplitude/analytics/connector/IdentityStore$Editor;
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->getIdentity()Lcom/amplitude/analytics/connector/Identity;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;

    invoke-direct {v1, v0, p0}, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;-><init>(Lcom/amplitude/analytics/connector/Identity;Lcom/amplitude/analytics/connector/IdentityStoreImpl;)V

    check-cast v1, Lcom/amplitude/analytics/connector/IdentityStore$Editor;

    return-object v1
.end method

.method public getIdentity()Lcom/amplitude/analytics/connector/Identity;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->identityLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->identity:Lcom/amplitude/analytics/connector/Identity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public removeIdentityListener(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amplitude/analytics/connector/Identity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public setIdentity(Lcom/amplitude/analytics/connector/Identity;)V
    .locals 6

    const-string v0, "identity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->getIdentity()Lcom/amplitude/analytics/connector/Identity;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->identityLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 101
    :try_start_0
    iput-object p1, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->identity:Lcom/amplitude/analytics/connector/Identity;

    .line 102
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    if-ge v4, v3, :cond_2

    .line 100
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 103
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_1
    iget-object v1, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->listeners:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    monitor-exit v0

    .line 107
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 108
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 104
    monitor-exit v0

    throw p1

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    :goto_4
    if-ge v4, v3, :cond_4

    .line 100
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method
