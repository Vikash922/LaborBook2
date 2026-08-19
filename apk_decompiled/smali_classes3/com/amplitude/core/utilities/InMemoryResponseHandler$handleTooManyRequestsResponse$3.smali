.class final Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InMemoryResponseHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/core/utilities/InMemoryResponseHandler;->handleTooManyRequestsResponse(Lcom/amplitude/core/utilities/TooManyRequestsResponse;Ljava/lang/Object;Ljava/lang/String;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInMemoryResponseHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InMemoryResponseHandler.kt\ncom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1849#2,2:125\n*S KotlinDebug\n*F\n+ 1 InMemoryResponseHandler.kt\ncom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3\n*L\n80#1:125,2\n*E\n"
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
    c = "com.amplitude.core.utilities.InMemoryResponseHandler$handleTooManyRequestsResponse$3"
    f = "InMemoryResponseHandler.kt"
    i = {}
    l = {
        0x4f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $eventsToRetryLater:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amplitude/core/events/BaseEvent;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/amplitude/core/utilities/InMemoryResponseHandler;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/amplitude/core/utilities/InMemoryResponseHandler;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amplitude/core/events/BaseEvent;",
            ">;",
            "Lcom/amplitude/core/utilities/InMemoryResponseHandler;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;->$eventsToRetryLater:Ljava/util/List;

    iput-object p2, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;->this$0:Lcom/amplitude/core/utilities/InMemoryResponseHandler;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;

    iget-object v0, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;->$eventsToRetryLater:Ljava/util/List;

    iget-object v1, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;->this$0:Lcom/amplitude/core/utilities/InMemoryResponseHandler;

    invoke-direct {p1, v0, v1, p2}, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;-><init>(Ljava/util/List;Lcom/amplitude/core/utilities/InMemoryResponseHandler;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 78
    iget v1, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;->label:I

    const-wide/16 v1, 0x7530

    invoke-static {v1, v2, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 80
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;->$eventsToRetryLater:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/amplitude/core/utilities/InMemoryResponseHandler$handleTooManyRequestsResponse$3;->this$0:Lcom/amplitude/core/utilities/InMemoryResponseHandler;

    .line 125
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amplitude/core/events/BaseEvent;

    .line 81
    invoke-virtual {v0}, Lcom/amplitude/core/utilities/InMemoryResponseHandler;->getEventPipeline()Lcom/amplitude/core/platform/EventPipeline;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amplitude/core/platform/EventPipeline;->put(Lcom/amplitude/core/events/BaseEvent;)V

    goto :goto_1

    .line 83
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
