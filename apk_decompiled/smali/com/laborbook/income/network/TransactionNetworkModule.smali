.class public final Lcom/laborbook/income/network/TransactionNetworkModule;
.super Ljava/lang/Object;
.source "TransactionNetworkModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J<\u0010\n\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c0\u000b2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0086@\u00a2\u0006\u0002\u0010\u0013J4\u0010\u0014\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u000c0\u000b2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0002\u0010\u0016J,\u0010\u0017\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u000c0\u000b2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001aH\u0086@\u00a2\u0006\u0002\u0010\u001bJ4\u0010\u001c\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u000c0\u000b2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001aH\u0086@\u00a2\u0006\u0002\u0010\u001eJ,\u0010\u001f\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010 0\u000c0\u000b2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0002\u0010!R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/laborbook/income/network/TransactionNetworkModule;",
        "",
        "<init>",
        "()V",
        "baseUrl",
        "",
        "networkHandler",
        "Lcom/boilerplate/network/NetworkHandler;",
        "api",
        "Lcom/laborbook/income/network/TransactionApi;",
        "getExpenses",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/boilerplate/network/model/NetworkResult;",
        "Lcom/laborbook/income/model/TransactionsResponseModel;",
        "userId",
        "month",
        "year",
        "pageNo",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getExpenseSummary",
        "Lcom/laborbook/income/model/TransactionSummaryResponseModel;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createExpense",
        "Lcom/laborbook/income/model/Transaction;",
        "transactionRequest",
        "Lcom/laborbook/income/model/TransactionRequest;",
        "(Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateExpense",
        "id",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteExpense",
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
.field private final api:Lcom/laborbook/income/network/TransactionApi;

.field private final baseUrl:Ljava/lang/String;

.field private final networkHandler:Lcom/boilerplate/network/NetworkHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "https://api.laborbook.app/"

    iput-object v0, p0, Lcom/laborbook/income/network/TransactionNetworkModule;->baseUrl:Ljava/lang/String;

    .line 18
    sget-object v1, Lcom/boilerplate/network/NetworkHandler;->Companion:Lcom/boilerplate/network/NetworkHandler$Companion;

    invoke-virtual {v1}, Lcom/boilerplate/network/NetworkHandler$Companion;->getInstance()Lcom/boilerplate/network/NetworkHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/laborbook/income/network/TransactionNetworkModule;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    .line 19
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/boilerplate/network/NetworkHandler;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/laborbook/income/network/TransactionApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/network/TransactionApi;

    iput-object v0, p0, Lcom/laborbook/income/network/TransactionNetworkModule;->api:Lcom/laborbook/income/network/TransactionApi;

    return-void
.end method

.method public static final synthetic access$getApi$p(Lcom/laborbook/income/network/TransactionNetworkModule;)Lcom/laborbook/income/network/TransactionApi;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/laborbook/income/network/TransactionNetworkModule;->api:Lcom/laborbook/income/network/TransactionApi;

    return-object p0
.end method


# virtual methods
.method public final createExpense(Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 34
    iget-object v0, p0, Lcom/laborbook/income/network/TransactionNetworkModule;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    new-instance v1, Lcom/laborbook/income/network/TransactionNetworkModule$createExpense$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/laborbook/income/network/TransactionNetworkModule$createExpense$2;-><init>(Lcom/laborbook/income/network/TransactionNetworkModule;Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, p3}, Lcom/boilerplate/network/NetworkHandler;->getData(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final deleteExpense(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 46
    iget-object v0, p0, Lcom/laborbook/income/network/TransactionNetworkModule;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    new-instance v1, Lcom/laborbook/income/network/TransactionNetworkModule$deleteExpense$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/laborbook/income/network/TransactionNetworkModule$deleteExpense$2;-><init>(Lcom/laborbook/income/network/TransactionNetworkModule;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, p3}, Lcom/boilerplate/network/NetworkHandler;->getData(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExpenseSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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
    iget-object v0, p0, Lcom/laborbook/income/network/TransactionNetworkModule;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    new-instance v7, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenseSummary$2;-><init>(Lcom/laborbook/income/network/TransactionNetworkModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v7, p4}, Lcom/boilerplate/network/NetworkHandler;->getData(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExpenses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
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

    .line 22
    iget-object v0, p0, Lcom/laborbook/income/network/TransactionNetworkModule;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    new-instance v8, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenses$2;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/laborbook/income/network/TransactionNetworkModule$getExpenses$2;-><init>(Lcom/laborbook/income/network/TransactionNetworkModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v8, p5}, Lcom/boilerplate/network/NetworkHandler;->getData(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final updateExpense(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    .line 40
    iget-object v0, p0, Lcom/laborbook/income/network/TransactionNetworkModule;->networkHandler:Lcom/boilerplate/network/NetworkHandler;

    new-instance v7, Lcom/laborbook/income/network/TransactionNetworkModule$updateExpense$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/laborbook/income/network/TransactionNetworkModule$updateExpense$2;-><init>(Lcom/laborbook/income/network/TransactionNetworkModule;Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v7, p4}, Lcom/boilerplate/network/NetworkHandler;->getData(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
