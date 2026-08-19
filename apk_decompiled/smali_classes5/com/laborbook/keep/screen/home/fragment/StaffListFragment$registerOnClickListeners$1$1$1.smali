.class final Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StaffListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->registerOnClickListeners()V
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
    c = "com.laborbook.keep.screen.home.fragment.StaffListFragment$registerOnClickListeners$1$1$1"
    f = "StaffListFragment.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x10f
    }
    m = "invokeSuspend"
    n = {
        "subscriptionsEnabled",
        "maxStaffCount"
    }
    s = {
        "Z$0",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

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

    new-instance p1, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;-><init>(Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 265
    iget v1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->I$0:I

    iget-boolean v1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->Z$0:Z

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 267
    sget-object p1, Lcom/google/firebase/ktx/Firebase;->INSTANCE:Lcom/google/firebase/ktx/Firebase;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/ktx/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    .line 268
    sget-object v1, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->INSTANCE:Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;

    invoke-virtual {v1, p1}, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->isSubscriptionsEnabled(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)Z

    move-result v1

    .line 269
    sget-object v4, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->INSTANCE:Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;

    invoke-virtual {v4, p1}, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->getFreeUserMaxStaffCount(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)I

    move-result p1

    .line 271
    iget-object v4, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-virtual {v4}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v4

    sget-object v5, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v5}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v5

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-boolean v1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->Z$0:Z

    iput p1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->I$0:I

    iput v3, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->label:I

    invoke-static {v4, v5}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_2

    return-object v0

    :cond_2
    move v0, p1

    move-object p1, v4

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 272
    iget-object v4, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-static {v4}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->access$getViewModel(Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;)Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;->getStaffCount()I

    move-result v4

    .line 274
    const-string v5, "add_labor"

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    if-lt v4, v0, :cond_3

    .line 276
    sget-object p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->Companion:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;

    const/4 v0, 0x3

    invoke-static {p1, v2, v2, v0, v6}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;->newInstance$default(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;ZZILjava/lang/Object;)Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PremiumOfferDialogFragment"

    invoke-virtual {p1, v0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    new-array v0, v3, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    const-string v4, "blocked_by_subscription"

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    .line 281
    :cond_3
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p1

    sget-object v0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->Companion:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$Companion;->newInstance()Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Landroidx/fragment/app/Fragment;)V

    .line 282
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$1$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    check-cast p1, Lcom/laborbook/base/BaseFragment;

    const/4 v0, 0x2

    invoke-static {p1, v5, v6, v0, v6}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 284
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
