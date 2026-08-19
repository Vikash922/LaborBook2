.class public interface abstract Lcom/laborbook/keep/usecase/SubscriptionUseCase;
.super Ljava/lang/Object;
.source "SubscriptionUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/usecase/SubscriptionUseCase$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0004\u0008\u000c\u0010\tJ8\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012H\u00a6@\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J&\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00032\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0018H\u00a6@\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001e\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00032\u0006\u0010\u0016\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0004\u0008\u001d\u0010\t\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/laborbook/keep/usecase/SubscriptionUseCase;",
        "",
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

.method public abstract checkSubscriptionStatus-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.method public abstract getAvailablePlans-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.method public abstract initiateSubscription-yxL6bBk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract verifyPayment-0E7RQCE(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method
