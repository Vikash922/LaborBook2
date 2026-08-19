.class public final Lcom/inmobi/media/Y3;
.super Lcom/inmobi/media/V1;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/Aa;


# instance fields
.field public b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/inmobi/media/f5;

.field public final g:Lcom/inmobi/media/U3;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

.field public final j:Lkotlin/Lazy;

.field public k:Lcom/inmobi/media/t6;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creativeId"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/inmobi/media/V1;-><init>(Landroid/content/Context;)V

    .line 2
    iput-wide p2, p0, Lcom/inmobi/media/Y3;->b:J

    .line 3
    iput-object p4, p0, Lcom/inmobi/media/Y3;->c:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcom/inmobi/media/Y3;->d:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcom/inmobi/media/Y3;->e:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/inmobi/media/Y3;->f:Lcom/inmobi/media/f5;

    .line 10
    const-string p1, "Y3"

    iput-object p1, p0, Lcom/inmobi/media/Y3;->h:Ljava/lang/String;

    .line 12
    sget-object p1, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 13
    const-string p1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    const/4 p2, 0x0

    const-string p3, "ads"

    invoke-static {p3, p1, p2}, Lcom/inmobi/media/V4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object p1

    .line 56
    check-cast p1, Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getRendering()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/inmobi/media/Y3;->i:Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    .line 57
    sget-object p1, Lcom/inmobi/media/V3;->a:Lcom/inmobi/media/V3;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/inmobi/media/Y3;->j:Lkotlin/Lazy;

    const/4 p1, 0x2

    .line 58
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setImportantForAccessibility(I)V

    .line 59
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 62
    invoke-virtual {p0, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 65
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 66
    new-instance p1, Lcom/inmobi/media/U3;

    .line 70
    new-instance p3, Lcom/inmobi/media/W3;

    invoke-direct {p3, p0}, Lcom/inmobi/media/W3;-><init>(Lcom/inmobi/media/Y3;)V

    new-instance p4, Lcom/inmobi/media/X3;

    invoke-direct {p4, p0}, Lcom/inmobi/media/X3;-><init>(Lcom/inmobi/media/Y3;)V

    .line 71
    const-string p5, "IN_CUSTOM_EXPAND"

    invoke-direct {p1, p5, p3, p4, p7}, Lcom/inmobi/media/U3;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/inmobi/media/f5;)V

    .line 76
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 77
    iput-object p1, p0, Lcom/inmobi/media/Y3;->g:Lcom/inmobi/media/U3;

    .line 78
    invoke-direct {p0}, Lcom/inmobi/media/Y3;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getEnableCookiesOnInAppBrowser()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 80
    invoke-virtual {p1, p2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 82
    invoke-virtual {p1, p0, p2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_0
    return-void
.end method

.method private final getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Y3;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/AdConfig;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "triggerApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/Y3;->e:Ljava/lang/String;

    const-string v2, "creativeId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string v1, "trigger"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/inmobi/media/Y3;->d:Ljava/lang/String;

    const-string v1, "impressionId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/inmobi/media/Y3;->c:Ljava/lang/String;

    const-string v1, "adType"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p1, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 8
    sget-object p1, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 9
    const-string v1, "BlockAutoRedirection"

    invoke-static {v1, v0, p1}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    return-void
.end method

.method public final d()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Y3;->h:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/Y3;->getViewTouchTimestamp()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/inmobi/media/Y3;->getViewTouchTimestamp()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v0, p0, Lcom/inmobi/media/Y3;->i:Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getUserTouchResetTime()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/inmobi/media/Y3;->i:Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getAutoRedirectionEnforcement()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public final f()Lcom/inmobi/media/o6;
    .locals 9

    .line 1
    new-instance v2, Lcom/inmobi/media/p6;

    invoke-direct {p0}, Lcom/inmobi/media/Y3;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->isCCTEnabled()Z

    move-result v0

    const/4 v1, 0x0

    .line 2
    const-string v3, "DEFAULT"

    const/4 v4, 0x1

    .line 3
    invoke-direct {v2, v4, v3, v0, v1}, Lcom/inmobi/media/p6;-><init>(ZLjava/lang/String;ZZ)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/inmobi/media/Y3;->f:Lcom/inmobi/media/f5;

    new-instance v8, Lcom/inmobi/media/o6;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v5, p0

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/inmobi/media/o6;-><init>(Landroid/content/Context;Lcom/inmobi/media/p6;Lcom/inmobi/media/c2;Lcom/inmobi/media/Ra;Lcom/inmobi/media/Aa;Lcom/inmobi/media/u6;Lcom/inmobi/media/f5;)V

    return-object v8
.end method

.method public final getLandingPageTelemetryControlInfo()Lcom/inmobi/media/t6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Y3;->k:Lcom/inmobi/media/t6;

    return-object v0
.end method

.method public getViewTouchTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/media/Y3;->b:J

    return-wide v0
.end method

.method public final loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/Y3;->g:Lcom/inmobi/media/U3;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lcom/inmobi/media/W1;->d:Z

    :cond_0
    return-void
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/Y3;->g:Lcom/inmobi/media/U3;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lcom/inmobi/media/W1;->d:Z

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/Y3;->setViewTouchTimestamp(J)V

    .line 2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setLandingPageTelemetryControlInfo(Lcom/inmobi/media/t6;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Y3;->k:Lcom/inmobi/media/t6;

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Y3;->g:Lcom/inmobi/media/U3;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, v0, Lcom/inmobi/media/U3;->i:Lcom/inmobi/media/t6;

    .line 4
    new-instance v1, Lcom/inmobi/media/q6;

    invoke-direct {v1, p1, v0}, Lcom/inmobi/media/q6;-><init>(Lcom/inmobi/media/t6;Lcom/inmobi/media/U3;)V

    iput-object v1, v0, Lcom/inmobi/media/U3;->j:Lcom/inmobi/media/q6;

    :goto_0
    return-void
.end method

.method public setViewTouchTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/media/Y3;->b:J

    return-void
.end method
