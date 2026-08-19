.class final Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel$getTransactionSummary$1$1;
.super Ljava/lang/Object;
.source "TransactionSummaryViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel$getTransactionSummary$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel$getTransactionSummary$1$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionSummaryViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionSummaryViewModel.kt\ncom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel$getTransactionSummary$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n1#2:37\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;


# direct methods
.method constructor <init>(Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel$getTransactionSummary$1$1;->this$0:Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/boilerplate/network/model/NetworkResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/income/model/TransactionSummaryResponseModel;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResult;->getStatus()Lcom/boilerplate/network/model/NetworkResultStatus;

    move-result-object p2

    sget-object v0, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel$getTransactionSummary$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/boilerplate/network/model/NetworkResultStatus;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 29
    iget-object p2, p0, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel$getTransactionSummary$1$1;->this$0:Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;

    invoke-static {p2}, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;->access$getUiState(Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    .line 30
    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$ERROR;

    invoke-direct {v0, p1}, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$ERROR;-><init>(Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 25
    :cond_2
    iget-object p2, p0, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel$getTransactionSummary$1$1;->this$0:Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;

    invoke-static {p2}, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;->access$getUiState(Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    new-instance v2, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$SUCCESS;

    invoke-virtual {p1}, Lcom/boilerplate/network/model/NetworkResult;->getData()Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v1, v0}, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$SUCCESS;-><init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel$getTransactionSummary$1$1;->this$0:Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;

    invoke-static {p1}, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;->access$getUiState(Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object p2, Lcom/laborbook/income/screen/home/uistate/TransactionUiState$LOADING;->INSTANCE:Lcom/laborbook/income/screen/home/uistate/TransactionUiState$LOADING;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 33
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/boilerplate/network/model/NetworkResult;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel$getTransactionSummary$1$1;->emit(Lcom/boilerplate/network/model/NetworkResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
