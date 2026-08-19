.class public final Lcom/inmobi/media/C7;
.super Lcom/inmobi/media/Q0;
.source "SourceFile"


# static fields
.field public static final synthetic P:I


# instance fields
.field public M:Ljava/lang/ref/WeakReference;

.field public N:Z

.field public O:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/Y;Lcom/inmobi/media/v8;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/media/Q0;-><init>(Landroid/content/Context;Lcom/inmobi/media/Y;Lcom/inmobi/media/E0;)V

    .line 16
    const-string v0, "C7"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inmobi/media/Y;->l()J

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/Q0;->a(Landroid/content/Context;Lcom/inmobi/media/Y;Lcom/inmobi/media/E0;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/C7;Lcom/inmobi/media/md;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_0

    .line 61
    const-string v0, "TAG"

    const-string v1, "C7"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/inmobi/media/g5;

    const-string v0, "start tracking for impression"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x0

    .line 62
    invoke-virtual {p1, p0}, Lcom/inmobi/media/md;->a(Ljava/util/HashMap;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final D0()V
    .locals 5

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/inmobi/media/Q0;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_0

    .line 3
    const-string v2, "TAG"

    const-string v3, "SDK encountered unexpected error in destroying native ad unit; "

    const-string v4, "C7"

    invoke-static {v4, v2, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4
    invoke-static {v0, v2}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 295
    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v4, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 297
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 298
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :goto_0
    return-void
.end method

.method public final E0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "C7"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "renderAdPostInternetCheck"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->k0()V

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->o0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "render ad is blocked"

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->s()Lcom/inmobi/media/S0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/inmobi/media/S0;->g:J

    .line 12
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->d0()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    iget-object v3, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_3

    .line 14
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v1, "Exception while loading ad."

    invoke-virtual {v3, v2, v1, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 16
    :cond_3
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x1

    const/16 v2, 0x856

    .line 17
    invoke-virtual {p0, v0, v1, v2}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    :goto_0
    return-void
.end method

.method public final J()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 8

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "C7"

    if-eqz v0, :cond_0

    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "getAdView"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_d

    .line 11
    sget-object v0, Lcom/inmobi/media/t4;->a:Lcom/inmobi/media/t4;

    invoke-virtual {v0}, Lcom/inmobi/media/t4;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/inmobi/media/C7;->D0()V

    .line 13
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    .line 14
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "dropping because of GDPR"

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v4

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->W()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 19
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "Ad has expired."

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/C7;->D0()V

    return-object v4

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v3, 0x4

    const/4 v5, 0x1

    if-ne v0, v3, :cond_5

    goto :goto_0

    .line 22
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_9

    .line 23
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string p2, "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling getPrimaryView()."

    if-eqz p1, :cond_6

    .line 24
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_6
    const-string p1, "InMobi"

    invoke-static {v5, p1, p2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_7

    .line 31
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "Ad Load is not complete"

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_7
    iget-object p1, p0, Lcom/inmobi/media/C7;->M:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_8

    .line 34
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_8

    .line 36
    new-instance p2, Landroid/view/View;

    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2

    :cond_8
    return-object v4

    .line 45
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->G()Lcom/inmobi/media/t7;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 47
    iget-boolean v2, p0, Lcom/inmobi/media/C7;->N:Z

    .line 48
    iget-object v3, v0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_a

    iget-object v6, v0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "showOnLockScreen - "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v6, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_a
    iput-boolean v2, v0, Lcom/inmobi/media/t7;->D:Z

    .line 50
    iput p3, v0, Lcom/inmobi/media/t7;->B:I

    .line 51
    invoke-virtual {v0}, Lcom/inmobi/media/t7;->getViewableAd()Lcom/inmobi/media/md;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 52
    invoke-virtual {p3, p1, p2, v5}, Lcom/inmobi/media/md;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    .line 53
    :cond_b
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/inmobi/media/C7;->M:Ljava/lang/ref/WeakReference;

    .line 54
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->D()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_c

    new-instance p2, Lcom/inmobi/media/C7$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/inmobi/media/C7$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/C7;Lcom/inmobi/media/md;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-object v4

    .line 55
    :cond_d
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_e

    .line 56
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "getPrimaryView called on background thread"

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_e
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object p2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->CALLED_FROM_WRONG_THREAD:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 p2, 0x0

    const/16 p3, 0x866

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    return-object v4
.end method

.method public final a(ILcom/inmobi/media/Ya;)V
    .locals 0

    .line 1
    const-string p1, "renderView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/inmobi/media/Q0;->a(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 4
    const-string v1, "TAG"

    const-string v2, "C7"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "setContainerContext"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->k()Lcom/inmobi/media/x;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/inmobi/media/t7;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/inmobi/media/t7;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/t7;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/inmobi/media/E0;)V
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "C7"

    if-eqz v0, :cond_0

    .line 84
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "handleAdScreenDismissed"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-ne v0, v3, :cond_3

    .line 86
    iget v0, p0, Lcom/inmobi/media/C7;->O:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 87
    iput v0, p0, Lcom/inmobi/media/C7;->O:I

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    .line 89
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "AdUnit "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " state - READY"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_2
    invoke-virtual {p0, v4}, Lcom/inmobi/media/Q0;->d(B)V

    .line 91
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_4

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Successfully dismissed fullscreen for placement id: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v5, "InMobi"

    invoke-virtual {v0, v5, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_4
    iget v0, p0, Lcom/inmobi/media/C7;->O:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    if-ne v0, v4, :cond_8

    if-eqz p1, :cond_6

    .line 98
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_5

    .line 99
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "callback - onAdDismissed"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_5
    invoke-virtual {p1}, Lcom/inmobi/media/E0;->b()V

    goto :goto_1

    .line 101
    :cond_6
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_7

    .line 102
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Listener was garbage collected. Unable to give callback"

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_8

    .line 105
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1}, Lcom/inmobi/media/g5;->a()V

    :cond_8
    return-void
.end method

.method public final a(Lcom/inmobi/media/Y;Z)V
    .locals 4

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "C7"

    if-eqz v0, :cond_0

    .line 107
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "handleAssetAvailabilityChanged"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Y;Z)V

    const/4 v0, 0x2

    if-nez p2, :cond_3

    .line 110
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    const/4 p2, 0x4

    if-ne p2, p1, :cond_5

    :cond_1
    const/4 p1, 0x0

    .line 111
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->d(B)V

    .line 112
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    .line 113
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "AdUnit "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " state - CREATED"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 116
    new-instance p2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_NO_LONGER_AVAILABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p2, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 117
    invoke-virtual {p1, p0, p2}, Lcom/inmobi/media/E0;->a(Lcom/inmobi/media/Q0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    if-ne v0, p1, :cond_5

    .line 123
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 125
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->t()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 126
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->a0()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 127
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->c(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->f()V

    goto :goto_0

    .line 130
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/C7;->r0()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a(Lcom/inmobi/media/h;ZS)V
    .locals 5

    const-string v0, "Exception while onVastProcessCompleted : "

    const-string v1, "ad"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v2, "TAG"

    const-string v3, "C7"

    if-eqz v1, :cond_0

    .line 142
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v4, "onVastProcessCompleted"

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 143
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    .line 144
    const-string p2, "VAST processing failed - "

    invoke-static {v3, v2, p2, p3}, Lcom/inmobi/media/x8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 371
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v3, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_1
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object p2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 374
    invoke-virtual {p0, p1, v1, p3}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    goto/16 :goto_3

    .line 382
    :cond_2
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/h;ZS)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 383
    :try_start_1
    iget-object p2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_3

    .line 384
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v3, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->m()Lcom/inmobi/media/h;

    move-result-object p1

    if-nez p1, :cond_5

    .line 391
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    .line 392
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "current ad is null. failing"

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v3, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_4
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object p2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 p2, 0x37

    .line 395
    invoke-virtual {p0, p1, v1, p2}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    return-void

    .line 402
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->T()B

    move-result p2

    if-nez p2, :cond_7

    .line 403
    invoke-virtual {p1}, Lcom/inmobi/media/h;->G()Z

    move-result p2

    if-nez p2, :cond_9

    .line 404
    iget-object p2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_6

    .line 405
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "start OMID session for HTML ad"

    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v3, p3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 p2, 0x0

    .line 406
    invoke-virtual {p0, v1, p2}, Lcom/inmobi/media/Q0;->a(ZLcom/inmobi/media/Ya;)V

    goto :goto_1

    .line 407
    :cond_7
    iget-object p2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_8

    .line 408
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "start OMID session for current AD"

    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v3, p3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_8
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/h;)V

    .line 411
    :cond_9
    :goto_1
    invoke-virtual {p1}, Lcom/inmobi/media/h;->G()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 412
    invoke-virtual {p0, v1}, Lcom/inmobi/media/Q0;->b(Z)V

    .line 413
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_a

    .line 414
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "handleInterActive"

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v3, p2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_a
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->V()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 416
    :goto_2
    iget-object p2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_b

    .line 417
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/g5;

    const-string p3, "Exception while loading ad."

    invoke-virtual {p2, v3, p3, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 419
    :cond_b
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object p2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 p2, 0xd

    .line 420
    invoke-virtual {p0, p1, v1, p2}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    :cond_c
    :goto_3
    return-void
.end method

.method public final a(Lcom/inmobi/media/x0;)V
    .locals 4

    const-string v0, "adSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "C7"

    if-eqz v0, :cond_0

    .line 64
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "handleAdFetchSuccessful"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 66
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->e(Lcom/inmobi/media/x0;)V

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->E()Ljava/lang/String;

    move-result-object v0

    const-string v3, "html"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->E()Ljava/lang/String;

    move-result-object v0

    const-string v3, "htmlUrl"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->E()Ljava/lang/String;

    move-result-object v0

    const-string v3, "unknown"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    invoke-super {p0, p1}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/x0;)V

    goto :goto_1

    .line 78
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object p1

    .line 79
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v3, 0x39

    .line 80
    invoke-virtual {p0, p1, v0, v3}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Y;Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    .line 81
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    .line 82
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "invalid markup. fetch failed"

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(ZLcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 4

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "C7"

    if-eqz v0, :cond_0

    .line 132
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "onDidParseAfterFetch"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/Q0;->a(ZLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 134
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 136
    iget-object p2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_1

    .line 137
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/g5;

    const-string v0, "callback - onFetchSuccess"

    invoke-virtual {p2, v2, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->e(Lcom/inmobi/media/E0;)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 140
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "invalid state - ignore parse callback"

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/inmobi/media/E0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "C7"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "handleAdScreenDisplayed"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x6

    if-ne v0, v3, :cond_2

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "AdUnit "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " state change - RENDERED"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {p0, v4}, Lcom/inmobi/media/Q0;->d(B)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    if-ne v0, v4, :cond_3

    .line 8
    iget v0, p0, Lcom/inmobi/media/C7;->O:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/media/C7;->O:I

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_4

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Successfully displayed fullscreen for placement id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v4, "InMobi"

    invoke-virtual {v0, v4, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_4
    iget v0, p0, Lcom/inmobi/media/C7;->O:I

    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_5

    .line 17
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "callback - onAdDisplayed"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_5
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->d(Lcom/inmobi/media/E0;)V

    goto :goto_1

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_7

    .line 20
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "listener is null. cannot give AdDisplayed callback"

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final c0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Z()Z

    move-result v0

    const-string v1, "TAG"

    const-string v2, "C7"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "Ad unit is already destroyed! Returning ..."

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->f0()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    iget-object v3, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_2

    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v1, "Some of the dependency libraries for InMobiNative not found"

    invoke-virtual {v3, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_f

    .line 10
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->MISSING_REQUIRED_DEPENDENCIES:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 11
    invoke-virtual {v0, p0, v1}, Lcom/inmobi/media/E0;->a(Lcom/inmobi/media/Q0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto/16 :goto_1

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v3

    const/4 v4, 0x1

    if-eq v4, v3, :cond_e

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v3

    const/4 v4, 0x2

    if-ne v4, v3, :cond_4

    goto/16 :goto_0

    .line 18
    :cond_4
    iget-object v3, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_5

    .line 19
    const-string v4, "Fetching a Native ad for placement id: "

    invoke-static {v2, v1, v4}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 20
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v2, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v3

    const/4 v4, 0x4

    if-ne v4, v3, :cond_d

    .line 22
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->W()Z

    move-result v3

    if-nez v3, :cond_b

    .line 23
    iget-object v3, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_6

    .line 24
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v4, "An ad is ready with the ad unit. Signaling ad load success ..."

    invoke-virtual {v3, v2, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_f

    .line 27
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->t()Landroid/content/Context;

    move-result-object v3

    .line 28
    iget-object v4, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v4, :cond_7

    .line 29
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/inmobi/media/g5;

    const-string v5, "setContainerContext"

    invoke-virtual {v4, v2, v5}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->k()Lcom/inmobi/media/x;

    move-result-object v4

    .line 31
    instance-of v5, v4, Lcom/inmobi/media/t7;

    if-eqz v5, :cond_8

    .line 32
    check-cast v4, Lcom/inmobi/media/t7;

    invoke-virtual {v4, v3}, Lcom/inmobi/media/t7;->a(Landroid/content/Context;)V

    .line 33
    :cond_8
    iget-object v3, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_9

    .line 34
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v4, "callback - onFetchSuccess"

    invoke-virtual {v3, v2, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_9
    iget-object v3, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_a

    .line 36
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v1, "callback - onLoadSuccess"

    invoke-virtual {v3, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_a
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->e(Lcom/inmobi/media/E0;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->f(Lcom/inmobi/media/E0;)V

    goto :goto_1

    .line 39
    :cond_b
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_c

    .line 40
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "ad is expired - destroy"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_c
    invoke-virtual {p0}, Lcom/inmobi/media/C7;->D0()V

    .line 44
    :cond_d
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->e0()V

    .line 45
    invoke-super {p0}, Lcom/inmobi/media/Q0;->c0()V

    goto :goto_1

    .line 46
    :cond_e
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_f

    .line 47
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "An ad load is already in progress"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_1
    return-void
.end method

.method public final j0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->p0()Z

    move-result v0

    const-string v1, "TAG"

    const-string v2, "C7"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "renderAd without internet check"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/C7;->E0()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "renderAd"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    new-instance v0, Lcom/inmobi/media/A7;

    invoke-direct {v0, p0}, Lcom/inmobi/media/A7;-><init>(Lcom/inmobi/media/C7;)V

    new-instance v1, Lcom/inmobi/media/B7;

    invoke-direct {v1, p0}, Lcom/inmobi/media/B7;-><init>(Lcom/inmobi/media/C7;)V

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/Q0;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method public final o()Ljava/util/HashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/inmobi/media/N3;->d()Lcom/inmobi/media/O3;

    move-result-object v1

    .line 4
    iget v1, v1, Lcom/inmobi/media/O3;->a:I

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "a-parentViewWidth"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string v1, "a-productVersion"

    const-string v2, "NS-1.0.0-20160411"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v1, "trackerType"

    const-string v2, "url_ping"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "native"

    return-object v0
.end method

.method public final r0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    const-string v1, "TAG"

    const-string v2, "C7"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "signalSuccess"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->v()Lcom/inmobi/media/A;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Lcom/inmobi/media/e8;

    invoke-direct {v2, p0}, Lcom/inmobi/media/e8;-><init>(Lcom/inmobi/media/C7;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/inmobi/media/A;->a(ILcom/inmobi/media/E1;)V

    return-void
.end method
