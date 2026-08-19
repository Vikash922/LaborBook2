.class public final Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SubscriptionViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001*B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ(\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\"\u001a\u00020#J\u0016\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\'J\u000e\u0010(\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u001dJ\u0006\u0010)\u001a\u00020\u001bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00120\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00120\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0010R\u0016\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010\u00a8\u0006+"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "subscriptionUseCase",
        "Lcom/laborbook/keep/usecase/SubscriptionUseCase;",
        "premiumOfferManager",
        "Lcom/laborbook/keep/screen/premium/PremiumOfferManager;",
        "dataStoreManager",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "<init>",
        "(Lcom/laborbook/keep/usecase/SubscriptionUseCase;Lcom/laborbook/keep/screen/premium/PremiumOfferManager;Lcom/laborbook/base/datastore/DataStoreManager;)V",
        "_subscriptionState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;",
        "subscriptionState",
        "Landroidx/lifecycle/LiveData;",
        "getSubscriptionState",
        "()Landroidx/lifecycle/LiveData;",
        "_subscriptionPlans",
        "",
        "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
        "subscriptionPlans",
        "getSubscriptionPlans",
        "_userSubscription",
        "Lcom/laborbook/keep/model/subscription/UserSubscription;",
        "userSubscription",
        "getUserSubscription",
        "loadSubscriptionPlans",
        "",
        "userId",
        "",
        "checkUserSubscriptionStatus",
        "createSubscription",
        "planId",
        "upiId",
        "hasTrial",
        "",
        "verifySubscription",
        "subscriptionId",
        "razorpayData",
        "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;",
        "cancelSubscription",
        "resetState",
        "SubscriptionState",
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
.field private final _subscriptionPlans:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _subscriptionState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;",
            ">;"
        }
    .end annotation
.end field

.field private final _userSubscription:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/laborbook/keep/model/subscription/UserSubscription;",
            ">;"
        }
    .end annotation
.end field

.field private final dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

.field private final premiumOfferManager:Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

.field private final subscriptionPlans:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
            ">;>;"
        }
    .end annotation
.end field

.field private final subscriptionState:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;",
            ">;"
        }
    .end annotation
.end field

.field private final subscriptionUseCase:Lcom/laborbook/keep/usecase/SubscriptionUseCase;

.field private final userSubscription:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/laborbook/keep/model/subscription/UserSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/laborbook/keep/usecase/SubscriptionUseCase;Lcom/laborbook/keep/screen/premium/PremiumOfferManager;Lcom/laborbook/base/datastore/DataStoreManager;)V
    .locals 1

    const-string v0, "subscriptionUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumOfferManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataStoreManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->subscriptionUseCase:Lcom/laborbook/keep/usecase/SubscriptionUseCase;

    .line 23
    iput-object p2, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->premiumOfferManager:Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    .line 24
    iput-object p3, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    .line 27
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->_subscriptionState:Landroidx/lifecycle/MutableLiveData;

    .line 28
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->subscriptionState:Landroidx/lifecycle/LiveData;

    .line 30
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->_subscriptionPlans:Landroidx/lifecycle/MutableLiveData;

    .line 31
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->subscriptionPlans:Landroidx/lifecycle/LiveData;

    .line 33
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->_userSubscription:Landroidx/lifecycle/MutableLiveData;

    .line 34
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->userSubscription:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getDataStoreManager$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->dataStoreManager:Lcom/laborbook/base/datastore/DataStoreManager;

    return-object p0
.end method

.method public static final synthetic access$getPremiumOfferManager$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Lcom/laborbook/keep/screen/premium/PremiumOfferManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->premiumOfferManager:Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    return-object p0
.end method

.method public static final synthetic access$getSubscriptionUseCase$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Lcom/laborbook/keep/usecase/SubscriptionUseCase;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->subscriptionUseCase:Lcom/laborbook/keep/usecase/SubscriptionUseCase;

    return-object p0
.end method

.method public static final synthetic access$get_subscriptionPlans$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->_subscriptionPlans:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_subscriptionState$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->_subscriptionState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_userSubscription$p(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->_userSubscription:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static synthetic createSubscription$default(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 108
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->createSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final cancelSubscription(Ljava/lang/String;)V
    .locals 7

    const-string v0, "subscriptionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$cancelSubscription$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$cancelSubscription$1;-><init>(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final checkUserSubscriptionStatus(Ljava/lang/String;)V
    .locals 7

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$checkUserSubscriptionStatus$1;-><init>(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final createSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upiId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$createSubscription$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$createSubscription$1;-><init>(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getSubscriptionPlans()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
            ">;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->subscriptionPlans:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getSubscriptionState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->subscriptionState:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getUserSubscription()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/laborbook/keep/model/subscription/UserSubscription;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->userSubscription:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final loadSubscriptionPlans(Ljava/lang/String;)V
    .locals 7

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->_subscriptionPlans:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 54
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->_subscriptionState:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$PlansLoaded;

    invoke-direct {v1, v0}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$PlansLoaded;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 59
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$loadSubscriptionPlans$1;-><init>(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final resetState()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;->_subscriptionState:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Idle;->INSTANCE:Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$SubscriptionState$Idle;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final verifySubscription(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;)V
    .locals 7

    const-string v0, "subscriptionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "razorpayData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel$verifySubscription$1;-><init>(Lcom/laborbook/keep/screen/premium/viewmodel/SubscriptionViewModel;Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
