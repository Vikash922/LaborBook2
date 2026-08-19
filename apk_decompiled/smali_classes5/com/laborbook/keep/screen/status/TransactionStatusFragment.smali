.class public final Lcom/laborbook/keep/screen/status/TransactionStatusFragment;
.super Lcom/laborbook/base/BaseFragment;
.source "TransactionStatusFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/status/TransactionStatusFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseFragment<",
        "Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\u0018\u0000 \u001e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J&\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00162\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0019\u001a\u00020\rH\u0002J\u0008\u0010\u001a\u001a\u00020\rH\u0002J\u0008\u0010\u001b\u001a\u00020\rH\u0002J\u0008\u0010\u001c\u001a\u00020\rH\u0002J\u0008\u0010\u001d\u001a\u00020\rH\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f\u00b2\u0006\n\u0010 \u001a\u00020!X\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/status/TransactionStatusFragment;",
        "Lcom/laborbook/base/BaseFragment;",
        "Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;",
        "<init>",
        "()V",
        "screenName",
        "",
        "getScreenName",
        "()Ljava/lang/String;",
        "staffName",
        "type",
        "amount",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "getViewBinding",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onCreateView",
        "Landroid/view/View;",
        "onViewCreated",
        "view",
        "observeProStatusChanges",
        "requestGoogleAds",
        "loadCustomAd",
        "setUpViews",
        "registerOnClickListeners",
        "Companion",
        "keep_release",
        "customAdManager",
        "Lcom/laborbook/base/ads/CustomAdManager;"
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
.field public static final Companion:Lcom/laborbook/keep/screen/status/TransactionStatusFragment$Companion;


# instance fields
.field private amount:Ljava/lang/String;

.field private staffName:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$UAaikh3StWVgCKKoO_CCjXqouZU(Lcom/laborbook/keep/screen/status/TransactionStatusFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->registerOnClickListeners$lambda$3$lambda$2(Lcom/laborbook/keep/screen/status/TransactionStatusFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->Companion:Lcom/laborbook/keep/screen/status/TransactionStatusFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/laborbook/base/BaseFragment;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->staffName:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->type:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->amount:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$loadCustomAd(Lcom/laborbook/keep/screen/status/TransactionStatusFragment;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->loadCustomAd()V

    return-void
.end method

.method private final loadCustomAd()V
    .locals 7

    .line 158
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$loadCustomAd$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$loadCustomAd$1;-><init>(Lcom/laborbook/keep/screen/status/TransactionStatusFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/keep/screen/status/TransactionStatusFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->Companion:Lcom/laborbook/keep/screen/status/TransactionStatusFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/keep/screen/status/TransactionStatusFragment;

    move-result-object p0

    return-object p0
.end method

.method private final observeProStatusChanges()V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v0

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$observeProStatusChanges$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$observeProStatusChanges$1;-><init>(Lcom/laborbook/keep/screen/status/TransactionStatusFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 86
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final registerOnClickListeners()V
    .locals 2

    .line 196
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    new-instance v1, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/status/TransactionStatusFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final registerOnClickListeners$lambda$3$lambda$2(Lcom/laborbook/keep/screen/status/TransactionStatusFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->goBack()V

    return-void
.end method

.method private final requestGoogleAds()V
    .locals 7

    .line 90
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$requestGoogleAds$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$requestGoogleAds$1;-><init>(Lcom/laborbook/keep/screen/status/TransactionStatusFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final setUpViews()V
    .locals 8

    .line 176
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;

    if-eqz v0, :cond_2

    .line 177
    iget-object v1, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->type:Ljava/lang/String;

    const-string v2, "ADVANCE"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xa

    const/16 v6, 0x20

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->amount:Ljava/lang/String;

    const-string v3, "0"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->tvStaffName:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    sget v3, Lcom/laborbook/keep/R$string;->advance_amount:I

    invoke-virtual {p0, v3}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    sget v3, Lcom/laborbook/keep/R$string;->removed:I

    invoke-virtual {p0, v3}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/laborbook/keep/R$string;->on:I

    invoke-virtual {p0, v2}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->staffName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 179
    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 183
    :cond_0
    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->tvStaffName:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    sget v3, Lcom/laborbook/keep/R$string;->advance_amount:I

    invoke-virtual {p0, v3}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    sget v3, Lcom/laborbook/keep/R$string;->rupee:I

    invoke-virtual {p0, v3}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    iget-object v3, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->amount:Ljava/lang/String;

    .line 186
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    sget v3, Lcom/laborbook/keep/R$string;->added:I

    invoke-virtual {p0, v3}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/laborbook/keep/R$string;->on:I

    invoke-virtual {p0, v2}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->staffName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 183
    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->type:Ljava/lang/String;

    const-string v7, "ATTENDANCE"

    invoke-static {v1, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->tvStaffName:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    sget v3, Lcom/laborbook/keep/R$string;->successfully_marked_attendance:I

    invoke-virtual {p0, v3}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/laborbook/keep/R$string;->on:I

    invoke-virtual {p0, v2}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->staffName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 189
    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "transaction_status"

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 54
    invoke-static {p1, p2, p3}, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    const-string v0, "staff_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->staffName:Ljava/lang/String;

    .line 44
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->type:Ljava/lang/String;

    .line 45
    const-string v0, "amount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->amount:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/laborbook/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/FragmentTransactionStatusBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->registerOnClickListeners()V

    .line 68
    invoke-direct {p0}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->setUpViews()V

    .line 69
    invoke-direct {p0}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->requestGoogleAds()V

    .line 72
    invoke-direct {p0}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->observeProStatusChanges()V

    return-void
.end method
