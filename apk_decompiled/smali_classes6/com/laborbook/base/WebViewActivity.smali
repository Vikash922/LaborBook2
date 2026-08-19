.class public final Lcom/laborbook/base/WebViewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WebViewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/base/WebViewActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebViewActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewActivity.kt\ncom/laborbook/base/WebViewActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,123:1\n157#2,8:124\n157#2,8:132\n*S KotlinDebug\n*F\n+ 1 WebViewActivity.kt\ncom/laborbook/base/WebViewActivity\n*L\n73#1:124,8\n74#1:132,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0008\u0010\n\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/laborbook/base/WebViewActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "binding",
        "Lcom/laborbook/base/databinding/ActivityWebviewBinding;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "enableEdgeToEdge",
        "setupWebView",
        "url",
        "",
        "Companion",
        "base_release"
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
.field public static final Companion:Lcom/laborbook/base/WebViewActivity$Companion;

.field private static final EXTRA_TITLE:Ljava/lang/String; = "extra_title"

.field private static final EXTRA_URL:Ljava/lang/String; = "extra_url"


# instance fields
.field private binding:Lcom/laborbook/base/databinding/ActivityWebviewBinding;


# direct methods
.method public static synthetic $r8$lambda$d-4TMjxmnR8xiQc4PsVApKAnPPQ(Lcom/laborbook/base/WebViewActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/base/WebViewActivity;->onCreate$lambda$0(Lcom/laborbook/base/WebViewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ma_K1jEwwonRZUVCgt-D_RVL1HQ(Lcom/laborbook/base/WebViewActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/base/WebViewActivity;->enableEdgeToEdge$lambda$2(Lcom/laborbook/base/WebViewActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/base/WebViewActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/base/WebViewActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/base/WebViewActivity;->Companion:Lcom/laborbook/base/WebViewActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/laborbook/base/WebViewActivity;)Lcom/laborbook/base/databinding/ActivityWebviewBinding;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/laborbook/base/WebViewActivity;->binding:Lcom/laborbook/base/databinding/ActivityWebviewBinding;

    return-object p0
.end method

.method public static final createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/base/WebViewActivity;->Companion:Lcom/laborbook/base/WebViewActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/laborbook/base/WebViewActivity$Companion;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final enableEdgeToEdge()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/laborbook/base/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 62
    invoke-virtual {p0}, Lcom/laborbook/base/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 63
    invoke-virtual {p0}, Lcom/laborbook/base/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 65
    invoke-virtual {p0}, Lcom/laborbook/base/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/base/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 69
    iget-object v0, p0, Lcom/laborbook/base/WebViewActivity;->binding:Lcom/laborbook/base/databinding/ActivityWebviewBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/laborbook/base/databinding/ActivityWebviewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/laborbook/base/WebViewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/laborbook/base/WebViewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/base/WebViewActivity;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private static final enableEdgeToEdge$lambda$2(Lcom/laborbook/base/WebViewActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "insets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const-string v0, "getInsets(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/laborbook/base/WebViewActivity;->binding:Lcom/laborbook/base/databinding/ActivityWebviewBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/laborbook/base/databinding/ActivityWebviewBinding;->toolbar:Landroid/widget/LinearLayout;

    const-string v4, "toolbar"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 130
    invoke-virtual {v0, v4, p1, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 74
    iget-object p0, p0, Lcom/laborbook/base/WebViewActivity;->binding:Lcom/laborbook/base/databinding/ActivityWebviewBinding;

    if-nez p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/laborbook/base/databinding/ActivityWebviewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    iget p1, v1, Landroidx/core/graphics/Insets;->bottom:I

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 138
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method

.method private static final onCreate$lambda$0(Lcom/laborbook/base/WebViewActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/laborbook/base/WebViewActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    return-void
.end method

.method private final setupWebView(Ljava/lang/String;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/laborbook/base/WebViewActivity;->binding:Lcom/laborbook/base/databinding/ActivityWebviewBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/laborbook/base/databinding/ActivityWebviewBinding;->webview:Landroid/webkit/WebView;

    .line 82
    new-instance v1, Lcom/laborbook/base/WebViewActivity$setupWebView$1$1;

    invoke-direct {v1, p0}, Lcom/laborbook/base/WebViewActivity$setupWebView$1$1;-><init>(Lcom/laborbook/base/WebViewActivity;)V

    check-cast v1, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 93
    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 94
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 95
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 96
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static final start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/base/WebViewActivity;->Companion:Lcom/laborbook/base/WebViewActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/laborbook/base/WebViewActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/laborbook/base/WebViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/laborbook/base/databinding/ActivityWebviewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/laborbook/base/databinding/ActivityWebviewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/base/WebViewActivity;->binding:Lcom/laborbook/base/databinding/ActivityWebviewBinding;

    const/4 v0, 0x0

    .line 33
    const-string v1, "binding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/laborbook/base/databinding/ActivityWebviewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/laborbook/base/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 35
    invoke-direct {p0}, Lcom/laborbook/base/WebViewActivity;->enableEdgeToEdge()V

    .line 37
    invoke-virtual {p0}, Lcom/laborbook/base/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "extra_url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p0}, Lcom/laborbook/base/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    sget v2, Lcom/laborbook/base/R$string;->webview_default_title:I

    invoke-virtual {p0, v2}, Lcom/laborbook/base/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 46
    :cond_2
    iget-object v3, p0, Lcom/laborbook/base/WebViewActivity;->binding:Lcom/laborbook/base/databinding/ActivityWebviewBinding;

    if-nez v3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v0

    :cond_3
    iget-object v3, v3, Lcom/laborbook/base/databinding/ActivityWebviewBinding;->tvTitle:Landroid/widget/TextView;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v2, p0, Lcom/laborbook/base/WebViewActivity;->binding:Lcom/laborbook/base/databinding/ActivityWebviewBinding;

    if-nez v2, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, v2

    :goto_0
    iget-object v0, v0, Lcom/laborbook/base/databinding/ActivityWebviewBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/laborbook/base/WebViewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/laborbook/base/WebViewActivity$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/base/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/laborbook/base/WebViewActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/laborbook/base/WebViewActivity$onCreate$2;

    invoke-direct {v2, p0}, Lcom/laborbook/base/WebViewActivity$onCreate$2;-><init>(Lcom/laborbook/base/WebViewActivity;)V

    check-cast v2, Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, v1, v2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/laborbook/base/WebViewActivity;->setupWebView(Ljava/lang/String;)V

    return-void

    .line 41
    :cond_5
    :goto_1
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const-string v0, "Invalid URL"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 42
    invoke-virtual {p0}, Lcom/laborbook/base/WebViewActivity;->finish()V

    return-void
.end method
