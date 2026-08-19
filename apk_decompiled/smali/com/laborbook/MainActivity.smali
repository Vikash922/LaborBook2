.class public final Lcom/laborbook/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.kt"

# interfaces
.implements Lcom/boilerplate/navigator/Navigator$NavigatorListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/laborbook/MainActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,73:1\n163#2,2:74\n157#2,8:76\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/laborbook/MainActivity\n*L\n42#1:74,2\n48#1:76,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0008\u0010\u0011\u001a\u00020\u000eH\u0002J\u0012\u0010\u0012\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R,\u0010\u0007\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u000bj\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t`\u0008X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/laborbook/MainActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/boilerplate/navigator/Navigator$NavigatorListener;",
        "<init>",
        "()V",
        "multipleStackNavigator",
        "Lcom/boilerplate/navigator/MultipleStackNavigator;",
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
        "onTabChanged",
        "tabIndex",
        "",
        "app_release"
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
.field private multipleStackNavigator:Lcom/boilerplate/navigator/MultipleStackNavigator;

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
.method public static synthetic $r8$lambda$il3IUWrrjksFPJx7nH7DRTq7XG0(Landroid/view/View;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/MainActivity;->enableEdgeToEdge$lambda$1(Landroid/view/View;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zJN3OKIrjBiuQbo4hpQp44U6VDA()Landroidx/fragment/app/Fragment;
    .locals 1

    invoke-static {}, Lcom/laborbook/MainActivity;->rootFragmentProvider$lambda$0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/laborbook/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/laborbook/MainActivity$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/MainActivity;->rootFragmentProvider:Ljava/util/ArrayList;

    return-void
.end method

.method private final enableEdgeToEdge()V
    .locals 3

    .line 33
    invoke-virtual {p0}, Lcom/laborbook/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 34
    invoke-virtual {p0}, Lcom/laborbook/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 35
    invoke-virtual {p0}, Lcom/laborbook/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 37
    sget v0, Lcom/laborbook/R$id;->main:I

    invoke-virtual {p0, v0}, Lcom/laborbook/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget v1, Lcom/laborbook/R$id;->bottom_nav:I

    invoke-virtual {p0, v1}, Lcom/laborbook/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 40
    new-instance v2, Lcom/laborbook/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/laborbook/MainActivity$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private static final enableEdgeToEdge$lambda$1(Landroid/view/View;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const-string v1, "getInsets(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    .line 44
    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    .line 45
    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    .line 46
    iget v4, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 74
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    if-eqz p0, :cond_0

    .line 48
    iget p1, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 82
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-object p2
.end method

.method private static final rootFragmentProvider$lambda$0()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 22
    sget-object v0, Lcom/laborbook/auth/screen/login/view/LoginFragment;->Companion:Lcom/laborbook/auth/screen/login/view/LoginFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/auth/screen/login/view/LoginFragment$Companion;->newInstance()Lcom/laborbook/auth/screen/login/view/LoginFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method private final setupNavigator(Landroid/os/Bundle;)V
    .locals 9

    .line 55
    invoke-virtual {p0}, Lcom/laborbook/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v0, "getSupportFragmentManager(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget v2, Lcom/laborbook/R$id;->container:I

    .line 57
    iget-object v3, p0, Lcom/laborbook/MainActivity;->rootFragmentProvider:Ljava/util/ArrayList;

    .line 59
    new-instance v5, Lcom/boilerplate/navigator/NavigatorConfiguration;

    const/4 v0, 0x1

    .line 62
    sget-object v4, Lcom/boilerplate/navigator/transaction/NavigatorTransaction;->SHOW_HIDE:Lcom/boilerplate/navigator/transaction/NavigatorTransaction;

    const/4 v6, 0x0

    .line 59
    invoke-direct {v5, v6, v0, v4}, Lcom/boilerplate/navigator/NavigatorConfiguration;-><init>(IZLcom/boilerplate/navigator/transaction/NavigatorTransaction;)V

    .line 65
    sget-object v6, Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;->RIGHT_TO_LEFT:Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;

    .line 54
    new-instance v8, Lcom/boilerplate/navigator/MultipleStackNavigator;

    .line 58
    move-object v4, p0

    check-cast v4, Lcom/boilerplate/navigator/Navigator$NavigatorListener;

    .line 64
    move-object v7, p0

    check-cast v7, Landroid/content/Context;

    move-object v0, v8

    .line 54
    invoke-direct/range {v0 .. v7}, Lcom/boilerplate/navigator/MultipleStackNavigator;-><init>(Landroidx/fragment/app/FragmentManager;ILjava/util/ArrayList;Lcom/boilerplate/navigator/Navigator$NavigatorListener;Lcom/boilerplate/navigator/NavigatorConfiguration;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/laborbook/MainActivity;->multipleStackNavigator:Lcom/boilerplate/navigator/MultipleStackNavigator;

    .line 67
    invoke-virtual {v8, p1}, Lcom/boilerplate/navigator/MultipleStackNavigator;->initialize(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v0, Lcom/laborbook/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/laborbook/MainActivity;->setContentView(I)V

    .line 28
    invoke-direct {p0}, Lcom/laborbook/MainActivity;->enableEdgeToEdge()V

    .line 29
    invoke-direct {p0, p1}, Lcom/laborbook/MainActivity;->setupNavigator(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTabChanged(I)V
    .locals 0

    return-void
.end method
