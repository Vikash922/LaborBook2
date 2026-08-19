.class final Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PremiumOfferDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->startTestimonialTicker()V
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
    c = "com.laborbook.keep.screen.premium.PremiumOfferDialogFragment$startTestimonialTicker$1"
    f = "PremiumOfferDialogFragment.kt"
    i = {
        0x0
    }
    l = {
        0x13c
    }
    m = "invokeSuspend"
    n = {
        "index"
    }
    s = {
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;


# direct methods
.method public static synthetic $r8$lambda$RmzG6NV1RPiLv1yQJSrt6dqmsWU(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/widget/TextView;Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;Landroid/widget/TextView;Landroid/widget/RatingBar;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->invokeSuspend$lambda$0(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/widget/TextView;Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;Landroid/widget/TextView;Landroid/widget/RatingBar;Landroid/widget/LinearLayout;)V

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
            "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/widget/TextView;Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;Landroid/widget/TextView;Landroid/widget/RatingBar;Landroid/widget/LinearLayout;)V
    .locals 1

    .line 304
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getBinding(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;->getTextResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-virtual {p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;->getAuthorResId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;->getRating()F

    move-result p0

    invoke-virtual {p4, p0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 308
    invoke-virtual {p5}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xfa

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

    new-instance p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 290
    iget v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->I$0:I

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 292
    :try_start_1
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getBinding(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p1

    if-nez p1, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 p1, 0x0

    move v1, p1

    .line 294
    :goto_0
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getBinding(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 295
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getTestimonials$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;

    .line 296
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getBinding(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object v9, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llTestimonialCard:Landroid/widget/LinearLayout;

    if-nez v9, :cond_3

    goto/16 :goto_4

    .line 297
    :cond_3
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getBinding(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object v5, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvTestimonialText:Landroid/widget/TextView;

    if-nez v5, :cond_4

    goto/16 :goto_4

    .line 298
    :cond_4
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getBinding(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object v7, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvTestimonialAuthor:Landroid/widget/TextView;

    if-nez v7, :cond_5

    goto/16 :goto_4

    .line 299
    :cond_5
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getBinding(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object v8, p1, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->rbTestimonial:Landroid/widget/RatingBar;

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    if-lez v1, :cond_7

    .line 303
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0xfa

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v4, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    new-instance v10, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1$$ExternalSyntheticLambda0;

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Landroid/widget/TextView;Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;Landroid/widget/TextView;Landroid/widget/RatingBar;Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, v10}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 309
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 311
    :cond_7
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-virtual {v6}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;->getTextResId()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-virtual {v6}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;->getAuthorResId()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {v6}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Testimonial;->getRating()F

    move-result p1

    invoke-virtual {v8, p1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 316
    :goto_1
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->I$0:I

    iput v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->label:I

    const-wide/16 v3, 0xfa0

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    add-int/2addr v1, v2

    .line 317
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$startTestimonialTicker$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getTestimonials$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    rem-int/2addr v1, p1

    goto/16 :goto_0

    .line 292
    :cond_9
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 320
    :catch_0
    :cond_a
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
