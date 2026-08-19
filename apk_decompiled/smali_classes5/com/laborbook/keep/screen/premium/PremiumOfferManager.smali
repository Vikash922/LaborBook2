.class public final Lcom/laborbook/keep/screen/premium/PremiumOfferManager;
.super Ljava/lang/Object;
.source "PremiumOfferManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/premium/PremiumOfferManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\t\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u0010\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u0011\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0002\u0010\u0015J\u0016\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@\u00a2\u0006\u0002\u0010\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/premium/PremiumOfferManager;",
        "",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "<init>",
        "(Lcom/laborbook/base/datastore/DataStoreManager;)V",
        "shouldShowHardPaywall",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "shouldShowPremiumOffer",
        "showPremiumOfferDialog",
        "",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "(Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "markUserAsPremium",
        "isPremiumUser",
        "resetPremiumStatus",
        "updateSubscriptionStatus",
        "userSubscription",
        "Lcom/laborbook/keep/model/subscription/UserSubscription;",
        "(Lcom/laborbook/keep/model/subscription/UserSubscription;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cacheSubscriptionData",
        "subscription",
        "Lcom/laborbook/keep/model/subscription/SubscriptionDetails;",
        "(Lcom/laborbook/keep/model/subscription/SubscriptionDetails;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/laborbook/keep/screen/premium/PremiumOfferManager$Companion;

.field private static final MAX_SHOW_COUNT:I = 0x64

.field private static final SHOW_AFTER_DAYS:I


# instance fields
.field private final dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->Companion:Lcom/laborbook/keep/screen/premium/PremiumOfferManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/laborbook/base/datastore/DataStoreManager;)V
    .locals 1

    const-string v0, "dataStoreManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    return-void
.end method

