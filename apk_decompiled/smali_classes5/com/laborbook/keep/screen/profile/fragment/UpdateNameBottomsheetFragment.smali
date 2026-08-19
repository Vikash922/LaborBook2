.class public final Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;
.super Lcom/laborbook/base/BaseBottomsheetFragment;
.source "UpdateNameBottomsheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseBottomsheetFragment<",
        "Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateNameBottomsheetFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateNameBottomsheetFragment.kt\ncom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment\n+ 2 SharedViewModelExt.kt\norg/koin/androidx/viewmodel/ext/android/SharedViewModelExtKt\n*L\n1#1,130:1\n32#2,5:131\n*S KotlinDebug\n*F\n+ 1 UpdateNameBottomsheetFragment.kt\ncom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment\n*L\n32#1:131,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000  2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0012\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J&\u0010\u0014\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u001a\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001a2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u001d\u001a\u00020\u0010H\u0002J\u0008\u0010\u001e\u001a\u00020\u0010H\u0002J\u0008\u0010\u001f\u001a\u00020\u0010H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;",
        "Lcom/laborbook/base/BaseBottomsheetFragment;",
        "Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;",
        "<init>",
        "()V",
        "screenName",
        "",
        "getScreenName",
        "()Ljava/lang/String;",
        "viewModel",
        "Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;",
        "getViewModel",
        "()Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "onStart",
        "",
        "onCreate",
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
        "setViewModelObservers",
        "setViews",
        "setOnClickListeners",
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
.field public static final Companion:Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$Companion;


# instance fields
.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$GFPrHnoYdAgBEDOSTYxVRgofjA0(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;Lcom/laborbook/keep/screen/profile/uistate/UserUiState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->setViewModelObservers$lambda$0(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;Lcom/laborbook/keep/screen/profile/uistate/UserUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RSgHNO_rYAx6DHCk0WBy-ZWAx0g(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->setOnClickListeners$lambda$1(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kVNJA-lPTxneQP0bOhSN3SHFTO4(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->setOnClickListeners$lambda$2(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->Companion:Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 28
    invoke-direct {p0}, Lcom/laborbook/base/BaseBottomsheetFragment;-><init>()V

    .line 32
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 135
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$special$$inlined$sharedViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$special$$inlined$sharedViewModel$default$1;-><init>(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;)Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->getViewModel()Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final getViewModel()Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;

    return-object v0
.end method

.method public static final newInstance()Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->Companion:Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$Companion;->newInstance()Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;

    move-result-object v0

    return-object v0
.end method

.method private final setOnClickListeners()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->ivClose:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->btnUpdateName:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private static final setOnClickListeners$lambda$1(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->dismiss()V

    return-void
.end method

.method private static final setOnClickListeners$lambda$2(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setOnClickListeners$2$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setOnClickListeners$2$1;-><init>(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final setViewModelObservers()V
    .locals 4

    .line 77
    invoke-direct {p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->getViewModel()Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;->uiState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$$ExternalSyntheticLambda2;-><init>(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;)V

    new-instance v3, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final setViewModelObservers$lambda$0(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;Lcom/laborbook/keep/screen/profile/uistate/UserUiState;)Lkotlin/Unit;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    instance-of v0, p1, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$UpdateUserNameSuccess;

    if-eqz v0, :cond_0

    .line 80
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViewModelObservers$1$1;-><init>(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 90
    :cond_0
    instance-of v0, p1, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$Error;

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    check-cast p1, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$Error;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 94
    :cond_2
    instance-of v0, p1, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$Loading;

    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_4

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_3
    instance-of p0, p1, Lcom/laborbook/keep/screen/profile/uistate/UserUiState$RefreshUserNameSuccess;

    .line 100
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setViews()V
    .locals 7

    .line 104
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViews$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$setViews$1;-><init>(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "update_name_bs"

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 54
    invoke-static {p1, p2, p3}, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseBottomsheetFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/laborbook/base/BaseBottomsheetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/FragmentUpdateNameBottomsheetBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 35
    invoke-super {p0}, Lcom/laborbook/base/BaseBottomsheetFragment;->onStart()V

    .line 36
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 37
    sget v1, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.View"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    const-string v3, "from(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x3

    .line 40
    invoke-virtual {v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 42
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseBottomsheetFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->setViews()V

    .line 68
    invoke-direct {p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->setOnClickListeners()V

    .line 69
    invoke-direct {p0}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;->setViewModelObservers()V

    .line 70
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$onViewCreated$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment$onViewCreated$1;-><init>(Lcom/laborbook/keep/screen/profile/fragment/UpdateNameBottomsheetFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
