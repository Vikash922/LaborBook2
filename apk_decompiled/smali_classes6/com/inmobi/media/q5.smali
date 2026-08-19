.class public final Lcom/inmobi/media/q5;
.super Lcom/inmobi/media/md;
.source "SourceFile"


# instance fields
.field public final e:Lcom/inmobi/media/nd;

.field public final f:Lcom/inmobi/media/C4;

.field public final g:Lcom/inmobi/media/f5;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Ya;Lcom/inmobi/media/nd;Lcom/inmobi/media/C4;Lcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mViewableAd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlAdTracker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/inmobi/media/md;-><init>(Lcom/inmobi/media/x;)V

    .line 2
    iput-object p2, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    .line 3
    iput-object p3, p0, Lcom/inmobi/media/q5;->f:Lcom/inmobi/media/C4;

    .line 4
    iput-object p4, p0, Lcom/inmobi/media/q5;->g:Lcom/inmobi/media/f5;

    .line 7
    const-string p1, "q5"

    iput-object p1, p0, Lcom/inmobi/media/q5;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    invoke-virtual {p3}, Lcom/inmobi/media/md;->b()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/q5;->f:Lcom/inmobi/media/C4;

    invoke-virtual {v0, p3}, Lcom/inmobi/media/C4;->a(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/q5;->f:Lcom/inmobi/media/C4;

    invoke-virtual {v0, p3}, Lcom/inmobi/media/C4;->b(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object p3, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p3}, Lcom/inmobi/media/nd;->d()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/inmobi/media/q5;->g:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/q5;->h:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "destroy"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    invoke-virtual {v0}, Lcom/inmobi/media/md;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v1, p0, Lcom/inmobi/media/q5;->f:Lcom/inmobi/media/C4;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/C4;->a(Landroid/view/View;)V

    .line 442
    iget-object v1, p0, Lcom/inmobi/media/q5;->f:Lcom/inmobi/media/C4;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/C4;->b(Landroid/view/View;)V

    .line 444
    :cond_1
    invoke-super {p0}, Lcom/inmobi/media/md;->a()V

    .line 445
    iget-object v0, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    invoke-virtual {v0}, Lcom/inmobi/media/md;->a()V

    return-void
.end method

.method public final a(B)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/content/Context;B)V
    .locals 6

    const-string v0, "Exception in onActivityStateChanged with message : "

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/inmobi/media/q5;->g:Lcom/inmobi/media/f5;

    const-string v3, "TAG"

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/inmobi/media/q5;->h:Ljava/lang/String;

    .line 239
    const-string v5, "onActivityStateChanged - state - "

    invoke-static {v4, v3, v5, p2}, Lcom/inmobi/media/x8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 325
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v4, v5}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 328
    :try_start_0
    iget-object p2, p0, Lcom/inmobi/media/q5;->f:Lcom/inmobi/media/C4;

    invoke-virtual {p2}, Lcom/inmobi/media/C4;->a()V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_3

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 329
    iget-object p2, p0, Lcom/inmobi/media/q5;->f:Lcom/inmobi/media/C4;

    invoke-virtual {p2}, Lcom/inmobi/media/C4;->b()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_6

    .line 330
    iget-object p2, p0, Lcom/inmobi/media/q5;->f:Lcom/inmobi/media/C4;

    .line 331
    iget-object v2, p2, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_3

    .line 332
    const-string v4, "HtmlAdTracker"

    const-string v5, "onActivityDestroyed"

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v4, v5}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_3
    iget-object v2, p2, Lcom/inmobi/media/C4;->g:Lcom/inmobi/media/M4;

    if-eqz v2, :cond_4

    .line 334
    iget-object v4, v2, Lcom/inmobi/media/M4;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 335
    iget-object v4, v2, Lcom/inmobi/media/M4;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 336
    iget-object v4, v2, Lcom/inmobi/media/M4;->c:Lcom/inmobi/media/yd;

    invoke-virtual {v4}, Lcom/inmobi/media/yd;->a()V

    .line 337
    iget-object v4, v2, Lcom/inmobi/media/M4;->e:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    iget-object v2, v2, Lcom/inmobi/media/M4;->c:Lcom/inmobi/media/yd;

    invoke-virtual {v2}, Lcom/inmobi/media/yd;->b()V

    :cond_4
    const/4 v2, 0x0

    .line 339
    iput-object v2, p2, Lcom/inmobi/media/C4;->g:Lcom/inmobi/media/M4;

    .line 340
    iget-object v4, p2, Lcom/inmobi/media/C4;->h:Lcom/inmobi/media/F4;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/inmobi/media/yd;->b()V

    .line 341
    :cond_5
    iput-object v2, p2, Lcom/inmobi/media/C4;->h:Lcom/inmobi/media/F4;

    goto :goto_0

    .line 342
    :cond_6
    iget-object p2, p0, Lcom/inmobi/media/q5;->h:Ljava/lang/String;

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :goto_0
    iget-object p2, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    goto :goto_2

    .line 350
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/inmobi/media/q5;->g:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/inmobi/media/q5;->h:Ljava/lang/String;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v4, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_7
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v0, Lcom/inmobi/media/d2;

    invoke-direct {v0, p2}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 352
    const-string p2, "event"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    sget-object p2, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p2, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    iget-object p2, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    .line 348
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 431
    :goto_3
    iget-object v0, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    throw p2
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V
    .locals 3

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "obstructionCode"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 11

    .line 24
    iget-object v0, p0, Lcom/inmobi/media/q5;->g:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/inmobi/media/q5;->h:Ljava/lang/String;

    .line 25
    const-string v3, "startTrackingForImpression with "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " friendly views"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    invoke-virtual {v0}, Lcom/inmobi/media/md;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 28
    iget-object v2, p0, Lcom/inmobi/media/q5;->g:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/inmobi/media/q5;->h:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v1, "start tracking"

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_2
    iget-object v1, p0, Lcom/inmobi/media/md;->d:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 30
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/inmobi/media/md;->a:Lcom/inmobi/media/x;

    .line 32
    const-string v3, "null cannot be cast to non-null type com.inmobi.ads.containers.RenderView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/Ya;

    .line 33
    invoke-virtual {v2, p1}, Lcom/inmobi/media/Ya;->setFriendlyViews(Ljava/util/Map;)V

    .line 34
    iget-object p1, p0, Lcom/inmobi/media/q5;->f:Lcom/inmobi/media/C4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    const-string v3, "view"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "token"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "viewabilityConfig"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v5, p1, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    const-string v6, "HtmlAdTracker"

    if-eqz v5, :cond_3

    check-cast v5, Lcom/inmobi/media/g5;

    const-string v7, "startTrackingForImpression"

    invoke-virtual {v5, v6, v7}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_3
    iget-byte v5, p1, Lcom/inmobi/media/C4;->a:B

    if-nez v5, :cond_4

    .line 81
    iget-object p1, p1, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_b

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v5, "impression type is loaded. return"

    invoke-virtual {p1, v6, v5}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 85
    :cond_4
    iget-object v5, p1, Lcom/inmobi/media/C4;->b:Ljava/lang/String;

    const-string v7, "video"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 86
    iget-object v5, p1, Lcom/inmobi/media/C4;->b:Ljava/lang/String;

    const-string v7, "audio"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 91
    :cond_5
    iget-byte v5, p1, Lcom/inmobi/media/C4;->a:B

    .line 92
    iget-object v7, p1, Lcom/inmobi/media/C4;->g:Lcom/inmobi/media/M4;

    if-nez v7, :cond_8

    .line 94
    iget-object v7, p1, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    if-eqz v7, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "creating Visibility Tracker for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v7, Lcom/inmobi/media/g5;

    invoke-virtual {v7, v6, v8}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_6
    new-instance v7, Lcom/inmobi/media/F4;

    .line 99
    iget-object v8, p1, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    .line 100
    invoke-direct {v7, v1, v5, v8}, Lcom/inmobi/media/F4;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;BLcom/inmobi/media/f5;)V

    .line 106
    iget-object v8, p1, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    if-eqz v8, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "creating Impression Tracker for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v8, Lcom/inmobi/media/g5;

    invoke-virtual {v8, v6, v5}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_7
    new-instance v5, Lcom/inmobi/media/M4;

    iget-object v8, p1, Lcom/inmobi/media/C4;->j:Lcom/inmobi/media/A4;

    invoke-direct {v5, v1, v7, v8}, Lcom/inmobi/media/M4;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;Lcom/inmobi/media/yd;Lcom/inmobi/media/J4;)V

    .line 109
    iput-object v5, p1, Lcom/inmobi/media/C4;->g:Lcom/inmobi/media/M4;

    move-object v7, v5

    .line 110
    :cond_8
    iget-object v5, p1, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    if-eqz v5, :cond_9

    check-cast v5, Lcom/inmobi/media/g5;

    const-string v8, "impression tracker add view"

    invoke-virtual {v5, v6, v8}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_9
    iget v5, p1, Lcom/inmobi/media/C4;->d:I

    .line 115
    iget p1, p1, Lcom/inmobi/media/C4;->c:I

    .line 116
    invoke-virtual {v7, v0, v0, v5, p1}, Lcom/inmobi/media/M4;->a(Landroid/view/View;Ljava/lang/Object;II)V

    goto :goto_2

    .line 117
    :cond_a
    :goto_1
    iget-object p1, p1, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_b

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v5, "creative type is video and audio. return"

    invoke-virtual {p1, v6, v5}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/inmobi/media/q5;->f:Lcom/inmobi/media/C4;

    .line 121
    invoke-virtual {v2}, Lcom/inmobi/media/Ya;->getVISIBILITY_CHANGE_LISTENER()Lcom/inmobi/media/rd;

    move-result-object v2

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "listener"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "config"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v3, p1, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_c

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v4, "startTrackingForVisibility"

    invoke-virtual {v3, v6, v4}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_c
    iget-object v3, p1, Lcom/inmobi/media/C4;->h:Lcom/inmobi/media/F4;

    if-nez v3, :cond_e

    .line 214
    new-instance v3, Lcom/inmobi/media/F4;

    .line 218
    iget-object v4, p1, Lcom/inmobi/media/C4;->f:Lcom/inmobi/media/f5;

    const/4 v5, 0x1

    .line 219
    invoke-direct {v3, v1, v5, v4}, Lcom/inmobi/media/F4;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;BLcom/inmobi/media/f5;)V

    .line 226
    new-instance v1, Lcom/inmobi/media/B4;

    invoke-direct {v1, p1}, Lcom/inmobi/media/B4;-><init>(Lcom/inmobi/media/C4;)V

    .line 227
    iget-object v4, v3, Lcom/inmobi/media/yd;->e:Lcom/inmobi/media/f5;

    if-eqz v4, :cond_d

    check-cast v4, Lcom/inmobi/media/g5;

    const-string v5, "VisibilityTracker"

    const-string v6, "setVisibilityTrackerListener logger"

    invoke-virtual {v4, v5, v6}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_d
    iput-object v1, v3, Lcom/inmobi/media/yd;->j:Lcom/inmobi/media/ud;

    .line 229
    iput-object v3, p1, Lcom/inmobi/media/C4;->h:Lcom/inmobi/media/F4;

    .line 230
    :cond_e
    iget-object v1, p1, Lcom/inmobi/media/C4;->i:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget p1, p1, Lcom/inmobi/media/C4;->e:I

    invoke-virtual {v3, v0, v0, p1}, Lcom/inmobi/media/yd;->a(Landroid/view/View;Ljava/lang/Object;I)V

    .line 232
    iget-object p1, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_f
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    invoke-virtual {v0}, Lcom/inmobi/media/md;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/inmobi/media/X7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/md;->b:Lcom/inmobi/media/X7;

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    invoke-virtual {v0}, Lcom/inmobi/media/nd;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/q5;->g:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/q5;->h:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "stopTrackingForImpression"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    invoke-virtual {v0}, Lcom/inmobi/media/md;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/q5;->f:Lcom/inmobi/media/C4;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/C4;->a(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/q5;->e:Lcom/inmobi/media/nd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method
