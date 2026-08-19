.class final Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PremiumOfferDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->handleStartTrial()V
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
    c = "com.laborbook.keep.screen.premium.PremiumOfferDialogFragment$handleStartTrial$3"
    f = "PremiumOfferDialogFragment.kt"
    i = {
        0x1
    }
    l = {
        0x362,
        0x363
    }
    m = "invokeSuspend"
    n = {
        "userId"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

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

    new-instance p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 865
    iget v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->label:I

    const-string v2, ""

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 866
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getDataStoreManager(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 865
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 867
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getDataStoreManager(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v5, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v5}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getMOBILE_NUMBER()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    .line 865
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "@ybl"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 869
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getSelectedPlan$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 870
    iget-object v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    const/4 v5, 0x4

    .line 871
    new-array v5, v5, [Lkotlin/Pair;

    new-instance v6, Lkotlin/Pair;

    const-string v7, "user_id"

    invoke-direct {v6, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Lkotlin/Pair;

    const-string v7, "plan_id"

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v4

    new-instance v4, Lkotlin/Pair;

    const-string v6, "pg_plan_id"

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getPgPlanId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v5, v3

    new-instance v3, Lkotlin/Pair;

    const-string v4, "upi_id"

    invoke-direct {v3, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x3

    aput-object v3, v5, v4

    .line 870
    invoke-static {v5}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "create_subscription_initiated"

    invoke-static {v2, v4, v3}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$recordClickEvent(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 873
    sget-object v5, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->INSTANCE:Lcom/laborbook/base/analytics/FacebookPaymentEvents;

    .line 874
    iget-object v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-virtual {v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    const-string v2, "requireContext(...)"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasTrial()Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getDiscountedPrice()I

    move-result v2

    int-to-double v2, v2

    :goto_2
    move-wide v8, v2

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getCurrency()Ljava/lang/String;

    move-result-object v10

    iget-object v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getInstallSource$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Ljava/lang/String;

    move-result-object v11

    .line 873
    invoke-virtual/range {v5 .. v11}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logInitiateCheckout(Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    .line 876
    iget-object v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$handleStartTrial$3;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getViewModel(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    move-result-object v2

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasTrial()Z

    move-result v1

    invoke-virtual {v2, v0, v3, p1, v1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->createSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 877
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
