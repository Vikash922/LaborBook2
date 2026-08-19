.class public Lcom/inmobi/media/K1;
.super Lcom/inmobi/media/Q0;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final M:Ljava/lang/String;

.field public final N:Ljava/lang/String;

.field public O:Z

.field public P:I

.field public final Q:Lcom/inmobi/media/L1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/Y;Lcom/inmobi/media/E0;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/media/Q0;-><init>(Landroid/content/Context;Lcom/inmobi/media/Y;Lcom/inmobi/media/E0;)V

    .line 3
    const-string v0, "K1"

    iput-object v0, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 4
    const-string v1, "InMobi"

    iput-object v1, p0, Lcom/inmobi/media/K1;->N:Ljava/lang/String;

    .line 8
    new-instance v1, Lcom/inmobi/media/L1;

    invoke-direct {v1}, Lcom/inmobi/media/L1;-><init>()V

    iput-object v1, p0, Lcom/inmobi/media/K1;->Q:Lcom/inmobi/media/L1;

    .line 10
    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inmobi/media/Y;->l()J

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/Q0;->a(Landroid/content/Context;Lcom/inmobi/media/Y;Lcom/inmobi/media/E0;)V

    return-void
.end method

.method public static final synthetic a(Lcom/inmobi/media/K1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    return-object p0
.end method

.method public static final a(Lcom/inmobi/media/K1;Lcom/inmobi/media/Ya;I)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_0

    .line 165
    iget-object v3, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "callback onShowNextPodAd"

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {v1, p2, v0, p1}, Lcom/inmobi/media/E0;->a(IILcom/inmobi/media/Ya;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 168
    invoke-virtual {p0, v0, p1}, Lcom/inmobi/media/Q0;->b(IZ)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->f(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final synthetic b(Lcom/inmobi/media/K1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/K1;->I0()V

    return-void
.end method

.method public static final c(Lcom/inmobi/media/K1;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "start loading html ad"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->s0()V

    return-void
.end method

.method public static final d(Lcom/inmobi/media/K1;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/inmobi/media/K1;->P:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/media/K1;->P:I

    if-nez v0, :cond_0

    const/4 v0, 0x6

    .line 323
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->d(B)V

    .line 324
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/E0;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 325
    iget-object v1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_0

    .line 326
    iget-object p0, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 327
    const-string v2, "TAG"

    const-string v3, "BannerAdUnit.onAdScreenDismissed threw unexpected error: "

    invoke-static {p0, v2, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 328
    invoke-static {v0, v2}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 648
    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, p0, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final e(Lcom/inmobi/media/K1;)V
    .locals 6

    const-string v0, "TAG"

    const-string v1, "Successfully displayed banner ad for placement Id : "

    const-string v2, "AdUnit "

    const-string v3, "this$0"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x7

    if-ne v3, v4, :cond_2

    .line 2
    iget v3, p0, Lcom/inmobi/media/K1;->P:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/inmobi/media/K1;->P:I

    .line 3
    invoke-virtual {p0, v5}, Lcom/inmobi/media/Q0;->d(B)V

    .line 4
    iget-object v3, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_0

    .line 5
    iget-object v4, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " state - ACTIVE"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v2}, Lcom/inmobi/media/g5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_1

    .line 7
    iget-object v3, p0, Lcom/inmobi/media/K1;->N:Ljava/lang/String;

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0, v1}, Lcom/inmobi/media/Q0;->d(Lcom/inmobi/media/E0;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v1

    if-ne v1, v5, :cond_3

    .line 16
    iget v1, p0, Lcom/inmobi/media/K1;->P:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/inmobi/media/K1;->P:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 17
    iget-object v2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_3

    .line 18
    iget-object p0, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 19
    const-string v3, "BannerAdUnit.onAdScreenDisplayed threw unexpected error: "

    invoke-static {p0, v0, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    invoke-static {v1, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 324
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, p0, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static final f(Lcom/inmobi/media/K1;)V
    .locals 5

    const-string v0, "TAG"

    const-string v1, "AdUnit "

    const-string v2, "this$0"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x6

    .line 2
    invoke-virtual {p0, v2}, Lcom/inmobi/media/Q0;->d(B)V

    .line 3
    iget-object v2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " state - RENDERED"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/g5;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    iget-object v2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_0

    .line 6
    iget-object p0, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 7
    const-string v3, "BannerAdUnit.onRenderViewVisible threw unexpected error: "

    invoke-static {p0, v0, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-static {v1, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 284
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, p0, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final g(Lcom/inmobi/media/K1;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/Q0;->a(J)V

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->y()Lcom/inmobi/media/x0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/x0;->f()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Lcom/inmobi/media/h;

    .line 326
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->B()Ljava/util/TreeSet;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->s0()V

    return-void
.end method


# virtual methods
.method public D0()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v3, "canProceedToLoad "

    invoke-static {v2, v1, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v3

    .line 60
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/K1;->f0()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    .line 63
    iget-object v4, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "Some of the dependency libraries for Banner not found"

    invoke-virtual {v0, v4, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->MISSING_REQUIRED_DEPENDENCIES:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v1, 0x7d7

    .line 66
    invoke-virtual {p0, v0, v3, v1}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    return v2

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    if-eq v3, v0, :cond_7

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v4, 0x2

    if-ne v4, v0, :cond_3

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v4, 0x7

    if-ne v4, v0, :cond_5

    .line 84
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v3, 0x7da

    .line 85
    invoke-virtual {p0, v0, v2, v3}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 86
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_4

    .line 87
    iget-object v3, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 88
    const-string v4, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: "

    invoke-static {v3, v1, v4}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/media/Y;->l()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v2

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_6

    .line 172
    iget-object v1, p0, Lcom/inmobi/media/K1;->N:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Fetching a Banner ad for placement id: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->e0()V

    return v3

    .line 174
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/K1;->N:Ljava/lang/String;

    const-string v4, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad"

    invoke-static {v3, v0, v4}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_8

    .line 176
    iget-object v5, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v5, v4}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    if-ne v3, v0, :cond_9

    const/16 v0, 0x7d8

    .line 178
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->a(S)V

    goto :goto_1

    :cond_9
    const/16 v0, 0x7db

    .line 180
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->a(S)V

    :goto_1
    return v2
.end method

.method public final E0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final F0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "onPause "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 329
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->k()Lcom/inmobi/media/x;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->t()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 335
    invoke-interface {v0}, Lcom/inmobi/media/x;->getViewableAd()Lcom/inmobi/media/md;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 336
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/md;->a(Landroid/content/Context;B)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final G0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "onResume "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 342
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->k()Lcom/inmobi/media/x;

    move-result-object v0

    .line 346
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->t()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 348
    invoke-interface {v0}, Lcom/inmobi/media/x;->getViewableAd()Lcom/inmobi/media/md;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 349
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/md;->a(Landroid/content/Context;B)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final H0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "registerLifeCycleCallbacks "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 396
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->t()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 399
    invoke-static {v0, p0}, Lcom/inmobi/media/Kb;->a(Landroid/content/Context;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    return-void
.end method

.method public final I0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "renderAdPostInternetCheck"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->o0()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->s()Lcom/inmobi/media/S0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/inmobi/media/S0;->g:J

    .line 9
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->d0()V

    .line 11
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->D()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Lcom/inmobi/media/K1$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/inmobi/media/K1$$ExternalSyntheticLambda5;-><init>(Lcom/inmobi/media/K1;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    iget-object v2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_2

    .line 13
    iget-object v3, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v1, "Exception while loading ad."

    invoke-virtual {v2, v3, v1, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 15
    :cond_2
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x1

    const/16 v2, 0x856

    .line 16
    invoke-virtual {p0, v0, v1, v2}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final J()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final J0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "unregisterLifeCycleCallbacks "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 355
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->t()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_2
    return-void
.end method

.method public a(ILcom/inmobi/media/Ya;)V
    .locals 4

    const-string v0, "renderView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    .line 432
    iget-object v2, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 433
    const-string v3, "loadPodAd "

    invoke-static {v2, v1, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v3

    .line 835
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->B()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 837
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 838
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gt p1, v0, :cond_1

    goto :goto_0

    .line 843
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->g(I)V

    .line 844
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->D()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/inmobi/media/K1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/inmobi/media/K1$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/K1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 845
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    .line 846
    iget-object v0, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "No more ads present in pod adSet or current adSet is not pod adSet"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 848
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/Ya;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->a(Z)V

    :cond_5
    return-void
.end method

.method public a(ILcom/inmobi/media/Ya;Landroid/content/Context;)V
    .locals 7

    const-string v0, "renderView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    .line 855
    iget-object v2, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "showPodAdAtIndex "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->b0()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 857
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    .line 858
    iget-object p3, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Cannot show an pod ad as isPod is not set."

    invoke-virtual {p1, p3, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 860
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/Ya;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Lcom/inmobi/media/Ya;->b(Z)V

    :cond_2
    return-void

    .line 861
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_4

    .line 862
    iget-object v3, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isInValidShowPodIndex "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->B()Ljava/util/TreeSet;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 863
    iget-object v6, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 864
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v3, v4}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->B()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 866
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 867
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-le p1, v0, :cond_7

    .line 868
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 869
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 870
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 871
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/Ya;

    if-eqz v0, :cond_5

    .line 872
    iget-boolean v0, v0, Lcom/inmobi/media/Ya;->m0:Z

    if-nez v0, :cond_5

    goto :goto_0

    .line 873
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/media/Q0;->a(ILcom/inmobi/media/Ya;Landroid/content/Context;)V

    .line 875
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->D()Landroid/os/Handler;

    move-result-object p3

    if-eqz p3, :cond_6

    new-instance v0, Lcom/inmobi/media/K1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Lcom/inmobi/media/K1$$ExternalSyntheticLambda2;-><init>(Lcom/inmobi/media/K1;Lcom/inmobi/media/Ya;I)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void

    .line 876
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_8

    .line 877
    iget-object p3, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Cannot show an pod ad with invalid index passed"

    invoke-virtual {p1, p3, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :cond_8
    iget-object p1, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 879
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/Ya;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Lcom/inmobi/media/Ya;->b(Z)V

    :cond_9
    return-void
.end method

.method public a(Lcom/inmobi/media/B1;)V
    .locals 3

    const-string v0, "audioStatusInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/inmobi/media/E0;->a(Lcom/inmobi/media/B1;)V

    .line 881
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/K1;->Q:Lcom/inmobi/media/L1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 882
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    iget-boolean v0, v1, Lcom/inmobi/media/L1;->a:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 897
    :cond_1
    sget-object v0, Lcom/inmobi/media/B1;->e:Lcom/inmobi/media/B1;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 898
    iput-boolean p1, v1, Lcom/inmobi/media/L1;->a:Z

    .line 899
    sget-object v0, Lcom/inmobi/media/b5;->c:Lcom/inmobi/media/b5;

    .line 900
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/inmobi/media/Q1;->a:J

    .line 901
    iget v1, v0, Lcom/inmobi/media/Q1;->b:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/inmobi/media/Q1;->b:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/inmobi/media/Ya;S)V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 172
    const-string v2, "TAG"

    const-string v3, "handleRenderViewSignaledAdFailed "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 403
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Ya;S)V

    .line 405
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->b0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 407
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 408
    invoke-static {p0, p1, v3, v2, v0}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Q0;IZILjava/lang/Object;)V

    if-lez p1, :cond_1

    .line 409
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 410
    invoke-virtual {p0, v1}, Lcom/inmobi/media/Q0;->b(B)V

    .line 411
    iget-object p1, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 412
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->A()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/Ya;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Lcom/inmobi/media/Ya;->a(Z)V

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    if-ne p1, v2, :cond_3

    .line 416
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    .line 417
    iget-object v0, p0, Lcom/inmobi/media/K1;->N:Ljava/lang/String;

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load the Banner markup in the WebView for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_2
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 425
    invoke-virtual {p0, p1, v1, p2}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    :cond_3
    return-void
.end method

.method public a(Lcom/inmobi/media/Ya;Z)V
    .locals 4

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 964
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Ya;Z)V

    .line 965
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/16 v1, 0x8b3

    const/4 v2, 0x6

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_5

    .line 973
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    if-ne v0, v3, :cond_2

    if-eqz p2, :cond_1

    const/16 v1, 0x8ac

    goto :goto_1

    :cond_1
    const/16 v1, 0x8ab

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_4

    if-eqz p2, :cond_3

    const/16 v1, 0x8ae

    goto :goto_1

    :cond_3
    const/16 v1, 0x8ad

    .line 978
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->m0()V

    .line 979
    invoke-virtual {p1, p2, v1}, Lcom/inmobi/media/Ya;->a(ZS)V

    goto :goto_3

    :cond_5
    const/4 v2, 0x7

    if-ne v0, v2, :cond_8

    .line 988
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    if-ne v0, v2, :cond_7

    if-eqz p2, :cond_6

    const/16 v1, 0x8b0

    goto :goto_2

    :cond_6
    const/16 v1, 0x8af

    .line 992
    :cond_7
    :goto_2
    invoke-virtual {p1, p2, v1}, Lcom/inmobi/media/Ya;->a(ZS)V

    :cond_8
    :goto_3
    return-void
.end method

.method public a(Z)V
    .locals 8

    .line 902
    sget-object v0, Lcom/inmobi/media/b5;->c:Lcom/inmobi/media/b5;

    .line 903
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 905
    :cond_0
    sget-object v1, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 906
    const-string v1, "banner_audio_pref_file"

    .line 907
    invoke-static {v0, v1}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v2

    .line 909
    const-string v0, "key"

    const-string v1, "user_mute_count"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    iget-object v0, v2, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 962
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v4, p1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v4, v0

    :goto_0
    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 963
    const-string v3, "user_mute_count"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;IZILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a(ZLcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/Q0;->a(ZLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 5
    const-string v0, "TAG"

    const-string v1, "onDidParseAfterFetch "

    invoke-static {p2, v0, v1, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v0

    .line 144
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    .line 146
    iget-object p2, p0, Lcom/inmobi/media/K1;->N:Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Banner ad fetch successful for placement id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 154
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->e(Lcom/inmobi/media/E0;)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 4
    const-string v2, "TAG"

    const-string v3, "closeAll "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 459
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "load "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 55
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/K1;->D0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/inmobi/media/Q0;->c0()V

    :cond_1
    return-void
.end method

.method public declared-synchronized d(Lcom/inmobi/media/Ya;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "onAdScreenDismissed "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 314
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_0
    invoke-super {p0, p1}, Lcom/inmobi/media/ab;->d(Lcom/inmobi/media/Ya;)V

    .line 316
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->D()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/inmobi/media/K1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/inmobi/media/K1$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/K1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized e(Lcom/inmobi/media/Ya;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 441
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 442
    const-string v2, "TAG"

    const-string v3, "onAdScreenDisplayed "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 725
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :cond_0
    invoke-super {p0, p1}, Lcom/inmobi/media/ab;->e(Lcom/inmobi/media/Ya;)V

    .line 727
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->D()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/inmobi/media/K1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/inmobi/media/K1$$ExternalSyntheticLambda4;-><init>(Lcom/inmobi/media/K1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    .line 733
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 734
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 735
    const-string v2, "TAG"

    const-string v3, "setAdSize "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 854
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Y;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Z)V
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 332
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 333
    const-string v2, "TAG"

    const-string v3, "load "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 424
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 425
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    .line 426
    iget-object v1, p0, Lcom/inmobi/media/K1;->N:Ljava/lang/String;

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Initiating Banner refresh for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 428
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_1
    iput-boolean p1, p0, Lcom/inmobi/media/K1;->O:Z

    .line 434
    invoke-virtual {p0}, Lcom/inmobi/media/K1;->c0()V

    return-void
.end method

.method public f0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "missingPrerequisitesForAd "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 49
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/inmobi/media/K1;->Q:Lcom/inmobi/media/L1;

    const/4 v1, 0x0

    .line 331
    iput-boolean v1, v0, Lcom/inmobi/media/L1;->a:Z

    .line 332
    invoke-super {p0}, Lcom/inmobi/media/Q0;->g()V

    return-void
.end method

.method public i(Lcom/inmobi/media/Ya;)V
    .locals 4

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "onRenderViewVisible "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 270
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    invoke-super {p0, p1}, Lcom/inmobi/media/Q0;->i(Lcom/inmobi/media/Ya;)V

    .line 272
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->D()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/inmobi/media/K1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/inmobi/media/K1$$ExternalSyntheticLambda3;-><init>(Lcom/inmobi/media/K1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public j0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->p0()Z

    move-result v0

    const-string v1, "TAG"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "renderAd without internet check"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/K1;->I0()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    .line 6
    iget-object v2, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "renderAd"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    new-instance v0, Lcom/inmobi/media/I1;

    invoke-direct {v0, p0}, Lcom/inmobi/media/I1;-><init>(Lcom/inmobi/media/K1;)V

    new-instance v1, Lcom/inmobi/media/J1;

    invoke-direct {v1, p0}, Lcom/inmobi/media/J1;-><init>(Lcom/inmobi/media/K1;)V

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/Q0;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method public final m(Lcom/inmobi/media/Ya;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v3, "handleRenderViewSignaledAdReady "

    invoke-static {v2, v1, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v3

    .line 208
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_0
    invoke-super {p0, p1}, Lcom/inmobi/media/Q0;->m(Lcom/inmobi/media/Ya;)V

    .line 210
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->b0()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 212
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 213
    invoke-virtual {p0, v2}, Lcom/inmobi/media/Q0;->b(B)V

    .line 214
    iget-object p1, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->A()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/Ya;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Lcom/inmobi/media/Ya;->a(Z)V

    goto/16 :goto_1

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 217
    invoke-virtual {p0, v2}, Lcom/inmobi/media/Q0;->b(B)V

    const/4 p1, 0x4

    .line 218
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->d(B)V

    .line 219
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    .line 220
    iget-object v0, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdUnit "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state - READY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/g5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->s()Lcom/inmobi/media/S0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/inmobi/media/S0;->i:J

    .line 223
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->u0()V

    .line 224
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->z0()V

    .line 225
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 226
    iget-object v0, p0, Lcom/inmobi/media/K1;->N:Ljava/lang/String;

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Successfully loaded Banner ad markup in the WebView for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 233
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->f(Lcom/inmobi/media/E0;)V

    goto :goto_0

    .line 234
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_5

    .line 235
    iget-object v0, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "AdUnit listener is null"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->i()V

    goto :goto_1

    .line 238
    :cond_6
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_7

    .line 239
    iget-object v0, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 240
    const-string v2, "AdUnit is not in available state, ignoring the ad ready signal - "

    invoke-static {v0, v1, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 466
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final o()Ljava/util/HashMap;
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 14
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 15
    const-string v2, "TAG"

    const-string v3, "adSpecificRequestParams getter "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 144
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    iget-boolean v1, p0, Lcom/inmobi/media/K1;->O:Z

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    :goto_0
    const-string v2, "u-rt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/media/Y;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mk-ad-slot"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public o(Lcom/inmobi/media/Ya;)V
    .locals 3

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->A()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 5
    iget-object v1, p1, Lcom/inmobi/media/Ya;->z:Lcom/inmobi/media/qd;

    .line 6
    sget-object v2, Lcom/inmobi/media/qd;->c:Lcom/inmobi/media/qd;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->B()Ljava/util/TreeSet;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    return-void

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->C0()V

    .line 12
    invoke-super {p0, p1}, Lcom/inmobi/media/Q0;->o(Lcom/inmobi/media/Ya;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v0, "TAG"

    const-string v1, "onActivityCreated "

    invoke-static {p2, v0, v1, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v0

    .line 360
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "onActivityDestroyed "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 386
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->t()Landroid/content/Context;

    move-result-object v0

    .line 389
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 390
    const-string p1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 391
    invoke-virtual {p0}, Lcom/inmobi/media/K1;->g()V

    :cond_1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v1, "TAG"

    const-string v2, "onActivityPaused "

    invoke-static {v0, v1, v2, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v1

    .line 373
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v1, "TAG"

    const-string v2, "onActivityResumed "

    invoke-static {v0, v1, v2, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v1

    .line 370
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v0, "TAG"

    const-string v1, "onActivitySaveInstanceState "

    invoke-static {p2, v0, v1, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v0

    .line 383
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "onActivityStarted "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 363
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/inmobi/media/K1;->G0()V

    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "onActivityStopped "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 376
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/inmobi/media/K1;->F0()V

    :cond_1
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "banner"

    return-object v0
.end method

.method public w()Lcom/inmobi/media/Ya;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/K1;->M:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "htmlAdContainer getter "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/H1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v2

    .line 110
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/inmobi/media/Q0;->w()Lcom/inmobi/media/Ya;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/media/Y;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->e()V

    :cond_1
    return-object v0
.end method
