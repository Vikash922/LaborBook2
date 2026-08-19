.class final Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionNetworkModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/expense/network/TransactionNetworkModule;->updateExpense(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/expense/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/laborbook/expense/model/Transaction;",
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
        "Lcom/laborbook/expense/model/Transaction;"
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
    c = "com.laborbook.expense.network.TransactionNetworkModule$updateExpense$2"
    f = "TransactionNetworkModule.kt"
    i = {}
    l = {
        0x29
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field final synthetic $transactionRequest:Lcom/laborbook/expense/model/TransactionRequest;

.field final synthetic $userId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/laborbook/expense/network/TransactionNetworkModule;


# direct methods
.method constructor <init>(Lcom/laborbook/expense/network/TransactionNetworkModule;Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/expense/model/TransactionRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/expense/network/TransactionNetworkModule;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/laborbook/expense/model/TransactionRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->this$0:Lcom/laborbook/expense/network/TransactionNetworkModule;

    iput-object p2, p0, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->$transactionRequest:Lcom/laborbook/expense/model/TransactionRequest;

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

    new-instance v6, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;

    iget-object v1, p0, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->this$0:Lcom/laborbook/expense/network/TransactionNetworkModule;

    iget-object v2, p0, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->$userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->$id:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->$transactionRequest:Lcom/laborbook/expense/model/TransactionRequest;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;-><init>(Lcom/laborbook/expense/network/TransactionNetworkModule;Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/expense/model/TransactionRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/laborbook/expense/model/Transaction;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 40
    iget v1, p0, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->label:I

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

    .line 41
    iget-object p1, p0, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->this$0:Lcom/laborbook/expense/network/TransactionNetworkModule;

    invoke-static {p1}, Lcom/laborbook/expense/network/TransactionNetworkModule;->access$getApi$p(Lcom/laborbook/expense/network/TransactionNetworkModule;)Lcom/laborbook/expense/network/TransactionApi;

    move-result-object p1

    iget-object v1, p0, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->$userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->$id:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->$transactionRequest:Lcom/laborbook/expense/model/TransactionRequest;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/expense/network/TransactionNetworkModule$updateExpense$2;->label:I

    invoke-interface {p1, v1, v3, v4, v5}, Lcom/laborbook/expense/network/TransactionApi;->updateTransaction(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/expense/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
