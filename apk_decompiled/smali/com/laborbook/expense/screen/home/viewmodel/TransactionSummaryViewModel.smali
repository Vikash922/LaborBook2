.class public final Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;
.super Lcom/laborbook/base/BaseViewModel;
.source "TransactionSummaryViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseViewModel<",
        "Lcom/laborbook/expense/screen/home/uistate/TransactionUiState<",
        "+",
        "Lcom/laborbook/expense/model/TransactionSummaryResponseModel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;",
        "Lcom/laborbook/base/BaseViewModel;",
        "Lcom/laborbook/expense/screen/home/uistate/TransactionUiState;",
        "Lcom/laborbook/expense/model/TransactionSummaryResponseModel;",
        "getTransactionSummaryUseCase",
        "Lcom/laborbook/expense/usecase/GetTransactionSummaryUseCase;",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "<init>",
        "(Lcom/laborbook/expense/usecase/GetTransactionSummaryUseCase;Lcom/laborbook/base/datastore/DataStoreManager;)V",
        "getTransactionSummary",
        "",
        "month",
        "",
        "year",
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
.field private final dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

.field private final getTransactionSummaryUseCase:Lcom/laborbook/expense/usecase/GetTransactionSummaryUseCase;


# direct methods
.method public constructor <init>(Lcom/laborbook/expense/usecase/GetTransactionSummaryUseCase;Lcom/laborbook/base/datastore/DataStoreManager;)V
    .locals 1

    const-string v0, "getTransactionSummaryUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataStoreManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/laborbook/base/BaseViewModel;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;->getTransactionSummaryUseCase:Lcom/laborbook/expense/usecase/GetTransactionSummaryUseCase;

    iput-object p2, p0, Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    return-void
.end method

.method public static final synthetic access$getDataStoreManager$p(Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;)Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    return-object p0
.end method

.method public static final synthetic access$getGetTransactionSummaryUseCase$p(Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;)Lcom/laborbook/expense/usecase/GetTransactionSummaryUseCase;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;->getTransactionSummaryUseCase:Lcom/laborbook/expense/usecase/GetTransactionSummaryUseCase;

    return-object p0
.end method

.method public static final synthetic access$getUiState(Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;->getUiState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getTransactionSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "month"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "year"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel$getTransactionSummary$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel$getTransactionSummary$1;-><init>(Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
