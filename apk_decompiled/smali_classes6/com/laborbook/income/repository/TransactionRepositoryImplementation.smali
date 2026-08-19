.class public final Lcom/laborbook/income/repository/TransactionRepositoryImplementation;
.super Ljava/lang/Object;
.source "TransactionRepositoryImplementation.kt"

# interfaces
.implements Lcom/laborbook/income/repository/TransactionRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J<\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00080\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0010J4\u0010\u0011\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00080\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0002\u0010\u0013J,\u0010\u0014\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00080\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0096@\u00a2\u0006\u0002\u0010\u0018J4\u0010\u0019\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00080\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0096@\u00a2\u0006\u0002\u0010\u001bJ,\u0010\u001c\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u00080\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0002\u0010\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/laborbook/income/repository/TransactionRepositoryImplementation;",
        "Lcom/laborbook/income/repository/TransactionRepository;",
        "transactionNetworkModule",
        "Lcom/laborbook/income/network/TransactionNetworkModule;",
        "<init>",
        "(Lcom/laborbook/income/network/TransactionNetworkModule;)V",
        "getTransactions",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/boilerplate/network/model/NetworkResult;",
        "Lcom/laborbook/income/model/TransactionsResponseModel;",
        "userId",
        "",
        "month",
        "year",
        "pageNo",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getTransactionSummary",
        "Lcom/laborbook/income/model/TransactionSummaryResponseModel;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createTransaction",
        "Lcom/laborbook/income/model/Transaction;",
        "transactionRequest",
        "Lcom/laborbook/income/model/TransactionRequest;",
        "(Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateTransaction",
        "id",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteTransaction",
        "Lcom/laborbook/income/model/DeleteTransactionResponseModel;",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "income_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final transactionNetworkModule:Lcom/laborbook/income/network/TransactionNetworkModule;


# direct methods
.method public constructor <init>(Lcom/laborbook/income/network/TransactionNetworkModule;)V
    .locals 1

    const-string v0, "transactionNetworkModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/income/repository/TransactionRepositoryImplementation;->transactionNetworkModule:Lcom/laborbook/income/network/TransactionNetworkModule;

    return-void
.end method


# virtual methods
.method public createTransaction(Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/income/model/TransactionRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/income/model/Transaction;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/laborbook/income/repository/TransactionRepositoryImplementation;->transactionNetworkModule:Lcom/laborbook/income/network/TransactionNetworkModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laborbook/income/network/TransactionNetworkModule;->createExpense(Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteTransaction(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/income/model/DeleteTransactionResponseModel;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/laborbook/income/repository/TransactionRepositoryImplementation;->transactionNetworkModule:Lcom/laborbook/income/network/TransactionNetworkModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laborbook/income/network/TransactionNetworkModule;->deleteExpense(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTransactionSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/income/model/TransactionSummaryResponseModel;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/laborbook/income/repository/TransactionRepositoryImplementation;->transactionNetworkModule:Lcom/laborbook/income/network/TransactionNetworkModule;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/laborbook/income/network/TransactionNetworkModule;->getExpenseSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTransactions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/income/model/TransactionsResponseModel;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/laborbook/income/repository/TransactionRepositoryImplementation;->transactionNetworkModule:Lcom/laborbook/income/network/TransactionNetworkModule;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/laborbook/income/network/TransactionNetworkModule;->getExpenses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateTransaction(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/laborbook/income/model/TransactionRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/income/model/Transaction;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/laborbook/income/repository/TransactionRepositoryImplementation;->transactionNetworkModule:Lcom/laborbook/income/network/TransactionNetworkModule;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/laborbook/income/network/TransactionNetworkModule;->updateExpense(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
