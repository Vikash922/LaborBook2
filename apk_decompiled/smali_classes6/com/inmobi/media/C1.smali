.class public final Lcom/inmobi/media/C1;
.super Lcom/inmobi/media/Mc;
.source "SourceFile"


# instance fields
.field public o:Lcom/inmobi/media/x1;

.field public p:Lcom/inmobi/media/x1;

.field public q:Lcom/inmobi/media/x1;

.field public r:Lcom/inmobi/media/x1;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/InMobiAudio$a;)V
    .locals 1

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/inmobi/media/Mc;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Mc;->b(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/C1;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "callback - onAdDisplayFailed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdDisplayFailed()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Lcom/inmobi/media/g5;

    invoke-virtual {p0}, Lcom/inmobi/media/g5;->a()V

    :cond_2
    return-void
.end method

.method public static final a(Lcom/inmobi/media/C1;Landroid/widget/RelativeLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$audio"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/inmobi/media/C1;->a(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/C1;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdFetchSuccessful(Lcom/inmobi/ads/AdMetaInfo;)V

    :cond_0
    return-void
.end method

.method public static final b(Lcom/inmobi/media/C1;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/controllers/PublisherCallbacks;->onAdLoadSucceeded(Lcom/inmobi/ads/AdMetaInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/RelativeLayout;)V
    .locals 10

    .line 36
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "showAudioAd"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/C1;->q:Lcom/inmobi/media/x1;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/K1;->E0()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 38
    sget-object p1, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "An ad is currently being viewed by the user. Please wait for the user to close the ad before showing another ad."

    invoke-static {v3, p1, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "ad is active"

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/C1;->r:Lcom/inmobi/media/x1;

    if-eqz p1, :cond_3

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/inmobi/media/x1;->d(S)V

    :cond_3
    return-void

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/C1;->r:Lcom/inmobi/media/x1;

    if-eqz v0, :cond_1d

    .line 45
    iget-object v4, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v5, "<get-TAG>(...)"

    if-eqz v4, :cond_5

    .line 46
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v6

    .line 47
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/inmobi/media/g5;

    const-string v7, "canProceedToShow"

    invoke-virtual {v4, v6, v7}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_5
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->W()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 49
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const-string v1, "Ad Show has failed because current ad is expired. Please call load() again."

    invoke-static {v3, p1, v1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p1, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_6

    .line 53
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v3, "ad is expired"

    invoke-virtual {p1, v1, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_6
    iget-object p1, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_7

    .line 56
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AdUnit "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state - CREATED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, v3}, Lcom/inmobi/media/g5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_7
    invoke-virtual {v0, v2}, Lcom/inmobi/media/Q0;->d(B)V

    const/16 p1, 0x869

    .line 59
    invoke-virtual {v0, p1}, Lcom/inmobi/media/x1;->d(S)V

    goto/16 :goto_6

    .line 60
    :cond_8
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v4

    const-string v6, "callback - onShowFailure"

    const-string v7, "InMobi"

    if-ne v4, v3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v8, 0x2

    if-ne v4, v8, :cond_c

    .line 62
    :goto_1
    const-string p1, "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show."

    invoke-static {v3, v7, p1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p1, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_a

    .line 64
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "ad is not ready"

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_a
    iget-object p1, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_b

    .line 67
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, v6}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/16 p1, 0x868

    .line 69
    invoke-virtual {v0, p1}, Lcom/inmobi/media/x1;->d(S)V

    goto/16 :goto_6

    :cond_c
    const/4 v8, 0x3

    const-string v9, "Ad Load has Failed. Please call load() again."

    if-ne v4, v8, :cond_e

    .line 73
    invoke-static {v3, v7, v9}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v2}, Lcom/inmobi/media/x1;->d(S)V

    .line 75
    iget-object p1, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_d

    .line 76
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, v6}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_d
    iget-object p1, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1d

    .line 79
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "ad is failed"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_e
    const/16 v8, 0x8

    if-ne v4, v8, :cond_10

    .line 84
    invoke-static {v3, v7, v9}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v2}, Lcom/inmobi/media/x1;->d(S)V

    .line 86
    iget-object p1, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_f

    .line 87
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, v6}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_f
    iget-object p1, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1d

    .line 90
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "ad is unloaded"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_10
    if-nez v4, :cond_12

    .line 95
    const-string p1, "Ad Show has Failed. Please call load() before calling show()."

    invoke-static {v3, v7, p1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v2}, Lcom/inmobi/media/x1;->d(S)V

    .line 97
    iget-object p1, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_11

    .line 98
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, v6}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_11
    iget-object p1, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1d

    .line 101
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "show called before load"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 103
    :cond_12
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    if-eqz v0, :cond_13

    sget-object v2, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "swapAdUnits "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_13
    iget-object v0, p0, Lcom/inmobi/media/C1;->q:Lcom/inmobi/media/x1;

    .line 105
    iget-object v2, p0, Lcom/inmobi/media/C1;->o:Lcom/inmobi/media/x1;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 106
    iget-object v0, p0, Lcom/inmobi/media/C1;->p:Lcom/inmobi/media/x1;

    iput-object v0, p0, Lcom/inmobi/media/C1;->q:Lcom/inmobi/media/x1;

    .line 107
    iget-object v0, p0, Lcom/inmobi/media/C1;->o:Lcom/inmobi/media/x1;

    iput-object v0, p0, Lcom/inmobi/media/C1;->r:Lcom/inmobi/media/x1;

    goto :goto_3

    .line 109
    :cond_14
    iget-object v2, p0, Lcom/inmobi/media/C1;->p:Lcom/inmobi/media/x1;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_2

    :cond_15
    if-nez v0, :cond_16

    .line 110
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/C1;->o:Lcom/inmobi/media/x1;

    iput-object v0, p0, Lcom/inmobi/media/C1;->q:Lcom/inmobi/media/x1;

    .line 111
    iget-object v0, p0, Lcom/inmobi/media/C1;->p:Lcom/inmobi/media/x1;

    iput-object v0, p0, Lcom/inmobi/media/C1;->r:Lcom/inmobi/media/x1;

    .line 112
    :cond_16
    :goto_3
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    if-eqz v0, :cond_17

    sget-object v2, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "displayAd "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_17
    iget-object v0, p0, Lcom/inmobi/media/C1;->q:Lcom/inmobi/media/x1;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->k()Lcom/inmobi/media/x;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_6

    :cond_18
    check-cast v0, Lcom/inmobi/media/Ya;

    .line 115
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getViewableAd()Lcom/inmobi/media/md;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/inmobi/media/C1;->q:Lcom/inmobi/media/x1;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/inmobi/media/Y;->p()Z

    move-result v2

    if-ne v2, v3, :cond_19

    .line 118
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->e()V

    .line 121
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_4

    :cond_1a
    move-object v0, v3

    .line 122
    :goto_4
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    invoke-virtual {v1}, Lcom/inmobi/media/md;->d()Landroid/view/View;

    move-result-object v4

    .line 127
    invoke-virtual {v1, v3}, Lcom/inmobi/media/md;->a(Ljava/util/HashMap;)V

    .line 129
    iget-object v1, p0, Lcom/inmobi/media/C1;->r:Lcom/inmobi/media/x1;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/inmobi/media/K1;->F0()V

    :cond_1b
    if-nez v0, :cond_1c

    .line 132
    invoke-virtual {p1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 134
    :cond_1c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 135
    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    :goto_5
    iget-object p1, p0, Lcom/inmobi/media/C1;->r:Lcom/inmobi/media/x1;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/inmobi/media/K1;->g()V

    :cond_1d
    :goto_6
    return-void
.end method

.method public final a(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "onAdDisplayed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/inmobi/media/Mc;->a(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 10
    invoke-virtual {p0}, Lcom/inmobi/media/C1;->j()Lcom/inmobi/media/Q0;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/media/Q0;->x0()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/inmobi/ads/InMobiAudio;)V
    .locals 4

    const-string v0, "audio"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "show called"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 14
    invoke-virtual {p0, p1}, Lcom/inmobi/media/C1;->a(Landroid/widget/RelativeLayout;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->s()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/inmobi/media/C1$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/inmobi/media/C1$$ExternalSyntheticLambda3;-><init>(Lcom/inmobi/media/C1;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    iget-object v0, p0, Lcom/inmobi/media/C1;->r:Lcom/inmobi/media/x1;

    if-eqz v0, :cond_2

    const/16 v2, 0x1a

    invoke-virtual {v0, v2}, Lcom/inmobi/media/x1;->d(S)V

    .line 24
    :cond_2
    sget-object v0, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 25
    const-string v3, "Unable to show ad; SDK encountered an unexpected error"

    invoke-static {v2, v0, v3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 30
    const-string v3, "Show failed with unexpected error: "

    invoke-static {v0, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 31
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_3
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 33
    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 34
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/inmobi/media/Q0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 1

    const-string p1, "status"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    const-string v0, "access$getTAG$p(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "onAdLoadFailed"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1}, Lcom/inmobi/media/g5;->a()V

    :cond_1
    return-void
.end method

.method public final a(S)V
    .locals 4

    .line 139
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "submitAdLoadDroppedAtSDK "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/C1;->r:Lcom/inmobi/media/x1;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Q0;->a(S)V

    :cond_1
    return-void
.end method

.method public final a([BLcom/inmobi/ads/controllers/PublisherCallbacks;)V
    .locals 0

    .line 1
    const-string p1, "callbacks"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 16
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onAdDismissed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Mc;->a(B)V

    .line 18
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "AdManager state - CREATED"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0}, Lcom/inmobi/media/g5;->a()V

    .line 20
    :cond_2
    invoke-super {p0}, Lcom/inmobi/media/Mc;->b()V

    return-void
.end method

.method public final b(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 5

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onAdFetchSuccess "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/C1;->r:Lcom/inmobi/media/x1;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->m()Lcom/inmobi/media/h;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "adObject is null, fetch failed"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 7
    invoke-virtual {p0, v2, p1}, Lcom/inmobi/media/C1;->a(Lcom/inmobi/media/Q0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v2, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "Ad fetch successful, calling loadIntoView()"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_4
    invoke-super {p0, p1}, Lcom/inmobi/media/Mc;->b(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 14
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->s()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/media/C1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/media/C1$$ExternalSyntheticLambda2;-><init>(Lcom/inmobi/media/C1;Lcom/inmobi/ads/AdMetaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    const-string v0, "adSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load 1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/C1;->r:Lcom/inmobi/media/x1;

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/media/Y;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->l()Lcom/inmobi/ads/controllers/PublisherCallbacks;

    move-result-object v3

    const-string v4, "InMobi"

    invoke-virtual {p0, v4, v2, v3}, Lcom/inmobi/media/Mc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/controllers/PublisherCallbacks;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v2}, Lcom/inmobi/media/Q0;->e(B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 25
    invoke-virtual {p0, v2}, Lcom/inmobi/media/Mc;->a(B)V

    .line 26
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v1, "AdManager state - LOADING"

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/g5;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v1}, Lcom/inmobi/media/Mc;->d(Lcom/inmobi/ads/AdMetaInfo;)V

    .line 28
    invoke-virtual {v0, p1}, Lcom/inmobi/media/K1;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 29
    invoke-virtual {v0, p1}, Lcom/inmobi/media/K1;->e(Z)V

    :cond_2
    return-void
.end method

.method public final c(Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 5

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onAdLoadSucceeded "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/inmobi/media/Mc;->c(Lcom/inmobi/ads/AdMetaInfo;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Mc;->a(B)V

    .line 4
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "AdManager state - CREATED"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "Ad load successful, providing callback"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->s()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/media/C1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/media/C1$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/C1;Lcom/inmobi/ads/AdMetaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAdShowFailed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->s()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/media/C1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/inmobi/media/C1$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/C1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j()Lcom/inmobi/media/Q0;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shouldUseForegroundUnit "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/C1;->q:Lcom/inmobi/media/x1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v3, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "State - "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/g5;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/C1;->q:Lcom/inmobi/media/x1;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/C1;->r:Lcom/inmobi/media/x1;

    :goto_2
    return-object v0
.end method

.method public final w()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "submitAdLoadCalled "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/C1;->r:Lcom/inmobi/media/x1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->t0()V

    :cond_1
    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerLifeCycleCallbacks "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/C1;->o:Lcom/inmobi/media/x1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/K1;->H0()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/C1;->p:Lcom/inmobi/media/x1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/media/K1;->H0()V

    :cond_2
    return-void
.end method

.method public final y()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v0

    const-string v1, "access$getTAG$p(...)"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadIntoView "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/C1;->r:Lcom/inmobi/media/x1;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/media/Y;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InMobi"

    invoke-virtual {p0, v3, v2}, Lcom/inmobi/media/Mc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    .line 5
    invoke-virtual {p0, v2}, Lcom/inmobi/media/Mc;->a(B)V

    .line 6
    invoke-virtual {p0}, Lcom/inmobi/media/Mc;->p()Lcom/inmobi/media/f5;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/inmobi/media/D1;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v1, "AdManager state - LOADING_INTO_VIEW"

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/g5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/K1;->j0()V

    :cond_2
    return-void

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please make an ad request first in order to start loading the ad."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
