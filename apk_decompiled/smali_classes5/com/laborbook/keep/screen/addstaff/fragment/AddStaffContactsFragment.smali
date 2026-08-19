.class public final Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;
.super Lcom/laborbook/base/BaseFragment;
.source "AddStaffContactsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseFragment<",
        "Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddStaffContactsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddStaffContactsFragment.kt\ncom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment\n+ 2 ViewModelStoreOwnerExt.kt\norg/koin/androidx/viewmodel/ext/android/ViewModelStoreOwnerExtKt\n+ 3 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n1#1,323:1\n35#2,6:324\n50#3,5:330\n*S KotlinDebug\n*F\n+ 1 AddStaffContactsFragment.kt\ncom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment\n*L\n47#1:324,6\n48#1:330,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 22\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00012B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J&\u0010\u001c\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u001a\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0008\u0010\'\u001a\u00020$H\u0002J\u0008\u0010(\u001a\u00020$H\u0002J\u0008\u0010)\u001a\u00020$H\u0002J\u0008\u0010*\u001a\u00020$H\u0002J\u000c\u0010+\u001a\u00020$*\u00020\u0002H\u0002J\u000c\u0010,\u001a\u00020$*\u00020\u0002H\u0002J\u000c\u0010-\u001a\u00020$*\u00020\u0002H\u0002J\u0008\u0010.\u001a\u00020$H\u0002J\u0010\u0010/\u001a\u00020$2\u0006\u00100\u001a\u00020\u0013H\u0002J\u0008\u00101\u001a\u00020$H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0010\u0012\u000c\u0012\n \u001b*\u0004\u0018\u00010\u00150\u00150\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;",
        "Lcom/laborbook/base/BaseFragment;",
        "Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;",
        "getViewModel",
        "()Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "observerUtil",
        "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;",
        "getObserverUtil",
        "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;",
        "observerUtil$delegate",
        "adapter",
        "Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;",
        "isAddStaffOpen",
        "",
        "adUnitId",
        "",
        "screenName",
        "getScreenName",
        "()Ljava/lang/String;",
        "requestPermissionLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "kotlin.jvm.PlatformType",
        "getViewBinding",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "observeProStatusChanges",
        "setObserver",
        "setupViews",
        "registerOnClickListeners",
        "openOrCloseAddStaffManualLayout",
        "showAddStaffLayout",
        "hideAddStaffLayout",
        "viewModelObserver",
        "requestContactsPermission",
        "shouldRefresh",
        "onDestroyView",
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
.field public static final Companion:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$Companion;


# instance fields
.field private final adUnitId:Ljava/lang/String;

.field private adapter:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

.field private isAddStaffOpen:Z

.field private final observerUtil$delegate:Lkotlin/Lazy;

