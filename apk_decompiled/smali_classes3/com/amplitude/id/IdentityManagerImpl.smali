.class public final Lcom/amplitude/id/IdentityManagerImpl;
.super Ljava/lang/Object;
.source "IdentityManager.kt"

# interfaces
.implements Lcom/amplitude/id/IdentityManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\rH\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0006H\u0016J\u0008\u0010\u0016\u001a\u00020\nH\u0016J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\rH\u0016J\u0018\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/amplitude/id/IdentityManagerImpl;",
        "Lcom/amplitude/id/IdentityManager;",
        "identityStorage",
        "Lcom/amplitude/id/IdentityStorage;",
        "(Lcom/amplitude/id/IdentityStorage;)V",
        "identity",
        "Lcom/amplitude/id/Identity;",
        "identityLock",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
        "initialized",
        "",
        "listeners",
        "",
        "Lcom/amplitude/id/IdentityListener;",
        "listenersLock",
        "",
        "addIdentityListener",
        "",
        "listener",
        "editIdentity",
        "Lcom/amplitude/id/IdentityManager$Editor;",
        "getIdentity",
        "isInitialized",
        "removeIdentityListener",
        "setIdentity",
        "updateType",
        "Lcom/amplitude/id/IdentityUpdateType;",
        "id"
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
.field private identity:Lcom/amplitude/id/Identity;

.field private final identityLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final identityStorage:Lcom/amplitude/id/IdentityStorage;

.field private initialized:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amplitude/id/IdentityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final listenersLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/amplitude/id/IdentityStorage;)V
    .locals 3

    const-string v0, "identityStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amplitude/id/IdentityManagerImpl;->identityStorage:Lcom/amplitude/id/IdentityStorage;

    .line 48
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/amplitude/id/IdentityManagerImpl;->identityLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 49
    new-instance v0, Lcom/amplitude/id/Identity;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/amplitude/id/Identity;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/amplitude/id/IdentityManagerImpl;->identity:Lcom/amplitude/id/Identity;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amplitude/id/IdentityManagerImpl;->listenersLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/amplitude/id/IdentityManagerImpl;->listeners:Ljava/util/Set;

    .line 56
    invoke-interface {p1}, Lcom/amplitude/id/IdentityStorage;->load()Lcom/amplitude/id/Identity;

    move-result-object p1

    sget-object v0, Lcom/amplitude/id/IdentityUpdateType;->Initialized:Lcom/amplitude/id/IdentityUpdateType;

    invoke-virtual {p0, p1, v0}, Lcom/amplitude/id/IdentityManagerImpl;->setIdentity(Lcom/amplitude/id/Identity;Lcom/amplitude/id/IdentityUpdateType;)V

    return-void
.end method


# virtual methods
.method public addIdentityListener(Lcom/amplitude/id/IdentityListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/amplitude/id/IdentityManagerImpl;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/id/IdentityManagerImpl;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public editIdentity()Lcom/amplitude/id/IdentityManager$Editor;
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/amplitude/id/IdentityManagerImpl;->getIdentity()Lcom/amplitude/id/Identity;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/amplitude/id/IdentityManagerImpl$editIdentity$1;

    invoke-direct {v1, v0, p0}, Lcom/amplitude/id/IdentityManagerImpl$editIdentity$1;-><init>(Lcom/amplitude/id/Identity;Lcom/amplitude/id/IdentityManagerImpl;)V

    check-cast v1, Lcom/amplitude/id/IdentityManager$Editor;

    return-object v1
.end method

.method public getIdentity()Lcom/amplitude/id/Identity;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/amplitude/id/IdentityManagerImpl;->identityLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/id/IdentityManagerImpl;->identity:Lcom/amplitude/id/Identity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public isInitialized()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/amplitude/id/IdentityManagerImpl;->initialized:Z

    return v0
.end method

.method public removeIdentityListener(Lcom/amplitude/id/IdentityListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/amplitude/id/IdentityManagerImpl;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/amplitude/id/IdentityManagerImpl;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public setIdentity(Lcom/amplitude/id/Identity;Lcom/amplitude/id/IdentityUpdateType;)V
    .locals 6

    const-string v0, "identity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/amplitude/id/IdentityManagerImpl;->getIdentity()Lcom/amplitude/id/Identity;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/amplitude/id/IdentityManagerImpl;->identityLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

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

    .line 86
    :try_start_0
    iput-object p1, p0, Lcom/amplitude/id/IdentityManagerImpl;->identity:Lcom/amplitude/id/Identity;

    .line 87
    sget-object v5, Lcom/amplitude/id/IdentityUpdateType;->Initialized:Lcom/amplitude/id/IdentityUpdateType;

    if-ne p2, v5, :cond_2

    const/4 v5, 0x1

    .line 88
    iput-boolean v5, p0, Lcom/amplitude/id/IdentityManagerImpl;->initialized:Z

    .line 90
    :cond_2
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    if-ge v4, v3, :cond_3

    .line 85
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 91
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 92
    iget-object v1, p0, Lcom/amplitude/id/IdentityManagerImpl;->listenersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_1
    iget-object v2, p0, Lcom/amplitude/id/IdentityManagerImpl;->listeners:Ljava/util/Set;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit v1

    .line 96
    sget-object v1, Lcom/amplitude/id/IdentityUpdateType;->Initialized:Lcom/amplitude/id/IdentityUpdateType;

    if-eq p2, v1, :cond_5

    .line 97
    invoke-virtual {p1}, Lcom/amplitude/id/Identity;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amplitude/id/Identity;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 98
    iget-object v1, p0, Lcom/amplitude/id/IdentityManagerImpl;->identityStorage:Lcom/amplitude/id/IdentityStorage;

    invoke-virtual {p1}, Lcom/amplitude/id/Identity;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/amplitude/id/IdentityStorage;->saveUserId(Ljava/lang/String;)V

    .line 101
    :cond_4
    invoke-virtual {p1}, Lcom/amplitude/id/Identity;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amplitude/id/Identity;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 102
    iget-object v1, p0, Lcom/amplitude/id/IdentityManagerImpl;->identityStorage:Lcom/amplitude/id/IdentityStorage;

    invoke-virtual {p1}, Lcom/amplitude/id/Identity;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/amplitude/id/IdentityStorage;->saveDeviceId(Ljava/lang/String;)V

    .line 106
    :cond_5
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amplitude/id/IdentityListener;

    .line 107
    invoke-virtual {p1}, Lcom/amplitude/id/Identity;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amplitude/id/Identity;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 108
    invoke-virtual {p1}, Lcom/amplitude/id/Identity;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amplitude/id/IdentityListener;->onUserIdChange(Ljava/lang/String;)V

    .line 110
    :cond_6
    invoke-virtual {p1}, Lcom/amplitude/id/Identity;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amplitude/id/Identity;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 111
    invoke-virtual {p1}, Lcom/amplitude/id/Identity;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amplitude/id/IdentityListener;->onDeviceIdChange(Ljava/lang/String;)V

    .line 113
    :cond_7
    invoke-interface {v2, p1, p2}, Lcom/amplitude/id/IdentityListener;->onIdentityChanged(Lcom/amplitude/id/Identity;Lcom/amplitude/id/IdentityUpdateType;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 92
    monitor-exit v1

    throw p1

    :cond_8
    return-void

    :catchall_1
    move-exception p1

    :goto_4
    if-ge v4, v3, :cond_9

    .line 85
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method
