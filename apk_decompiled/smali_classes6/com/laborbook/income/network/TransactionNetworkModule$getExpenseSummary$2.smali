.class final Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionNetworkModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/income/network/TransactionNetworkModule;->getExpenseSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lretrofit2/Response<",
        "Lcom/boilerplate/network/model/DataResponse<",
        "Lcom/laborbook/income/model/TransactionSummaryResponseModel;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lretrofit2/Response;",
        "Lcom/boilerplate/network/model/DataResponse;",
        "Lcom/laborbook/income/model/TransactionSummaryResponseModel;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.laborbook.income.network.TransactionNetworkModule$getExpenseSummary$2"
    f = "TransactionNetworkModule.kt"
    i = {}
    l = {
        0x1d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $month:Ljava/lang/String;

.field final synthetic $userId:Ljava/lang/String;

.field final synthetic $year:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/laborbook/income/network/TransactionNetworkModule;


# direct methods
.method constructor <init>(Lcom/laborbook/income/network/TransactionNetworkModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/income/network/TransactionNetworkModule;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->this$0:Lcom/laborbook/income/network/TransactionNetworkModule;

    iput-object p2, p0, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->$month:Ljava/lang/String;

    iput-object p4, p0, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->$year:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;

    iget-object v1, p0, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->this$0:Lcom/laborbook/income/network/TransactionNetworkModule;

    iget-object v2, p0, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->$userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->$month:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->$year:Ljava/lang/String;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;-><init>(Lcom/laborbook/income/network/TransactionNetworkModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/income/model/TransactionSummaryResponseModel;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 28
    iget v1, p0, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->this$0:Lcom/laborbook/income/network/TransactionNetworkModule;

    invoke-static {p1}, Lcom/laborbook/income/network/TransactionNetworkModule;->access$getApi$p(Lcom/laborbook/income/network/TransactionNetworkModule;)Lcom/laborbook/income/network/TransactionApi;

    move-result-object v3

    iget-object v4, p0, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->$userId:Ljava/lang/String;

    iget-object v5, p0, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->$month:Ljava/lang/String;

    iget-object v6, p0, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->$year:Ljava/lang/String;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;->label:I

    const-string v7, "CREDIT"

    invoke-interface/range {v3 .. v8}, Lcom/laborbook/income/network/TransactionApi;->getTransactionSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