.method public static final synthetic access$cacheSubscriptionData(Lcom/laborbook/keep/screen/premium/PremiumOfferManager;Lcom/laborbook/keep/model/subscription/SubscriptionDetails;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->cacheSubscriptionData(Lcom/laborbook/keep/model/subscription/SubscriptionDetails;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final cacheSubscriptionData(Lcom/laborbook/keep/model/subscription/SubscriptionDetails;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/model/subscription/SubscriptionDetails;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;

    iget v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;

    invoke-direct {v0, p0, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 138
    iget v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/laborbook/keep/model/subscription/SubscriptionDetails;

    iget-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/laborbook/keep/model/subscription/SubscriptionDetails;

    iget-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/laborbook/keep/model/subscription/SubscriptionDetails;

    iget-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    iget-object p2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    .line 141
    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPREMIUM_SUBSCRIPTION_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    .line 142
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionDetails;->getId()Ljava/lang/String;

    move-result-object v7

    .line 140
    iput-object p0, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->label:I

    invoke-virtual {p2, v2, v7, v0}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    .line 144
    :goto_1
    iget-object p2, v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    .line 145
    sget-object v6, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v6}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPREMIUM_PLAN_NAME()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    .line 146
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionDetails;->getPlanName()Ljava/lang/String;

    move-result-object v7

    .line 144
    iput-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->label:I

    invoke-virtual {p2, v6, v7, v0}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    .line 148
    :cond_7
    :goto_2
    iget-object p2, v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    .line 149
    sget-object v5, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v5}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPREMIUM_SUBSCRIPTION_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v5

    .line 150
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionDetails;->getStatus()Ljava/lang/String;

    move-result-object v6

    .line 148
    iput-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->label:I

    invoke-virtual {p2, v5, v6, v0}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    .line 152
    :cond_8
    :goto_3
    iget-object p2, v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    .line 153
    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPREMIUM_END_DATE()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    .line 154
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionDetails;->getEndAt()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    .line 152
    iput-object v4, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$cacheSubscriptionData$1;->label:I

    invoke-virtual {p2, v2, p1, v0}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 156
    :cond_9
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public final isPremiumUser(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final markUserAsPremium(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final resetPremiumStatus(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;

    iget v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 112
    iget v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object p0, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;->label:I

    invoke-virtual {p1, v2, v7, v0}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 114
    :goto_1
    iget-object p1, v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v6, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v6}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPREMIUM_OFFER_SHOW_COUNT()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;->label:I

    invoke-virtual {p1, v6, v3, v0}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 115
    :cond_6
    :goto_2
    iget-object p1, v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPREMIUM_OFFER_LAST_SHOWN()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$resetPremiumStatus$1;->label:I

    const-string v3, "0"

    invoke-virtual {p1, v2, v3, v0}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 116
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final shouldShowHardPaywall(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowHardPaywall$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowHardPaywall$1;

    iget v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowHardPaywall$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowHardPaywall$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowHardPaywall$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowHardPaywall$1;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowHardPaywall$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowHardPaywall$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowHardPaywall$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowHardPaywall$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    sget-object p1, Lcom/google/firebase/ktx/Firebase;->INSTANCE:Lcom/google/firebase/ktx/Firebase;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/ktx/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    .line 31
    sget-object v2, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->INSTANCE:Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;

    invoke-virtual {v2, p1}, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->isSubscriptionsEnabled(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 34
    :cond_4
    :try_start_0
    const-string v2, "hard_paywall_new_users"

    invoke-virtual {p1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move p1, v5

    :goto_1
    if-nez p1, :cond_5

    .line 36
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 38
    :cond_5
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getIS_EXISTING_USER()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p0, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowHardPaywall$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowHardPaywall$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 39
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 41
    :cond_7
    iget-object p1, v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowHardPaywall$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowHardPaywall$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 42
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 44
    :cond_9
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final shouldShowPremiumOffer(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;

    iget v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 50
    iget v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    sget-object p1, Lcom/google/firebase/ktx/Firebase;->INSTANCE:Lcom/google/firebase/ktx/Firebase;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/ktx/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    .line 53
    sget-object v2, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->INSTANCE:Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;

    invoke-virtual {v2, p1}, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->isSubscriptionsEnabled(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 54
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 58
    :cond_5
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p0, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 60
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 64
    :cond_7
    iget-object p1, v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v7, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v7}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPREMIUM_OFFER_SHOW_COUNT()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v7

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/16 v4, 0x64

    if-lt p1, v4, :cond_9

    .line 66
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 70
    :cond_9
    iget-object p1, v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPREMIUM_OFFER_LAST_SHOWN()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {p1, v2, v4}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$shouldShowPremiumOffer$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_4

    :cond_b
    move-wide v2, v0

    .line 71
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    const p1, 0x5265c00

    int-to-long v2, p1

    .line 72
    div-long/2addr v7, v2

    cmp-long p1, v7, v0

    if-ltz p1, :cond_c

    goto :goto_5

    :cond_c
    move v5, v6

    .line 74
    :goto_5
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final showPremiumOfferDialog(Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;

    iget v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;

    invoke-direct {v0, p0, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 80
    iget v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v8, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v7, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iget-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iget-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iget-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    iput-object p0, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->L$1:Ljava/lang/Object;

    iput v8, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->label:I

    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->shouldShowPremiumOffer(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_7

    .line 82
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 86
    :cond_7
    iget-object p2, v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v9, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v9}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPREMIUM_OFFER_SHOW_COUNT()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v9

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->label:I

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 87
    iget-object v5, v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v9, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v9}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPREMIUM_OFFER_SHOW_COUNT()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v9

    add-int/2addr p2, v8

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->L$1:Ljava/lang/Object;

    iput v7, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->label:I

    invoke-virtual {v5, v9, p2, v0}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    .line 88
    :cond_9
    :goto_3
    iget-object p2, v2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v2, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v2}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPREMIUM_OFFER_LAST_SHOWN()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$showPremiumOfferDialog$1;->label:I

    invoke-virtual {p2, v2, v5, v0}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    return-object v1

    .line 91
    :cond_a
    :goto_4
    sget-object p2, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->Companion:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;

    invoke-static {p2, v6, v6, v7, v3}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;->newInstance$default(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;ZZILjava/lang/Object;)Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    move-result-object p2

    .line 92
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "PremiumOfferDialogFragment"

    invoke-virtual {p2, p1, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 93
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final updateSubscriptionStatus(Lcom/laborbook/keep/model/subscription/UserSubscription;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/model/subscription/UserSubscription;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;

    iget v1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;

    invoke-direct {v0, p0, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;-><init>(Lcom/laborbook/keep/screen/premium/PremiumOfferManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 121
    iget v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;->Z$0:Z

    iget-object v2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/model/subscription/UserSubscription;

    iget-object v4, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move p2, p1

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/UserSubscription;->getSubscriptionTier()Ljava/lang/String;

    move-result-object p2

    const-string v2, "PRO"

    invoke-static {p2, v2, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    .line 124
    iget-object v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    sget-object v5, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v5}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v5

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object p0, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;->Z$0:Z

    iput v4, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;->label:I

    invoke-virtual {v2, v5, v6, v0}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    .line 127
    :goto_1
    sget-object v2, Lcom/laborbook/base/Logger;->INSTANCE:Lcom/laborbook/base/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Subscription status updated: tier="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/UserSubscription;->getSubscriptionTier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPro="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/laborbook/base/Logger;->d(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/UserSubscription;->getSubscription()Lcom/laborbook/keep/model/subscription/SubscriptionDetails;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 131
    iput-object p2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/laborbook/keep/screen/premium/PremiumOfferManager$updateSubscriptionStatus$1;->label:I

    invoke-direct {v4, p1, v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->cacheSubscriptionData(Lcom/laborbook/keep/model/subscription/SubscriptionDetails;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 133
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
