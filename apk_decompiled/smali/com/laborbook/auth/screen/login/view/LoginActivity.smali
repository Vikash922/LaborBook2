.class public final Lcom/laborbook/auth/screen/login/view/LoginActivity;
.super Lcom/laborbook/base/BaseActivity;
.source "LoginActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginActivity.kt\ncom/laborbook/auth/screen/login/view/LoginActivity\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,96:1\n50#2,5:97\n163#3,2:102\n*S KotlinDebug\n*F\n+ 1 LoginActivity.kt\ncom/laborbook/auth/screen/login/view/LoginActivity\n*L\n30#1:97,5\n49#1:102,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u0008\u0010\u001a\u001a\u00020\u0017H\u0002J\u0012\u0010\u001b\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002J\u0008\u0010\u001c\u001a\u00020\u0017H\u0016J\"\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\u0010\u0010#\u001a\u00020\u00172\u0006\u0010$\u001a\u00020\u0019H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR,\u0010\u0010\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00120\u0014j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u0012`\u0011X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0015\u00a8\u0006%"
    }
    d2 = {
        "Lcom/laborbook/auth/screen/login/view/LoginActivity;",
        "Lcom/laborbook/base/BaseActivity;",
        "<init>",
        "()V",
        "binding",
        "Lcom/laborbook/auth/databinding/ActivityLoginBinding;",
        "fragmentNavigator",
        "Lcom/laborbook/base/navigator/FragmentNavigator;",
        "getFragmentNavigator",
        "()Lcom/laborbook/base/navigator/FragmentNavigator;",
        "fragmentNavigator$delegate",
        "Lkotlin/Lazy;",
        "loginFragment",
        "Lcom/laborbook/auth/screen/login/view/LoginFragment;",
        "getLoginFragment",
        "()Lcom/laborbook/auth/screen/login/view/LoginFragment;",
        "rootFragmentProvider",
        "Lkotlin/collections/ArrayList;",
        "Lkotlin/Function0;",
        "Landroidx/fragment/app/Fragment;",
        "Ljava/util/ArrayList;",
        "Ljava/util/ArrayList;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "enableEdgeToEdge",
        "setupNavigator",
        "onBackPressed",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onSaveInstanceState",
        "outState",
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


# instance fields
.field private binding:Lcom/laborbook/auth/databinding/ActivityLoginBinding;

.field private final fragmentNavigator$delegate:Lkotlin/Lazy;

.field private final loginFragment:Lcom/laborbook/auth/screen/login/view/LoginFragment;

.field private final rootFragmentProvider:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$S3WQlpfFrVNe6sLTBH5-JLVkqn8(Lcom/laborbook/auth/screen/login/view/LoginActivity;)Landroidx/fragment/app/Fragment;
    .locals 0

    invoke-static {p0}, Lcom/laborbook/auth/screen/login/view/LoginActivity;->rootFragmentProvider$lambda$0(Lcom/laborbook/auth/screen/login/view/LoginActivity;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rLUFDZHXsmgk5v2uubrXEe7XsrQ(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/screen/login/view/LoginActivity;->enableEdgeToEdge$lambda$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 4

    .line 27
    invoke-direct {p0}, Lcom/laborbook/base/BaseActivity;-><init>()V

    .line 30
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 99
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 101
    new-instance v2, Lcom/laborbook/auth/screen/login/view/LoginActivity$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/auth/screen/login/view/LoginActivity$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginActivity;->fragmentNavigator$delegate:Lkotlin/Lazy;

    .line 32
    sget-object v0, Lcom/laborbook/auth/screen/login/view/LoginFragment;->Companion:Lcom/laborbook/auth/screen/login/view/LoginFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/auth/screen/login/view/LoginFragment$Companion;->newInstance()Lcom/laborbook/auth/screen/login/view/LoginFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginActivity;->loginFragment:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    const/4 v0, 0x1

    .line 34
    new-array v0, v0, [Lkotlin/jvm/functions/Function0;

    .line 33
    new-instance v1, Lcom/laborbook/auth/screen/login/view/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/laborbook/auth/screen/login/view/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/auth/screen/login/view/LoginActivity;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginActivity;->rootFragmentProvider:Ljava/util/ArrayList;

    return-void
.end method

.method private final enableEdgeToEdge()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginActivity;->binding:Lcom/laborbook/auth/databinding/ActivityLoginBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/laborbook/auth/databinding/ActivityLoginBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 47
    new-instance v1, Lcom/laborbook/auth/screen/login/view/LoginActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/laborbook/auth/screen/login/view/LoginActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 57
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    return-void
.end method

.method private static final enableEdgeToEdge$lambda$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const-string v1, "getInsets(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    .line 51
    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    .line 52
    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    .line 53
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 102
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method private final getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginActivity;->fragmentNavigator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/navigator/FragmentNavigator;

    return-object v0
.end method

.method private static final rootFragmentProvider$lambda$0(Lcom/laborbook/auth/screen/login/view/LoginActivity;)Landroidx/fragment/app/Fragment;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lcom/laborbook/auth/screen/login/view/LoginActivity;->loginFragment:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method private final setupNavigator(Landroid/os/Bundle;)V
    .locals 12

    .line 61
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginActivity;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v1, "getSupportFragmentManager(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget v3, Lcom/laborbook/auth/R$id;->container:I

    .line 65
    iget-object v4, p0, Lcom/laborbook/auth/screen/login/view/LoginActivity;->rootFragmentProvider:Ljava/util/ArrayList;

    .line 66
    new-instance v6, Lcom/boilerplate/navigator/NavigatorConfiguration;

    const/4 v1, 0x1

    .line 69
    sget-object v5, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->SHOW_HIDE:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    const/4 v7, 0x0

    .line 66
    invoke-direct {v6, v7, v1, v5}, Lcom/boilerplate/navigator/NavigatorConfiguration;-><init>(IZLcom/boilerplate/navigator/transaction/NavigatorTransaction;)V

    .line 72
    sget-object v7, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->RIGHT_TO_LEFT:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    .line 62
    new-instance v11, Lcom/boilerplate/navigator/MultipleStackNavigator;

    .line 71
    move-object v8, p0

    check-cast v8, Landroid/content/Context;

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v1, v11

    .line 62
    invoke-direct/range {v1 .. v10}, Lcom/boilerplate/navigator/MultipleStackNavigator;-><init>(Landroidx/fragment/app/FragmentManager;ILjava/util/ArrayList;Lcom/boilerplate/navigator/Navigator$NavigatorListener;Lcom/boilerplate/navigator/NavigatorConfiguration;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    invoke-virtual {v0, v11, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->initialize(Lcom/boilerplate/navigator/MultipleStackNavigator;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final getLoginFragment()Lcom/laborbook/auth/screen/login/view/LoginFragment;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginActivity;->loginFragment:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/laborbook/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginActivity;->loginFragment:Lcom/laborbook/auth/screen/login/view/LoginFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laborbook/auth/screen/login/view/LoginFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginActivity;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/base/navigator/FragmentNavigator;->canGoBack()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginActivity;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/base/navigator/FragmentNavigator;->goBack()V

    goto :goto_0

    .line 81
    :cond_0
    invoke-super {p0}, Lcom/laborbook/base/BaseActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/laborbook/auth/screen/login/view/LoginActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/laborbook/auth/databinding/ActivityLoginBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/auth/databinding/ActivityLoginBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/auth/screen/login/view/LoginActivity;->binding:Lcom/laborbook/auth/databinding/ActivityLoginBinding;

    if-nez v0, :cond_0

    .line 40
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/laborbook/auth/databinding/ActivityLoginBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/laborbook/auth/screen/login/view/LoginActivity;->setContentView(Landroid/view/View;)V

    .line 41
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginActivity;->enableEdgeToEdge()V

    .line 42
    invoke-direct {p0, p1}, Lcom/laborbook/auth/screen/login/view/LoginActivity;->setupNavigator(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/laborbook/auth/screen/login/view/LoginActivity;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
