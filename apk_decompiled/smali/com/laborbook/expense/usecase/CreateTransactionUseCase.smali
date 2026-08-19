.class public final Lcom/laborbook/expense/usecase/CreateTransactionUseCase;
.super Ljava/lang/Object;
.source "CreateTransactionUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J,\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00080\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0086B\u00a2\u0006\u0002\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/laborbook/expense/usecase/CreateTransactionUseCase;",
        "",
        "transactionRepository",
        "Lcom/laborbook/expense/repository/TransactionRepository;",
        "<init>",
        "(Lcom/laborbook/expense/repository/TransactionRepository;)V",
        "invoke",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/boilerplate/network/model/NetworkResult;",
        "Lcom/laborbook/expense/model/Transaction;",
        "userId",
        "",
        "transactionRequest",
        "Lcom/laborbook/expense/model/TransactionRequest;",
        "(Ljava/lang/String;Lcom/laborbook/expense/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/expense/usecase/CreateTransactionUseCase;->transactionRepository:Lcom/laborbook/expense/repository/TransactionRepository;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Lcom/laborbook/expense/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/expense/model/TransactionRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/expense/model/Transaction;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/laborbook/expense/usecase/CreateTransactionUseCase;->transactionRepository:Lcom/laborbook/expense/repository/TransactionRepository;

    invoke-interface {v0, p1, p2, p3}, Lcom/laborbook/expense/repository/TransactionRepository;->createTransaction(Ljava/lang/String;Lcom/laborbook/expense/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
