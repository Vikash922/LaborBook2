.class public final Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;
.super Ljava/lang/Object;
.source "IdentifyInterceptFileStorageHandler.kt"

# interfaces
.implements Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0011\u0010\t\u001a\u00020\nH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u0013\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;",
        "Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;",
        "storage",
        "Lcom/amplitude/core/utilities/EventsFileStorage;",
        "logger",
        "Lcom/amplitude/common/Logger;",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "(Lcom/amplitude/core/utilities/EventsFileStorage;Lcom/amplitude/common/Logger;Lcom/amplitude/core/Amplitude;)V",
        "clearIdentifyIntercepts",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getTransferIdentifyEvent",
        "Lcom/amplitude/core/events/BaseEvent;",
        "removeFile",
        "file",
        "",
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

.field private final logger:Lcom/amplitude/common/Logger;

.field private final storage:Lcom/amplitude/core/utilities/EventsFileStorage;


# direct methods
.method public constructor <init>(Lcom/amplitude/core/utilities/EventsFileStorage;Lcom/amplitude/common/Logger;Lcom/amplitude/core/Amplitude;)V
    .locals 1

    const-string/jumbo v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amplitude"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    .line 16
    iput-object p2, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->logger:Lcom/amplitude/common/Logger;

    .line 17
    iput-object p3, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->amplitude:Lcom/amplitude/core/Amplitude;

    return-void
.end method

.method public static final synthetic access$getStorage$p(Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;)Lcom/amplitude/core/utilities/EventsFileStorage;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    return-object p0
.end method

.method private final removeFile(Ljava/lang/String;)V
    .locals 7

    .line 86
    iget-object v0, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getAmplitudeScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->amplitude:Lcom/amplitude/core/Amplitude;

    invoke-virtual {v0}, Lcom/amplitude/core/Amplitude;->getStorageIODispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$removeFile$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$removeFile$1;-><init>(Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public clearIdentifyIntercepts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    instance-of v0, p1, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1;

    iget v1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1;

    invoke-direct {v0, p0, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1;-><init>(Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 67
    iget v2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    :try_start_1
    iget-object p1, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    iput-object p0, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1;->label:I

    invoke-interface {p1, v0}, Lcom/amplitude/core/utilities/EventsFileStorage;->rollover(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 76
    :goto_1
    iget-object p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    invoke-interface {p1}, Lcom/amplitude/core/utilities/EventsFileStorage;->readEventsContent()Ljava/util/List;

    move-result-object p1

    .line 77
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 80
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 81
    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->removeFile(Ljava/lang/String;)V

    goto :goto_2

    .line 83
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catch_1
    move-exception p1

    move-object v0, p0

    .line 71
    :goto_3
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_4

    .line 72
    :cond_6
    iget-object v0, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->logger:Lcom/amplitude/common/Logger;

    const-string v1, "Event storage file not found: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amplitude/common/Logger;->warn(Ljava/lang/String;)V

    .line 74
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getTransferIdentifyEvent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
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

    instance-of v0, p1, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;

    iget v1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;

    invoke-direct {v0, p0, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;-><init>(Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 19
    iget v2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->L$4:Ljava/lang/Object;

    iget-object v6, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    iget-object v8, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/amplitude/core/events/BaseEvent;

    iget-object v9, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_7

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    iget-object v2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_9

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    :try_start_2
    iget-object p1, p0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    iput-object p0, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->label:I

    invoke-interface {p1, v0}, Lcom/amplitude/core/utilities/EventsFileStorage;->rollover(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 28
    :goto_1
    iget-object p1, v2, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    invoke-interface {p1}, Lcom/amplitude/core/utilities/EventsFileStorage;->readEventsContent()Ljava/util/List;

    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    return-object v5

    .line 34
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v6, p1

    move-object v9, v2

    move-object v7, v5

    move-object v8, v7

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 36
    :try_start_3
    iget-object p1, v9, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->storage:Lcom/amplitude/core/utilities/EventsFileStorage;

    iput-object v9, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1;->label:I

    invoke-interface {p1, v2, v0}, Lcom/amplitude/core/utilities/EventsFileStorage;->getEventsString(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 19
    :cond_6
    :goto_3
    check-cast p1, Ljava/lang/String;

    .line 37
    move-object v10, p1

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_7

    .line 38
    move-object p1, v2

    check-cast p1, Ljava/lang/String;

    invoke-direct {v9, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->removeFile(Ljava/lang/String;)V

    goto :goto_2

    .line 41
    :cond_7
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/amplitude/core/utilities/JSONUtilKt;->toEvents(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 42
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 43
    move-object p1, v2

    check-cast p1, Ljava/lang/String;

    invoke-direct {v9, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->removeFile(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    if-nez v8, :cond_b

    const/4 v10, 0x0

    .line 48
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amplitude/core/events/BaseEvent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 49
    :try_start_4
    sget-object v8, Lcom/amplitude/core/platform/intercept/IdentifyInterceptorUtil;->INSTANCE:Lcom/amplitude/core/platform/intercept/IdentifyInterceptorUtil;

    invoke-virtual {v10}, Lcom/amplitude/core/events/BaseEvent;->getUserProperties()Ljava/util/Map;

    move-result-object v11

    if-nez v11, :cond_9

    move-object v11, v5

    goto :goto_4

    :cond_9
    sget-object v12, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-virtual {v12}, Lcom/amplitude/core/events/IdentifyOperation;->getOperationType()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    :goto_4
    if-eqz v11, :cond_a

    invoke-static {v11}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptorUtil;->filterNonNullValues(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p1, v4, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    move-object v8, v10

    goto :goto_5

    .line 49
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v8, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.Any?>"

    invoke-direct {p1, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    move-object v8, v10

    goto :goto_7

    .line 52
    :cond_b
    :goto_5
    :try_start_5
    sget-object v10, Lcom/amplitude/core/platform/intercept/IdentifyInterceptorUtil;->INSTANCE:Lcom/amplitude/core/platform/intercept/IdentifyInterceptorUtil;

    invoke-virtual {v10, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptorUtil;->mergeIdentifyList(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    if-nez v7, :cond_c

    goto :goto_6

    .line 53
    :cond_c
    invoke-interface {v7, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    :goto_6
    move-object p1, v2

    check-cast p1, Ljava/lang/String;

    invoke-direct {v9, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->removeFile(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 56
    :goto_7
    iget-object v10, v9, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->logger:Lcom/amplitude/common/Logger;

    const-string v11, "Identify Merge error: "

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v10, p1}, Lcom/amplitude/common/Logger;->warn(Ljava/lang/String;)V

    .line 57
    check-cast v2, Ljava/lang/String;

    invoke-direct {v9, v2}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->removeFile(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    if-nez v8, :cond_e

    goto :goto_8

    .line 60
    :cond_e
    invoke-virtual {v8}, Lcom/amplitude/core/events/BaseEvent;->getUserProperties()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_8

    .line 61
    :cond_f
    sget-object v0, Lcom/amplitude/core/events/IdentifyOperation;->SET:Lcom/amplitude/core/events/IdentifyOperation;

    invoke-virtual {v0}, Lcom/amplitude/core/events/IdentifyOperation;->getOperationType()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-interface {p1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    return-object v8

    :catch_3
    move-exception p1

    move-object v2, p0

    .line 23
    :goto_9
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_a

    .line 24
    :cond_10
    iget-object v0, v2, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;->logger:Lcom/amplitude/common/Logger;

    const-string v1, "Event storage file not found: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amplitude/common/Logger;->warn(Ljava/lang/String;)V

    :goto_a
    return-object v5
.end method
