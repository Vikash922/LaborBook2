.class final Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PremiumOfferDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->showErrorLoading(Ljava/lang/String;)V
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
    c = "com.laborbook.keep.screen.premium.PremiumOfferDialogFragment$showErrorLoading$2$1"
    f = "PremiumOfferDialogFragment.kt"
    i = {}
    l = {
        0x44a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;",
            "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;->$this_apply:Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    iput-object p2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

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

    new-instance p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;->$this_apply:Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-direct {p1, v0, v1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;-><init>(Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1097
    iget v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;->label:I

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

    .line 1098
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;->label:I

    const-wide/16 v3, 0x5dc

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 1099
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;->$this_apply:Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    iget-object p1, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->clLoadingOverlay:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1100
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;->$this_apply:Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    iget-object p1, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1101
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;->$this_apply:Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    iget-object p1, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->btnStartTrial:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    invoke-virtual {p1, v2}, Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;->setEnabled(Z)V

    .line 1102
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;->$this_apply:Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    iget-object p1, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->btnStartTrial:Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getSelectedPlan$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getStartTrialButtonText(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/boilerplate/uikit/views/buttons/RoundedPrimaryButton;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$showErrorLoading$2$1;->$this_apply:Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    iget-object p1, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->scrollContent:Landroid/widget/ScrollView;

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->setEnabled(Z)V

    .line 1104
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
