.class final Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PremiumOfferDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->startVerificationPolling(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;)V
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
    c = "com.laborbook.keep.screen.premium.PremiumOfferDialogFragment$startVerificationPolling$1"
    f = "PremiumOfferDialogFragment.kt"
    i = {}
    l = {
        0x407
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $subscriptionId:Ljava/lang/String;

.field final synthetic $verifyRequest:Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    iput-object p2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->$subscriptionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->$verifyRequest:Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;

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

    new-instance p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->$subscriptionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->$verifyRequest:Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1027
    iget v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1028
    :cond_2
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getVerificationAttempts$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)I

    move-result p1

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getMaxVerificationAttempts$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$isVerificationInProgress$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1029
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getVerificationAttempts$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)I

    move-result p1

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    add-int/2addr p1, v2

    invoke-static {v1, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$setVerificationAttempts$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;I)V

    .line 1030
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getViewModel(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    move-result-object p1

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->$subscriptionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->$verifyRequest:Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;

    invoke-virtual {p1, v1, v3}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->verifySubscription(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;)V

    .line 1031
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->label:I

    const-wide/16 v3, 0xbb8

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 1033
    :cond_3
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$isVerificationInProgress$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1034
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$setVerificationAttempts$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;I)V

    .line 1035
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getBinding(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvVerificationMessage:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    sget v1, Lcom/laborbook/keep/R$string;->checking_subscription_status:I

    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    :cond_4
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startVerificationPolling$1;->$subscriptionId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$startStatusPolling(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;)V

    .line 1038
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
