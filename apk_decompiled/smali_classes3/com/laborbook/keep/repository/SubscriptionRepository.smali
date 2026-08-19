.class public interface abstract Lcom/laborbook/keep/repository/SubscriptionRepository;
.super Ljava/lang/Object;
.source "SubscriptionRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0004\u0008\u000c\u0010\tJ&\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u00a6@\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J&\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00032\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0016H\u00a6@\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001e\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00032\u0006\u0010\u0015\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0004\u0008\u001b\u0010\t\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/laborbook/keep/repository/SubscriptionRepository;",
        "",
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


# virtual methods
.method public abstract cancelSubscription-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract createSubscription-0E7RQCE(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract getSubscriptionPlans-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract getUserSubscription-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract verifySubscription-0E7RQCE(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method
