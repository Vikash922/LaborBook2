.class final Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CashInOutBottomSheetFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    c = "com.laborbook.expense.screen.cashentry.fragment.CashInOutBottomSheetFragment$onViewCreated$1"
    f = "CashInOutBottomSheetFragment.kt"
    i = {}
    l = {
        0x70
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;->this$0:Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;

    iget-object v0, p0, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;->this$0:Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;-><init>(Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 111
    iget v1, p0, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;->label:I

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

    .line 112
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;->label:I

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 113
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;->this$0:Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment;

    invoke-virtual {p1}, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/laborbook/expense/databinding/FragmentCashInOutBinding;->etAmount:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment$onViewCreated$1;->this$0:Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment;

    invoke-virtual {v0}, Lcom/laborbook/expense/screen/cashentry/fragment/CashInOutBottomSheetFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/laborbook/base/BaseExtensionKt;->toggleKeyboard(Lcom/google/android/material/textfield/TextInputEditText;Landroid/app/Activity;)V

    .line 114
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
