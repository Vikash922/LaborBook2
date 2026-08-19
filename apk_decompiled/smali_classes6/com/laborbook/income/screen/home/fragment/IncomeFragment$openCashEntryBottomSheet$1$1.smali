.class final Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IncomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->openCashEntryBottomSheet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.laborbook.income.screen.home.fragment.IncomeFragment$openCashEntryBottomSheet$1$1"
    f = "IncomeFragment.kt"
    i = {}
    l = {
        0x20e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $expense:Lcom/laborbook/income/model/Transaction;

.field final synthetic $isUpdate:Z

.field label:I

.field final synthetic this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/Transaction;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/income/screen/home/fragment/IncomeFragment;",
            "Lcom/laborbook/income/model/Transaction;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    iput-object p2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;->$expense:Lcom/laborbook/income/model/Transaction;

    iput-boolean p3, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;->$isUpdate:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;

    iget-object v0, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    iget-object v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;->$expense:Lcom/laborbook/income/model/Transaction;

    iget-boolean v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;->$isUpdate:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;-><init>(Lcom/laborbook/income/screen/home/fragment/IncomeFragment;Lcom/laborbook/income/model/Transaction;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 525
    iget v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;->label:I

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

    .line 526
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;->label:I

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 527
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;->this$0:Lcom/laborbook/income/screen/home/fragment/IncomeFragment;

    invoke-virtual {p1}, Lcom/laborbook/income/screen/home/fragment/IncomeFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p1

    .line 528
    sget-object v0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->Companion:Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$Companion;

    .line 529
    iget-object v1, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;->$expense:Lcom/laborbook/income/model/Transaction;

    invoke-virtual {v1}, Lcom/laborbook/income/model/Transaction;->getType()Ljava/lang/String;

    move-result-object v1

    .line 530
    iget-object v2, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;->$expense:Lcom/laborbook/income/model/Transaction;

    invoke-virtual {v2}, Lcom/laborbook/income/model/Transaction;->getAmount()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 531
    iget-boolean v3, p0, Lcom/laborbook/income/screen/home/fragment/IncomeFragment$openCashEntryBottomSheet$1$1;->$isUpdate:Z

    .line 528
    invoke-virtual {v0, v1, v2, v3}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 527
    invoke-virtual {p1, v0}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Landroidx/fragment/app/Fragment;)V

    .line 534
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
