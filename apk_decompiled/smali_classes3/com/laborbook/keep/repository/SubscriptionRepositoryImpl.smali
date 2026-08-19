.class public final Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;
.super Ljava/lang/Object;
.source "SubscriptionRepositoryImpl.kt"

# interfaces
.implements Lcom/laborbook/keep/repository/SubscriptionRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J$\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0004\u0008\u0010\u0010\rJ&\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0096@\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J&\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00072\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u001aH\u0096@\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001e\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u00072\u0006\u0010\u0019\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0004\u0008\u001f\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;",
        "Lcom/laborbook/keep/repository/SubscriptionRepository;",
        "networkModule",
        "Lcom/laborbook/keep/network/KeepNetworkModule;",
        "<init>",
        "(Lcom/laborbook/keep/network/KeepNetworkModule;)V",
        "getSubscriptionPlans",
        "Lkotlin/Result;",
        "",
        "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
        "userId",
        "",
        "getSubscriptionPlans-gIAlu-s",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getUserSubscription",
        "Lcom/laborbook/keep/model/subscription/UserSubscription;",
        "getUserSubscription-gIAlu-s",
        "createSubscription",
        "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;",
        "request",
        "Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;",
        "createSubscription-0E7RQCE",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "verifySubscription",
        "Lcom/laborbook/keep/model/subscription/VerifySubscriptionResponse;",
        "subscriptionId",
        "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;",
        "verifySubscription-0E7RQCE",
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
.field private final networkModule:Lcom/laborbook/keep/network/KeepNetworkModule;


# direct methods
.method public constructor <init>(Lcom/laborbook/keep/network/KeepNetworkModule;)V
    .locals 1

    const-string v0, "networkModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;->networkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    return-void
.end method


# virtual methods
.method public cancelSubscription-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$1;

    iget v1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$1;

    invoke-direct {v0, p0, p2}, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$1;-><init>(Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 125
    iget v2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 127
    :try_start_2
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 128
    iget-object v2, p0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;->networkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    iput-object p2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/laborbook/keep/network/KeepNetworkModule;->cancelSubscription(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_1
    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$2;

    invoke-direct {v2, p1}, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$cancelSubscription$1;->label:I

    invoke-interface {p2, v2, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 146
    :cond_5
    :goto_2
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lkotlin/Result;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_6
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "No response received"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 148
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public createSubscription-0E7RQCE(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$1;

    iget v1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$1;

    invoke-direct {v0, p0, p3}, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$1;-><init>(Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 68
    iget v2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    :try_start_2
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 71
    iget-object v2, p0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;->networkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    iput-object p3, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$1;->label:I

    invoke-virtual {v2, p1, p2, v0}, Lcom/laborbook/keep/network/KeepNetworkModule;->createSubscription(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p3

    move-object p3, p1

    move-object p1, v5

    :goto_1
    check-cast p3, Lkotlinx/coroutines/flow/Flow;

    new-instance p2, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$2;

    invoke-direct {p2, p1}, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast p2, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$createSubscription$1;->label:I

    invoke-interface {p3, p2, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 89
    :cond_5
    :goto_2
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lkotlin/Result;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_6
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "No response received"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 91
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public getSubscriptionPlans-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$1;

    iget v1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$1;

    invoke-direct {v0, p0, p2}, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$1;-><init>(Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 18
    iget v2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    :try_start_2
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 21
    iget-object v2, p0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;->networkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    iput-object p2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/laborbook/keep/network/KeepNetworkModule;->getSubscriptionPlans(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_1
    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$2;

    invoke-direct {v2, p1}, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getSubscriptionPlans$1;->label:I

    invoke-interface {p2, v2, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 35
    :cond_5
    :goto_2
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lkotlin/Result;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_6
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "No response received"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 37
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public getUserSubscription-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$1;

    iget v1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$1;

    invoke-direct {v0, p0, p2}, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$1;-><init>(Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 41
    iget v2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    :try_start_2
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 44
    iget-object v2, p0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;->networkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    iput-object p2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/laborbook/keep/network/KeepNetworkModule;->getUserSubscription(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_1
    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$2;

    invoke-direct {v2, p1}, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$getUserSubscription$1;->label:I

    invoke-interface {p2, v2, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 62
    :cond_5
    :goto_2
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lkotlin/Result;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_6
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "No response received"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 64
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public verifySubscription-0E7RQCE(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/laborbook/keep/model/subscription/VerifySubscriptionResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;

    iget v1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;

    invoke-direct {v0, p0, p3}, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;-><init>(Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 95
    iget v2, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    :try_start_2
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 101
    iget-object v2, p0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl;->networkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    iput-object p3, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->label:I

    invoke-virtual {v2, p1, p2, v0}, Lcom/laborbook/keep/network/KeepNetworkModule;->verifySubscription(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p3

    move-object p3, p1

    move-object p1, v5

    :goto_1
    check-cast p3, Lkotlinx/coroutines/flow/Flow;

    new-instance p2, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$2;

    invoke-direct {p2, p1}, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast p2, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p1, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/laborbook/keep/repository/SubscriptionRepositoryImpl$verifySubscription$1;->label:I

    invoke-interface {p3, p2, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 119
    :cond_5
    :goto_2
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lkotlin/Result;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_6
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "No response received"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 121
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1
.end method
