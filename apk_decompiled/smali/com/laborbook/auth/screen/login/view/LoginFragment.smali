.class public final Lcom/laborbook/auth/screen/login/view/LoginFragment;
.super Lcom/laborbook/base/BaseFragment;
.source "LoginFragment.kt"

# interfaces
.implements Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/auth/screen/login/view/LoginFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseFragment<",
        "Lcom/laborbook/auth/databinding/FragmentLoginBinding;",
        ">;",
        "Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginFragment.kt\ncom/laborbook/auth/screen/login/view/LoginFragment\n+ 2 ViewModelStoreOwnerExt.kt\norg/koin/androidx/viewmodel/ext/android/ViewModelStoreOwnerExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,452:1\n35#2,6:453\n1#3:459\n*S KotlinDebug\n*F\n+ 1 LoginFragment.kt\ncom/laborbook/auth/screen/login/view/LoginFragment\n*L\n68#1:453,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 C2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001CB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u001f\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u001c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010!\u001a\u00020\u0013H\u0002J\u0008\u0010\"\u001a\u00020\u0013H\u0002J\u0008\u0010#\u001a\u00020\u0013H\u0002J\u0008\u0010$\u001a\u00020\u0013H\u0002J\u0008\u0010%\u001a\u00020\u0013H\u0002J\u0008\u0010&\u001a\u00020\u0013H\u0002J\u0010\u0010\'\u001a\u00020\u00132\u0006\u0010(\u001a\u00020)H\u0002J\u0008\u0010*\u001a\u00020\u0013H\u0002J\"\u0010+\u001a\u00020\u00132\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020-2\u0008\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0010\u00101\u001a\u00020)2\u0006\u00102\u001a\u000203H\u0002J\u0008\u00104\u001a\u00020\u0013H\u0016J\u0008\u00105\u001a\u00020\u0013H\u0016J\u0010\u00106\u001a\u00020\u00132\u0006\u00107\u001a\u000208H\u0016J\u0010\u00109\u001a\u00020\u00132\u0006\u0010:\u001a\u00020;H\u0016J\u0012\u0010<\u001a\u00020\u00132\u0008\u00107\u001a\u0004\u0018\u000108H\u0016J\u0008\u0010=\u001a\u00020\u0013H\u0002J\u0008\u0010>\u001a\u00020)H\u0002J\u0018\u0010?\u001a\u00020\u00132\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0082@\u00a2\u0006\u0002\u0010BR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u000f\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006D"
    }
    d2 = {
        "Lcom/laborbook/auth/screen/login/view/LoginFragment;",
        "Lcom/laborbook/base/BaseFragment;",
        "Lcom/laborbook/auth/databinding/FragmentLoginBinding;",
        "Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;",
        "<init>",
        "()V",
        "codeVerifier",
        "",
        "mobileNumber",
        "viewModel",
        "Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;",
        "getViewModel",
        "()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "screenName",
        "getScreenName",
        "()Ljava/lang/String;",
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
        "collageScrollJob",
        "Lkotlinx/coroutines/Job;",
        "onViewCreated",
        "view",
        "setupViews",
        "startCollageAutoScroll",
        "showLanguageOnFirstOpen",
        "registerOnClickListeners",
        "triggerTrueCallerLogin",
        "viewModelObserver",
        "changeButtonState",
        "enable",
        "",
        "showPhoneNumberHint",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "isGooglePlayServicesAvailable",
        "context",
        "Landroid/content/Context;",
        "onResume",
        "onDestroy",
        "onFailure",
        "tcOAuthError",
        "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;",
        "onSuccess",
        "tcOAuthData",
        "Lcom/truecaller/android/sdk/oAuth/TcOAuthData;",
        "onVerificationRequired",
        "setupTruecaller",
        "isTruecallerInstalled",
        "storeUserDetails",
        "authResponse",
        "Lcom/laborbook/auth/model/request/AuthResponse;",
        "(Lcom/laborbook/auth/model/request/AuthResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "auth_release"
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
.field public static final Companion:Lcom/laborbook/auth/screen/login/view/LoginFragment$Companion;


# instance fields
.field private codeVerifier:Ljava/lang/String;

.field private collageScrollJob:Lkotlinx/coroutines/Job;

.field private mobileNumber:Ljava/lang/String;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$5EQe_tKkZVJXXWTRCFxGEld2nd8(Lcom/laborbook/auth/screen/login/view/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->registerOnClickListeners$lambda$9$lambda$8(Lcom/laborbook/auth/screen/login/view/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5iDn-iBvPb0W5eB9EEUHW5u2feA(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->startCollageAutoScroll$lambda$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IBJ9Fsphm6Hsoq0iDEp9evEdbWY(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->startCollageAutoScroll$lambda$5(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ktlisdZC5vThAWt1V7wyKzHnX-c(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lcom/laborbook/auth/databinding/FragmentLoginBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->registerOnClickListeners$lambda$9$lambda$7(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lcom/laborbook/auth/databinding/FragmentLoginBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t7eikLmNGV72jTDaPXuoUUxXySI(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->startCollageAutoScroll$lambda$4(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$utohOoRjnJY2oB3MrIw7QK4v-1s(Lcom/laborbook/auth/screen/login/view/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->registerOnClickListeners$lambda$9$lambda$6(Lcom/laborbook/auth/screen/login/view/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xDK4xJvwUP3rxnATwNq19x61wQQ(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lcom/laborbook/auth/screen/login/uistate/UiState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->viewModelObserver$lambda$10(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lcom/laborbook/auth/screen/login/uistate/UiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/auth/screen/login/view/LoginFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/auth/screen/login/view/LoginFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/auth/screen/login/view/LoginFragment;->Companion:Lcom/laborbook/auth/screen/login/view/LoginFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 64
    invoke-direct {p0}, Lcom/laborbook/base/BaseFragment;-><init>()V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment;->mobileNumber:Ljava/lang/String;

    .line 68
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 455
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 458
    new-instance v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$special$$inlined$viewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/auth/screen/login/view/LoginFragment$special$$inlined$viewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/laborbook/auth/screen/login/view/LoginFragment;)Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getViewModel()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isGooglePlayServicesAvailable(Lcom/laborbook/auth/screen/login/view/LoginFragment;Landroid/content/Context;)Z
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isTruecallerInstalled(Lcom/laborbook/auth/screen/login/view/LoginFragment;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->isTruecallerInstalled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setupTruecaller(Lcom/laborbook/auth/screen/login/view/LoginFragment;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->setupTruecaller()V

    return-void
.end method

.method public static final synthetic access$showLanguageOnFirstOpen(Lcom/laborbook/auth/screen/login/view/LoginFragment;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->showLanguageOnFirstOpen()V

    return-void
.end method

.method public static final synthetic access$showPhoneNumberHint(Lcom/laborbook/auth/screen/login/view/LoginFragment;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->showPhoneNumberHint()V

    return-void
.end method

.method public static final synthetic access$storeUserDetails(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lcom/laborbook/auth/model/request/AuthResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->storeUserDetails(Lcom/laborbook/auth/model/request/AuthResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$triggerTrueCallerLogin(Lcom/laborbook/auth/screen/login/view/LoginFragment;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->triggerTrueCallerLogin()V

    return-void
.end method

.method private final changeButtonState(Z)V
    .locals 2

    .line 294
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->btnLogin:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 295
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    .line 296
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private final getViewModel()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    return-object v0
.end method

.method private final isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 336
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final isTruecallerInstalled()Z
    .locals 3

    .line 394
    :try_start_0
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.truecaller"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final newInstance()Lcom/laborbook/auth/screen/login/view/LoginFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/auth/screen/login/view/LoginFragment;->Companion:Lcom/laborbook/auth/screen/login/view/LoginFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/auth/screen/login/view/LoginFragment$Companion;->newInstance()Lcom/laborbook/auth/screen/login/view/LoginFragment;

    move-result-object v0

    return-object v0
.end method

.method private final registerOnClickListeners()V
    .locals 3

    .line 225
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz v0, :cond_0

    .line 226
    iget-object v1, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->ivLanguageSwitch:Landroid/widget/ImageView;

    new-instance v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v1, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->btnLogin:Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/laborbook/auth/screen/login/view/LoginFragment$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lcom/laborbook/auth/databinding/FragmentLoginBinding;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->btnTcLogin:Landroid/widget/ImageView;

    new-instance v1, Lcom/laborbook/auth/screen/login/view/LoginFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment$$ExternalSyntheticLambda2;-><init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final registerOnClickListeners$lambda$9$lambda$6(Lcom/laborbook/auth/screen/login/view/LoginFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    :try_start_0
    sget-object p1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->Companion:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;

    invoke-virtual {p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;->newInstance()Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

    move-result-object p1

    .line 229
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "LanguageBottomSheetFragment"

    invoke-virtual {p1, p0, v0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final registerOnClickListeners$lambda$9$lambda$7(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lcom/laborbook/auth/databinding/FragmentLoginBinding;Landroid/view/View;)V
    .locals 8

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->etNumber:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-static {p2, v0}, Lcom/laborbook/base/BaseExtensionKt;->toggleKeyboard(Lcom/google/android/material/textfield/TextInputEditText;Landroid/app/Activity;)V

    .line 235
    :cond_0
    iget-object p1, p1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->etNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment;->mobileNumber:Ljava/lang/String;

    .line 236
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getViewModel()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    move-result-object p1

    new-instance p2, Lcom/laborbook/auth/model/request/AuthRequestBody;

    iget-object v2, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment;->mobileNumber:Ljava/lang/String;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const-string v1, "91"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/laborbook/auth/model/request/AuthRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, p2}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->generateOtp(Lcom/laborbook/auth/model/request/AuthRequestBody;)Lkotlinx/coroutines/Job;

    const/4 p1, 0x1

    .line 237
    new-array p1, p1, [Lkotlin/Pair;

    new-instance p2, Lkotlin/Pair;

    const-string v0, "mobile_number"

    iget-object v1, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment;->mobileNumber:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "request_otp"

    invoke-virtual {p0, p2, p1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$9$lambda$8(Lcom/laborbook/auth/screen/login/view/LoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->triggerTrueCallerLogin()V

    return-void
.end method

.method private final setupTruecaller()V
    .locals 4

    .line 375
    :try_start_0
    new-instance v0, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;

    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;

    invoke-direct {v0, v1, v2}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;-><init>(Landroid/content/Context;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;)V

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/oAuth/TcSdkOptions$Builder;->build()Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;

    move-result-object v0

    .line 376
    invoke-static {v0}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->init(Lcom/truecaller/android/sdk/oAuth/TcSdkOptions;)V

    .line 377
    invoke-static {}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->getInstance()Lcom/truecaller/android/sdk/oAuth/TcSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->isOAuthFlowUsable()Z

    .line 378
    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    check-cast v1, Ljava/util/Random;

    const/16 v2, 0x82

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-static {}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->getInstance()Lcom/truecaller/android/sdk/oAuth/TcSdk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->setOAuthState(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->getInstance()Lcom/truecaller/android/sdk/oAuth/TcSdk;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "profile"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "phone"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->setOAuthScopes([Ljava/lang/String;)V

    .line 382
    sget-object v0, Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil;->Companion:Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil$Companion;

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil$Companion;->generateRandomCodeVerifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment;->codeVerifier:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 384
    sget-object v1, Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil;->Companion:Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil$Companion;

    invoke-virtual {v1, v0}, Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil$Companion;->getCodeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-static {}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->getInstance()Lcom/truecaller/android/sdk/oAuth/TcSdk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->setCodeChallenge(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_0
    sget-object v0, Lcom/laborbook/base/Logger;->INSTANCE:Lcom/laborbook/base/Logger;

    const-string v1, "Code challenge is Null. Can\u2019t proceed further"

    invoke-virtual {v0, v1}, Lcom/laborbook/base/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private final setupViews()V
    .locals 12

    .line 122
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz v0, :cond_2

    .line 123
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->isTruecallerInstalled()Z

    move-result v1

    const-string v2, "btnTcLogin"

    const-string v3, "tvOrWith"

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->tvOrWith:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 125
    iget-object v1, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->btnTcLogin:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 126
    move-object v1, p0

    check-cast v1, Lcom/laborbook/base/BaseFragment;

    const-string v2, "truecaller_installed"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcom/laborbook/base/BaseFragment;->triggerImpressionEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->tvOrWith:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 129
    iget-object v1, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->btnTcLogin:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->btnLogin:Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 134
    :cond_1
    iget-object v1, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->etNumber:Lcom/google/android/material/textfield/TextInputEditText;

    .line 135
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getViewModel()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    move-result-object v3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->attachPhoneNumberTextWatcher(Landroid/widget/TextView;)V

    .line 139
    new-instance v1, Landroid/text/SpannableString;

    const-string v3, "By continuing you agree that you have read and accepted our Terms & Conditions and Privacy Policy."

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    .line 141
    const-string v5, "Terms & Conditions"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v10

    add-int/lit8 v11, v10, 0x12

    .line 143
    const-string v5, "Privacy Policy"

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    add-int/lit8 v4, v3, 0xe

    .line 147
    new-instance v5, Lcom/laborbook/auth/screen/login/view/LoginFragment$setupViews$1$termsClickableSpan$1;

    invoke-direct {v5, p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment$setupViews$1$termsClickableSpan$1;-><init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;)V

    .line 155
    new-instance v6, Lcom/laborbook/auth/screen/login/view/LoginFragment$setupViews$1$privacyClickableSpan$1;

    invoke-direct {v6, p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment$setupViews$1$privacyClickableSpan$1;-><init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;)V

    .line 163
    const-string v7, "#3270D2"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x21

    .line 165
    invoke-virtual {v1, v5, v10, v11, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 166
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v5, v10, v11, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 167
    invoke-virtual {v1, v6, v3, v4, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 168
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v5, v3, v4, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 170
    iget-object v3, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->tvTermsAndConditions:Lcom/boilerplate/uikit/views/textviews/text10/TextViewRegular10;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Lcom/boilerplate/uikit/views/textviews/text10/TextViewRegular10;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->tvTermsAndConditions:Lcom/boilerplate/uikit/views/textviews/text10/TextViewRegular10;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/boilerplate/uikit/views/textviews/text10/TextViewRegular10;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 172
    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->tvTermsAndConditions:Lcom/boilerplate/uikit/views/textviews/text10/TextViewRegular10;

    invoke-virtual {v0, v2}, Lcom/boilerplate/uikit/views/textviews/text10/TextViewRegular10;->setHighlightColor(I)V

    :cond_2
    return-void
.end method

.method private final showLanguageOnFirstOpen()V
    .locals 7

    .line 212
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/auth/screen/login/view/LoginFragment$showLanguageOnFirstOpen$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/auth/screen/login/view/LoginFragment$showLanguageOnFirstOpen$1;-><init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final showPhoneNumberHint()V
    .locals 10

    .line 301
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 302
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setPhoneNumberIdentifierSupported(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->build()Lcom/google/android/gms/auth/api/credentials/HintRequest;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/auth/api/credentials/Credentials;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    move-result-object v1

    const-string v2, "let(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;->getHintPickerIntent(Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "getHintPickerIntent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getViewModel()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->getPHONE_NUMBER_REQUEST()I

    move-result v4

    .line 311
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    .line 310
    invoke-virtual/range {v2 .. v9}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final startCollageAutoScroll()V
    .locals 8

    .line 177
    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment;->collageScrollJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->svCol1:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/laborbook/auth/screen/login/view/LoginFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->svCol2:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/laborbook/auth/screen/login/view/LoginFragment$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->svCol3:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_3

    new-instance v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/laborbook/auth/screen/login/view/LoginFragment$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    :cond_3
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;

    invoke-direct {v0, p0, v1}, Lcom/laborbook/auth/screen/login/view/LoginFragment$startCollageAutoScroll$4;-><init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment;->collageScrollJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final startCollageAutoScroll$lambda$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final startCollageAutoScroll$lambda$4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final startCollageAutoScroll$lambda$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private final storeUserDetails(Lcom/laborbook/auth/model/request/AuthResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/auth/model/request/AuthResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;

    iget v3, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;

    invoke-direct {v2, v0, v1}, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;-><init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 401
    iget v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, ""

    packed-switch v4, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v3, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/amplitude/android/Amplitude;

    iget-object v2, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/amplitude/android/events/Identify;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_10

    :pswitch_1
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/amplitude/android/events/Identify;

    iget-object v5, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/amplitude/android/events/Identify;

    iget-object v8, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/laborbook/auth/screen/login/view/LoginFragment;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_f

    :pswitch_2
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/amplitude/android/events/Identify;

    iget-object v5, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/amplitude/android/events/Identify;

    iget-object v8, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/laborbook/auth/screen/login/view/LoginFragment;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_e

    :pswitch_3
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/amplitude/android/events/Identify;

    iget-object v5, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/amplitude/android/events/Identify;

    iget-object v8, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/laborbook/auth/screen/login/view/LoginFragment;

    :try_start_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_d

    :pswitch_4
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/amplitude/android/events/Identify;

    iget-object v5, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/amplitude/android/events/Identify;

    iget-object v8, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/laborbook/auth/screen/login/view/LoginFragment;

    :try_start_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_c

    :pswitch_5
    iget v5, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->I$0:I

    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/boilerplate/network/NetworkHandler;

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v6, [Lkotlin/Pair;

    iget-object v8, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v11, [Lkotlin/Pair;

    iget-object v12, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_6
    iget v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->I$0:I

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lcom/boilerplate/network/NetworkHandler;

    iget-object v8, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v8, [Lkotlin/Pair;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v12, [Lkotlin/Pair;

    iget-object v13, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v6

    move v6, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v13

    move-object v13, v12

    move-object/from16 v12, v17

    goto/16 :goto_a

    :pswitch_7
    iget v8, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->I$0:I

    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lcom/boilerplate/network/NetworkHandler;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v11, [Lkotlin/Pair;

    iget-object v12, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v13, [Lkotlin/Pair;

    iget-object v14, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_8
    iget v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->I$0:I

    iget-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lcom/boilerplate/network/NetworkHandler;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    check-cast v11, [Lkotlin/Pair;

    iget-object v12, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v13, [Lkotlin/Pair;

    iget-object v14, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_9
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_a
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_b
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/auth/model/request/User;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_c
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/auth/model/request/User;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_d
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/auth/model/request/User;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_e
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/auth/model/request/User;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_f
    iget-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/laborbook/auth/model/request/User;

    iget-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_10
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p1, :cond_17

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/auth/model/request/AuthResponse;->getUser()Lcom/laborbook/auth/model/request/User;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v11, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v11}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getACCESS_TOKEN()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/auth/model/request/AuthResponse;->getAuthToken()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    move-object v12, v10

    :cond_1
    iput-object v0, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput v8, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-virtual {v1, v11, v12, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_2

    return-object v3

    :cond_2
    move-object v11, v0

    .line 405
    :goto_1
    invoke-virtual {v11}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v12, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v12}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v12

    invoke-virtual {v4}, Lcom/laborbook/auth/model/request/User;->getUserId()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_3

    move-object v13, v10

    :cond_3
    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput v7, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-virtual {v1, v12, v13, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    .line 406
    :cond_4
    :goto_2
    invoke-virtual {v11}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v12, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v12}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_NAME()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v12

    invoke-virtual {v4}, Lcom/laborbook/auth/model/request/User;->getUserName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_5

    move-object v13, v10

    :cond_5
    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput v5, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-virtual {v1, v12, v13, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    .line 407
    :cond_6
    :goto_3
    invoke-virtual {v11}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v12, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v12}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_TYPE()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v12

    invoke-virtual {v4}, Lcom/laborbook/auth/model/request/User;->getUserType()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_7

    move-object v13, v10

    :cond_7
    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-virtual {v1, v12, v13, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    return-object v3

    .line 408
    :cond_8
    :goto_4
    invoke-virtual {v11}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v12, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v12}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getMOBILE_NUMBER()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v12

    invoke-virtual {v4}, Lcom/laborbook/auth/model/request/User;->getMobileNumber()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_9

    move-object v13, v10

    :cond_9
    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    const/4 v14, 0x5

    iput v14, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-virtual {v1, v12, v13, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    return-object v3

    .line 409
    :cond_a
    :goto_5
    invoke-virtual {v11}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v12, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v12}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getCOMPANY_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v12

    invoke-virtual {v4}, Lcom/laborbook/auth/model/request/User;->getCompanyId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move-object v4, v10

    :cond_b
    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    const/4 v13, 0x6

    iput v13, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-virtual {v1, v12, v4, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_c

    return-object v3

    :cond_c
    move-object v4, v11

    .line 410
    :goto_6
    invoke-virtual {v4}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v11, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v11}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getIS_LOGGED_IN()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v11

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    const/4 v13, 0x7

    iput v13, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-virtual {v1, v11, v12, v2}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_d

    return-object v3

    .line 411
    :cond_d
    :goto_7
    sget-object v1, Lcom/boilerplate/network/NetworkHandler;->Companion:Lcom/boilerplate/network/NetworkHandler$Companion;

    invoke-virtual {v1}, Lcom/boilerplate/network/NetworkHandler$Companion;->getInstance()Lcom/boilerplate/network/NetworkHandler;

    move-result-object v1

    .line 413
    new-array v11, v6, [Lkotlin/Pair;

    .line 415
    invoke-virtual {v4}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v6

    sget-object v12, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v12}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getCOMPANY_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v12

    invoke-virtual {v6, v12, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    const-string v12, "x-lb-companyID"

    iput-object v12, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    iput-object v1, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    const/4 v13, 0x0

    iput v13, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->I$0:I

    const/16 v14, 0x8

    iput v14, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-static {v6, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_e

    return-object v3

    :cond_e
    move-object v14, v4

    move v4, v13

    move-object v13, v11

    move-object/from16 v16, v6

    move-object v6, v1

    move-object/from16 v1, v16

    .line 413
    :goto_8
    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v12, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v15, v11, v4

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    const-string v4, "Bearer "

    .line 420
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 421
    invoke-virtual {v14}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v11, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v11}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getACCESS_TOKEN()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v11

    invoke-virtual {v1, v11, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v14, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    const-string v12, "Authorization"

    iput-object v12, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$5:Ljava/lang/Object;

    iput v8, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->I$0:I

    const/16 v11, 0x9

    iput v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_f

    return-object v3

    :cond_f
    move-object v11, v13

    .line 401
    :goto_9
    check-cast v1, Ljava/lang/String;

    .line 420
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v12, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v11, v8

    .line 426
    invoke-virtual {v14}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    invoke-virtual {v1, v4, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v14, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    const-string v11, "x-lb-userID"

    iput-object v11, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    iput-object v9, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$5:Ljava/lang/Object;

    iput v7, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->I$0:I

    const/16 v4, 0xa

    iput v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_10

    return-object v3

    :cond_10
    move-object v4, v6

    move v6, v7

    move-object v8, v13

    move-object v12, v14

    .line 424
    :goto_a
    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v11, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v14, v8, v6

    .line 430
    invoke-virtual {v12}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v6, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v6}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v12, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    const-string v8, "User-ID"

    iput-object v8, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    iput v5, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->I$0:I

    const/16 v6, 0xb

    iput v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_11

    return-object v3

    :cond_11
    move-object v6, v13

    move-object v11, v6

    .line 428
    :goto_b
    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v8, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, v5

    .line 412
    invoke-static {v11}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 411
    invoke-virtual {v4, v1}, Lcom/boilerplate/network/NetworkHandler;->setAdditionalHeaders(Ljava/util/HashMap;)V

    .line 436
    :try_start_5
    new-instance v4, Lcom/amplitude/android/events/Identify;

    invoke-direct {v4}, Lcom/amplitude/android/events/Identify;-><init>()V

    .line 437
    const-string v5, "user_id"

    invoke-virtual {v12}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v6, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v6}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v6

    invoke-virtual {v1, v6, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v12, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$4:Ljava/lang/Object;

    const/16 v6, 0xc

    iput v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_12

    return-object v3

    :cond_12
    move-object v6, v4

    move-object v8, v12

    :goto_c
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/amplitude/android/events/Identify;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Identify;

    .line 438
    const-string v5, "user_mobile_number"

    invoke-virtual {v8}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getMOBILE_NUMBER()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    invoke-virtual {v1, v4, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v8, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    const/16 v4, 0xd

    iput v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_13

    return-object v3

    :cond_13
    move-object v4, v6

    :goto_d
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/amplitude/android/events/Identify;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Identify;

    .line 439
    const-string v5, "user_name"

    invoke-virtual {v8}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_NAME()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    invoke-virtual {v1, v4, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v8, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    const/16 v4, 0xe

    iput v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_14

    return-object v3

    :cond_14
    move-object v4, v6

    :goto_e
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/amplitude/android/events/Identify;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Identify;

    .line 440
    const-string v5, "user_type"

    invoke-virtual {v8}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v1

    sget-object v4, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v4}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_TYPE()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v4

    invoke-virtual {v1, v4, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v8, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    const/16 v4, 0xf

    iput v4, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_15

    return-object v3

    :cond_15
    move-object v4, v6

    :goto_f
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/amplitude/android/events/Identify;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Identify;

    .line 441
    sget-object v1, Lcom/laborbook/base/analytics/AmplitudeHolder;->INSTANCE:Lcom/laborbook/base/analytics/AmplitudeHolder;

    invoke-virtual {v1}, Lcom/laborbook/base/analytics/AmplitudeHolder;->getInstance()Lcom/amplitude/android/Amplitude;

    move-result-object v1

    invoke-virtual {v8}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getDataStoreManager()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object v4

    sget-object v5, Lcom/laborbook/base/datastore/DataStoreManager;->Companion:Lcom/laborbook/base/datastore/DataStoreManager$Companion;

    invoke-virtual {v5}, Lcom/laborbook/base/datastore/DataStoreManager$Companion;->getUSER_ID()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    iput-object v6, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$1:Ljava/lang/Object;

    iput-object v9, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->L$3:Ljava/lang/Object;

    const/16 v5, 0x10

    iput v5, v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$storeUserDetails$1;->label:I

    invoke-static {v4, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_16

    return-object v3

    :cond_16
    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    :goto_10
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/amplitude/android/Amplitude;->setUserId(Ljava/lang/String;)Lcom/amplitude/core/Amplitude;

    .line 442
    sget-object v1, Lcom/laborbook/base/analytics/AmplitudeHolder;->INSTANCE:Lcom/laborbook/base/analytics/AmplitudeHolder;

    invoke-virtual {v1}, Lcom/laborbook/base/analytics/AmplitudeHolder;->getInstance()Lcom/amplitude/android/Amplitude;

    move-result-object v1

    check-cast v1, Lcom/amplitude/core/Amplitude;

    check-cast v2, Lcom/amplitude/core/events/Identify;

    invoke-static {v1, v2, v9, v7, v9}, Lcom/amplitude/core/Amplitude;->identify$default(Lcom/amplitude/core/Amplitude;Lcom/amplitude/core/events/Identify;Lcom/amplitude/core/events/EventOptions;ILjava/lang/Object;)Lcom/amplitude/core/Amplitude;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_11

    .line 443
    :catch_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 446
    :cond_17
    :goto_11
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final triggerTrueCallerLogin()V
    .locals 4

    .line 248
    :try_start_0
    invoke-static {}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->getInstance()Lcom/truecaller/android/sdk/oAuth/TcSdk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->getAuthorizationCode(Landroidx/fragment/app/FragmentActivity;)V

    .line 249
    move-object v0, p0

    check-cast v0, Lcom/laborbook/base/BaseFragment;

    const-string v1, "truecaller_login"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final viewModelObserver()V
    .locals 4

    .line 255
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getViewModel()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->uiState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/laborbook/auth/screen/login/view/LoginFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment$$ExternalSyntheticLambda6;-><init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;)V

    new-instance v3, Lcom/laborbook/auth/screen/login/view/LoginFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/laborbook/auth/screen/login/view/LoginFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final viewModelObserver$lambda$10(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lcom/laborbook/auth/screen/login/uistate/UiState;)Lkotlin/Unit;
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    instance-of v0, p1, Lcom/laborbook/auth/screen/login/uistate/UiState$Loading;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->btnLogin:Lcom/google/android/material/button/MaterialButton;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 261
    :cond_1
    instance-of v0, p1, Lcom/laborbook/auth/screen/login/uistate/UiState$OtpSent;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 262
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    move-object v3, p1

    check-cast v3, Landroid/view/View;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->btnLogin:Lcom/google/android/material/button/MaterialButton;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 265
    :cond_3
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p1

    sget-object v0, Lcom/laborbook/auth/screen/login/view/OtpFragment;->Companion:Lcom/laborbook/auth/screen/login/view/OtpFragment$Companion;

    iget-object p0, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/laborbook/auth/screen/login/view/OtpFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/laborbook/auth/screen/login/view/OtpFragment;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 267
    :cond_4
    instance-of v0, p1, Lcom/laborbook/auth/screen/login/uistate/UiState$Error;

    if-eqz v0, :cond_7

    .line 268
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 269
    :cond_5
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->btnLogin:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 270
    :cond_6
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    check-cast p1, Lcom/laborbook/auth/screen/login/uistate/UiState$Error;

    invoke-virtual {p1}, Lcom/laborbook/auth/screen/login/uistate/UiState$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 272
    :cond_7
    instance-of v0, p1, Lcom/laborbook/auth/screen/login/uistate/UiState$TrueCallerLoginSuccess;

    if-eqz v0, :cond_8

    .line 273
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/auth/screen/login/view/LoginFragment$viewModelObserver$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/laborbook/auth/screen/login/view/LoginFragment$viewModelObserver$1$1;-><init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lcom/laborbook/auth/screen/login/uistate/UiState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 282
    :cond_8
    instance-of v0, p1, Lcom/laborbook/auth/screen/login/uistate/UiState$NumberEntered;

    if-eqz v0, :cond_9

    .line 284
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getViewModel()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->uiState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/laborbook/auth/screen/login/uistate/UiState$Loading;

    if-nez v0, :cond_9

    .line 285
    check-cast p1, Lcom/laborbook/auth/screen/login/uistate/UiState$NumberEntered;

    invoke-virtual {p1}, Lcom/laborbook/auth/screen/login/uistate/UiState$NumberEntered;->isValidNumber()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->changeButtonState(Z)V

    .line 290
    :cond_9
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "login"

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/auth/databinding/FragmentLoginBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 82
    invoke-static {p1, p2, p3}, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 319
    invoke-super {p0, p1, p2, p3}, Lcom/laborbook/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 321
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getViewModel()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;->getPHONE_NUMBER_REQUEST()I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 324
    const-string v1, "com.google.android.gms.credentials.Credential"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/credentials/Credential;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    instance-of v2, v1, Lcom/google/android/gms/auth/api/credentials/Credential;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 325
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    :cond_3
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->etNumber:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_4
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->etNumber:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->etNumber:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setSelection(I)V

    :cond_5
    const/16 v0, 0x64

    if-ne p1, v0, :cond_6

    .line 331
    invoke-static {}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->getInstance()Lcom/truecaller/android/sdk/oAuth/TcSdk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->onActivityResultObtained(Landroidx/fragment/app/FragmentActivity;IILandroid/content/Intent;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/laborbook/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/auth/databinding/FragmentLoginBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/auth/databinding/FragmentLoginBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 346
    invoke-super {p0}, Lcom/laborbook/base/BaseFragment;->onDestroy()V

    .line 347
    invoke-static {}, Lcom/truecaller/android/sdk/oAuth/TcSdk;->clear()V

    return-void
.end method

.method public onFailure(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V
    .locals 1

    const-string v0, "tcOAuthError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 342
    invoke-super {p0}, Lcom/laborbook/base/BaseFragment;->onResume()V

    return-void
.end method

.method public onSuccess(Lcom/truecaller/android/sdk/oAuth/TcOAuthData;)V
    .locals 8

    const-string v0, "tcOAuthData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginFragment;->codeVerifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 355
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v0, v3}, Lcom/laborbook/auth/screen/login/view/LoginFragment$onSuccess$1$1;-><init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lcom/truecaller/android/sdk/oAuth/TcOAuthData;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public onVerificationRequired(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->viewModelObserver()V

    .line 98
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->setupViews()V

    .line 99
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->registerOnClickListeners()V

    .line 100
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->startCollageAutoScroll()V

    .line 102
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/laborbook/auth/screen/login/view/LoginFragment$onViewCreated$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/laborbook/auth/screen/login/view/LoginFragment$onViewCreated$1;-><init>(Lcom/laborbook/auth/screen/login/view/LoginFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
