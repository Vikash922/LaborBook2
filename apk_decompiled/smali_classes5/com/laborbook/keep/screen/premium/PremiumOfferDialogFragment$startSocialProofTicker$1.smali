.class final Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PremiumOfferDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->startSocialProofTicker()V
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
    c = "com.laborbook.keep.screen.premium.PremiumOfferDialogFragment$startSocialProofTicker$1"
    f = "PremiumOfferDialogFragment.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x10f,
        0x11a
    }
    m = "invokeSuspend"
    n = {
        "shuffled",
        "index",
        "shuffled",
        "index"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;


# direct methods
.method public static synthetic $r8$lambda$h137nGlKsPK4IjiWte4fJDWjrME(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/widget/TextView;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->invokeSuspend$lambda$0(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/widget/TextView;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;)V

    return-void
.end method

.method constructor <init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/widget/TextView;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getBinding(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iget p3, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
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

    new-instance p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 262
    iget v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->label:I

    const-wide/16 v2, 0xdac

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v6, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 264
    :try_start_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getBinding(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p1

    if-nez p1, :cond_3

    goto/16 :goto_2

    .line 265
    :cond_3
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getSelectedPlan$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasTrial()Z

    move-result p1

    if-ne p1, v5, :cond_4

    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$isTrialExpired$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 266
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getSocialProofTrialResIds$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getSocialProofProResIds$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Ljava/util/List;

    move-result-object p1

    .line 267
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->shuffled(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    .line 268
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 270
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getBinding(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvSocialProof:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    iget-object v7, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_5
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v6, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->L$1:Ljava/lang/Object;

    iput v5, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->label:I

    invoke-static {v2, v3, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 272
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getBinding(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 273
    iget p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p1, v5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    rem-int/2addr p1, v7

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 274
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getBinding(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvSocialProof:Landroid/widget/TextView;

    if-nez p1, :cond_7

    goto :goto_3

    .line 276
    :cond_7
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    new-instance v9, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1$$ExternalSyntheticLambda0;

    invoke-direct {v9, v8, p1, v6, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/widget/TextView;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 282
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v6, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startSocialProofTicker$1;->label:I

    invoke-static {v2, v3, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 264
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 285
    :catch_0
    :cond_9
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
