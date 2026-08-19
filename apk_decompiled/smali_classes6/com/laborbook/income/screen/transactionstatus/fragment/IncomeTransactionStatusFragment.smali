.class public final Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;
.super Lcom/laborbook/base/BaseFragment;
.source "IncomeTransactionStatusFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseFragment<",
        "Lcom/laborbook/income/databinding/FragmentIncomeTransactionStatusBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\u0018\u0000  2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0012\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00182\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u001b\u001a\u00020\u000fH\u0002J\u0008\u0010\u001c\u001a\u00020\u000fH\u0002J\u0008\u0010\u001d\u001a\u00020\u000fH\u0002J\u0008\u0010\u001e\u001a\u00020\u000fH\u0002J\u0008\u0010\u001f\u001a\u00020\u000fH\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\r\u00a8\u0006!\u00b2\u0006\n\u0010\"\u001a\u00020#X\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;",
        "Lcom/laborbook/base/BaseFragment;",
        "Lcom/laborbook/income/databinding/FragmentIncomeTransactionStatusBinding;",
        "<init>",
        "()V",
        "screenName",
        "",
        "getScreenName",
        "()Ljava/lang/String;",
        "type",
        "amount",
        "isUpdate",
        "",
        "Ljava/lang/Boolean;",
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
        "income_release",
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
.field public static final Companion:Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$Companion;


# instance fields
.field private amount:Ljava/lang/String;

.field private isUpdate:Ljava/lang/Boolean;

.field private type:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-UBrXjmPv1SKK-CN_RZhbvLIxOU(Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->registerOnClickListeners$lambda$3$lambda$2(Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->Companion:Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/laborbook/base/BaseFragment;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->type:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->amount:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->isUpdate:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic access$loadCustomAd(Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->loadCustomAd()V

    return-void
.end method

.method private final loadCustomAd()V
    .locals 7

    .line 157
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$loadCustomAd$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$loadCustomAd$1;-><init>(Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->Companion:Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;

    move-result-object p0

    return-object p0
.end method

.method private final observeProStatusChanges()V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v0

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$observeProStatusChanges$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$observeProStatusChanges$1;-><init>(Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 85
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

    .line 185
    invoke-virtual {p0}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentIncomeTransactionStatusBinding;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentIncomeTransactionStatusBinding;->btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    new-instance v1, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final registerOnClickListeners$lambda$3$lambda$2(Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->goBack()V

    return-void
.end method

.method private final requestGoogleAds()V
    .locals 7

    .line 89
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$requestGoogleAds$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment$requestGoogleAds$1;-><init>(Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final setUpViews()V
    .locals 5

    .line 175
    invoke-virtual {p0}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/databinding/FragmentIncomeTransactionStatusBinding;

    if-eqz v0, :cond_3

    .line 176
    iget-object v1, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->isUpdate:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "CREDIT"

    if-eqz v1, :cond_1

    .line 177
    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentIncomeTransactionStatusBinding;->tvAmountAdded:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    sget v1, Lcom/laborbook/income/R$string;->updated_successfully:I

    iget-object v3, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->amount:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->type:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/laborbook/income/R$string;->cash_in:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/laborbook/income/R$string;->cash_out:I

    :goto_0
    invoke-virtual {p0, v2}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 179
    :cond_1
    iget-object v0, v0, Lcom/laborbook/income/databinding/FragmentIncomeTransactionStatusBinding;->tvAmountAdded:Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;

    sget v1, Lcom/laborbook/income/R$string;->added_successfully:I

    iget-object v3, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->amount:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->type:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/laborbook/income/R$string;->cash_in:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/laborbook/income/R$string;->cash_out:I

    :goto_1
    invoke-virtual {p0, v2}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text20/TextViewBold20;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "income_transaction_status"

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/income/databinding/FragmentIncomeTransactionStatusBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/income/databinding/FragmentIncomeTransactionStatusBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 53
    invoke-static {p1, p2, p3}, Lcom/laborbook/income/databinding/FragmentIncomeTransactionStatusBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/income/databinding/FragmentIncomeTransactionStatusBinding;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->type:Ljava/lang/String;

    .line 43
    const-string v0, "amount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->amount:Ljava/lang/String;

    .line 44
    const-string v0, "is_update"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->isUpdate:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/laborbook/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 61
    invoke-virtual {p0}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/income/databinding/FragmentIncomeTransactionStatusBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/income/databinding/FragmentIncomeTransactionStatusBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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

    .line 65
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->registerOnClickListeners()V

    .line 67
    invoke-direct {p0}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->setUpViews()V

    .line 68
    invoke-direct {p0}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->requestGoogleAds()V

    .line 71
    invoke-direct {p0}, Lcom/laborbook/income/screen/transactionstatus/fragment/IncomeTransactionStatusFragment;->observeProStatusChanges()V

    return-void
.end method
