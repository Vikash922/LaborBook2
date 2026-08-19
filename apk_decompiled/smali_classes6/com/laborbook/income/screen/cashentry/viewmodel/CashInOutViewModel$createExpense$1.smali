.class final Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CashInOutViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->createExpense(Lcom/laborbook/income/model/TransactionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.laborbook.income.screen.cashentry.viewmodel.CashInOutViewModel$createExpense$1"
    f = "CashInOutViewModel.kt"
    i = {}
    l = {
        0x37,
        0x37,
        0x37
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $transactionRequest:Lcom/laborbook/income/model/TransactionRequest;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;


# direct methods
.method constructor <init>(Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;",
            "Lcom/laborbook/income/model/TransactionRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->this$0:Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    iput-object p2, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->$transactionRequest:Lcom/laborbook/income/model/TransactionRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;

    iget-object v0, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->this$0:Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    iget-object v1, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->$transactionRequest:Lcom/laborbook/income/model/TransactionRequest;

    invoke-direct {p1, v0, v1, p2}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;-><init>(Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 54
    iget v1, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/laborbook/income/usecase/CreateTransactionUseCase;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->this$0:Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    invoke-static {p1}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->access$getCreateTransactionUseCase$p(Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;)Lcom/laborbook/income/usecase/CreateTransactionUseCase;

    move-result-object v1

    iget-object p1, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->this$0:Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    invoke-static {p1}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;->access$getDataStoreManager$p(Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;)Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v5, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v5}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->label:I

    invoke-static {p1, v5}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->$transactionRequest:Lcom/laborbook/income/model/TransactionRequest;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->label:I

    invoke-virtual {v1, p1, v4, v5}, Lcom/laborbook/income/usecase/CreateTransactionUseCase;->invoke(Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1$1;

    iget-object v3, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->this$0:Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    invoke-direct {v1, v3}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1$1;-><init>(Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;)V

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel$createExpense$1;->label:I

    invoke-interface {p1, v1, v3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 69
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
