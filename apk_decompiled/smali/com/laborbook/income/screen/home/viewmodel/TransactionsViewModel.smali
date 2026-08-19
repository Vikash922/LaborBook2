.class public final Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;
.super Lcom/laborbook/base/BaseViewModel;
.source "TransactionsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseViewModel<",
        "Lcom/laborbook/income/screen/home/uistate/TransactionUiState<",
        "+",
        "Lcom/laborbook/income/model/TransactionsResponseModel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;",
        "Lcom/laborbook/base/BaseViewModel;",
        "Lcom/laborbook/income/screen/home/uistate/TransactionUiState;",
        "Lcom/laborbook/income/model/TransactionsResponseModel;",
        "getTransactionsUseCase",
        "Lcom/laborbook/income/usecase/GetTransactionsUseCase;",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "<init>",
        "(Lcom/laborbook/income/usecase/GetTransactionsUseCase;Lcom/laborbook/base/datastore/DataStoreManager;)V",
        "getTransactions",
        "",
        "month",
        "",
        "year",
        "pageNo",
        "",
        "clearState",
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
.field private final dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

.field private final getTransactionsUseCase:Lcom/laborbook/income/usecase/GetTransactionsUseCase;


# direct methods
.method public constructor <init>(Lcom/laborbook/income/usecase/GetTransactionsUseCase;Lcom/laborbook/base/datastore/DataStoreManager;)V
    .locals 1

    const-string v0, "getTransactionsUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataStoreManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/laborbook/base/BaseViewModel;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;->getTransactionsUseCase:Lcom/laborbook/income/usecase/GetTransactionsUseCase;

    iput-object p2, p0, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    return-void
.end method

.method public static final synthetic access$getDataStoreManager$p(Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;)Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    return-object p0
.end method

.method public static final synthetic access$getGetTransactionsUseCase$p(Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;)Lcom/laborbook/income/usecase/GetTransactionsUseCase;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;->getTransactionsUseCase:Lcom/laborbook/income/usecase/GetTransactionsUseCase;

    return-object p0
.end method

.method public static final synthetic access$getUiState(Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;->getUiState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clearState()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;->getUiState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$LOADING;->INSTANCE:Lcom/laborbook/income/screen/home/uistate/TransactionUiState$LOADING;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getTransactions(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const-string v0, "month"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "year"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel$getTransactions$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel$getTransactions$1;-><init>(Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
