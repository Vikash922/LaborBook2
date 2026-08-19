.class final Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SettingsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;->setupViews()V
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
    c = "com.laborbook.keep.screen.home.fragment.SettingsFragment$setupViews$1"
    f = "SettingsFragment.kt"
    i = {
        0x0,
        0x1,
        0x2
    }
    l = {
        0x6f,
        0x70,
        0x71
    }
    m = "invokeSuspend"
    n = {
        "$this$invokeSuspend_u24lambda_u240",
        "$this$invokeSuspend_u24lambda_u240",
        "$this$invokeSuspend_u24lambda_u240"
    }
    s = {
        "L$2",
        "L$2",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

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
            "Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

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

    new-instance p1, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    invoke-direct {p1, v0, p2}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;-><init>(Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 108
    iget v1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->label:I

    const-string v2, ""

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentSettingsBinding;

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/laborbook/keep/databinding/FragmentSettingsBinding;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    iget-object v2, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/databinding/FragmentSettingsBinding;

    iget-object v4, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    iget-object v5, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/laborbook/keep/databinding/FragmentSettingsBinding;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    iget-object v5, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/laborbook/keep/databinding/FragmentSettingsBinding;

    iget-object v6, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    iget-object v7, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/laborbook/keep/databinding/FragmentSettingsBinding;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentSettingsBinding;

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->this$0:Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;

    .line 110
    iget-object v6, p1, Lcom/laborbook/keep/databinding/FragmentSettingsBinding;->tvVersion:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    const-string v7, "V1.6.0"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v6, p1, Lcom/laborbook/keep/databinding/FragmentSettingsBinding;->tvName:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v7

    sget-object v8, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v8}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_NAME()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v7

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$2:Ljava/lang/Object;

    iput-object v6, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$3:Ljava/lang/Object;

    iput v5, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->label:I

    invoke-static {v7, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_4

    return-object v0

    :cond_4
    move-object v7, p1

    move-object p1, v5

    move-object v5, v7

    move-object v9, v6

    move-object v6, v1

    move-object v1, v9

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, v5, Lcom/laborbook/keep/databinding/FragmentSettingsBinding;->tvMobileNumber:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    invoke-virtual {v6}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v8, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v8}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getMOBILE_NUMBER()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v8

    invoke-virtual {p1, v8, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object v7, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$3:Ljava/lang/Object;

    iput v4, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v2, v5

    move-object v4, v6

    move-object v5, v7

    :goto_1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v4}, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getAPP_LOCK_ENABLED()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object v5, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$1:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->L$3:Ljava/lang/Object;

    iput v3, p0, Lcom/laborbook/keep/screen/home/fragment/SettingsFragment$setupViews$1;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, v2

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 114
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentSettingsBinding;->switchAppLock:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 117
    sget-object p1, Lcom/google/firebase/ktx/Firebase;->INSTANCE:Lcom/google/firebase/ktx/Firebase;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/ktx/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    .line 118
    sget-object v1, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->INSTANCE:Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;

    invoke-virtual {v1, p1}, Lcom/laborbook/keep/utils/SubscriptionsFeatureFlag;->isSubscriptionsEnabled(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)Z

    move-result p1

    const-string v1, "clLaborbookPro"

    if-nez p1, :cond_7

    .line 119
    iget-object p1, v0, Lcom/laborbook/keep/databinding/FragmentSettingsBinding;->clLaborbookPro:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    .line 121
    :cond_7
    iget-object p1, v0, Lcom/laborbook/keep/databinding/FragmentSettingsBinding;->clLaborbookPro:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 124
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
