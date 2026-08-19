.class final Lcom/amplitude/android/Timeline$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Timeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/android/Timeline;->start$android_release()V
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
    c = "com.amplitude.android.Timeline$start$1"
    f = "Timeline.kt"
    i = {}
    l = {
        0x1c,
        0x27,
        0x28
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/amplitude/android/Timeline;


# direct methods
.method constructor <init>(Lcom/amplitude/android/Timeline;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amplitude/android/Timeline;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/amplitude/android/Timeline$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amplitude/android/Timeline$start$1;->this$0:Lcom/amplitude/android/Timeline;

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

    new-instance p1, Lcom/amplitude/android/Timeline$start$1;

    iget-object v0, p0, Lcom/amplitude/android/Timeline$start$1;->this$0:Lcom/amplitude/android/Timeline;

    invoke-direct {p1, v0, p2}, Lcom/amplitude/android/Timeline$start$1;-><init>(Lcom/amplitude/android/Timeline;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/amplitude/android/Timeline$start$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/amplitude/android/Timeline$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/amplitude/android/Timeline$start$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/amplitude/android/Timeline$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 26
    iget v1, p0, Lcom/amplitude/android/Timeline$start$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/amplitude/android/Timeline$start$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_0
    move-object p1, v1

    goto/16 :goto_5

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/amplitude/android/Timeline$start$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lcom/amplitude/android/Timeline$start$1;->this$0:Lcom/amplitude/android/Timeline;

    invoke-virtual {p1}, Lcom/amplitude/android/Timeline;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->isBuilt()Lkotlinx/coroutines/Deferred;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/amplitude/android/Timeline$start$1;->label:I

    invoke-interface {p1, v1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 30
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/amplitude/android/Timeline$start$1;->this$0:Lcom/amplitude/android/Timeline;

    invoke-static {p1}, Lcom/amplitude/android/Timeline;->access$getInitialSessionId$p(Lcom/amplitude/android/Timeline;)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v4, -0x1

    if-nez p1, :cond_8

    .line 31
    iget-object p1, p0, Lcom/amplitude/android/Timeline$start$1;->this$0:Lcom/amplitude/android/Timeline;

    invoke-static {p1}, Lcom/amplitude/android/Timeline;->access$get_sessionId$p(Lcom/amplitude/android/Timeline;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    .line 32
    iget-object v1, p0, Lcom/amplitude/android/Timeline$start$1;->this$0:Lcom/amplitude/android/Timeline;

    invoke-virtual {v1}, Lcom/amplitude/android/Timeline;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/core/Amplitude;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object v1

    sget-object v6, Lcom/amplitude/core/Storage$Constants;->PREVIOUS_SESSION_ID:Lcom/amplitude/core/Storage$Constants;

    invoke-interface {v1, v6}, Lcom/amplitude/core/Storage;->read(Lcom/amplitude/core/Storage$Constants;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    :goto_1
    move-wide v6, v4

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 31
    :goto_2
    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 36
    :cond_8
    iget-object p1, p0, Lcom/amplitude/android/Timeline$start$1;->this$0:Lcom/amplitude/android/Timeline;

    invoke-virtual {p1}, Lcom/amplitude/android/Timeline;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/core/Amplitude;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object v1

    sget-object v6, Lcom/amplitude/core/Storage$Constants;->LAST_EVENT_ID:Lcom/amplitude/core/Storage$Constants;

    invoke-interface {v1, v6}, Lcom/amplitude/core/Storage;->read(Lcom/amplitude/core/Storage$Constants;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v6, 0x0

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_3
    invoke-virtual {p1, v6, v7}, Lcom/amplitude/android/Timeline;->setLastEventId$android_release(J)V

    .line 37
    iget-object p1, p0, Lcom/amplitude/android/Timeline$start$1;->this$0:Lcom/amplitude/android/Timeline;

    invoke-virtual {p1}, Lcom/amplitude/android/Timeline;->getAmplitude()Lcom/amplitude/core/Amplitude;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amplitude/core/Amplitude;->getStorage()Lcom/amplitude/core/Storage;

    move-result-object v1

    sget-object v6, Lcom/amplitude/core/Storage$Constants;->LAST_EVENT_TIME:Lcom/amplitude/core/Storage$Constants;

    invoke-interface {v1, v6}, Lcom/amplitude/core/Storage;->read(Lcom/amplitude/core/Storage$Constants;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    invoke-static {v1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_4
    invoke-virtual {p1, v4, v5}, Lcom/amplitude/android/Timeline;->setLastEventTime(J)V

    .line 39
    iget-object p1, p0, Lcom/amplitude/android/Timeline$start$1;->this$0:Lcom/amplitude/android/Timeline;

    invoke-static {p1}, Lcom/amplitude/android/Timeline;->access$getEventMessageChannel$p(Lcom/amplitude/android/Timeline;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/channels/Channel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p1

    :goto_5
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/amplitude/android/Timeline$start$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/amplitude/android/Timeline$start$1;->label:I

    invoke-interface {p1, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_d

    return-object v0

    :cond_d
    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    :goto_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {v1}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amplitude/android/EventQueueMessage;

    .line 40
    iget-object v4, p0, Lcom/amplitude/android/Timeline$start$1;->this$0:Lcom/amplitude/android/Timeline;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/amplitude/android/Timeline$start$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/amplitude/android/Timeline$start$1;->label:I

    invoke-static {v4, p1, v5}, Lcom/amplitude/android/Timeline;->access$processEventMessage(Lcom/amplitude/android/Timeline;Lcom/amplitude/android/EventQueueMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    .line 42
    :cond_e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
