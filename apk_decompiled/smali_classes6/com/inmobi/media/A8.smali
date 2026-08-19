.class public final Lcom/inmobi/media/A8;
.super Lcom/inmobi/media/t7;
.source "SourceFile"


# instance fields
.field public final U:Ljava/lang/String;

.field public final V:Ljava/lang/String;

.field public final W:Lcom/inmobi/media/f5;

.field public final X:Ljava/lang/String;

.field public final Y:Ljava/lang/String;

.field public Z:Ljava/lang/ref/WeakReference;

.field public final a0:Lcom/inmobi/media/z8;

.field public final b0:Lcom/inmobi/media/y8;


# direct methods
.method public constructor <init>(Landroid/content/Context;BLcom/inmobi/media/P7;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/commons/core/configs/AdConfig;JZLjava/lang/String;Lcom/inmobi/media/Z2;Lcom/inmobi/media/u6;Lcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creativeId"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p13}, Lcom/inmobi/media/t7;-><init>(Landroid/content/Context;BLcom/inmobi/media/P7;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/commons/core/configs/AdConfig;JZLjava/lang/String;Lcom/inmobi/media/Z2;Lcom/inmobi/media/u6;Lcom/inmobi/media/f5;)V

    .line 2
    iput-object p4, p0, Lcom/inmobi/media/A8;->U:Ljava/lang/String;

    .line 7
    iput-object p10, p0, Lcom/inmobi/media/A8;->V:Ljava/lang/String;

    .line 10
    iput-object p13, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    .line 18
    const-string p1, "A8"

    iput-object p1, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    .line 19
    const-string p1, "InMobi"

    iput-object p1, p0, Lcom/inmobi/media/A8;->Y:Ljava/lang/String;

    .line 22
    new-instance p1, Lcom/inmobi/media/z8;

    invoke-direct {p1, p0}, Lcom/inmobi/media/z8;-><init>(Lcom/inmobi/media/A8;)V

    iput-object p1, p0, Lcom/inmobi/media/A8;->a0:Lcom/inmobi/media/z8;

    .line 107
    new-instance p1, Lcom/inmobi/media/y8;

    invoke-direct {p1, p0}, Lcom/inmobi/media/y8;-><init>(Lcom/inmobi/media/A8;)V

    iput-object p1, p0, Lcom/inmobi/media/A8;->b0:Lcom/inmobi/media/y8;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/C8;ZLcom/inmobi/media/A8;Lcom/inmobi/media/L8;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 12
    const-string v2, "visible"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    .line 13
    iget-boolean p1, p2, Lcom/inmobi/media/t7;->u:Z

    if-nez p1, :cond_9

    .line 14
    iget-object p1, p0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastVisibleTimestamp"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->getPauseScheduled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/inmobi/media/L8;->getMediaPlayer()Lcom/inmobi/media/g8;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/inmobi/media/C8;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->k()V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->c()V

    .line 21
    :cond_1
    :goto_0
    iget-object p1, p3, Lcom/inmobi/media/L8;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    :cond_2
    iput-boolean v1, p3, Lcom/inmobi/media/L8;->t:Z

    .line 23
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    iget-byte p1, p2, Lcom/inmobi/media/t7;->a:B

    if-nez p1, :cond_4

    .line 25
    invoke-virtual {p2}, Lcom/inmobi/media/A8;->k()Z

    move-result p1

    if-nez p1, :cond_4

    .line 26
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->getVideoVolume()I

    move-result p1

    .line 27
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->getLastVolume()I

    move-result v2

    if-eq p1, v2, :cond_4

    .line 28
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_4

    if-gtz p1, :cond_3

    move v1, v0

    .line 30
    :cond_3
    invoke-virtual {p2, v1}, Lcom/inmobi/media/A8;->a(Z)V

    .line 31
    invoke-virtual {p3, p1}, Lcom/inmobi/media/L8;->setLastVolume(I)V

    .line 32
    :cond_4
    iget-byte p1, p2, Lcom/inmobi/media/t7;->a:B

    const/4 v1, 0x5

    if-nez p1, :cond_5

    .line 33
    invoke-virtual {p2}, Lcom/inmobi/media/A8;->k()Z

    move-result p1

    if-nez p1, :cond_5

    .line 34
    iget-boolean p1, p0, Lcom/inmobi/media/C8;->B:Z

    if-nez p1, :cond_5

    .line 35
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_5

    .line 36
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->getState()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 37
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->getVideoVolume()I

    move-result p1

    .line 38
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->getLastVolume()I

    move-result v2

    if-eq p1, v2, :cond_5

    if-lez v2, :cond_5

    .line 40
    invoke-virtual {p2, v0}, Lcom/inmobi/media/A8;->a(Z)V

    .line 41
    invoke-virtual {p3, p1}, Lcom/inmobi/media/L8;->setLastVolume(I)V

    .line 42
    :cond_5
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->getState()I

    move-result p1

    if-ne v0, p1, :cond_7

    .line 43
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->getMediaPlayer()Lcom/inmobi/media/g8;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    const/4 p1, 0x3

    .line 44
    iput p1, p0, Lcom/inmobi/media/g8;->b:I

    goto :goto_1

    .line 45
    :cond_7
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->getState()I

    move-result p1

    const/4 p2, 0x2

    if-eq p2, p1, :cond_8

    .line 46
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->getState()I

    move-result p1

    const/4 p2, 0x4

    if-eq p2, p1, :cond_8

    .line 49
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->getState()I

    move-result p1

    if-ne v1, p1, :cond_b

    .line 50
    iget-boolean p0, p0, Lcom/inmobi/media/C8;->B:Z

    if-eqz p0, :cond_b

    .line 51
    :cond_8
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->start()V

    goto :goto_1

    .line 54
    :cond_9
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    iget-byte p1, p2, Lcom/inmobi/media/t7;->a:B

    if-nez p1, :cond_a

    .line 56
    invoke-virtual {p2}, Lcom/inmobi/media/A8;->k()Z

    move-result p1

    if-nez p1, :cond_a

    .line 57
    iget-boolean p1, p2, Lcom/inmobi/media/t7;->u:Z

    if-nez p1, :cond_a

    .line 58
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->getVideoVolume()I

    move-result p1

    .line 59
    invoke-virtual {p3}, Lcom/inmobi/media/L8;->getLastVolume()I

    move-result v1

    if-eq p1, v1, :cond_a

    if-lez v1, :cond_a

    .line 61
    invoke-virtual {p2, v0}, Lcom/inmobi/media/A8;->a(Z)V

    .line 62
    invoke-virtual {p3, p1}, Lcom/inmobi/media/L8;->setLastVolume(I)V

    .line 63
    :cond_a
    iget p0, p0, Lcom/inmobi/media/C8;->E:I

    .line 64
    invoke-virtual {p3, p0}, Lcom/inmobi/media/L8;->a(I)V

    :cond_b
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 3

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/L8;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/C8;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/inmobi/media/C8;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 10
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/inmobi/media/A8$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2, p0, p1}, Lcom/inmobi/media/A8$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/C8;ZLcom/inmobi/media/A8;Lcom/inmobi/media/L8;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/inmobi/media/C8;I)V
    .locals 4

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    .line 84
    const-string v3, "Moat onVideoError + "

    invoke-static {v2, v1, v3, p2}, Lcom/inmobi/media/x8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 694
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/A8;->j(Lcom/inmobi/media/C8;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    .line 698
    const-string v2, "error"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3, v0}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 702
    iget-object p1, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "onVideoError"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz p1, :cond_3

    const/16 p2, 0x11

    .line 704
    invoke-virtual {p1, p2}, Lcom/inmobi/media/md;->a(B)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/inmobi/media/C8;Lcom/inmobi/media/L8;)V
    .locals 6

    .line 710
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    if-nez v0, :cond_b

    .line 711
    iget-object v0, p0, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    .line 712
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 713
    :cond_0
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 714
    const-string v1, "didRequestFullScreen"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-nez v0, :cond_b

    .line 715
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 716
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-virtual {p2}, Lcom/inmobi/media/L8;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "seekPosition"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    invoke-virtual {p2}, Lcom/inmobi/media/L8;->getVolume()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "lastMediaVolume"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    invoke-virtual {p2}, Lcom/inmobi/media/L8;->getMediaPlayer()Lcom/inmobi/media/g8;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 725
    invoke-virtual {p2}, Lcom/inmobi/media/L8;->getMediaPlayer()Lcom/inmobi/media/g8;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 726
    :cond_4
    invoke-virtual {p2}, Lcom/inmobi/media/L8;->getAudioFocusManager$media_release()Lcom/inmobi/media/F7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/F7;->a()V

    .line 733
    :cond_5
    invoke-virtual {p2}, Lcom/inmobi/media/L8;->getMediaPlayer()Lcom/inmobi/media/g8;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x4

    .line 734
    iput v1, v0, Lcom/inmobi/media/g8;->a:I

    .line 735
    :goto_3
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 736
    const-string v1, "isFullScreen"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    iget-object p1, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 739
    invoke-virtual {p2}, Lcom/inmobi/media/L8;->getMediaPlayer()Lcom/inmobi/media/g8;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 740
    invoke-virtual {p1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object p1, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "launchFullscreen"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_8
    invoke-static {p0}, Lcom/inmobi/media/t7;->c(Lcom/inmobi/media/t7;)Lcom/inmobi/media/t7;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_4

    .line 743
    :cond_9
    iget-object p2, p1, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz p2, :cond_a

    .line 744
    invoke-virtual {p2}, Lcom/inmobi/media/O0;->e()V

    .line 745
    :cond_a
    iget-object p2, p0, Lcom/inmobi/media/t7;->M:Lcom/inmobi/media/A;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    new-instance v1, Lcom/inmobi/media/m7;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/media/m7;-><init>(Lcom/inmobi/media/t7;Lcom/inmobi/media/t7;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/inmobi/media/A;->a(ILcom/inmobi/media/E1;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 65
    iget-byte v0, p0, Lcom/inmobi/media/t7;->a:B

    if-nez v0, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/inmobi/media/A8;->k()Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz v0, :cond_3

    .line 68
    iget-object v1, v0, Lcom/inmobi/media/O0;->a:Lcom/inmobi/media/Q0;

    .line 69
    iget-object v1, v1, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_0

    .line 70
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v2

    .line 71
    const-string v3, "<get-TAG>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v3, "onAudioStateChanged"

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v1, v0, Lcom/inmobi/media/O0;->a:Lcom/inmobi/media/Q0;

    invoke-virtual {v1}, Lcom/inmobi/media/Q0;->Z()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, v0, Lcom/inmobi/media/O0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/E0;

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {v1, p1}, Lcom/inmobi/media/E0;->a(Z)V

    goto :goto_0

    .line 79
    :cond_2
    iget-object p1, v0, Lcom/inmobi/media/O0;->a:Lcom/inmobi/media/Q0;

    .line 80
    iget-object p1, p1, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 81
    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "InMobi"

    const-string v1, "Listener was garbage collected.Unable to give callback"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1154
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 1155
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/A8;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/M8;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/inmobi/media/M8;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1156
    invoke-virtual {v0}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/media/L8;->g()V

    .line 1157
    :cond_2
    invoke-super {p0}, Lcom/inmobi/media/t7;->b()V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->r:Z

    if-nez v0, :cond_d

    .line 2
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    if-nez v0, :cond_d

    .line 3
    instance-of v0, p1, Lcom/inmobi/media/L8;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/inmobi/media/t7;->r:Z

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/t7;->h:Lcom/inmobi/media/Z2;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/inmobi/media/Z2;->a()V

    .line 7
    :cond_1
    check-cast p1, Lcom/inmobi/media/L8;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 8
    instance-of v0, p1, Lcom/inmobi/media/C8;

    if-eqz v0, :cond_d

    .line 9
    iget-object v0, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    check-cast p1, Lcom/inmobi/media/C8;

    .line 11
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 12
    const-string v1, "didImpressionFire"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    .line 13
    :cond_3
    iget-object v0, p1, Lcom/inmobi/media/D7;->s:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p0, p1}, Lcom/inmobi/media/A8;->j(Lcom/inmobi/media/C8;)Ljava/util/HashMap;

    move-result-object v2

    .line 568
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v3

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/u8;

    .line 569
    const-string v7, "VideoImpression"

    .line 570
    iget-object v8, v5, Lcom/inmobi/media/u8;->b:Ljava/lang/String;

    .line 571
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 572
    iget-object v4, v5, Lcom/inmobi/media/u8;->d:Ljava/lang/String;

    .line 573
    const-string v7, "http"

    const/4 v8, 0x2

    invoke-static {v4, v7, v6, v8, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 574
    iget-object v4, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    invoke-static {v5, v2, v3, v4}, Lcom/inmobi/media/D7;->a(Lcom/inmobi/media/u8;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 575
    :cond_5
    iget-object v4, v5, Lcom/inmobi/media/u8;->e:Ljava/util/HashMap;

    if-eqz v4, :cond_6

    .line 576
    const-string v5, "referencedEvents"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_6
    move-object v4, v3

    :goto_1
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_7

    check-cast v4, Ljava/util/List;

    goto :goto_2

    :cond_7
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_4

    .line 1123
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1124
    iget-object v7, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    invoke-virtual {p1, v6, v2, v3, v7}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    goto :goto_3

    :cond_8
    const-string v0, "Impression"

    if-eqz v4, :cond_9

    .line 1128
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1129
    :cond_9
    iget-object v4, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    const-string v5, "start"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 1131
    iget-object v3, p0, Lcom/inmobi/media/t7;->O:Lcom/inmobi/media/l7;

    .line 1132
    iget-object v4, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 1133
    :cond_a
    iget-object v2, p0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    .line 1134
    iget-object v2, v2, Lcom/inmobi/media/P7;->e:Lcom/inmobi/media/H7;

    if-eqz v2, :cond_b

    .line 1136
    invoke-virtual {p0, p1}, Lcom/inmobi/media/A8;->j(Lcom/inmobi/media/C8;)Ljava/util/HashMap;

    move-result-object v3

    .line 1137
    iget-object v4, p0, Lcom/inmobi/media/t7;->O:Lcom/inmobi/media/l7;

    .line 1138
    iget-object v5, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    .line 1139
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 1140
    :cond_b
    iget-object p1, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 1141
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    iget-object p1, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz p1, :cond_c

    .line 1143
    invoke-virtual {p1, v6}, Lcom/inmobi/media/md;->a(B)V

    .line 1144
    :cond_c
    iget-object p1, p0, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz p1, :cond_d

    .line 1145
    invoke-virtual {p1}, Lcom/inmobi/media/O0;->f()V

    :cond_d
    :goto_4
    return-void
.end method

.method public final b(Lcom/inmobi/media/C8;)V
    .locals 3

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1158
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 1159
    :cond_0
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 1160
    const-string v1, "didRequestFullScreen"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1161
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 1162
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    iget-object v0, p1, Lcom/inmobi/media/D7;->w:Lcom/inmobi/media/D7;

    if-eqz v0, :cond_2

    .line 1164
    iget-object v0, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 1165
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->a()V

    .line 1167
    iget-object p1, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 1168
    const-string v0, "isFullScreen"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final b(Lcom/inmobi/media/C8;Lcom/inmobi/media/L8;)V
    .locals 2

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1146
    iget-object p1, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "onVideoViewCreated"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :cond_0
    iget-boolean p1, p0, Lcom/inmobi/media/t7;->D:Z

    .line 1148
    invoke-virtual {p2, p1}, Lcom/inmobi/media/L8;->setIsLockScreen(Z)V

    .line 1149
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p2, p1, Lcom/inmobi/media/M8;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/inmobi/media/M8;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1151
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/inmobi/media/A8;->Z:Ljava/lang/ref/WeakReference;

    .line 1152
    invoke-virtual {p1}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->getMediaController()Lcom/inmobi/media/E8;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1153
    invoke-virtual {p1, p0}, Lcom/inmobi/media/E8;->setVideoAd(Lcom/inmobi/media/A8;)V

    :cond_2
    return-void
.end method

.method public final c(Lcom/inmobi/media/C8;)V
    .locals 5

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1666
    iget-object v0, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "Video completed; rewards, if any, will be unlocked and end-card displayed"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    :cond_0
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 1668
    const-string v2, "didSignalVideoCompleted"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1669
    :goto_0
    iget-object v2, p0, Lcom/inmobi/media/t7;->h:Lcom/inmobi/media/Z2;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1670
    iget-object v4, v2, Lcom/inmobi/media/Z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1671
    iget-object v4, v2, Lcom/inmobi/media/Z2;->d:Lcom/inmobi/media/d3;

    .line 1672
    iput v3, v4, Lcom/inmobi/media/d3;->i:I

    .line 1673
    iget-object v2, v2, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1674
    :cond_2
    iget-object v2, p0, Lcom/inmobi/media/t7;->h:Lcom/inmobi/media/Z2;

    .line 1675
    invoke-virtual {v2}, Lcom/inmobi/media/Z2;->b()V

    .line 1677
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1678
    iget-object v0, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "Ignoring callback onAdRewardsUnlocked(), as it is only fired after first time video is played."

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1681
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->q()V

    .line 1682
    iget-object v0, p0, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz v0, :cond_8

    .line 1683
    iget-object v1, v0, Lcom/inmobi/media/O0;->a:Lcom/inmobi/media/Q0;

    .line 1684
    iget-object v1, v1, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_5

    .line 1685
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v2

    .line 1686
    const-string v4, "<get-TAG>(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v4, "onMediaPlaybackComplete"

    invoke-virtual {v1, v2, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    :cond_5
    iget-object v1, v0, Lcom/inmobi/media/O0;->a:Lcom/inmobi/media/Q0;

    invoke-virtual {v1}, Lcom/inmobi/media/Q0;->Z()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 1690
    :cond_6
    iget-object v1, v0, Lcom/inmobi/media/O0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/E0;

    if-eqz v1, :cond_7

    .line 1692
    invoke-virtual {v1}, Lcom/inmobi/media/E0;->f()V

    goto :goto_1

    .line 1694
    :cond_7
    iget-object v0, v0, Lcom/inmobi/media/O0;->a:Lcom/inmobi/media/Q0;

    .line 1695
    iget-object v0, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_8

    .line 1696
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "InMobi"

    const-string v2, "Listener was garbage collected.Unable to give callback"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    :cond_8
    :goto_1
    iget-byte v0, p0, Lcom/inmobi/media/t7;->a:B

    if-ne v3, v0, :cond_9

    .line 1698
    invoke-virtual {p0, p1}, Lcom/inmobi/media/t7;->b(Lcom/inmobi/media/D7;)V

    :cond_9
    return-void
.end method

.method public final c(Lcom/inmobi/media/D7;)V
    .locals 12

    const-string v0, "shouldAutoPlay"

    const-string v1, "SDK encountered unexpected error in handling the onVideoRequestedFullScreen event; "

    const-string v2, "Action 3 not valid for asset of type: "

    const-string v3, "asset"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-byte v3, p1, Lcom/inmobi/media/D7;->k:B

    if-eqz v3, :cond_25

    const-string v4, "VIDEO"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v7, "event"

    const/4 v8, 0x0

    const-string v9, "TAG"

    const-string v10, "Action 2 not valid for asset of type: "

    if-ne v3, v6, :cond_7

    .line 2
    :try_start_0
    iget-byte v0, p0, Lcom/inmobi/media/t7;->a:B

    if-ne v5, v0, :cond_4

    .line 3
    invoke-super {p0, p1}, Lcom/inmobi/media/t7;->c(Lcom/inmobi/media/D7;)V

    .line 5
    iget-object v0, p1, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 6
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v3, p1, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/A8;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/M8;

    if-eqz v1, :cond_2

    move-object v8, v0

    check-cast v8, Lcom/inmobi/media/M8;

    :cond_2
    if-eqz v8, :cond_3

    .line 19
    invoke-virtual {v8}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/L8;->c()V

    .line 20
    invoke-virtual {v8}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/L8;->j()V

    .line 22
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/A8;->r()V

    goto/16 :goto_3

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz v0, :cond_5

    .line 24
    invoke-virtual {v0}, Lcom/inmobi/media/O0;->h()V

    .line 25
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/A8;->r()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 28
    iget-object v1, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    .line 29
    invoke-static {v2, v9, v10}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 30
    iget-object p1, p1, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_6
    sget-object p1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 34
    invoke-static {v0, v7}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 35
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    goto/16 :goto_3

    :cond_7
    const/4 v11, 0x3

    if-ne v3, v11, :cond_11

    .line 37
    :try_start_1
    iget-object v0, p1, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 38
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 39
    iget-object v0, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object p1, p1, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 41
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void

    .line 42
    :cond_9
    iget-object p1, p0, Lcom/inmobi/media/t7;->H:Lcom/inmobi/media/Ya;

    if-eqz p1, :cond_b

    .line 43
    iget-object v0, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_a

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "replayToInterActive"

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_a
    const-string v0, "window.imraid.broadcastEvent(\'replay\');"

    invoke-virtual {p1, v0}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    .line 45
    :cond_b
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->g()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 46
    invoke-static {p1}, Lcom/inmobi/media/t7;->a(Landroid/view/View;)Lcom/inmobi/media/t8;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 47
    invoke-virtual {v0}, Lcom/inmobi/media/t8;->d()V

    .line 48
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_d
    move-object v0, v8

    :goto_0
    if-eqz v0, :cond_e

    .line 49
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    :cond_e
    invoke-virtual {p0}, Lcom/inmobi/media/A8;->getVideoContainerView()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/inmobi/media/M8;

    if-eqz v0, :cond_f

    move-object v8, p1

    check-cast v8, Lcom/inmobi/media/M8;

    :cond_f
    if-eqz v8, :cond_25

    .line 54
    invoke-virtual {v8}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->k()V

    .line 55
    invoke-virtual {v8}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    .line 58
    iget-object v0, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    .line 59
    const-string v2, "Encountered unexpected error in handling replay action on video: "

    invoke-static {v1, v9, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 60
    invoke-static {p1, v2}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 494
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_10
    iget-object v0, p0, Lcom/inmobi/media/A8;->Y:Ljava/lang/String;

    const-string v1, "SDK encountered unexpected error in replaying video"

    invoke-static {v6, v0, v1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 498
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 499
    invoke-static {p1, v7}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 500
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    goto/16 :goto_3

    :cond_11
    if-ne v3, v5, :cond_12

    .line 501
    invoke-super {p0, p1}, Lcom/inmobi/media/t7;->c(Lcom/inmobi/media/D7;)V

    goto/16 :goto_3

    :cond_12
    const/4 v2, 0x4

    if-ne v3, v2, :cond_18

    .line 502
    :try_start_2
    iget-byte p1, p0, Lcom/inmobi/media/t7;->a:B

    if-nez p1, :cond_16

    .line 503
    invoke-virtual {p0}, Lcom/inmobi/media/A8;->getVideoContainerView()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/inmobi/media/M8;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/inmobi/media/M8;

    goto :goto_1

    :cond_13
    move-object p1, v8

    :goto_1
    if-eqz p1, :cond_25

    .line 505
    invoke-virtual {p1}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object p1

    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/inmobi/media/C8;

    if-eqz v2, :cond_14

    move-object v8, v0

    check-cast v8, Lcom/inmobi/media/C8;

    .line 507
    :cond_14
    invoke-virtual {p1}, Lcom/inmobi/media/L8;->getState()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eq v0, v5, :cond_25

    if-eqz v8, :cond_25

    .line 510
    :try_start_3
    invoke-virtual {p0, v8, p1}, Lcom/inmobi/media/A8;->a(Lcom/inmobi/media/C8;Lcom/inmobi/media/L8;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception p1

    .line 513
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_15

    iget-object v2, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_15
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v0, Lcom/inmobi/media/d2;

    invoke-direct {v0, p1}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 518
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    sget-object p1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    goto/16 :goto_3

    .line 597
    :cond_16
    iget-object p1, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Invalid action! Online inline videos can be expanded to fullscreen!"

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception p1

    .line 600
    iget-object v0, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    .line 601
    const-string v2, "Encountered unexpected error in handling fullscreen action on video: "

    invoke-static {v1, v9, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 602
    invoke-static {p1, v2}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 1069
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    :cond_17
    iget-object v0, p0, Lcom/inmobi/media/A8;->Y:Ljava/lang/String;

    const-string v1, "SDK encountered unexpected error in expanding video to fullscreen"

    invoke-static {v6, v0, v1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 1073
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 1074
    invoke-static {p1, v7}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 1075
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    goto/16 :goto_3

    :cond_18
    const/4 v1, 0x5

    if-ne v3, v1, :cond_1d

    .line 1076
    :try_start_5
    invoke-virtual {p0}, Lcom/inmobi/media/A8;->getVideoContainerView()Landroid/view/View;

    move-result-object p1

    instance-of v1, p1, Lcom/inmobi/media/M8;

    if-eqz v1, :cond_19

    check-cast p1, Lcom/inmobi/media/M8;

    goto :goto_2

    :cond_19
    move-object p1, v8

    :goto_2
    if-eqz p1, :cond_25

    .line 1078
    invoke-virtual {p1}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/inmobi/media/C8;

    if-eqz v2, :cond_1a

    move-object v8, v1

    check-cast v8, Lcom/inmobi/media/C8;

    :cond_1a
    if-eqz v8, :cond_1b

    .line 1079
    iget-object v1, v8, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 1080
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    iget-object v1, v8, Lcom/inmobi/media/D7;->w:Lcom/inmobi/media/D7;

    if-eqz v1, :cond_1b

    .line 1082
    iget-object v1, v1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 1083
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    :cond_1b
    invoke-virtual {p1}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->start()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception p1

    .line 1089
    iget-object v0, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    .line 1090
    const-string v2, "Encountered unexpected error in handling play action on video: "

    invoke-static {v1, v9, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1091
    invoke-static {p1, v2}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 1579
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    :cond_1c
    iget-object v0, p0, Lcom/inmobi/media/A8;->Y:Ljava/lang/String;

    const-string v1, "SDK encountered unexpected error in playing video"

    invoke-static {v6, v0, v1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 1583
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 1584
    invoke-static {p1, v7}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 1585
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    goto/16 :goto_3

    .line 1586
    :cond_1d
    :try_start_6
    iget-byte v0, p0, Lcom/inmobi/media/t7;->a:B

    if-ne v5, v0, :cond_22

    .line 1587
    invoke-super {p0, p1}, Lcom/inmobi/media/t7;->c(Lcom/inmobi/media/D7;)V

    .line 1589
    iget-object v0, p1, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 1590
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1591
    iget-object v0, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1592
    iget-object v3, p1, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 1593
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void

    .line 1597
    :cond_1f
    invoke-virtual {p0}, Lcom/inmobi/media/A8;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/M8;

    if-eqz v1, :cond_20

    move-object v8, v0

    check-cast v8, Lcom/inmobi/media/M8;

    :cond_20
    if-eqz v8, :cond_21

    .line 1599
    invoke-virtual {v8}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/L8;->c()V

    .line 1600
    invoke-virtual {v8}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/L8;->j()V

    .line 1602
    :cond_21
    invoke-virtual {p0}, Lcom/inmobi/media/A8;->r()V

    goto :goto_3

    .line 1603
    :cond_22
    iget-object v0, p0, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz v0, :cond_23

    .line 1604
    invoke-virtual {v0}, Lcom/inmobi/media/O0;->h()V

    .line 1605
    :cond_23
    invoke-virtual {p0}, Lcom/inmobi/media/A8;->r()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    .line 1608
    iget-object v1, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_24

    iget-object v2, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    .line 1609
    invoke-static {v2, v9, v10}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1610
    iget-object p1, p1, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 1611
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    :cond_24
    sget-object p1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 1614
    invoke-static {v0, v7}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 1615
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_25
    :goto_3
    return-void
.end method

.method public final d(Lcom/inmobi/media/C8;)V
    .locals 5

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    .line 2
    const-string v3, "Firing Q4 beacons for completion at "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3
    iget v4, p1, Lcom/inmobi/media/C8;->D:I

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 6
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "didQ4Fire"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, p1}, Lcom/inmobi/media/A8;->j(Lcom/inmobi/media/C8;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    .line 10
    const-string v3, "complete"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v4, v2}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 11
    iget-object p1, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz p1, :cond_1

    const/16 v0, 0xc

    .line 12
    invoke-virtual {p1, v0}, Lcom/inmobi/media/md;->a(B)V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "onVideoQuartileEvent(Q4)"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final e(Lcom/inmobi/media/C8;)V
    .locals 4

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lastMediaVolume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1}, Lcom/inmobi/media/A8;->j(Lcom/inmobi/media/C8;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    .line 7
    const-string v2, "mute"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 11
    iget-object p1, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "onVideoMuted"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz p1, :cond_2

    const/16 v0, 0xd

    .line 13
    invoke-virtual {p1, v0}, Lcom/inmobi/media/md;->a(B)V

    :cond_2
    return-void
.end method

.method public final f(Lcom/inmobi/media/C8;)V
    .locals 4

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->g()Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/inmobi/media/t7;->a(Landroid/view/View;)Lcom/inmobi/media/t8;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/inmobi/media/t8;->b()V

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/A8;->j(Lcom/inmobi/media/C8;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    .line 6
    const-string v2, "pause"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 10
    iget-object p1, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "onVideoPaused"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz p1, :cond_3

    const/4 v0, 0x7

    .line 12
    invoke-virtual {p1, v0}, Lcom/inmobi/media/md;->a(B)V

    :cond_3
    return-void
.end method

.method public final g(Lcom/inmobi/media/C8;)V
    .locals 7

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "onVideoPlayed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_1
    iget-byte v0, p0, Lcom/inmobi/media/t7;->a:B

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 4
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 5
    const-string v2, "currentMediaVolume"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v3

    .line 6
    :goto_1
    iget-object v4, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 7
    const-string v5, "lastMediaVolume"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_2

    :cond_4
    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_3

    :cond_5
    move v4, v3

    :goto_3
    if-lez v0, :cond_6

    if-nez v4, :cond_6

    .line 10
    invoke-virtual {p0, p1}, Lcom/inmobi/media/A8;->i(Lcom/inmobi/media/C8;)V

    .line 11
    :cond_6
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_7

    check-cast v0, Ljava/lang/Integer;

    goto :goto_4

    :cond_7
    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    :cond_8
    move v0, v3

    .line 13
    :goto_5
    iget-object v2, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 14
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_9

    check-cast v2, Ljava/lang/Integer;

    goto :goto_6

    :cond_9
    move-object v2, v1

    :goto_6
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_a
    if-nez v0, :cond_b

    if-lez v3, :cond_b

    .line 16
    invoke-virtual {p0, p1}, Lcom/inmobi/media/A8;->e(Lcom/inmobi/media/C8;)V

    .line 17
    :cond_b
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 18
    const-string v2, "didStartPlaying"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    :cond_c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 19
    iget-object p1, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/inmobi/media/A8;->getViewableAd()Lcom/inmobi/media/md;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/inmobi/media/md;->a(B)V

    :cond_d
    return-void
.end method

.method public final getCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/A8;->V:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullScreenEventsListener()Lcom/inmobi/media/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/A8;->a0:Lcom/inmobi/media/z8;

    return-object v0
.end method

.method public final getImpressionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/A8;->U:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoContainerView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/A8;->Z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getViewableAd()Lcom/inmobi/media/md;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->j()Landroid/content/Context;

    move-result-object v7

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-nez v0, :cond_d

    if-eqz v7, :cond_d

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    const-string v8, "TAG"

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "fireLoadedAndServedBeacons"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/P7;->e:Lcom/inmobi/media/H7;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/inmobi/media/t7;->a(BLjava/util/Map;)V

    const/4 v1, 0x2

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/inmobi/media/t7;->a(BLjava/util/Map;)V

    .line 9
    :cond_1
    new-instance v0, Lcom/inmobi/media/s5;

    new-instance v1, Lcom/inmobi/media/pd;

    iget-object v2, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    invoke-direct {v1, p0, v2}, Lcom/inmobi/media/pd;-><init>(Lcom/inmobi/media/A8;Lcom/inmobi/media/f5;)V

    iget-object v2, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    invoke-direct {v0, p0, v1, v2}, Lcom/inmobi/media/s5;-><init>(Lcom/inmobi/media/A8;Lcom/inmobi/media/pd;Lcom/inmobi/media/f5;)V

    .line 10
    iput-object v0, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    .line 11
    iget-object v0, p0, Lcom/inmobi/media/t7;->d:Ljava/util/Set;

    if-eqz v0, :cond_d

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/Hc;

    .line 13
    :try_start_0
    iget-byte v1, v0, Lcom/inmobi/media/Hc;->a:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 14
    iget-object v1, v0, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    const-string v2, "omidAdSession"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/inmobi/media/z9;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    check-cast v1, Lcom/inmobi/media/z9;

    move-object v4, v1

    goto :goto_1

    :cond_3
    move-object v4, v3

    .line 15
    :goto_1
    iget-object v1, v0, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    const-string v2, "videoAutoPlay"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v2

    .line 17
    :goto_3
    iget-object v5, v0, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    const-string v6, "videoSkippable"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_6

    check-cast v5, Ljava/lang/Boolean;

    goto :goto_4

    :cond_6
    move-object v5, v3

    :goto_4
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_5

    :cond_7
    move v5, v2

    .line 19
    :goto_5
    iget-object v0, v0, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    const-string v6, "videoSkipOffset"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v6, v0, Ljava/lang/Integer;

    if-eqz v6, :cond_8

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_9
    if-eqz v5, :cond_a

    int-to-float v0, v2

    .line 21
    sget-object v2, Lcom/iab/omid/library/inmobi/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/inmobi/adsession/media/Position;

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/inmobi/adsession/media/VastProperties;->createVastPropertiesForSkippableMedia(FZLcom/iab/omid/library/inmobi/adsession/media/Position;)Lcom/iab/omid/library/inmobi/adsession/media/VastProperties;

    move-result-object v0

    goto :goto_6

    .line 23
    :cond_a
    sget-object v0, Lcom/iab/omid/library/inmobi/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/inmobi/adsession/media/Position;

    invoke-static {v1, v0}, Lcom/iab/omid/library/inmobi/adsession/media/VastProperties;->createVastPropertiesForNonSkippableMedia(ZLcom/iab/omid/library/inmobi/adsession/media/Position;)Lcom/iab/omid/library/inmobi/adsession/media/VastProperties;

    move-result-object v0

    :goto_6
    move-object v5, v0

    .line 24
    iget-object v2, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz v4, :cond_b

    if-eqz v2, :cond_b

    .line 25
    new-instance v10, Lcom/inmobi/media/F9;

    .line 26
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    move-object v0, v10

    move-object v1, v7

    move-object v3, p0

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/inmobi/media/F9;-><init>(Landroid/content/Context;Lcom/inmobi/media/ld;Lcom/inmobi/media/A8;Lcom/inmobi/media/z9;Lcom/iab/omid/library/inmobi/adsession/media/VastProperties;Lcom/inmobi/media/f5;)V

    .line 28
    iput-object v10, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    goto/16 :goto_0

    .line 29
    :cond_b
    iget-object v0, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Did not find a OMID video ad session; the OMID decorator will not be applied."

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 34
    iget-object v1, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    .line 35
    const-string v3, "Exception occurred while creating the video viewable ad : "

    invoke-static {v2, v8, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 36
    invoke-static {v0, v3}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 399
    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_c
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 401
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 402
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    goto/16 :goto_0

    .line 403
    :cond_d
    iget-object v0, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    return-object v0
.end method

.method public final h(Lcom/inmobi/media/C8;)V
    .locals 4

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->g()Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/inmobi/media/t7;->a(Landroid/view/View;)Lcom/inmobi/media/t8;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/inmobi/media/t8;->c()V

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/A8;->j(Lcom/inmobi/media/C8;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    .line 6
    const-string v2, "resume"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 10
    iget-object p1, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "onVideoResumed"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    .line 12
    invoke-virtual {p1, v0}, Lcom/inmobi/media/md;->a(B)V

    :cond_3
    return-void
.end method

.method public final i()Lcom/inmobi/media/rd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/A8;->b0:Lcom/inmobi/media/y8;

    return-object v0
.end method

.method public final i(Lcom/inmobi/media/C8;)V
    .locals 4

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    const/16 v1, 0xf

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lastMediaVolume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lcom/inmobi/media/A8;->j(Lcom/inmobi/media/C8;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    .line 8
    const-string v2, "unmute"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 12
    iget-object p1, p0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "onVideoUnMuted"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz p1, :cond_2

    const/16 v0, 0xe

    .line 14
    invoke-virtual {p1, v0}, Lcom/inmobi/media/md;->a(B)V

    :cond_2
    return-void
.end method

.method public final j(Lcom/inmobi/media/C8;)Ljava/util/HashMap;
    .locals 13

    .line 1
    iget-object v0, p1, Lcom/inmobi/media/D7;->r:Lcom/inmobi/media/H7;

    .line 2
    instance-of v1, v0, Lcom/inmobi/media/H7;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 3
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/inmobi/media/A8;->Z:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    instance-of v4, v3, Lcom/inmobi/media/M8;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/inmobi/media/M8;

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    const/16 v4, 0x3e8

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v3}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {v3}, Lcom/inmobi/media/L8;->getDuration()I

    move-result v3

    int-to-double v5, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v5, v7

    int-to-double v7, v4

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "$MD"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 11
    :cond_3
    const-string v3, "[ERRORCODE]"

    const-string v5, "405"

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_3
    const v8, 0x7fffffff

    if-nez v7, :cond_4

    .line 17
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v7

    and-int/2addr v7, v8

    rem-int/lit8 v7, v7, 0xa

    goto :goto_3

    .line 19
    :cond_4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    :goto_4
    const/16 v9, 0x8

    if-ge v7, v9, :cond_5

    .line 21
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v9

    and-int/2addr v9, v8

    rem-int/lit8 v9, v9, 0xa

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 23
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "toString(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    const-string v5, "[CACHEBUSTING]"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p1}, Lcom/inmobi/media/C8;->d()Lcom/inmobi/media/kd;

    move-result-object v3

    if-eqz v3, :cond_6

    check-cast v3, Lcom/inmobi/media/jd;

    invoke-virtual {v3}, Lcom/inmobi/media/jd;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 26
    const-string v5, "[ASSETURI]"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 28
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v5, "$TS"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p1, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 30
    const-string v3, "seekPosition"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_7

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 33
    :cond_8
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 34
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v6

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 35
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v7

    .line 36
    sget-object v9, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 37
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 39
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    .line 40
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 41
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 43
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v9

    int-to-long v11, v4

    mul-long/2addr v9, v11

    sub-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v3, v7, v8, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x4

    .line 44
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02d:%02d:%02d.%03d"

    invoke-static {p1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "format(locale, format, *args)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const-string v2, "[CONTENTPLAYHEAD]"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 49
    iget-wide v2, v0, Lcom/inmobi/media/H7;->y:J

    .line 50
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "$STS"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 51
    :cond_9
    iget-object p1, p0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    .line 52
    iget-object p1, p1, Lcom/inmobi/media/P7;->t:Ljava/util/Map;

    if-nez p1, :cond_a

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 53
    :cond_a
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v1
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/inmobi/media/t7;->a:B

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/t7;->l()V

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/A8;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/M8;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/inmobi/media/M8;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object v0

    .line 5
    iget-byte v1, p0, Lcom/inmobi/media/t7;->a:B

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/inmobi/media/A8;->k()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/inmobi/media/L8;->getVideoVolume()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, -0x2

    .line 9
    invoke-virtual {v0, v1}, Lcom/inmobi/media/L8;->setLastVolume(I)V

    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v1}, Lcom/inmobi/media/A8;->a(Z)V

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/L8;->pause()V

    :cond_2
    return-void
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->A:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t7;->h:Lcom/inmobi/media/Z2;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcom/inmobi/media/Z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/inmobi/media/Z2;->d:Lcom/inmobi/media/d3;

    const/4 v2, 0x1

    .line 4
    iput v2, v1, Lcom/inmobi/media/d3;->h:I

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/t7;->h:Lcom/inmobi/media/Z2;

    .line 7
    invoke-virtual {v0}, Lcom/inmobi/media/Z2;->b()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz v0, :cond_2

    const/16 v1, 0xf

    .line 9
    invoke-virtual {v0, v1}, Lcom/inmobi/media/md;->a(B)V

    :cond_2
    return-void
.end method
