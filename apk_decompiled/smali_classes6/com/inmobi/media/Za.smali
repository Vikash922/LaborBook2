.class public final Lcom/inmobi/media/Za;
.super Lcom/inmobi/media/W1;
.source "SourceFile"


# instance fields
.field public final f:Lcom/inmobi/media/fb;

.field public final g:Lcom/inmobi/media/Oa;

.field public h:Z

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/fb;Lcom/inmobi/media/f5;Lcom/inmobi/media/Oa;)V
    .locals 1

    const-string v0, "onRenderViewProcessGone"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lcom/inmobi/media/W1;-><init>(Lcom/inmobi/media/f5;)V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/Za;->f:Lcom/inmobi/media/fb;

    .line 4
    iput-object p3, p0, Lcom/inmobi/media/Za;->g:Lcom/inmobi/media/Oa;

    .line 8
    const-string p1, "redirect"

    iput-object p1, p0, Lcom/inmobi/media/Za;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/Ya;)V
    .locals 3

    .line 29
    iget-boolean v0, p0, Lcom/inmobi/media/Za;->h:Z

    if-nez v0, :cond_2

    .line 30
    iget-boolean v0, p1, Lcom/inmobi/media/Ya;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/inmobi/media/Za;->h:Z

    .line 32
    iget-object v0, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    .line 33
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "RenderViewClient"

    const-string v2, "Injecting MRAID javascript for two piece creatives."

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getMraidJsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    const-string v1, "RenderViewClient"

    if-eqz v0, :cond_0

    .line 2
    const-string v2, "onShouldOverrideUrlLoading  - url - "

    invoke-static {v2, p2}, Lcom/inmobi/media/g0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/inmobi/media/Ya;

    const-string v2, "Override URL loading :"

    if-eqz v0, :cond_6

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/Ya;

    .line 8
    iget-boolean v3, v0, Lcom/inmobi/media/Ya;->s:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v4

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->k()Z

    move-result p1

    if-nez p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/inmobi/media/Za;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;)V

    return v4

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Placement type:  "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getPlacementType()B

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  url:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    .line 17
    invoke-static {v2, p2}, Lcom/inmobi/media/g0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_4
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->i()V

    .line 20
    invoke-virtual {v0}, Lcom/inmobi/media/V1;->getLandingPageHandler()Lcom/inmobi/media/o6;

    move-result-object v5

    iget-object v6, p0, Lcom/inmobi/media/Za;->i:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, p2

    invoke-static/range {v5 .. v11}, Lcom/inmobi/media/o6;->a(Lcom/inmobi/media/o6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;ZI)Lcom/inmobi/media/m6;

    move-result-object p1

    .line 21
    iget-object v3, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_5

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Current Index :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Original Url :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " URL: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v1, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_7

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "landingPage process result - "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget p1, p1, Lcom/inmobi/media/m6;->a:I

    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    .line 27
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_8

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " returned "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return v4
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    const-string v1, "Resource loading:"

    invoke-static {v1, p2}, Lcom/inmobi/media/g0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "RenderViewClient"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    instance-of v0, p1, Lcom/inmobi/media/Ya;

    if-eqz v0, :cond_1

    .line 125
    check-cast p1, Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    const/4 p2, 0x2

    const/4 v1, 0x0

    .line 126
    const-string v2, "file:"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, p2, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 127
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Za;->a(Lcom/inmobi/media/Ya;)V

    :cond_1
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Za;->f:Lcom/inmobi/media/fb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/inmobi/media/fb;->a()Ljava/util/Map;

    move-result-object v1

    .line 3
    iget-wide v2, v0, Lcom/inmobi/media/fb;->b:J

    sget-object v0, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "latency"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 7
    sget-object v0, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 8
    const-string v2, "WebViewLoadFinished"

    invoke-static {v2, v1, v0}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    const-string v1, "RenderViewClient"

    if-eqz v0, :cond_1

    .line 10
    const-string v2, "Page load finished:"

    invoke-static {v2, p2}, Lcom/inmobi/media/g0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 106
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    instance-of p2, p1, Lcom/inmobi/media/Ya;

    if-eqz p2, :cond_2

    .line 109
    check-cast p1, Lcom/inmobi/media/Ya;

    invoke-virtual {p0, p1}, Lcom/inmobi/media/Za;->a(Lcom/inmobi/media/Ya;)V

    .line 110
    iget-object p2, p1, Lcom/inmobi/media/Ya;->o:Ljava/lang/String;

    .line 111
    const-string v0, "Loading"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 112
    const-string p2, "window.imaiview.broadcastEvent(\'ready\');"

    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    .line 113
    const-string p2, "window.mraidview.broadcastEvent(\'ready\');"

    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->y()V

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 116
    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "==== CHECKPOINT REACHED - PAGE FINISHED ===="

    invoke-virtual {p1, v1, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    .line 118
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1}, Lcom/inmobi/media/g5;->b()V

    :cond_4
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    iget-object p3, p0, Lcom/inmobi/media/Za;->f:Lcom/inmobi/media/fb;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/inmobi/media/fb;->a()Ljava/util/Map;

    move-result-object v0

    .line 3
    iget-wide v1, p3, Lcom/inmobi/media/fb;->b:J

    sget-object p3, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v1, "latency"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p3, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 7
    sget-object p3, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 8
    const-string v1, "PageStarted"

    invoke-static {v1, v0, p3}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    .line 9
    :cond_0
    iget-object p3, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    const-string v0, "RenderViewClient"

    if-eqz p3, :cond_1

    .line 10
    const-string v1, "Page load started:"

    invoke-static {v1, p2}, Lcom/inmobi/media/g0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 94
    check-cast p3, Lcom/inmobi/media/g5;

    invoke-virtual {p3, v0, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    instance-of p2, p1, Lcom/inmobi/media/Ya;

    if-eqz p2, :cond_3

    .line 96
    iget-object p2, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_2

    .line 97
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Page load started renderview: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Lcom/inmobi/media/Ya;->getMarkupType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v0, p3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_2
    check-cast p1, Lcom/inmobi/media/Ya;

    invoke-virtual {p0, p1}, Lcom/inmobi/media/Za;->a(Lcom/inmobi/media/Ya;)V

    .line 99
    const-string p2, "Loading"

    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->setAndUpdateViewState(Ljava/lang/String;)V

    .line 100
    :cond_3
    iget-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    .line 101
    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "==== CHECKPOINT REACHED - PAGE STARTED ===="

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_5

    .line 103
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1}, Lcom/inmobi/media/g5;->b()V

    :cond_5
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failingUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnReceivedError - errorCode - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "RenderViewClient"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnReceivedError - errorCode - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", url - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", method - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", isMainFrame - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p3, "RenderViewClient"

    invoke-virtual {p1, p3, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReceivedHttpError - error - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", statusCode - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " url - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " isMainFrame - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_3
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p3, "RenderViewClient"

    invoke-virtual {p1, p3, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onReceivedSSLError - error - "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " - url - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p3, "RenderViewClient"

    invoke-virtual {p1, p3, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-string v2, "RenderViewClient"

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onRenderProcessGone detail did crash- "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " priority - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Za;->g:Lcom/inmobi/media/Oa;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/media/Oa;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    .line 6
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "onRenderProcessGone"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/W1;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "RenderViewClient"

    const-string v2, "shouldOverrideUrlLoading Called"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/inmobi/media/E3;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "toString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/Za;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/W1;->a:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 7
    const-string v1, "shouldOverrideUrlLoading Called "

    invoke-static {v1, p2}, Lcom/inmobi/media/g0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "RenderViewClient"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/Za;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
