.class public abstract Lcom/inmobi/media/W1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/f5;

.field public b:I

.field public c:Z

.field public d:Z

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/f5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/inmobi/media/W1;->b:I

    .line 17
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/inmobi/media/W1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/W1;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/inmobi/media/W1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/W1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    new-instance v0, Lcom/inmobi/media/W1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/inmobi/media/W1$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/W1;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b(Landroid/webkit/WebView;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/inmobi/media/W1;->b:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_d

    if-lez v0, :cond_0

    add-int/2addr v0, v1

    .line 3
    iput v0, p0, Lcom/inmobi/media/W1;->b:I

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/media/W1;->c:Z

    if-nez v0, :cond_d

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/media/g9;

    invoke-direct {v1, p1}, Lcom/inmobi/media/g9;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/inmobi/media/W1;->c:Z

    .line 7
    instance-of v0, p1, Lcom/inmobi/media/Ya;

    if-eqz v0, :cond_d

    .line 8
    check-cast p1, Lcom/inmobi/media/Ya;

    .line 9
    iget-object v0, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_1

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 10
    const-string v3, "sendTelemetryEventForNetworkLoad "

    invoke-static {p1, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getCreativeId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "creativeId"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getImpressionId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "impressionId"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_3
    iget-boolean v2, p1, Lcom/inmobi/media/Ya;->m0:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x8a4

    goto :goto_0

    :cond_4
    const/16 v2, 0x8a3

    .line 17
    :goto_0
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const-string v3, "errorCode"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v2, p1, Lcom/inmobi/media/Ya;->h:Lcom/inmobi/media/bb;

    if-eqz v2, :cond_5

    .line 19
    iget-object v2, v2, Lcom/inmobi/media/bb;->i:Lcom/inmobi/media/R0;

    if-eqz v2, :cond_5

    .line 20
    iget-object v2, v2, Lcom/inmobi/media/R0;->a:Lcom/inmobi/media/S0;

    .line 21
    iget-wide v2, v2, Lcom/inmobi/media/S0;->c:J

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "latency"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_5
    iget-object v2, p1, Lcom/inmobi/media/Ya;->h:Lcom/inmobi/media/bb;

    if-eqz v2, :cond_6

    .line 25
    iget-object v2, v2, Lcom/inmobi/media/bb;->a:Lcom/inmobi/media/Y;

    if-eqz v2, :cond_6

    .line 26
    invoke-virtual {v2}, Lcom/inmobi/media/Y;->m()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "plType"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_6
    iget-object v2, p1, Lcom/inmobi/media/Ya;->h:Lcom/inmobi/media/bb;

    if-eqz v2, :cond_7

    .line 28
    iget-object v2, v2, Lcom/inmobi/media/bb;->e:Ljava/lang/String;

    .line 29
    const-string v3, "creativeType"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_7
    iget-object v2, p1, Lcom/inmobi/media/Ya;->h:Lcom/inmobi/media/bb;

    if-eqz v2, :cond_8

    .line 31
    iget-object v2, v2, Lcom/inmobi/media/bb;->b:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 32
    const-string v3, "markupType"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_8
    iget-object v2, p1, Lcom/inmobi/media/Ya;->h:Lcom/inmobi/media/bb;

    if-eqz v2, :cond_9

    .line 34
    iget-object v2, v2, Lcom/inmobi/media/bb;->a:Lcom/inmobi/media/Y;

    if-eqz v2, :cond_9

    .line 35
    invoke-virtual {v2}, Lcom/inmobi/media/Y;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v3, "adType"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_9
    iget-object v2, p1, Lcom/inmobi/media/Ya;->h:Lcom/inmobi/media/bb;

    if-eqz v2, :cond_a

    .line 37
    iget-object v2, v2, Lcom/inmobi/media/bb;->c:Ljava/lang/String;

    .line 38
    const-string v3, "metadataBlob"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_a
    iget-object v2, p1, Lcom/inmobi/media/Ya;->h:Lcom/inmobi/media/bb;

    if-eqz v2, :cond_b

    .line 41
    iget-boolean v2, v2, Lcom/inmobi/media/bb;->g:Z

    .line 42
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 43
    const-string v3, "isRewarded"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_b
    iget-object v2, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_c

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 46
    const-string v4, "processTelemetryEvent "

    invoke-static {p1, v3, v1, v4}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_c
    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object p1

    const-string v1, "NetworkLoadLimitExceeded"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/ab;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_d
    :goto_1
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/W1;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/inmobi/media/W1;->d:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    const-string p2, "BaseWebViewClient"

    const-string v0, "WebView crash detected, destroying ad"

    const/4 v1, 0x1

    invoke-static {v1, p2, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    return v1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/inmobi/media/W1;->b(Landroid/webkit/WebView;)V

    .line 7
    iget-object v1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    const-string v0, "<this>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GET"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/inmobi/media/Dd;->a(Ljava/lang/String;Lcom/inmobi/media/f5;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 111
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    invoke-static {p2, v0}, Lcom/inmobi/media/Dd;->a(Ljava/lang/String;Lcom/inmobi/media/f5;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :cond_0
    return-object v0
.end method
