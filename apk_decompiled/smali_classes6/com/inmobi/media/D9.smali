.class public final Lcom/inmobi/media/D9;
.super Lcom/inmobi/media/ld;
.source "SourceFile"


# static fields
.field public static final synthetic h:I


# instance fields
.field public final e:Lcom/inmobi/media/md;

.field public f:Lcom/inmobi/media/z9;

.field public final g:Lcom/inmobi/media/f5;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/x;Lcom/inmobi/media/md;Lcom/inmobi/media/z9;Lcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "adContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mViewableAd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/inmobi/media/ld;-><init>(Lcom/inmobi/media/x;)V

    .line 2
    iput-object p2, p0, Lcom/inmobi/media/D9;->e:Lcom/inmobi/media/md;

    .line 3
    iput-object p3, p0, Lcom/inmobi/media/D9;->f:Lcom/inmobi/media/z9;

    .line 4
    iput-object p4, p0, Lcom/inmobi/media/D9;->g:Lcom/inmobi/media/f5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/D9;->e:Lcom/inmobi/media/md;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/media/md;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/inmobi/media/D9;->g:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "D9"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "destroy"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    invoke-super {p0}, Lcom/inmobi/media/md;->a()V

    const/4 v0, 0x0

    .line 300
    :try_start_0
    iput-object v0, p0, Lcom/inmobi/media/D9;->f:Lcom/inmobi/media/z9;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    iget-object v0, p0, Lcom/inmobi/media/D9;->e:Lcom/inmobi/media/md;

    invoke-virtual {v0}, Lcom/inmobi/media/md;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 305
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/media/D9;->g:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Exception in destroy with message"

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v2, v1, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/D9;->e:Lcom/inmobi/media/md;

    invoke-virtual {v0}, Lcom/inmobi/media/md;->a()V

    :goto_0
    return-void

    :goto_1
    iget-object v1, p0, Lcom/inmobi/media/D9;->e:Lcom/inmobi/media/md;

    invoke-virtual {v1}, Lcom/inmobi/media/md;->a()V

    throw v0
.end method

.method public final a(B)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/inmobi/media/D9;->e:Lcom/inmobi/media/md;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/md;->a(B)V

    return-void
.end method

.method public final a(Landroid/content/Context;B)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/inmobi/media/D9;->e:Lcom/inmobi/media/md;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/media/md;->a(Landroid/content/Context;B)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 4

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/D9;->f:Lcom/inmobi/media/z9;

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-byte v0, v1, Lcom/inmobi/media/z9;->e:B

    if-lez v0, :cond_0

    .line 184
    iget-object v0, v1, Lcom/inmobi/media/z9;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/inmobi/adsession/AdSession;->removeFriendlyObstruction(Landroid/view/View;)V

    goto :goto_0

    .line 185
    :cond_0
    sget-object p1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 186
    new-instance p1, Lcom/inmobi/media/d2;

    .line 187
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Omid AdSession State Error currentState :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", expectedState :: 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-direct {p1, v1}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 189
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V
    .locals 1

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "obstructionCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/D9;->f:Lcom/inmobi/media/z9;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/media/z9;->a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 7

    .line 268
    const-string v0, "Exception in startTrackingForImpression with message : "

    iget-object v1, p0, Lcom/inmobi/media/D9;->g:Lcom/inmobi/media/f5;

    const-string v2, "TAG"

    const-string v3, "D9"

    if-eqz v1, :cond_0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v4, "startTrackingForImpression"

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/md;->d:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 270
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getOmidConfig()Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->isOmidEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 272
    sget-object v1, Lcom/inmobi/media/G9;->a:Lcom/inmobi/media/H9;

    .line 273
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    invoke-static {}, Lcom/iab/omid/library/inmobi/Omid;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 275
    iget-object v1, p0, Lcom/inmobi/media/md;->a:Lcom/inmobi/media/x;

    .line 276
    instance-of v4, v1, Lcom/inmobi/media/t7;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 277
    check-cast v1, Lcom/inmobi/media/t7;

    .line 278
    iget-object v4, v1, Lcom/inmobi/media/t7;->H:Lcom/inmobi/media/Ya;

    if-nez v4, :cond_3

    .line 279
    iget-object v4, v1, Lcom/inmobi/media/t7;->I:Lcom/inmobi/media/Ya;

    goto :goto_0

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/D9;->e:Lcom/inmobi/media/md;

    invoke-virtual {v1}, Lcom/inmobi/media/md;->b()Landroid/view/View;

    move-result-object v1

    .line 281
    instance-of v4, v1, Landroid/webkit/WebView;

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Landroid/webkit/WebView;

    goto :goto_0

    :cond_2
    move-object v4, v5

    :cond_3
    :goto_0
    if-eqz v4, :cond_5

    .line 284
    iget-object v1, p0, Lcom/inmobi/media/D9;->g:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_4

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "creating OMSDK session"

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v3, v6}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_4
    iget-object v1, p0, Lcom/inmobi/media/D9;->f:Lcom/inmobi/media/z9;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v4, p1, v5}, Lcom/inmobi/media/z9;->a(Landroid/view/View;Ljava/util/Map;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 292
    :try_start_1
    iget-object v4, p0, Lcom/inmobi/media/D9;->g:Lcom/inmobi/media/f5;

    if-eqz v4, :cond_5

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v4, Lcom/inmobi/media/g5;

    invoke-virtual {v4, v3, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/D9;->e:Lcom/inmobi/media/md;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/md;->a(Ljava/util/HashMap;)V

    return-void

    .line 294
    :goto_2
    iget-object v1, p0, Lcom/inmobi/media/D9;->e:Lcom/inmobi/media/md;

    invoke-virtual {v1, p1}, Lcom/inmobi/media/md;->a(Ljava/util/HashMap;)V

    throw v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/D9;->e:Lcom/inmobi/media/md;

    invoke-virtual {v0}, Lcom/inmobi/media/md;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/D9;->g:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    const-string v1, "TAG"

    const-string v2, "D9"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "inflateView called"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/D9;->e:Lcom/inmobi/media/md;

    invoke-virtual {v0}, Lcom/inmobi/media/md;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 5

    const-string v0, "TAG"

    const-string v1, "D9"

    .line 1
    const-string v2, "Exception in stopTrackingForImpression with message : "

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/inmobi/media/D9;->g:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "stopTrackingForImpression"

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v1, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/inmobi/media/D9;->f:Lcom/inmobi/media/z9;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/inmobi/media/z9;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 8
    :try_start_1
    iget-object v4, p0, Lcom/inmobi/media/D9;->g:Lcom/inmobi/media/f5;

    if-eqz v4, :cond_1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v4, Lcom/inmobi/media/g5;

    invoke-virtual {v4, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/D9;->e:Lcom/inmobi/media/md;

    invoke-virtual {v0}, Lcom/inmobi/media/md;->e()V

    return-void

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/inmobi/media/D9;->e:Lcom/inmobi/media/md;

    invoke-virtual {v1}, Lcom/inmobi/media/md;->e()V

    throw v0
.end method
