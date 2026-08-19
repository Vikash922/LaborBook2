.class final Lcom/amplitude/core/platform/EventPipeline$write$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EventPipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/core/platform/EventPipeline;->write()Lkotlinx/coroutines/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.amplitude.core.platform.EventPipeline$write$1"
    f = "EventPipeline.kt"
    i = {
        0x1
    }
    l = {
        0x5d,
        0x62
    }
    m = "invokeSuspend"
    n = {
        "triggerFlush"
    }
    s = {
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/amplitude/core/platform/EventPipeline;


# direct methods
.method constructor <init>(Lcom/amplitude/core/platform/EventPipeline;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amplitude/core/platform/EventPipeline;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/amplitude/core/platform/EventPipeline$write$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->this$0:Lcom/amplitude/core/platform/EventPipeline;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/amplitude/core/platform/EventPipeline$write$1;

    iget-object v0, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->this$0:Lcom/amplitude/core/platform/EventPipeline;

    invoke-direct {p1, v0, p2}, Lcom/amplitude/core/platform/EventPipeline$write$1;-><init>(Lcom/amplitude/core/platform/EventPipeline;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/amplitude/core/platform/EventPipeline$write$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amplitude/core/platform/EventPipeline$write$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/amplitude/core/platform/EventPipeline$write$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/amplitude/core/platform/EventPipeline$write$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 92
    iget v1, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->I$0:I

    iget-object v5, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->this$0:Lcom/amplitude/core/platform/EventPipeline;

    invoke-static {p1}, Lcom/amplitude/core/platform/EventPipeline;->access$getWriteChannel$p(Lcom/amplitude/core/platform/EventPipeline;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/channels/Channel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p1

    :goto_0
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->label:I

    invoke-interface {p1, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v5, p1

    move-object p1, v1

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v5}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amplitude/core/platform/WriteQueueMessage;

    .line 95
    invoke-virtual {p1}, Lcom/amplitude/core/platform/WriteQueueMessage;->getType()Lcom/amplitude/core/platform/WriteQueueMessageType;

    move-result-object v1

    sget-object v6, Lcom/amplitude/core/platform/WriteQueueMessageType;->FLUSH:Lcom/amplitude/core/platform/WriteQueueMessageType;

    if-ne v1, v6, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-nez v1, :cond_5

    .line 96
    invoke-virtual {p1}, Lcom/amplitude/core/platform/WriteQueueMessage;->getEvent()Lcom/amplitude/core/events/BaseEvent;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 98
    :try_start_1
    iget-object v6, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->this$0:Lcom/amplitude/core/platform/EventPipeline;

    invoke-static {v6}, Lcom/amplitude/core/platform/EventPipeline;->access$getStorage(Lcom/amplitude/core/platform/EventPipeline;)Lcom/amplitude/core/Storage;

    move-result-object v6

    invoke-virtual {p1}, Lcom/amplitude/core/platform/WriteQueueMessage;->getEvent()Lcom/amplitude/core/events/BaseEvent;

    move-result-object p1

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->L$0:Ljava/lang/Object;

    iput v1, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->I$0:I

    iput v3, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->label:I

    invoke-interface {v6, p1, v7}, Lcom/amplitude/core/Storage;->writeEvent(Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_5

    return-object v0

    .line 100
    :goto_3
    iget-object v6, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->this$0:Lcom/amplitude/core/platform/EventPipeline;

    invoke-static {v6}, Lcom/amplitude/core/platform/EventPipeline;->access$getAmplitude$p(Lcom/amplitude/core/platform/EventPipeline;)Lcom/amplitude/core/Amplitude;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amplitude/core/Amplitude;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object v6

    const-string v7, "Error when writing event to pipeline"

    invoke-static {p1, v6, v7}, Lcom/amplitude/core/utilities/LoggerExtensionsKt;->logWithStackTrace(Ljava/lang/Exception;Lcom/amplitude/common/Logger;Ljava/lang/String;)V

    :cond_5
    :goto_4
    move-object p1, v5

    .line 105
    iget-object v5, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->this$0:Lcom/amplitude/core/platform/EventPipeline;

    invoke-static {v5}, Lcom/amplitude/core/platform/EventPipeline;->access$getAmplitude$p(Lcom/amplitude/core/platform/EventPipeline;)Lcom/amplitude/core/Amplitude;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amplitude/core/Configuration;->getOffline()Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    .line 110
    :cond_6
    iget-object v5, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->this$0:Lcom/amplitude/core/platform/EventPipeline;

    invoke-static {v5}, Lcom/amplitude/core/platform/EventPipeline;->access$getEventCount$p(Lcom/amplitude/core/platform/EventPipeline;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    iget-object v6, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->this$0:Lcom/amplitude/core/platform/EventPipeline;

    invoke-static {v6}, Lcom/amplitude/core/platform/EventPipeline;->access$getFlushCount(Lcom/amplitude/core/platform/EventPipeline;)I

    move-result v6

    if-ge v5, v6, :cond_8

    if-eqz v1, :cond_7

    goto :goto_5

    .line 114
    :cond_7
    iget-object v1, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->this$0:Lcom/amplitude/core/platform/EventPipeline;

    invoke-static {v1}, Lcom/amplitude/core/platform/EventPipeline;->access$schedule(Lcom/amplitude/core/platform/EventPipeline;)Lkotlinx/coroutines/Job;

    goto/16 :goto_0

    .line 111
    :cond_8
    :goto_5
    iget-object v1, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->this$0:Lcom/amplitude/core/platform/EventPipeline;

    invoke-static {v1}, Lcom/amplitude/core/platform/EventPipeline;->access$getEventCount$p(Lcom/amplitude/core/platform/EventPipeline;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 112
    iget-object v1, p0, Lcom/amplitude/core/platform/EventPipeline$write$1;->this$0:Lcom/amplitude/core/platform/EventPipeline;

    invoke-static {v1}, Lcom/amplitude/core/platform/EventPipeline;->access$getUploadChannel$p(Lcom/amplitude/core/platform/EventPipeline;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v1

    const-string v5, "#!upload"

    invoke-interface {v1, v5}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 117
    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
