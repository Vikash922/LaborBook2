.class public final Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl;
.super Ljava/lang/Object;
.source "SubscriptionUseCaseImpl.kt"

# interfaces
.implements Lcom/laborbook/keep/usecase/SubscriptionUseCase;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubscriptionUseCaseImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionUseCaseImpl.kt\ncom/laborbook/keep/usecase/SubscriptionUseCaseImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,53:1\n1#2:54\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J$\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0004\u0008\u0010\u0010\rJ6\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0096@\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J&\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00072\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u00072\u0006\u0010\u001a\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0004\u0008!\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl;",
        "Lcom/laborbook/keep/usecase/SubscriptionUseCase;",
        "subscriptionRepository",
        "Lcom/laborbook/keep/repository/SubscriptionRepository;",
        "<init>",
        "(Lcom/laborbook/keep/repository/SubscriptionRepository;)V",
        "getAvailablePlans",
        "Lkotlin/Result;",
        "",
        "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
        "userId",
        "",
        "getAvailablePlans-gIAlu-s",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "checkSubscriptionStatus",
        "Lcom/laborbook/keep/model/subscription/UserSubscription;",
        "checkSubscriptionStatus-gIAlu-s",
        "initiateSubscription",
        "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;",
        "planId",
        "upiId",
        "hasTrial",
        "",
        "initiateSubscription-yxL6bBk",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "verifyPayment",
        "subscriptionId",
        "paymentData",
        "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;",
        "verifyPayment-0E7RQCE",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelSubscription",
        "Lcom/laborbook/keep/model/subscription/CancelSubscriptionResponse;",
        "cancelSubscription-gIAlu-s",
        "keep_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final subscriptionRepository:Lcom/laborbook/keep/repository/SubscriptionRepository;


# direct methods
.method public constructor <init>(Lcom/laborbook/keep/repository/SubscriptionRepository;)V
    .locals 1

    const-string v0, "subscriptionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl;->subscriptionRepository:Lcom/laborbook/keep/repository/SubscriptionRepository;

    return-void
.end method


# virtual methods
.method public cancelSubscription-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/laborbook/keep/model/subscription/CancelSubscriptionResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$cancelSubscription$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$cancelSubscription$1;

    iget v1, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$cancelSubscription$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$cancelSubscription$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$cancelSubscription$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$cancelSubscription$1;

    invoke-direct {v0, p0, p2}, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$cancelSubscription$1;-><init>(Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$cancelSubscription$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 49
    iget v2, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$cancelSubscription$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    iget-object p2, p0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl;->subscriptionRepository:Lcom/laborbook/keep/repository/SubscriptionRepository;

    iput v3, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$cancelSubscription$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/laborbook/keep/repository/SubscriptionRepository;->cancelSubscription-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public checkSubscriptionStatus-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/laborbook/keep/model/subscription/UserSubscription;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$checkSubscriptionStatus$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$checkSubscriptionStatus$1;

    iget v1, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$checkSubscriptionStatus$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$checkSubscriptionStatus$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$checkSubscriptionStatus$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$checkSubscriptionStatus$1;

    invoke-direct {v0, p0, p2}, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$checkSubscriptionStatus$1;-><init>(Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$checkSubscriptionStatus$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 19
    iget v2, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$checkSubscriptionStatus$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    iget-object p2, p0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl;->subscriptionRepository:Lcom/laborbook/keep/repository/SubscriptionRepository;

    iput v3, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$checkSubscriptionStatus$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/laborbook/keep/repository/SubscriptionRepository;->getUserSubscription-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public getAvailablePlans-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$getAvailablePlans$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$getAvailablePlans$1;

    iget v1, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$getAvailablePlans$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$getAvailablePlans$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$getAvailablePlans$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$getAvailablePlans$1;

    invoke-direct {v0, p0, p2}, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$getAvailablePlans$1;-><init>(Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$getAvailablePlans$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 15
    iget v2, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$getAvailablePlans$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    iget-object p2, p0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl;->subscriptionRepository:Lcom/laborbook/keep/repository/SubscriptionRepository;

    iput v3, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$getAvailablePlans$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/laborbook/keep/repository/SubscriptionRepository;->getSubscriptionPlans-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public initiateSubscription-yxL6bBk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p4, p5, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$initiateSubscription$1;

    if-eqz p4, :cond_0

    move-object p4, p5

    check-cast p4, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$initiateSubscription$1;

    iget v0, p4, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$initiateSubscription$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p5, p4, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$initiateSubscription$1;->label:I

    sub-int/2addr p5, v1

    iput p5, p4, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$initiateSubscription$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$initiateSubscription$1;

    invoke-direct {p4, p0, p5}, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$initiateSubscription$1;-><init>(Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, p4, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$initiateSubscription$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 23
    iget v1, p4, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$initiateSubscription$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p5, Lkotlin/Result;

    invoke-virtual {p5}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    new-instance p5, Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;

    .line 31
    const-string v1, "upi"

    .line 29
    invoke-direct {p5, p2, v1, p3}, Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl;->subscriptionRepository:Lcom/laborbook/keep/repository/SubscriptionRepository;

    iput v2, p4, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$initiateSubscription$1;->label:I

    invoke-interface {p2, p1, p5, p4}, Lcom/laborbook/keep/repository/SubscriptionRepository;->createSubscription-0E7RQCE(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public verifyPayment-0E7RQCE(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$verifyPayment$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$verifyPayment$1;

    iget v1, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$verifyPayment$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$verifyPayment$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$verifyPayment$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$verifyPayment$1;

    invoke-direct {v0, p0, p3}, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$verifyPayment$1;-><init>(Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$verifyPayment$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 37
    iget v2, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$verifyPayment$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    :try_start_1
    iget-object p3, p0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl;->subscriptionRepository:Lcom/laborbook/keep/repository/SubscriptionRepository;

    iput v3, v0, Lcom/laborbook/keep/usecase/SubscriptionUseCaseImpl$verifyPayment$1;->label:I

    invoke-interface {p3, p1, p2, v0}, Lcom/laborbook/keep/repository/SubscriptionRepository;->verifySubscription-0E7RQCE(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 43
    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/laborbook/keep/model/subscription/VerifySubscriptionResponse;

    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/VerifySubscriptionResponse;->getVerified()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_4
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 45
    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1
.end method
