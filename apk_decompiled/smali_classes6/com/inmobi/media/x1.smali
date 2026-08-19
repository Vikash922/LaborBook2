.class public final Lcom/inmobi/media/x1;
.super Lcom/inmobi/media/K1;
.source "SourceFile"


# instance fields
.field public final R:Lcom/inmobi/media/z1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/Y;Lcom/inmobi/media/E0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/media/K1;-><init>(Landroid/content/Context;Lcom/inmobi/media/Y;Lcom/inmobi/media/E0;)V

    .line 3
    new-instance p1, Lcom/inmobi/media/z1;

    invoke-direct {p1}, Lcom/inmobi/media/z1;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/x1;->R:Lcom/inmobi/media/z1;

    return-void
.end method


# virtual methods
.method public final D0()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "<get-TAG>(...)"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "canProceedToLoad"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/K1;->f0()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "Some of the dependency libraries for Banner not found"

    invoke-virtual {v0, v4, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->MISSING_REQUIRED_DEPENDENCIES:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v1, 0x7d7

    .line 10
    invoke-virtual {p0, v0, v3, v1}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    return v2

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    if-eq v3, v0, :cond_e

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v4, 0x2

    if-ne v4, v0, :cond_3

    goto/16 :goto_2

    .line 27
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v5, 0x7

    const-string v6, "InMobi"

    if-ne v5, v0, :cond_5

    .line 29
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v4, 0xf

    .line 30
    invoke-virtual {p0, v0, v2, v4}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/media/Y;->l()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v3, v6, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_4

    .line 41
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "Ad is active. ignore load"

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v2

    .line 46
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_d

    .line 47
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->W()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 48
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_6

    .line 49
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "ad is expired, clearing"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/media/K1;->g()V

    goto :goto_1

    .line 52
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_8

    .line 53
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v5, "signalCanShowForStateReady"

    invoke-virtual {v0, v3, v5}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_8
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_9

    .line 56
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v5, "An ad is ready with the ad unit. Signaling ad load success ..."

    invoke-virtual {v0, v3, v5}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_9
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v0

    if-nez v0, :cond_a

    .line 64
    const-string v0, "Listener was garbage collected. Unable to give callback"

    invoke-static {v4, v6, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_c

    .line 66
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "listener is null. load show callback missed"

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_a
    iget-object v3, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_b

    .line 69
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v1, "callback - onLoadSuccess"

    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_b
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->f(Lcom/inmobi/media/E0;)V

    :cond_c
    :goto_0
    return v2

    .line 72
    :cond_d
    :goto_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->e0()V

    return v3

    .line 73
    :cond_e
    :goto_2
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    const-string v4, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad"

    invoke-static {v3, v0, v4}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_f

    .line 77
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "ad load in progress. ignore load"

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const/16 v0, 0x35

    .line 79
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->a(S)V

    return v2
.end method

.method public final a(Lcom/inmobi/media/B1;)V
    .locals 3

    const-string v0, "audioStatusInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/inmobi/media/E0;->a(Lcom/inmobi/media/B1;)V

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/x1;->R:Lcom/inmobi/media/z1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-boolean v0, v1, Lcom/inmobi/media/z1;->a:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    sget-object v0, Lcom/inmobi/media/B1;->e:Lcom/inmobi/media/B1;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, v1, Lcom/inmobi/media/z1;->a:Z

    .line 19
    sget-object v0, Lcom/inmobi/media/X4;->c:Lcom/inmobi/media/X4;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/inmobi/media/Q1;->a:J

    .line 21
    iget v1, v0, Lcom/inmobi/media/Q1;->b:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/inmobi/media/Q1;->b:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 8

    .line 22
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    sget-object v1, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "audio_pref_file"

    invoke-static {v0, v1}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v2

    .line 26
    const-string v0, "key"

    const-string v1, "user_mute_count"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, v2, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 79
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

    .line 80
    const-string v3, "user_mute_count"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;IZILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final d(S)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "<get-TAG>(...)"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "onShowFailure"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    const-string v0, "InMobi"

    const-string v2, "Listener was garbage collected. Unable to give callback"

    const/4 v3, 0x2

    invoke-static {v3, v0, v2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_3

    .line 8
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "listener is null. show fail callback missed. "

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_2

    .line 11
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v4, "callback - onAdShowFailed"

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/media/E0;->d()V

    :cond_3
    :goto_0
    if-eqz p1, :cond_5

    .line 14
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_4

    .line 15
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v2

    .line 16
    const-string v3, "show failed - "

    invoke-static {v2, v1, v3, p1}, Lcom/inmobi/media/x8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 176
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_4
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->c(S)V

    :cond_5
    return-void
.end method

.method public final i(Lcom/inmobi/media/Ya;)V
    .locals 4

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "<get-TAG>(...)"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "onRenderViewVisible"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_1

    .line 7
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v1, "callback - onAdDisplayed"

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->d(Lcom/inmobi/media/E0;)V

    .line 12
    :cond_2
    invoke-super {p0, p1}, Lcom/inmobi/media/K1;->i(Lcom/inmobi/media/Ya;)V

    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "audio"

    return-object v0
.end method
