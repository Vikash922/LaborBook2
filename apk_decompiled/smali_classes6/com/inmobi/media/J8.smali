.class public final Lcom/inmobi/media/J8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/L8;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/L8;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    invoke-virtual {v0}, Lcom/inmobi/media/L8;->getMediaPlayer()Lcom/inmobi/media/g8;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    invoke-virtual {v0}, Lcom/inmobi/media/L8;->getMediaPlayer()Lcom/inmobi/media/g8;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 4
    iput v1, v0, Lcom/inmobi/media/g8;->a:I

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/inmobi/media/L8;->r:Z

    .line 7
    iput-boolean v1, v0, Lcom/inmobi/media/L8;->q:Z

    .line 8
    iput-boolean v1, v0, Lcom/inmobi/media/L8;->p:Z

    .line 9
    iget-object v0, v0, Lcom/inmobi/media/L8;->n:Lcom/inmobi/media/E8;

    if-nez v0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    .line 12
    iput v2, v0, Lcom/inmobi/media/L8;->e:I

    .line 13
    iget-object v0, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    .line 14
    iput p1, v0, Lcom/inmobi/media/L8;->f:I

    .line 15
    iget-object p1, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/inmobi/media/C8;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/inmobi/media/C8;

    goto :goto_2

    :cond_3
    move-object p1, v2

    :goto_2
    const-string v0, "didCompleteQ4"

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 16
    iget-object v4, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 17
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 18
    iget-object v4, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    const/16 v5, 0x8

    invoke-virtual {v4, v5, v3}, Lcom/inmobi/media/L8;->a(II)V

    .line 19
    iget-object v4, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 20
    const-string v5, "placementType"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Byte"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-ne v4, v1, :cond_4

    return-void

    .line 27
    :cond_4
    iget-object v1, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    invoke-virtual {v1}, Lcom/inmobi/media/L8;->getPlaybackEventListener()Lcom/inmobi/media/G8;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Lcom/inmobi/media/a8;

    invoke-virtual {v1, v3}, Lcom/inmobi/media/a8;->a(B)V

    :cond_5
    if-eqz p1, :cond_6

    .line 28
    iget-object v1, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    :goto_3
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_4

    :cond_7
    move-object v0, v2

    :goto_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 30
    iget-object v0, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 31
    const-string v1, "seekPosition"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    .line 34
    iget v1, v0, Lcom/inmobi/media/L8;->e:I

    const-string v4, "isFullScreen"

    const/4 v5, 0x3

    if-eqz v1, :cond_e

    .line 35
    iget v1, v0, Lcom/inmobi/media/L8;->f:I

    if-eqz v1, :cond_e

    .line 36
    invoke-virtual {v0}, Lcom/inmobi/media/L8;->getMediaPlayer()Lcom/inmobi/media/g8;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 37
    iget v0, v0, Lcom/inmobi/media/g8;->b:I

    if-ne v5, v0, :cond_c

    if-eqz p1, :cond_9

    .line 38
    iget-object p1, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    if-eqz p1, :cond_9

    .line 39
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    :cond_9
    move-object p1, v2

    :goto_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    move-object v2, p1

    check-cast v2, Ljava/lang/Boolean;

    :cond_a
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 40
    iget-object p1, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->start()V

    .line 42
    :cond_b
    iget-object p1, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    .line 43
    iget-object p1, p1, Lcom/inmobi/media/L8;->n:Lcom/inmobi/media/E8;

    if-eqz p1, :cond_11

    .line 44
    invoke-virtual {p1}, Lcom/inmobi/media/E8;->d()V

    goto :goto_7

    .line 45
    :cond_c
    iget-object p1, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_11

    if-nez v3, :cond_d

    iget-object p1, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->getCurrentPosition()I

    move-result p1

    if-lez p1, :cond_11

    .line 47
    :cond_d
    iget-object p1, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    .line 48
    iget-object p1, p1, Lcom/inmobi/media/L8;->n:Lcom/inmobi/media/E8;

    if-eqz p1, :cond_11

    .line 49
    invoke-virtual {p1}, Lcom/inmobi/media/E8;->d()V

    goto :goto_7

    .line 54
    :cond_e
    invoke-virtual {v0}, Lcom/inmobi/media/L8;->getMediaPlayer()Lcom/inmobi/media/g8;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 55
    iget v0, v0, Lcom/inmobi/media/g8;->b:I

    if-ne v5, v0, :cond_11

    if-eqz p1, :cond_f

    .line 56
    iget-object p1, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    if-eqz p1, :cond_f

    .line 57
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    :cond_f
    move-object p1, v2

    :goto_6
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    move-object v2, p1

    check-cast v2, Ljava/lang/Boolean;

    :cond_10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 58
    iget-object p1, p0, Lcom/inmobi/media/J8;->a:Lcom/inmobi/media/L8;

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->start()V

    :cond_11
    :goto_7
    return-void
.end method
