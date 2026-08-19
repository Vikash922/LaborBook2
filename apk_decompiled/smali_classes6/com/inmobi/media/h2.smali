.class public final Lcom/inmobi/media/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/inmobi/media/g2;

.field public final c:Lcom/inmobi/media/c2;

.field public final d:Lcom/inmobi/media/Aa;

.field public final e:Lcom/inmobi/media/t6;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/inmobi/media/q3;

.field public final h:Landroid/content/Context;

.field public final i:Lcom/inmobi/media/r3;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/media/g2;Landroid/content/Context;Lcom/inmobi/media/c2;Lcom/inmobi/media/Aa;Lcom/inmobi/media/t6;Ljava/lang/String;)V
    .locals 1

    const-string v0, "urlToLoad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redirectionValidator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/h2;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/h2;->b:Lcom/inmobi/media/g2;

    .line 5
    iput-object p4, p0, Lcom/inmobi/media/h2;->c:Lcom/inmobi/media/c2;

    .line 6
    iput-object p5, p0, Lcom/inmobi/media/h2;->d:Lcom/inmobi/media/Aa;

    .line 7
    iput-object p6, p0, Lcom/inmobi/media/h2;->e:Lcom/inmobi/media/t6;

    .line 8
    iput-object p7, p0, Lcom/inmobi/media/h2;->f:Ljava/lang/String;

    .line 23
    new-instance p1, Lcom/inmobi/media/q3;

    invoke-direct {p1}, Lcom/inmobi/media/q3;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/h2;->g:Lcom/inmobi/media/q3;

    .line 26
    new-instance p2, Lcom/inmobi/media/r3;

    invoke-direct {p2, p4, p6}, Lcom/inmobi/media/r3;-><init>(Lcom/inmobi/media/c2;Lcom/inmobi/media/t6;)V

    iput-object p2, p0, Lcom/inmobi/media/h2;->i:Lcom/inmobi/media/r3;

    .line 27
    const-string p2, "connectionCallback"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p0, p1, Lcom/inmobi/media/q3;->c:Lcom/inmobi/media/h2;

    .line 160
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/inmobi/media/h2;->h:Landroid/content/Context;

    .line 161
    invoke-static {p3, p0}, Lcom/inmobi/media/Kb;->a(Landroid/content/Context;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/g2;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 8

    .line 31
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iget-object v1, p0, Lcom/inmobi/media/h2;->g:Lcom/inmobi/media/q3;

    .line 32
    iget-object v2, v1, Lcom/inmobi/media/q3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v2, :cond_0

    .line 33
    new-instance v3, Lcom/inmobi/media/p3;

    invoke-direct {v3, v1}, Lcom/inmobi/media/p3;-><init>(Lcom/inmobi/media/q3;)V

    invoke-virtual {v2, v3}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    invoke-direct {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    const/4 v1, 0x2

    .line 35
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setCloseButtonPosition(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    const-string v2, "setCloseButtonPosition(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 38
    :try_start_0
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShareState(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 39
    invoke-virtual {v0, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 40
    invoke-virtual {v0, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setDownloadButtonEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 41
    invoke-virtual {v0, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setBookmarksButtonEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    iget-boolean v3, p1, Lcom/inmobi/media/g2;->b:Z

    if-eqz v3, :cond_6

    .line 43
    iget-object v3, p0, Lcom/inmobi/media/h2;->h:Landroid/content/Context;

    sget v4, Lcom/inmobi/ads/R$drawable;->im_close_transparent:I

    .line 44
    const-string v5, "<this>"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 335
    instance-of v4, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 336
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "getBitmap(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/16 v4, 0x18

    if-eqz v3, :cond_2

    .line 339
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    if-eqz v3, :cond_3

    .line 340
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 341
    :cond_3
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 342
    invoke-static {v5, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v5, "createBitmap(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v3, :cond_4

    .line 348
    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {v3, v2, v2, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    if-eqz v3, :cond_5

    .line 349
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    move-object v2, v4

    .line 350
    :goto_2
    invoke-virtual {v0, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setCloseButtonIcon(Landroid/graphics/Bitmap;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 353
    :cond_6
    invoke-static {}, Lcom/inmobi/media/N3;->h()Lcom/inmobi/media/O3;

    move-result-object v2

    .line 354
    invoke-static {}, Lcom/inmobi/media/N3;->g()B

    move-result v3

    invoke-static {v3}, Lcom/inmobi/media/J9;->a(B)Lcom/inmobi/media/I9;

    move-result-object v3

    .line 355
    sget-object v4, Lcom/inmobi/media/I9;->b:Lcom/inmobi/media/I9;

    if-eq v3, v4, :cond_8

    sget-object v4, Lcom/inmobi/media/I9;->d:Lcom/inmobi/media/I9;

    if-ne v3, v4, :cond_7

    goto :goto_3

    .line 356
    :cond_7
    iget v3, v2, Lcom/inmobi/media/O3;->b:I

    int-to-float v3, v3

    .line 357
    iget p1, p1, Lcom/inmobi/media/g2;->a:F

    mul-float/2addr v3, p1

    float-to-int p1, v3

    int-to-float p1, p1

    .line 358
    iget v2, v2, Lcom/inmobi/media/O3;->c:F

    mul-float/2addr p1, v2

    float-to-int p1, p1

    .line 359
    invoke-virtual {v0, p1, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setInitialActivityHeightPx(II)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    goto :goto_4

    .line 360
    :cond_8
    :goto_3
    iget v1, v2, Lcom/inmobi/media/O3;->a:I

    int-to-float v1, v1

    .line 361
    iget p1, p1, Lcom/inmobi/media/g2;->a:F

    mul-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float v1, p1

    .line 362
    iget v2, v2, Lcom/inmobi/media/O3;->c:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 363
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setInitialActivityWidthPx(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 364
    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setActivitySideSheetBreakpointDp(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :goto_4
    const/4 p1, 0x1

    .line 371
    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setUrlBarHidingEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    return-object v0
.end method

.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h2;->g:Lcom/inmobi/media/q3;

    iget-object v1, p0, Lcom/inmobi/media/h2;->h:Landroid/content/Context;

    .line 2
    iget-object v2, v0, Lcom/inmobi/media/q3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    if-nez v2, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1}, Lcom/inmobi/media/s3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v3, Lcom/inmobi/media/o3;

    invoke-direct {v3, v0}, Lcom/inmobi/media/o3;-><init>(Lcom/inmobi/media/q3;)V

    .line 29
    iput-object v3, v0, Lcom/inmobi/media/q3;->b:Lcom/inmobi/media/o3;

    .line 30
    invoke-static {v1, v2, v3}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/h2;->g:Lcom/inmobi/media/q3;

    iget-object v1, p0, Lcom/inmobi/media/h2;->h:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v2, v0, Lcom/inmobi/media/q3;->b:Lcom/inmobi/media/o3;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 95
    iput-object v3, v0, Lcom/inmobi/media/q3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    .line 97
    :cond_0
    iput-object v3, v0, Lcom/inmobi/media/q3;->b:Lcom/inmobi/media/o3;

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
