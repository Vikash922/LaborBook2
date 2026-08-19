.class final Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubscriptionViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->loadSubscriptionPlans(Ljava/lang/String;)V
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
    c = "com.laborbook.keep.screen.premium.viewmodel.SubscriptionViewModel$loadSubscriptionPlans$1"
    f = "SubscriptionViewModel.kt"
    i = {}
    l = {
        0x45
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $userId:Ljava/lang/String;

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
            "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    iput-object p2, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;->$userId:Ljava/lang/String;

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

    new-instance p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;->$userId:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;-><init>(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 59
    iget v1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    sget-object p1, Lcom/google/firebase/ktx/Firebase;->INSTANCE:Lcom/google/firebase/ktx/Firebase;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/ktx/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    .line 62
    sget-object v1, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->INSTANCE:Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;

    invoke-virtual {v1, p1}, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->isSubscriptionsEnabled(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 63
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$get_subscriptionState$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Error;

    const-string v1, "Subscriptions feature is not available"

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 64
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$get_subscriptionState$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Loading;->INSTANCE:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Loading;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 69
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$getSubscriptionUseCase$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Lcom/laborbook/keep/usecase/SubscriptionUseCase;

    move-result-object p1

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;->$userId:Ljava/lang/String;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;->label:I

    invoke-interface {p1, v1, v3}, Lcom/laborbook/keep/usecase/SubscriptionUseCase;->getAvailablePlans-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 70
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 71
    invoke-static {v0}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$get_subscriptionPlans$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 72
    invoke-static {v0}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$get_subscriptionState$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v2, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$PlansLoaded;

    invoke-direct {v2, v1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$PlansLoaded;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 75
    invoke-static {v0}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$get_subscriptionState$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Error;

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "Failed to load subscription plans"

    .line 75
    :cond_5
    invoke-direct {v1, p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 79
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
