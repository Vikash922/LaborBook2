.class public final Lcom/boilerplate/network/i;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $it1:Lcom/boilerplate/network/model/NetworkResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lcom/boilerplate/network/NetworkResource;Lcom/boilerplate/network/model/NetworkResult;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/boilerplate/network/NetworkResource<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/boilerplate/network/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/boilerplate/network/i;->this$0:Lcom/boilerplate/network/NetworkResource;

    iput-object p2, p0, Lcom/boilerplate/network/i;->$it1:Lcom/boilerplate/network/model/NetworkResult;

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

    new-instance p1, Lcom/boilerplate/network/i;

    iget-object v0, p0, Lcom/boilerplate/network/i;->this$0:Lcom/boilerplate/network/NetworkResource;

    iget-object v1, p0, Lcom/boilerplate/network/i;->$it1:Lcom/boilerplate/network/model/NetworkResult;

    invoke-direct {p1, v0, v1, p2}, Lcom/boilerplate/network/i;-><init>(Lcom/boilerplate/network/NetworkResource;Lcom/boilerplate/network/model/NetworkResult;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/boilerplate/network/i;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/boilerplate/network/i;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/boilerplate/network/i;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/boilerplate/network/i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/boilerplate/network/i;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/boilerplate/network/i;->this$0:Lcom/boilerplate/network/NetworkResource;

    iput v3, p0, Lcom/boilerplate/network/i;->label:I

    invoke-virtual {p1, p0}, Lcom/boilerplate/network/NetworkResource;->cleanup(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/boilerplate/network/i;->$it1:Lcom/boilerplate/network/model/NetworkResult;

    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResult;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/boilerplate/network/i;->this$0:Lcom/boilerplate/network/NetworkResource;

    invoke-static {v1}, Lcom/boilerplate/network/NetworkResource;->access$getLocalStore$p(Lcom/boilerplate/network/NetworkResource;)Lkotlin/jvm/functions/Function2;

    move-result-object v1

    if-eqz v1, :cond_5

    iput v2, p0, Lcom/boilerplate/network/i;->label:I

    invoke-interface {v1, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
