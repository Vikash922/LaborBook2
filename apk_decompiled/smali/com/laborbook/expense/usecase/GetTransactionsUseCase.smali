.class public final Lcom/laborbook/expense/usecase/GetTransactionsUseCase;
.super Ljava/lang/Object;
.source "GetTransactionsUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J<\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n0\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/laborbook/expense/usecase/GetTransactionsUseCase;",
        "",
        "transactionRepository",
        "Lcom/laborbook/expense/repository/TransactionRepository;",
        "<init>",
        "(Lcom/laborbook/expense/repository/TransactionRepository;)V",
        "getTransactionRepository",
        "()Lcom/laborbook/expense/repository/TransactionRepository;",
        "invoke",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/boilerplate/network/model/NetworkResult;",
        "Lcom/laborbook/expense/model/TransactionsResponseModel;",
        "userId",
        "",
        "month",
        "year",
        "pageNo",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expense_release"
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
.field private final transactionRepository:Lcom/laborbook/expense/repository/TransactionRepository;


# direct methods
.method public constructor <init>(Lcom/laborbook/expense/repository/TransactionRepository;)V
    .locals 1

    const-string v0, "transactionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/expense/usecase/GetTransactionsUseCase;->transactionRepository:Lcom/laborbook/expense/repository/TransactionRepository;

    return-void
.end method


# virtual methods
.method public final getTransactionRepository()Lcom/laborbook/expense/repository/TransactionRepository;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/laborbook/expense/usecase/GetTransactionsUseCase;->transactionRepository:Lcom/laborbook/expense/repository/TransactionRepository;

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/laborbook/expense/model/TransactionsResponseModel;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/laborbook/expense/usecase/GetTransactionsUseCase;->transactionRepository:Lcom/laborbook/expense/repository/TransactionRepository;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/laborbook/expense/repository/TransactionRepository;->getTransactions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
