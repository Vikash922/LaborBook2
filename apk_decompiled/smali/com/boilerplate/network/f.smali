.class public final Lcom/boilerplate/network/f;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $networkResult:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $res:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

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
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/boilerplate/network/NetworkResource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;>;",
            "Lcom/boilerplate/network/NetworkResource<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/boilerplate/network/f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/boilerplate/network/f;->$res:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/boilerplate/network/f;->this$0:Lcom/boilerplate/network/NetworkResource;

    iput-object p3, p0, Lcom/boilerplate/network/f;->$networkResult:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/boilerplate/network/f;

    iget-object v0, p0, Lcom/boilerplate/network/f;->$res:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/boilerplate/network/f;->this$0:Lcom/boilerplate/network/NetworkResource;

    iget-object v2, p0, Lcom/boilerplate/network/f;->$networkResult:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/boilerplate/network/f;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/boilerplate/network/NetworkResource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/boilerplate/network/f;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/boilerplate/network/f;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/boilerplate/network/f;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/boilerplate/network/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/boilerplate/network/f;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/boilerplate/network/f;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/boilerplate/network/f;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/boilerplate/network/f;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcom/boilerplate/network/f;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/boilerplate/network/NetworkResource;

    iget-object v6, p0, Lcom/boilerplate/network/f;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/boilerplate/network/f;->$res:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcom/boilerplate/network/f;->this$0:Lcom/boilerplate/network/NetworkResource;

    iget-object p1, p0, Lcom/boilerplate/network/f;->$networkResult:Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_2
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lcom/boilerplate/network/NetworkResource;->access$getRemoteFetch$p(Lcom/boilerplate/network/NetworkResource;)Lkotlin/jvm/functions/Function1;

    move-result-object v6

    iput-object v1, p0, Lcom/boilerplate/network/f;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/boilerplate/network/f;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/boilerplate/network/f;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/boilerplate/network/f;->L$3:Ljava/lang/Object;

    iput v3, p0, Lcom/boilerplate/network/f;->label:I

    invoke-interface {v6, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v6, v1

    move-object v13, v3

    move-object v3, p1

    move-object p1, v13

    :goto_0
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lretrofit2/Response;

    iput-object v3, p0, Lcom/boilerplate/network/f;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/boilerplate/network/f;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/boilerplate/network/f;->L$2:Ljava/lang/Object;

    iput-object v4, p0, Lcom/boilerplate/network/f;->L$3:Ljava/lang/Object;

    iput v2, p0, Lcom/boilerplate/network/f;->label:I

    invoke-static {v5, p1, p0}, Lcom/boilerplate/network/NetworkResource;->access$getDataFromResponse(Lcom/boilerplate/network/NetworkResource;Lretrofit2/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, v3

    :goto_1
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    iget-object v0, p0, Lcom/boilerplate/network/f;->$networkResult:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/boilerplate/network/f;->this$0:Lcom/boilerplate/network/NetworkResource;

    iget-object v2, p0, Lcom/boilerplate/network/f;->$res:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_7

    instance-of v5, v3, Ljava/net/UnknownHostException;

    if-eqz v5, :cond_5

    sget-object v3, Lcom/boilerplate/network/model/NetworkResult;->Companion:Lcom/boilerplate/network/model/NetworkResult$Companion;

    invoke-static {v1}, Lcom/boilerplate/network/NetworkResource;->access$getLocalData$p(Lcom/boilerplate/network/NetworkResource;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lretrofit2/Response;

    const-string v5, "Please check your internet connection and try again later"

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_5
    sget-object v5, Lcom/boilerplate/network/model/NetworkResult;->Companion:Lcom/boilerplate/network/model/NetworkResult$Companion;

    invoke-static {v1}, Lcom/boilerplate/network/NetworkResource;->access$getLocalData$p(Lcom/boilerplate/network/NetworkResource;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lretrofit2/Response;

    move-object v13, v5

    move-object v5, v3

    move-object v3, v13

    if-eqz v2, :cond_6

    :goto_3
    invoke-virtual {v2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_6
    move-object v7, v1

    move-object v6, v3

    move-object v9, v4

    move-object v8, v5

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lcom/boilerplate/network/model/NetworkResult$Companion;->error$default(Lcom/boilerplate/network/model/NetworkResult$Companion;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/boilerplate/network/model/NetworkResult;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_7
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