.field private final requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$03oMgMGes69Q7LBVVdBulmfVd_k(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/model/Staff;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->setObserver$lambda$1(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/model/Staff;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2TH3X7iWPIwyiZ-wfig6wrO_MYQ(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->viewModelObserver$lambda$14(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C1zxoK_WZOfdHjKrAzfsyi0F1Zc(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->registerOnClickListeners$lambda$13$lambda$5(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Erf2EixAIX64IutveKyps_zyO1U(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->registerOnClickListeners$lambda$13$lambda$10(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KHyMUP15qwwxoDmTy_4iU0Ybr8s(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->registerOnClickListeners$lambda$13$lambda$11(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PllRwPSVyQY17H434lRyfN6KZgs(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->registerOnClickListeners$lambda$13$lambda$9(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aU181UB_xe1MSdpIbmnTzeviW3g(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->registerOnClickListeners$lambda$13$lambda$12(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dsualyPCpAhrk7IvX4ll0z-X0AM(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->requestPermissionLauncher$lambda$0(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ipgAFIdPAn6q3V46RafcBwPT2_g(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->registerOnClickListeners$lambda$13$lambda$6(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rZD9-h05XV_g26rlo6OeyTauoFQ(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->registerOnClickListeners$lambda$13$lambda$8(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vsTyz4jTRabGgTt57Tj8gOKWUAw(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->registerOnClickListeners$lambda$13$lambda$7(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->Companion:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 45
    invoke-direct {p0}, Lcom/laborbook/base/BaseFragment;-><init>()V

    .line 47
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 326
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 329
    new-instance v2, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$special$$inlined$viewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$special$$inlined$viewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 48
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 332
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 334
    new-instance v2, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$special$$inlined$inject$default$1;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->observerUtil$delegate:Lkotlin/Lazy;

    .line 52
    const-string v0, "ca-app-pub-4991346658410627/2868638273"

    iput-object v0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->adUnitId:Ljava/lang/String;

    .line 58
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    .line 57
    new-instance v1, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;)Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->adapter:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;)Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getViewModel()Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->observerUtil$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    return-object v0
.end method

.method private final getViewModel()Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    return-object v0
.end method

.method private final hideAddStaffLayout(Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V
    .locals 8

    .line 244
    iget-object v0, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etStaffName:Landroid/widget/EditText;

    const-string v1, "etStaffName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 245
    iget-object v0, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etStaffMobileNumber:Landroid/widget/EditText;

    const-string v1, "etStaffMobileNumber"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 246
    iget-object v0, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->btnAddStaff:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    const-string v1, "btnAddStaff"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 247
    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->ivChevron:Landroid/widget/ImageView;

    sget v0, Lcom/laborbook/keep/R$drawable;->ic_chevron_down:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static final newInstance()Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->Companion:Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$Companion;->newInstance()Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;

    move-result-object v0

    return-object v0
.end method

.method private final observeProStatusChanges()V
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v0

    sget-object v1, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v1}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getPRO_STATUS()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$observeProStatusChanges$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$observeProStatusChanges$1;-><init>(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 117
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final openOrCloseAddStaffManualLayout(Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V
    .locals 3

    .line 226
    iget-boolean v0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->isAddStaffOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->isAddStaffOpen:Z

    .line 228
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->hideAddStaffLayout(Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->isAddStaffOpen:Z

    .line 231
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->showAddStaffLayout(Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V

    .line 232
    move-object p1, p0

    check-cast p1, Lcom/laborbook/base/BaseFragment;

    const-string v0, "show_manual_add_labor"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final registerOnClickListeners()V
    .locals 3

    .line 172
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz v0, :cond_0

    .line 173
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->btnAddStaff:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    new-instance v2, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v2, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->ivRefreshContacts:Landroid/widget/ImageView;

    new-instance v2, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->llAddStaff:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->ivAddStaff:Landroid/widget/ImageView;

    new-instance v2, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->tvAddStaffManually:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegularPrimaryColor14;

    new-instance v2, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegularPrimaryColor14;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->ivChevron:Landroid/widget/ImageView;

    new-instance v2, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etSearchContacts:Landroid/widget/EditText;

    new-instance v1, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final registerOnClickListeners$lambda$13$lambda$10(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->openOrCloseAddStaffManualLayout(Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$13$lambda$11(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->openOrCloseAddStaffManualLayout(Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$13$lambda$12(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    check-cast p0, Lcom/laborbook/base/BaseFragment;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const-string v1, "search_contacts"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$13$lambda$5(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Landroid/view/View;)V
    .locals 6

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    move-object p2, p0

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance p2, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;

    const/4 v2, 0x0

    invoke-direct {p2, p1, p0, v2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$registerOnClickListeners$1$1$1;-><init>(Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final registerOnClickListeners$lambda$13$lambda$6(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->goBack()V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$13$lambda$7(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 199
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->requestContactsPermission(Z)V

    .line 200
    check-cast p0, Lcom/laborbook/base/BaseFragment;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const-string v1, "refresh_contacts"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$13$lambda$8(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->openOrCloseAddStaffManualLayout(Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$13$lambda$9(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->openOrCloseAddStaffManualLayout(Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V

    return-void
.end method

.method private final requestContactsPermission(Z)V
    .locals 3

    .line 300
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 299
    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getViewModel()Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->loadContacts(Landroid/content/Context;Z)V

    goto :goto_0

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final requestPermissionLauncher$lambda$0(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Z)V
    .locals 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const-string v0, "permission_granted"

    const/4 v1, 0x1

    const-string v2, "permit_contacts"

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 61
    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getViewModel()Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "requireContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v3}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->loadContacts(Landroid/content/Context;Z)V

    .line 62
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etNoResultFound:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz p1, :cond_0

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->llAddStaffToolTip:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etSearchContacts:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->llContacts:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 68
    :cond_3
    new-array p1, v1, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    const-string v4, "yes"

    invoke-direct {v1, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p1, v3

    .line 67
    invoke-static {p1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    .line 66
    invoke-virtual {p0, v2, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etNoResultFound:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz p1, :cond_5

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->llAddStaffToolTip:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 74
    :cond_6
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etSearchContacts:Landroid/widget/EditText;

    if-eqz p1, :cond_7

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 75
    :cond_7
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->llContacts:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_8

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 76
    :cond_8
    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getViewModel()Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->openNonContactStaff()V

    .line 79
    new-array p1, v1, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    const-string v4, "no"

    invoke-direct {v1, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p1, v3

    .line 78
    invoke-static {p1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    .line 77
    invoke-virtual {p0, v2, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 82
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "Permission denied to read contacts"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private final setObserver()V
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object v0

    new-instance v1, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->setOnStaffUserAddedListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final setObserver$lambda$1(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/model/Staff;)Lkotlin/Unit;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "staff"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;

    const/4 v3, 0x0

    invoke-direct {v0, p1, p0, v3}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setObserver$1$1;-><init>(Lcom/laborbook/keep/model/Staff;Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 135
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setupViews()V
    .locals 3

    .line 139
    new-instance v0, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    iget-object v1, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->adUnitId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->adapter:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    .line 140
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz v0, :cond_1

    .line 141
    invoke-direct {p0, v0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->hideAddStaffLayout(Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V

    .line 142
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->btnAddStaff:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setEnabled(Z)V

    .line 143
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etStaffName:Landroid/widget/EditText;

    .line 144
    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getViewModel()Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    move-result-object v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->attachNameTextWatcher(Landroid/widget/TextView;)V

    .line 146
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etStaffMobileNumber:Landroid/widget/EditText;

    .line 147
    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getViewModel()Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    move-result-object v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->attachMobileNumberTextWatcher(Landroid/widget/TextView;)V

    .line 149
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->rvContacts:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->adapter:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    if-nez v2, :cond_0

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 150
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->tvToolbarText:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    sget v2, Lcom/laborbook/keep/R$string;->add_staff:I

    invoke-virtual {p0, v2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etSearchContacts:Landroid/widget/EditText;

    new-instance v1, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setupViews$1$3;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$setupViews$1$3;-><init>(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method private final showAddStaffLayout(Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V
    .locals 8

    .line 237
    iget-object v0, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etStaffName:Landroid/widget/EditText;

    const-string v1, "etStaffName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 238
    iget-object v0, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etStaffMobileNumber:Landroid/widget/EditText;

    const-string v1, "etStaffMobileNumber"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 239
    iget-object v0, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->btnAddStaff:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    const-string v1, "btnAddStaff"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 240
    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->ivChevron:Landroid/widget/ImageView;

    sget v0, Lcom/laborbook/keep/R$drawable;->ic_chevron_up:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private final viewModelObserver()V
    .locals 4

    .line 251
    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getViewModel()Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/addstaff/viewmodel/ContactsViewModel;->uiState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;)V

    new-instance v3, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final viewModelObserver$lambda$14(Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState;)Lkotlin/Unit;
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    instance-of v0, p1, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Loading;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz p0, :cond_14

    iget-object p0, p0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_14

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 254
    :cond_0
    instance-of v0, p1, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 255
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etNoResultFound:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v0, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->llAddStaffToolTip:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 258
    :cond_3
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etSearchContacts:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 259
    :cond_4
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->llContacts:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 260
    :cond_5
    iget-object p0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->adapter:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_6
    check-cast p1, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Success;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Success;->getContacts()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {p0, p1, v1, v2, v0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->submitOriginalList$default(Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;Ljava/util/List;ZILjava/lang/Object;)V

    goto/16 :goto_0

    .line 263
    :cond_7
    instance-of v0, p1, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Error;

    if-eqz v0, :cond_c

    .line 264
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etNoResultFound:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v0, :cond_8

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 265
    :cond_8
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->llAddStaffToolTip:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 266
    :cond_9
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etSearchContacts:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 267
    :cond_a
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->llContacts:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 268
    :cond_b
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p1, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Error;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 271
    :cond_c
    instance-of v0, p1, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$EnableAddStaffButton;

    if-eqz v0, :cond_d

    .line 272
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz p0, :cond_14

    iget-object p0, p0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->btnAddStaff:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz p0, :cond_14

    check-cast p1, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$EnableAddStaffButton;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$EnableAddStaffButton;->isDetailsEntered()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 275
    :cond_d
    instance-of v0, p1, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$StaffUserAddedSuccess;

    if-eqz v0, :cond_11

    .line 276
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_e

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 277
    :cond_e
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->etSearchContacts:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/laborbook/base/BaseExtensionKt;->hideKeyboard(Landroid/widget/EditText;Landroid/app/Activity;)V

    .line 278
    :cond_f
    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->getAddedStaff()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_10
    sget-object v2, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->INSTANCE:Lcom/laborbook/base/analytics/FacebookPaymentEvents;

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v0, "requireContext(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/laborbook/base/analytics/FacebookPaymentEvents;->logFirstStaffAdded$default(Lcom/laborbook/base/analytics/FacebookPaymentEvents;Landroid/content/Context;ILjava/lang/String;ILjava/lang/Object;)V

    .line 280
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    sget-object v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->Companion:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$Companion;

    check-cast p1, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$StaffUserAddedSuccess;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$StaffUserAddedSuccess;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$StaffUserAddedSuccess;->getMobileNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 283
    :cond_11
    instance-of v0, p1, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$OpenNonContactStaff;

    if-eqz v0, :cond_12

    .line 284
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz p1, :cond_14

    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->showAddStaffLayout(Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;)V

    goto :goto_0

    .line 287
    :cond_12
    instance-of v0, p1, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$StaffAddError;

    if-eqz v0, :cond_14

    .line 288
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_13

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 289
    :cond_13
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p1, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$StaffAddError;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/addstaff/uistate/AddStaffUiState$StaffAddError;->getMessage()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 294
    :cond_14
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "contacts"

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 91
    invoke-static {p1, p2, p3}, Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentAddStaffContactsBinding;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 313
    invoke-super {p0}, Lcom/laborbook/base/BaseFragment;->onDestroyView()V

    .line 314
    iget-object v0, p0, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->adapter:Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 315
    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/laborbook/keep/screen/addstaff/adapter/ContactItemAdapter;->releaseAds()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 96
    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->setupViews()V

    const/4 p1, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->requestContactsPermission(Z)V

    .line 98
    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->viewModelObserver()V

    .line 99
    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->registerOnClickListeners()V

    .line 100
    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->setObserver()V

    .line 103
    invoke-direct {p0}, Lcom/laborbook/keep/screen/addstaff/fragment/AddStaffContactsFragment;->observeProStatusChanges()V

    return-void
.end method
