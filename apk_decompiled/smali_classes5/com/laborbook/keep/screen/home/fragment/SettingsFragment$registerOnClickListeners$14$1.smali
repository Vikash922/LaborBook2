.class final Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SettingsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;->registerOnClickListeners()V
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
    c = "com.laborbook.keep.screen.home.fragment.SettingsFragment$registerOnClickListeners$14$1"
    f = "SettingsFragment.kt"
    i = {}
    l = {
        0xe1
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

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

    new-instance p1, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;-><init>(Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 216
    iget v1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 218
    sget-object p1, Lcom/google/firebase/ktx/Firebase;->INSTANCE:Lcom/google/firebase/ktx/Firebase;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/ktx/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    .line 219
    sget-object v1, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->INSTANCE:Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;

    invoke-virtual {v1, p1}, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->isSubscriptionsEnabled(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 221
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 225
    :cond_2
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;->access$getPremiumOfferManager(Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;)Lcom/laborbook/keep/screen/premium/PremiumOfferManager;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;->label:I

    invoke-virtual {p1, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferManager;->isPremiumUser(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 227
    const-string v0, "user_type"

    const-string v1, "view_laborbook_pro"

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 229
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p1

    sget-object v4, Lcom/laborbook/keep/screen/premium/PremiumSettingsFragment;->Companion:Lcom/laborbook/keep/screen/premium/PremiumSettingsFragment$Companion;

    invoke-virtual {v4}, Lcom/laborbook/keep/screen/premium/PremiumSettingsFragment$Companion;->newInstance()Lcom/laborbook/keep/screen/premium/PremiumSettingsFragment;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v4}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Landroidx/fragment/app/Fragment;)V

    .line 230
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    new-array v2, v2, [Lkotlin/Pair;

    new-instance v4, Lkotlin/Pair;

    const-string v5, "pro"

    invoke-direct {v4, v0, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    .line 233
    :cond_4
    sget-object p1, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->Companion:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {p1, v3, v3, v4, v5}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;->newInstance$default(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;ZZILjava/lang/Object;)Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    move-result-object p1

    .line 234
    iget-object v4, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    invoke-virtual {v4}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-string v5, "PremiumOfferDialogFragment"

    invoke-virtual {p1, v4, v5}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$registerOnClickListeners$14$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    new-array v2, v2, [Lkotlin/Pair;

    new-instance v4, Lkotlin/Pair;

    const-string v5, "free"

    invoke-direct {v4, v0, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 237
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
