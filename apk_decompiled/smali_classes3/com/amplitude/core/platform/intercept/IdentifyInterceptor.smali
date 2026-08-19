.class public final Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;
.super Ljava/lang/Object;
.source "IdentifyInterceptor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0011\u0010\u0015\u001a\u00020\u0016H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\u001b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001cJ\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u0019H\u0002J\u001c\u0010\"\u001a\u00020\u001e2\u0008\u0010#\u001a\u0004\u0018\u00010\u000e2\u0008\u0010$\u001a\u0004\u0018\u00010\u000eH\u0002J\u0010\u0010%\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u0019H\u0002J\u0010\u0010&\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u0019H\u0002J\u0010\u0010\'\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u0019H\u0002J\u0019\u0010(\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0019H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001cJ\u0008\u0010)\u001a\u00020*H\u0002J\u0011\u0010+\u001a\u00020\u0016H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006,"
    }
    d2 = {
        "Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;",
        "",
        "storage",
        "Lcom/amplitude/core/Storage;",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "logger",
        "Lcom/amplitude/common/Logger;",
        "configuration",
        "Lcom/amplitude/core/Configuration;",
        "plugin",
        "Lcom/amplitude/core/platform/plugins/AmplitudeDestination;",
        "(Lcom/amplitude/core/Storage;Lcom/amplitude/core/Amplitude;Lcom/amplitude/common/Logger;Lcom/amplitude/core/Configuration;Lcom/amplitude/core/platform/plugins/AmplitudeDestination;)V",
        "deviceId",
        "",
        "identifySet",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "storageHandler",
        "Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;",
        "transferScheduled",
        "userId",
        "clearIdentifyIntercepts",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getTransferIdentifyEvent",
        "Lcom/amplitude/core/events/BaseEvent;",
        "intercept",
        "event",
        "(Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isActionOnly",
        "",
        "action",
        "Lcom/amplitude/core/events/IdentifyOperation;",
        "isClearAll",
        "isIdUpdated",
        "id",
        "updateId",
        "isIdentityUpdated",
        "isSetGroups",
        "isSetOnly",
        "saveIdentifyProperties",
        "scheduleTransfer",
        "Lkotlinx/coroutines/Job;",
        "transferInterceptedIdentify",
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
.field private final amplitude:Lcom/amplitude/core/Amplitude;

.field private final configuration:Lcom/amplitude/core/Configuration;

.field private deviceId:Ljava/lang/String;

.field private final identifySet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logger:Lcom/amplitude/common/Logger;

.field private final plugin:Lcom/amplitude/core/platform/plugins/AmplitudeDestination;

.field private final storage:Lcom/amplitude/core/Storage;

.field private final storageHandler:Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;

.field private transferScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amplitude/core/Storage;Lcom/amplitude/core/Amplitude;Lcom/amplitude/common/Logger;Lcom/amplitude/core/Configuration;Lcom/amplitude/core/platform/plugins/AmplitudeDestination;)V
    .locals 1

    const-string/jumbo v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amplitude"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plugin"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->storage:Lcom/amplitude/core/Storage;

    .line 22
    iput-object p2, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->amplitude:Lcom/amplitude/core/Amplitude;

    .line 23
    iput-object p3, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->logger:Lcom/amplitude/common/Logger;

    .line 24
    iput-object p4, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->configuration:Lcom/amplitude/core/Configuration;

    .line 25
    iput-object p5, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->plugin:Lcom/amplitude/core/platform/plugins/AmplitudeDestination;

    .line 28
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->transferScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->identifySet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    sget-object p4, Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;->Companion:Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler$Companion;

    invoke-virtual {p4, p1, p3, p2}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler$Companion;->getIdentifyInterceptStorageHandler(Lcom/amplitude/core/Storage;Lcom/amplitude/common/Logger;Lcom/amplitude/core/Amplitude;)Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->storageHandler:Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;

    return-void
.end method

