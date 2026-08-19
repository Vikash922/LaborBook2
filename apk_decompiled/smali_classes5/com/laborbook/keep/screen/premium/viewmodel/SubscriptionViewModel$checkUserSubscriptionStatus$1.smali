.class final Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubscriptionViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->checkUserSubscriptionStatus(Ljava/lang/String;)V
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
    c = "com.laborbook.keep.screen.premium.viewmodel.SubscriptionViewModel$checkUserSubscriptionStatus$1"
    f = "SubscriptionViewModel.kt"
    i = {}
    l = {
        0x59,
        0x5f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $userId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    iput-object p2, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->$userId:Ljava/lang/String;

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

    new-instance p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->$userId:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;-><init>(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 86
    iget v1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$get_subscriptionState$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Loading;->INSTANCE:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Loading;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$getSubscriptionUseCase$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Lcom/laborbook/keep/usecase/SubscriptionUseCase;

    move-result-object p1

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->$userId:Ljava/lang/String;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->label:I

    invoke-interface {p1, v1, v4}, Lcom/laborbook/keep/usecase/SubscriptionUseCase;->checkSubscriptionStatus-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 90
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Lcom/laborbook/keep/model/subscription/UserSubscription;

    .line 91
    invoke-static {v1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$get_userSubscription$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 92
    invoke-static {v1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$get_subscriptionState$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    new-instance v5, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$UserSubscriptionLoaded;

    invoke-direct {v5, v3}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$UserSubscriptionLoaded;-><init>(Lcom/laborbook/keep/model/subscription/UserSubscription;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 95
    invoke-static {v1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$getPremiumOfferManager$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    move-result-object v1

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->label:I

    invoke-virtual {v1, v3, p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->updateSubscriptionStatus(Lcom/laborbook/keep/model/subscription/UserSubscription;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    :goto_1
    move-object p1, v0

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 98
    invoke-static {v0}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$get_subscriptionState$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Error;

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "Failed to check subscription status"

    .line 98
    :cond_6
    invoke-direct {v1, p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 102
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
