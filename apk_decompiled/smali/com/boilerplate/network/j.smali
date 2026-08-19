.class public final Lcom/boilerplate/network/j;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $force:Z

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/boilerplate/network/NetworkResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/boilerplate/network/NetworkResource<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/boilerplate/network/NetworkResource<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/boilerplate/network/j;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/boilerplate/network/j;->$force:Z

    iput-object p2, p0, Lcom/boilerplate/network/j;->this$0:Lcom/boilerplate/network/NetworkResource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/boilerplate/network/j;

    iget-boolean v1, p0, Lcom/boilerplate/network/j;->$force:Z

    iget-object v2, p0, Lcom/boilerplate/network/j;->this$0:Lcom/boilerplate/network/NetworkResource;

    invoke-direct {v0, v1, v2, p2}, Lcom/boilerplate/network/j;-><init>(ZLcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/boilerplate/network/j;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/boilerplate/network/j;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/boilerplate/network/j;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/boilerplate/network/j;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/boilerplate/network/j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/boilerplate/network/j;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/boilerplate/network/j;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/boilerplate/network/NetworkResource;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :pswitch_1
    iget-boolean v1, p0, Lcom/boilerplate/network/j;->Z$0:Z

    iget-object v3, p0, Lcom/boilerplate/network/j;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/boilerplate/network/model/NetworkResult;

    iget-object v4, p0, Lcom/boilerplate/network/j;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/boilerplate/network/NetworkResource;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v1, p0, Lcom/boilerplate/network/j;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/boilerplate/network/j;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/boilerplate/network/j;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_0
    move-object v4, p1

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/boilerplate/network/j;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/boilerplate/network/j;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    sget-object v1, Lcom/boilerplate/network/model/NetworkResult;->Companion:Lcom/boilerplate/network/model/NetworkResult$Companion;

    invoke-virtual {v1, v2}, Lcom/boilerplate/network/model/NetworkResult$Companion;->loading(Ljava/lang/Object;)Lcom/boilerplate/network/model/NetworkResult;

    move-result-object v1

    iput-object p1, p0, Lcom/boilerplate/network/j;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p0, Lcom/boilerplate/network/j;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    return-object v0

    :cond_1
    move-object v1, p1

    :goto_0
    iget-boolean p1, p0, Lcom/boilerplate/network/j;->$force:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/boilerplate/network/j;->this$0:Lcom/boilerplate/network/NetworkResource;

    iput-object v1, p0, Lcom/boilerplate/network/j;->L$0:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p0, Lcom/boilerplate/network/j;->label:I

    invoke-static {p1, p0}, Lcom/boilerplate/network/NetworkResource;->access$fetchFromLocal(Lcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :goto_1
    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/boilerplate/network/j;->this$0:Lcom/boilerplate/network/NetworkResource;

    invoke-static {p1, v4}, Lcom/boilerplate/network/NetworkResource;->access$setLocalData$p(Lcom/boilerplate/network/NetworkResource;Ljava/lang/Object;)V

    sget-object v3, Lcom/boilerplate/network/model/NetworkResult;->Companion:Lcom/boilerplate/network/model/NetworkResult$Companion;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/network/model/NetworkResult$Companion;->success$default(Lcom/boilerplate/network/model/NetworkResult$Companion;Ljava/lang/Object;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/boilerplate/network/model/NetworkResult;

    move-result-object p1

    iput-object v1, p0, Lcom/boilerplate/network/j;->L$0:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, p0, Lcom/boilerplate/network/j;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/boilerplate/network/j;->this$0:Lcom/boilerplate/network/NetworkResource;

    invoke-static {p1}, Lcom/boilerplate/network/NetworkResource;->access$getRefreshControl$p(Lcom/boilerplate/network/NetworkResource;)Lcom/boilerplate/network/RefreshControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/boilerplate/network/RefreshControl;->isExpired()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/boilerplate/network/j;->$force:Z

    if-eqz p1, :cond_9

    :cond_3
    iget-object p1, p0, Lcom/boilerplate/network/j;->this$0:Lcom/boilerplate/network/NetworkResource;

    iput-object v1, p0, Lcom/boilerplate/network/j;->L$0:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, p0, Lcom/boilerplate/network/j;->label:I

    invoke-static {p1, p0}, Lcom/boilerplate/network/NetworkResource;->access$fetchFromRemote(Lcom/boilerplate/network/NetworkResource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_3
    iget-boolean v3, p0, Lcom/boilerplate/network/j;->$force:Z

    iget-object v4, p0, Lcom/boilerplate/network/j;->this$0:Lcom/boilerplate/network/NetworkResource;

    check-cast p1, Lcom/boilerplate/network/model/NetworkResult;

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResult;->getData()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/boilerplate/network/NetworkResource;->access$isSameAsCached(Lcom/boilerplate/network/NetworkResource;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResult;->getStatus()Lcom/boilerplate/network/model/NetworkResultStatus;

    move-result-object v5

    sget-object v6, Lcom/boilerplate/network/model/NetworkResultStatus;->ERROR:Lcom/boilerplate/network/model/NetworkResultStatus;

    if-ne v5, v6, :cond_9

    :cond_5
    iput-object v4, p0, Lcom/boilerplate/network/j;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/boilerplate/network/j;->L$1:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/boilerplate/network/j;->Z$0:Z

    const/4 v5, 0x5

    iput v5, p0, Lcom/boilerplate/network/j;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move v1, v3

    move-object v3, p1

    :goto_4
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-nez v1, :cond_8

    invoke-virtual {v3}, Lcom/boilerplate/network/model/NetworkResult;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {v3}, Lcom/boilerplate/network/model/NetworkResult;->getStatus()Lcom/boilerplate/network/model/NetworkResultStatus;

    move-result-object p1

    sget-object v1, Lcom/boilerplate/network/model/NetworkResultStatus;->ERROR:Lcom/boilerplate/network/model/NetworkResultStatus;

    if-eq p1, v1, :cond_8

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcom/boilerplate/network/i;

    invoke-direct {v1, v4, v3, v2}, Lcom/boilerplate/network/i;-><init>(Lcom/boilerplate/network/NetworkResource;Lcom/boilerplate/network/model/NetworkResult;Lkotlin/coroutines/Continuation;)V

    iput-object v4, p0, Lcom/boilerplate/network/j;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lcom/boilerplate/network/j;->L$1:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, p0, Lcom/boilerplate/network/j;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v0, v4

    :goto_5
    check-cast p1, Lkotlin/Unit;

    invoke-static {v0}, Lcom/boilerplate/network/NetworkResource;->access$getRefreshControl$p(Lcom/boilerplate/network/NetworkResource;)Lcom/boilerplate/network/RefreshControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/boilerplate/network/RefreshControl;->refresh()V

    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
