.class final Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;
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
    c = "com.laborbook.keep.screen.home.fragment.StaffListFragment$registerOnClickListeners$1$3$1"
    f = "StaffListFragment.kt"
    i = {}
    l = {
        0x127
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
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
            "Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

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

    new-instance p1, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;-><init>(Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 294
    iget v1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

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

    .line 295
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 297
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    sget-object v1, Lcom/laborbook/keep/screen/premium/PremiumSettingsFragment;->Companion:Lcom/laborbook/keep/screen/premium/PremiumSettingsFragment$Companion;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/premium/PremiumSettingsFragment$Companion;->newInstance()Lcom/laborbook/keep/screen/premium/PremiumSettingsFragment;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 299
    :cond_3
    sget-object v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->Companion:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;

    const/4 v1, 0x3

    const/4 v4, 0x0

    invoke-static {v0, v3, v3, v1, v4}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;->newInstance$default(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;ZZILjava/lang/Object;)Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v4, "PremiumOfferDialogFragment"

    invoke-virtual {v0, v1, v4}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 302
    :goto_1
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment$registerOnClickListeners$1$3$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;

    const/4 v1, 0x2

    .line 303
    new-array v1, v1, [Lkotlin/Pair;

    new-instance v4, Lkotlin/Pair;

    const-string v5, "source"

    const-string v6, "staff_list_pro_tag"

    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v3

    .line 304
    new-instance v3, Lkotlin/Pair;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v4, "is_pro_user"

    invoke-direct {v3, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 302
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "view_laborbook_pro"

    invoke-virtual {v0, v1, p1}, Lcom/laborbook/keep/screen/home/fragment/StaffListFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 306
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
