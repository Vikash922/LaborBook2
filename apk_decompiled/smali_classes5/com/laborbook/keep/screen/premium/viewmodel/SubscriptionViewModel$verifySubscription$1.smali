.class final Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubscriptionViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->verifySubscription(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;)V
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
    c = "com.laborbook.keep.screen.premium.viewmodel.SubscriptionViewModel$verifySubscription$1"
    f = "SubscriptionViewModel.kt"
    i = {
        0x1
    }
    l = {
        0x83,
        0x87
    }
    m = "invokeSuspend"
    n = {
        "isVerified"
    }
    s = {
        "Z$0"
    }
.end annotation


# instance fields
.field final synthetic $razorpayData:Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;

.field final synthetic $subscriptionId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    iput-object p2, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->$subscriptionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->$razorpayData:Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;

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

    new-instance p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->$subscriptionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->$razorpayData:Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;-><init>(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 128
    iget v1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->Z$0:Z

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    iget-object v2, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->L$0:Ljava/lang/Object;

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

    .line 129
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$get_subscriptionState$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Loading;->INSTANCE:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Loading;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 131
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$getSubscriptionUseCase$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Lcom/laborbook/keep/usecase/SubscriptionUseCase;

    move-result-object p1

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->$subscriptionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->$razorpayData:Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->label:I

    invoke-interface {p1, v1, v4, v5}, Lcom/laborbook/keep/usecase/SubscriptionUseCase;->verifyPayment-0E7RQCE(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 132
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, p1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 135
    invoke-static {v1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$getPremiumOfferManager$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    move-result-object v4

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->L$1:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->Z$0:Z

    iput v2, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->label:I

    invoke-virtual {v4, p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->markUserAsPremium(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    return-object v0

    :cond_4
    move-object v2, p1

    move v0, v3

    :goto_1
    move v3, v0

    move-object p1, v2

    .line 140
    :cond_5
    invoke-static {v1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$get_subscriptionState$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$SubscriptionVerified;

    invoke-direct {v1, v3}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$SubscriptionVerified;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 142
    :cond_6
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;->this$0:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 143
    invoke-static {v0}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->access$get_subscriptionState$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Error;

    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "Payment verification failed"

    .line 143
    :cond_7
    invoke-direct {v1, p1}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 147
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