.method public static final synthetic access$clearIdentifyIntercepts(Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->clearIdentifyIntercepts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConfiguration$p(Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;)Lcom/amplitude/core/Configuration;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->configuration:Lcom/amplitude/core/Configuration;

    return-object p0
.end method

.method public static final synthetic access$getTransferIdentifyEvent(Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->getTransferIdentifyEvent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTransferScheduled$p(Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->transferScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$saveIdentifyProperties(Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->saveIdentifyProperties(Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final clearIdentifyIntercepts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->storageHandler:Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;->clearIdentifyIntercepts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final getTransferIdentifyEvent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/amplitude/core/events/BaseEvent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->storageHandler:Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;->getTransferIdentifyEvent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final isActionOnly(Lcom/amplitude/core/events/BaseEvent;Lcom/amplitude/core/events/IdentifyOperation;)Z
    .locals 3

    .line 124
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getUserProperties()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 125
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/amplitude/core/events/IdentifyOperation;->getOperationType()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method private final isClearAll(Lcom/amplitude/core/events/BaseEvent;)Z
    .locals 1

    .line 116
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->CLEAR_ALL:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, p1, v0}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->isActionOnly(Lcom/amplitude/core/events/BaseEvent;Lcom/amplitude/core/events/IdentifyOperation;)Z

    move-result p1

    return p1
.end method

.method private final isIdUpdated(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    :goto_0
    move v0, v1

    :cond_3
    return v0
.end method

.method private final isIdentityUpdated(Lcom/amplitude/core/events/BaseEvent;)Z
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->identifySet:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->userId:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->deviceId:Ljava/lang/String;

    return v1

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->isIdUpdated(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->userId:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 145
    :goto_0
    iget-object v2, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->deviceId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->isIdUpdated(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->deviceId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method

.method private final isSetGroups(Lcom/amplitude/core/events/BaseEvent;)Z
    .locals 1

    .line 131
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getGroups()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getGroups()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final isSetOnly(Lcom/amplitude/core/events/BaseEvent;)Z
    .locals 1

    .line 120
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-direct {p0, p1, v0}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->isActionOnly(Lcom/amplitude/core/events/BaseEvent;Lcom/amplitude/core/events/IdentifyOperation;)Z

    move-result p1

    return p1
.end method

.method private final saveIdentifyProperties(Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amplitude/core/events/BaseEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$saveIdentifyProperties$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$saveIdentifyProperties$1;

    iget v1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$saveIdentifyProperties$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$saveIdentifyProperties$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$saveIdentifyProperties$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$saveIdentifyProperties$1;

    invoke-direct {v0, p0, p2}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$saveIdentifyProperties$1;-><init>(Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$saveIdentifyProperties$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 107
    iget v2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$saveIdentifyProperties$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$saveIdentifyProperties$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    :try_start_1
    iget-object p2, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->storage:Lcom/amplitude/core/Storage;

    iput-object p0, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$saveIdentifyProperties$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$saveIdentifyProperties$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/amplitude/core/Storage;->writeEvent(Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v1, :cond_3

    return-object v1

    :catch_1
    move-exception p2

    move-object p1, p0

    .line 111
    :goto_1
    iget-object p1, p1, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->logger:Lcom/amplitude/common/Logger;

    const-string v0, "Error when intercepting identifies"

    invoke-static {p2, p1, v0}, Lcom/amplitude/core/utilities/LoggerExtensionsKt;->logWithStackTrace(Ljava/lang/Exception;Lcom/amplitude/common/Logger;Ljava/lang/String;)V

    .line 113
    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final scheduleTransfer()Lkotlinx/coroutines/Job;
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getAmplitudeScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getStorageIODispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$scheduleTransfer$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$scheduleTransfer$1;-><init>(Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final intercept(Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amplitude/core/events/BaseEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/amplitude/core/events/BaseEvent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;

    iget v1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;

    invoke-direct {v0, p0, p2}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;-><init>(Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 42
    iget v2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->label:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_7

    if-eq v2, v7, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/amplitude/core/events/BaseEvent;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_2
    iget-object p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/amplitude/core/events/BaseEvent;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/amplitude/core/events/BaseEvent;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_4
    move-object v8, p1

    goto/16 :goto_3

    :cond_5
    iget-object p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    iget-object p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/amplitude/core/events/BaseEvent;

    iget-object v2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    iget-object p2, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->storageHandler:Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;

    if-nez p2, :cond_8

    return-object p1

    .line 47
    :cond_8
    invoke-direct {p0, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->isIdentityUpdated(Lcom/amplitude/core/events/BaseEvent;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 48
    iput-object p0, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    iput v7, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->label:I

    invoke-virtual {p0, v0}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->transferInterceptedIdentify(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    move-object v2, p0

    .line 50
    :goto_1
    invoke-virtual {p1}, Lcom/amplitude/core/events/BaseEvent;->getEventType()Ljava/lang/String;

    move-result-object p2

    .line 51
    const-string v7, "$identify"

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 53
    invoke-direct {v2, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->isSetOnly(Lcom/amplitude/core/events/BaseEvent;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-direct {v2, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->isSetGroups(Lcom/amplitude/core/events/BaseEvent;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 55
    iput-object v2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->label:I

    invoke-direct {v2, p1, v0}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->saveIdentifyProperties(Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    move-object p1, v2

    .line 56
    :goto_2
    invoke-direct {p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->scheduleTransfer()Lkotlinx/coroutines/Job;

    .line 57
    move-object p1, v8

    check-cast p1, Lcom/amplitude/core/events/BaseEvent;

    goto :goto_3

    .line 59
    :cond_b
    invoke-direct {v2, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->isClearAll(Lcom/amplitude/core/events/BaseEvent;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 61
    iput-object p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->label:I

    invoke-direct {v2, v0}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->clearIdentifyIntercepts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :goto_3
    return-object v8

    .line 66
    :cond_c
    iput-object p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->label:I

    invoke-virtual {v2, v0}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->transferInterceptedIdentify(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_d

    return-object v1

    :cond_d
    :goto_4
    return-object p1

    .line 71
    :cond_e
    const-string v4, "$groupidentify"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    return-object p1

    .line 77
    :cond_f
    iput-object p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$intercept$1;->label:I

    invoke-virtual {v2, v0}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->transferInterceptedIdentify(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_10

    return-object v1

    :cond_10
    :goto_5
    return-object p1
.end method

.method public final transferInterceptedIdentify(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$transferInterceptedIdentify$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$transferInterceptedIdentify$1;

    iget v1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$transferInterceptedIdentify$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$transferInterceptedIdentify$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$transferInterceptedIdentify$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$transferInterceptedIdentify$1;

    invoke-direct {v0, p0, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$transferInterceptedIdentify$1;-><init>(Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$transferInterceptedIdentify$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 87
    iget v2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$transferInterceptedIdentify$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$transferInterceptedIdentify$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    iput-object p0, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$transferInterceptedIdentify$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor$transferInterceptedIdentify$1;->label:I

    invoke-direct {p0, v0}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->getTransferIdentifyEvent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 87
    :goto_1
    check-cast p1, Lcom/amplitude/core/events/BaseEvent;

    if-nez p1, :cond_4

    goto :goto_2

    .line 90
    :cond_4
    iget-object v0, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;->plugin:Lcom/amplitude/core/platform/plugins/AmplitudeDestination;

    invoke-virtual {v0, p1}, Lcom/amplitude/core/platform/plugins/AmplitudeDestination;->enqueuePipeline(Lcom/amplitude/core/events/BaseEvent;)V

    .line 92
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
