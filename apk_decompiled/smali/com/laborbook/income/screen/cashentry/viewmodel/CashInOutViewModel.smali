.class public final Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;
.super Lcom/laborbook/base/BaseViewModel;
.source "CashInOutViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseViewModel<",
        "Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState<",
        "*>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCashInOutViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CashInOutViewModel.kt\ncom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,109:1\n44#2,4:110\n*S KotlinDebug\n*F\n+ 1 CashInOutViewModel.kt\ncom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel\n*L\n27#1:110,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015J\u0016\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;",
        "Lcom/laborbook/base/BaseViewModel;",
        "Lcom/laborbook/income/screen/cashentry/uistate/CashInOutUiState;",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "createTransactionUseCase",
        "Lcom/laborbook/income/usecase/CreateTransactionUseCase;",
        "updateTransactionUseCase",
        "Lcom/laborbook/income/usecase/UpdateTransactionUseCase;",
        "deleteTransactionUseCase",
        "Lcom/laborbook/income/usecase/DeleteTransactionUseCase;",
        "<init>",
        "(Lcom/laborbook/base/datastore/DataStoreManager;Lcom/laborbook/income/usecase/CreateTransactionUseCase;Lcom/laborbook/income/usecase/UpdateTransactionUseCase;Lcom/laborbook/income/usecase/DeleteTransactionUseCase;)V",
        "exceptionHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "attachExpenseTextWatcher",
        "",
        "textView",
        "Landroid/widget/TextView;",
        "createExpense",
        "transactionRequest",
        "Lcom/laborbook/income/model/TransactionRequest;",
        "updateExpense",
        "id",
        "",
        "deleteExpense",
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
.field private final createTransactionUseCase:Lcom/laborbook/income/usecase/CreateTransactionUseCase;

.field private final dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

.field private final deleteTransactionUseCase:Lcom/laborbook/income/usecase/DeleteTransactionUseCase;

.field private final exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final updateTransactionUseCase:Lcom/laborbook/income/usecase/UpdateTransactionUseCase;


# direct methods
.method public constructor <init>(Lcom/laborbook/base/datastore/DataStoreManager;Lcom/laborbook/income/usecase/CreateTransactionUseCase;Lcom/laborbook/income/usecase/UpdateTransactionUseCase;Lcom/laborbook/income/usecase/DeleteTransactionUseCase;)V
    .locals 1

    const-string v0, "dataStoreManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createTransactionUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateTransactionUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteTransactionUseCase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/laborbook/base/BaseViewModel;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    .line 22
    iput-object p2, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->createTransactionUseCase:Lcom/laborbook/income/usecase/CreateTransactionUseCase;

    .line 23
    iput-object p3, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->updateTransactionUseCase:Lcom/laborbook/income/usecase/UpdateTransactionUseCase;

    .line 24
    iput-object p4, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->deleteTransactionUseCase:Lcom/laborbook/income/usecase/DeleteTransactionUseCase;

    .line 110
    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance p2, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {p2, p1, p0}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;)V

    check-cast p2, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 27
    iput-object p2, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    return-void
.end method

.method public static final synthetic access$getCreateTransactionUseCase$p(Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;)Lcom/laborbook/income/usecase/CreateTransactionUseCase;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->createTransactionUseCase:Lcom/laborbook/income/usecase/CreateTransactionUseCase;

    return-object p0
.end method

.method public static final synthetic access$getDataStoreManager$p(Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;)Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    return-object p0
.end method

.method public static final synthetic access$getDeleteTransactionUseCase$p(Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;)Lcom/laborbook/income/usecase/DeleteTransactionUseCase;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->deleteTransactionUseCase:Lcom/laborbook/income/usecase/DeleteTransactionUseCase;

    return-object p0
.end method

.method public static final synthetic access$getUiState(Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->getUiState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUpdateTransactionUseCase$p(Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;)Lcom/laborbook/income/usecase/UpdateTransactionUseCase;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->updateTransactionUseCase:Lcom/laborbook/income/usecase/UpdateTransactionUseCase;

    return-object p0
.end method


# virtual methods
.method public final attachExpenseTextWatcher(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$attachExpenseTextWatcher$textWatcher$1;

    invoke-direct {v0, p0}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$attachExpenseTextWatcher$textWatcher$1;-><init>(Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;)V

    .line 50
    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final createExpense(Lcom/laborbook/income/model/TransactionRequest;)V
    .locals 7

    const-string v0, "transactionRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;-><init>(Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final deleteExpense(Ljava/lang/String;)V
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$deleteExpense$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$deleteExpense$1;-><init>(Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final updateExpense(Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;)V
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v0, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$updateExpense$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$updateExpense$1;-><init>(Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
