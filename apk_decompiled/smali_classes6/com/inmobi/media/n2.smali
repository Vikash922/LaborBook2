.class public final Lcom/inmobi/media/n2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Z

.field public final synthetic c:Lcom/inmobi/media/i2;

.field public final synthetic d:Landroid/os/Handler;

.field public final synthetic e:Lcom/inmobi/media/o2;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/i2;Lcom/inmobi/media/o2;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/n2;->c:Lcom/inmobi/media/i2;

    iput-object p3, p0, Lcom/inmobi/media/n2;->d:Landroid/os/Handler;

    iput-object p2, p0, Lcom/inmobi/media/n2;->e:Lcom/inmobi/media/o2;

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/inmobi/media/n2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final a(Landroid/webkit/WebView;)V
    .locals 1

    .line 16
    :try_start_0
    instance-of v0, p0, Lcom/inmobi/media/Gd;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/inmobi/media/Gd;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 17
    iget-boolean v0, v0, Lcom/inmobi/media/Gd;->a:Z

    if-nez v0, :cond_1

    .line 18
    check-cast p0, Lcom/inmobi/media/Gd;

    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 21
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v0, Lcom/inmobi/media/d2;

    invoke-direct {v0, p0}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 22
    const-string p0, "event"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object p0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p0, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static final a(Lcom/inmobi/media/n2;Lcom/inmobi/media/i2;Landroid/os/Handler;Lcom/inmobi/media/o2;Landroid/webkit/WebView;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {}, Lcom/inmobi/media/u2;->c()Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getPingInterval()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    iget-object p0, p0, Lcom/inmobi/media/n2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_1

    .line 8
    invoke-static {}, Lcom/inmobi/media/u2;->f()Ljava/lang/String;

    move-result-object p0

    const-string v0, "access$getTAG$p(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p0, p1, Lcom/inmobi/media/i2;->b:Ljava/lang/String;

    .line 10
    iget-object p0, p1, Lcom/inmobi/media/i2;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    new-instance p0, Lcom/inmobi/media/n2$$ExternalSyntheticLambda1;

    invoke-direct {p0, p4}, Lcom/inmobi/media/n2$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    iget-object p0, p3, Lcom/inmobi/media/o2;->a:Lcom/inmobi/media/q2;

    .line 14
    sget-object p2, Lcom/inmobi/media/c4;->e:Lcom/inmobi/media/c4;

    .line 15
    invoke-interface {p0, p1, p2}, Lcom/inmobi/media/q2;->a(Lcom/inmobi/media/i2;Lcom/inmobi/media/c4;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/n2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-boolean p1, p0, Lcom/inmobi/media/n2;->b:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/n2;->c:Lcom/inmobi/media/i2;

    .line 4
    iget-object p1, p1, Lcom/inmobi/media/i2;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/n2;->e:Lcom/inmobi/media/o2;

    .line 7
    iget-object p1, p1, Lcom/inmobi/media/o2;->a:Lcom/inmobi/media/q2;

    .line 8
    iget-object p2, p0, Lcom/inmobi/media/n2;->c:Lcom/inmobi/media/i2;

    invoke-interface {p1, p2}, Lcom/inmobi/media/q2;->a(Lcom/inmobi/media/i2;)V

    :cond_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 p2, 0x0

    .line 1
    iput-boolean p2, p0, Lcom/inmobi/media/n2;->b:Z

    .line 2
    sget p2, Lcom/inmobi/media/m4;->a:I

    .line 3
    sget-object p2, Lcom/inmobi/media/m4;->b:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 4
    iget-object v2, p0, Lcom/inmobi/media/n2;->c:Lcom/inmobi/media/i2;

    iget-object v3, p0, Lcom/inmobi/media/n2;->d:Landroid/os/Handler;

    iget-object v4, p0, Lcom/inmobi/media/n2;->e:Lcom/inmobi/media/o2;

    new-instance p3, Lcom/inmobi/media/n2$$ExternalSyntheticLambda0;

    move-object v0, p3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/media/n2$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/n2;Lcom/inmobi/media/i2;Landroid/os/Handler;Lcom/inmobi/media/o2;Landroid/webkit/WebView;)V

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "description"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "failingUrl"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/media/n2;->b:Z

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/n2;->e:Lcom/inmobi/media/o2;

    .line 3
    iget-object p1, p1, Lcom/inmobi/media/o2;->a:Lcom/inmobi/media/q2;

    .line 4
    iget-object p2, p0, Lcom/inmobi/media/n2;->c:Lcom/inmobi/media/i2;

    sget-object p3, Lcom/inmobi/media/c4;->e:Lcom/inmobi/media/c4;

    invoke-interface {p1, p2, p3}, Lcom/inmobi/media/q2;->a(Lcom/inmobi/media/i2;Lcom/inmobi/media/c4;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/inmobi/media/n2;->b:Z

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/n2;->e:Lcom/inmobi/media/o2;

    .line 7
    iget-object p1, p1, Lcom/inmobi/media/o2;->a:Lcom/inmobi/media/q2;

    .line 8
    iget-object p2, p0, Lcom/inmobi/media/n2;->c:Lcom/inmobi/media/i2;

    sget-object p3, Lcom/inmobi/media/c4;->e:Lcom/inmobi/media/c4;

    invoke-interface {p1, p2, p3}, Lcom/inmobi/media/q2;->a(Lcom/inmobi/media/i2;Lcom/inmobi/media/c4;)V

    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorResponse"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/media/n2;->b:Z

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/n2;->e:Lcom/inmobi/media/o2;

    .line 3
    iget-object p1, p1, Lcom/inmobi/media/o2;->a:Lcom/inmobi/media/q2;

    .line 4
    iget-object p2, p0, Lcom/inmobi/media/n2;->c:Lcom/inmobi/media/i2;

    sget-object p3, Lcom/inmobi/media/c4;->e:Lcom/inmobi/media/c4;

    invoke-interface {p1, p2, p3}, Lcom/inmobi/media/q2;->a(Lcom/inmobi/media/i2;Lcom/inmobi/media/c4;)V

    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "click_mgr"

    invoke-static {p1, p2, v0}, Lcom/inmobi/media/Jd;->a(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/n2;->c:Lcom/inmobi/media/i2;

    .line 3
    iget-boolean p1, p1, Lcom/inmobi/media/i2;->d:Z

    if-nez p1, :cond_0

    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/inmobi/media/n2;->c:Lcom/inmobi/media/i2;

    .line 5
    iget-object p2, p2, Lcom/inmobi/media/i2;->b:Ljava/lang/String;

    .line 6
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/inmobi/media/n2;->c:Lcom/inmobi/media/i2;

    .line 8
    iget-boolean v0, p1, Lcom/inmobi/media/i2;->d:Z

    if-nez v0, :cond_0

    .line 9
    iget-object p1, p1, Lcom/inmobi/media/i2;->b:Ljava/lang/String;

    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
