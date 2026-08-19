.class public final Lcom/inmobi/media/Hd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/l9;

.field public final b:Lcom/inmobi/media/n2;

.field public c:Lcom/inmobi/media/Gd;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/l9;Lcom/inmobi/media/n2;)V
    .locals 1

    const-string v0, "mNetworkRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mWebViewClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/Hd;->a:Lcom/inmobi/media/l9;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/Hd;->b:Lcom/inmobi/media/n2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/inmobi/media/Gd;

    invoke-direct {v1, v0}, Lcom/inmobi/media/Gd;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/Hd;->b:Lcom/inmobi/media/n2;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 5
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 6
    iput-object v1, p0, Lcom/inmobi/media/Hd;->c:Lcom/inmobi/media/Gd;

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/Hd;->c:Lcom/inmobi/media/Gd;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/inmobi/media/Hd;->a:Lcom/inmobi/media/l9;

    invoke-virtual {v1}, Lcom/inmobi/media/l9;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/media/Hd;->a:Lcom/inmobi/media/l9;

    .line 8
    sget-boolean v3, Lcom/inmobi/media/p9;->a:Z

    iget-object v3, v2, Lcom/inmobi/media/l9;->i:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/inmobi/media/p9;->a(Ljava/util/HashMap;)V

    .line 9
    iget-object v2, v2, Lcom/inmobi/media/l9;->i:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 12
    :catch_0
    const-string v0, "Hd"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
