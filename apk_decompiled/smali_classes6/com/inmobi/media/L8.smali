.class public final Lcom/inmobi/media/L8;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field public static final C:Ljava/lang/String; = "L8"


# instance fields
.field public final A:Landroid/media/MediaPlayer$OnErrorListener;

.field public final B:Lcom/inmobi/media/K8;

.field public a:Landroid/net/Uri;

.field public b:Landroid/view/Surface;

.field public c:Lcom/inmobi/media/g8;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Lcom/inmobi/media/H8;

.field public j:Lcom/inmobi/media/G8;

.field public k:Lcom/inmobi/media/F8;

.field public l:Z

.field public m:Lcom/inmobi/media/I8;

.field public n:Lcom/inmobi/media/E8;

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Landroid/os/Handler;

.field public t:Z

.field public final u:Lcom/inmobi/media/F7;

.field public v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field public final w:Lcom/inmobi/media/J8;

.field public final x:Landroid/media/MediaPlayer$OnCompletionListener;

.field public final y:Landroid/media/MediaPlayer$OnInfoListener;

.field public final z:Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x80000000

    .line 122
    iput p1, p0, Lcom/inmobi/media/L8;->h:I

    .line 143
    new-instance p1, Lcom/inmobi/media/F7;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, Lcom/inmobi/media/F7;-><init>(Landroid/content/Context;Lcom/inmobi/media/L8;)V

    iput-object p1, p0, Lcom/inmobi/media/L8;->u:Lcom/inmobi/media/F7;

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 150
    new-instance p1, Lcom/inmobi/media/L8$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/inmobi/media/L8$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/L8;)V

    iput-object p1, p0, Lcom/inmobi/media/L8;->v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 158
    new-instance p1, Lcom/inmobi/media/J8;

    invoke-direct {p1, p0}, Lcom/inmobi/media/J8;-><init>(Lcom/inmobi/media/L8;)V

    iput-object p1, p0, Lcom/inmobi/media/L8;->w:Lcom/inmobi/media/J8;

    .line 219
    new-instance p1, Lcom/inmobi/media/L8$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/inmobi/media/L8$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/L8;)V

    iput-object p1, p0, Lcom/inmobi/media/L8;->x:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 269
    new-instance p1, Lcom/inmobi/media/L8$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/inmobi/media/L8$$ExternalSyntheticLambda2;-><init>(Lcom/inmobi/media/L8;)V

    iput-object p1, p0, Lcom/inmobi/media/L8;->y:Landroid/media/MediaPlayer$OnInfoListener;

    .line 277
    new-instance p1, Lcom/inmobi/media/L8$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/inmobi/media/L8$$ExternalSyntheticLambda3;-><init>(Lcom/inmobi/media/L8;)V

    iput-object p1, p0, Lcom/inmobi/media/L8;->z:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 281
    new-instance p1, Lcom/inmobi/media/L8$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/inmobi/media/L8$$ExternalSyntheticLambda4;-><init>(Lcom/inmobi/media/L8;)V

    iput-object p1, p0, Lcom/inmobi/media/L8;->A:Landroid/media/MediaPlayer$OnErrorListener;

    .line 310
    new-instance p1, Lcom/inmobi/media/K8;

    invoke-direct {p1, p0}, Lcom/inmobi/media/K8;-><init>(Lcom/inmobi/media/L8;)V

    iput-object p1, p0, Lcom/inmobi/media/L8;->B:Lcom/inmobi/media/K8;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/L8;)V
    .locals 15

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lcom/inmobi/media/L8;->a:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    const-string v1, "diskUrl"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 133
    new-array v2, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v2, v8

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 136
    const-string v5, "created_ts DESC "

    const/16 v7, 0xc

    const-string v1, "disk_uri=? "

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 142
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/media/j;

    .line 143
    :goto_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v3, v0, v1

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    if-eqz p0, :cond_2

    .line 146
    iget-object p0, p0, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 147
    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 205
    new-instance v0, Lcom/inmobi/media/j;

    if-nez p0, :cond_1

    .line 207
    const-string p0, ""

    :cond_1
    move-object v4, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v13, 0x0

    move-object v2, v0

    .line 208
    invoke-direct/range {v2 .. v14}, Lcom/inmobi/media/j;-><init>(ILjava/lang/String;Ljava/lang/String;IJJJJ)V

    .line 209
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/k1;->a(Lcom/inmobi/media/j;)V

    :cond_2
    return-void
.end method

.method public static final a(Lcom/inmobi/media/L8;Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    sget-object p1, Lcom/inmobi/media/L8;->C:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 6
    const-string p1, "event"

    invoke-static {p0, p1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p0

    .line 7
    sget-object p1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :goto_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/L8;Landroid/media/MediaPlayer;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput p2, p0, Lcom/inmobi/media/L8;->o:I

    return-void
.end method

.method public static final a(Lcom/inmobi/media/L8;Landroid/media/MediaPlayer;II)Z
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object p1, Lcom/inmobi/media/L8;->C:Ljava/lang/String;

    const-string p3, "TAG"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/inmobi/media/L8;->k:Lcom/inmobi/media/F8;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/inmobi/media/b8;

    .line 14
    iget-object p3, p1, Lcom/inmobi/media/b8;->a:Lcom/inmobi/media/d8;

    .line 15
    iget-object p3, p3, Lcom/inmobi/media/d8;->b:Lcom/inmobi/media/t7;

    .line 16
    iget-boolean v0, p3, Lcom/inmobi/media/t7;->t:Z

    if-nez v0, :cond_0

    .line 17
    instance-of v0, p3, Lcom/inmobi/media/A8;

    if-eqz v0, :cond_0

    .line 19
    :try_start_0
    check-cast p3, Lcom/inmobi/media/A8;

    iget-object v0, p1, Lcom/inmobi/media/b8;->b:Lcom/inmobi/media/C8;

    invoke-virtual {p3, v0, p2}, Lcom/inmobi/media/A8;->a(Lcom/inmobi/media/C8;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 21
    iget-object p1, p1, Lcom/inmobi/media/b8;->a:Lcom/inmobi/media/d8;

    .line 22
    iget-object p3, p1, Lcom/inmobi/media/d8;->f:Lcom/inmobi/media/f5;

    if-eqz p3, :cond_0

    .line 23
    iget-object p1, p1, Lcom/inmobi/media/d8;->g:Ljava/lang/String;

    .line 24
    const-string v0, "access$getTAG$p(...)"

    const-string v1, "SDK encountered unexpected error in handling the onVideoError event; "

    invoke-static {p1, v0, v1}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25
    invoke-static {p2, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 26
    check-cast p3, Lcom/inmobi/media/g5;

    invoke-virtual {p3, p1, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    const/4 p2, -0x1

    if-nez p1, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    iput p2, p1, Lcom/inmobi/media/g8;->a:I

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    .line 29
    :cond_2
    iput p2, p1, Lcom/inmobi/media/g8;->b:I

    .line 30
    :goto_2
    iget-object p1, p0, Lcom/inmobi/media/L8;->n:Lcom/inmobi/media/E8;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/inmobi/media/E8;->c()V

    .line 31
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->b()V

    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Lcom/inmobi/media/L8;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->pause()V

    return-void
.end method

.method public static final b(Lcom/inmobi/media/L8;Landroid/media/MediaPlayer;II)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    if-ne p1, p2, :cond_0

    const/16 p1, 0x8

    .line 3
    invoke-virtual {p0, p1, p1}, Lcom/inmobi/media/L8;->a(II)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final c(Lcom/inmobi/media/L8;Landroid/media/MediaPlayer;II)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/inmobi/media/L8;->e:I

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/inmobi/media/L8;->f:I

    .line 3
    iget p2, p0, Lcom/inmobi/media/L8;->e:I

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private final setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/inmobi/media/L8;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method private final setVideoURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/L8;->a:Landroid/net/Uri;

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->e()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 212
    iget-boolean v0, p0, Lcom/inmobi/media/L8;->t:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/inmobi/media/L8;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/L8;->s:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 216
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/media/L8;->s:Landroid/os/Handler;

    :cond_1
    if-lez p1, :cond_2

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/inmobi/media/L8;->t:Z

    .line 220
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->c()V

    .line 221
    iget-object v0, p0, Lcom/inmobi/media/L8;->s:Landroid/os/Handler;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/inmobi/media/L8$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/inmobi/media/L8$$ExternalSyntheticLambda5;-><init>(Lcom/inmobi/media/L8;)V

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->pause()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(II)V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_6

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/M8;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/inmobi/media/M8;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/M8;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 226
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Lcom/inmobi/media/M8;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/inmobi/media/M8;

    goto :goto_3

    :cond_3
    move-object p1, v2

    :goto_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/inmobi/media/M8;->getPosterImage()Landroid/widget/ImageView;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    goto :goto_4

    .line 228
    :cond_5
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_4
    return-void
.end method

.method public final a()Z
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 211
    iget v0, v0, Lcom/inmobi/media/g8;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final b()V
    .locals 2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/L8;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/inmobi/media/L8$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/inmobi/media/L8$$ExternalSyntheticLambda6;-><init>(Lcom/inmobi/media/L8;)V

    invoke-static {v0}, Lcom/inmobi/media/Kb;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 16
    :catch_0
    sget-object v0, Lcom/inmobi/media/L8;->C:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/L8;->u:Lcom/inmobi/media/F7;

    invoke-virtual {v0}, Lcom/inmobi/media/F7;->a()V

    .line 7
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->h()V

    :cond_0
    return-void
.end method

.method public final canPause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/L8;->p:Z

    return v0
.end method

.method public final canSeekBackward()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/L8;->q:Z

    return v0
.end method

.method public final canSeekForward()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/L8;->r:Z

    return v0
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput v1, v0, Lcom/inmobi/media/g8;->a:I

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iput v1, v0, Lcom/inmobi/media/g8;->b:I

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/L8;->n:Lcom/inmobi/media/E8;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/media/E8;->c()V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/L8;->m:Lcom/inmobi/media/I8;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/inmobi/media/C8;

    if-eqz v1, :cond_7

    .line 8
    check-cast v0, Lcom/inmobi/media/C8;

    .line 9
    iget-object v1, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 10
    const-string v2, "didCompleteQ4"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 11
    iget-object v1, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 12
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/inmobi/media/L8;->i:Lcom/inmobi/media/H8;

    if-eqz v1, :cond_4

    check-cast v1, Lcom/inmobi/media/Z7;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/inmobi/media/Z7;->a(B)V

    .line 14
    :cond_4
    iget-object v1, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 15
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "didSignalVideoCompleted"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    .line 17
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "didCompleteQ1"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v4, "didCompleteQ2"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v4, "didCompleteQ3"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v4, "didPause"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v4, "didStartPlaying"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v4, "didQ4Fire"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_5
    iget-boolean v1, v0, Lcom/inmobi/media/C8;->B:Z

    if-eqz v1, :cond_6

    .line 24
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->start()V

    goto :goto_2

    .line 26
    :cond_6
    iget-object v1, p0, Lcom/inmobi/media/L8;->u:Lcom/inmobi/media/F7;

    invoke-virtual {v1}, Lcom/inmobi/media/F7;->a()V

    .line 27
    iget-object v0, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 28
    const-string v1, "isFullScreen"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/L8;->a(II)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final e()V
    .locals 8

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    .line 1
    iget-object v1, p0, Lcom/inmobi/media/L8;->a:Landroid/net/Uri;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/inmobi/media/L8;->b:Landroid/view/Surface;

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/inmobi/media/C8;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    check-cast v1, Lcom/inmobi/media/C8;

    goto :goto_0

    :cond_1
    move-object v1, v5

    :goto_0
    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 8
    const-string v4, "placementType"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type kotlin.Byte"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-ne v3, v1, :cond_3

    .line 11
    new-instance v1, Lcom/inmobi/media/g8;

    invoke-direct {v1}, Lcom/inmobi/media/g8;-><init>()V

    goto :goto_2

    .line 13
    :cond_3
    sget-object v1, Lcom/inmobi/media/g8;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/inmobi/media/f8;->a()Lcom/inmobi/media/g8;

    move-result-object v1

    .line 14
    :goto_2
    iput-object v1, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    .line 20
    iget v4, p0, Lcom/inmobi/media/L8;->d:I

    if-eqz v4, :cond_4

    .line 21
    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_3

    .line 23
    :cond_4
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/inmobi/media/L8;->d:I

    .line 27
    :goto_3
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/inmobi/media/L8;->a:Landroid/net/Uri;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 29
    :catch_0
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-nez v0, :cond_5

    goto :goto_4

    .line 30
    :cond_5
    iput v2, v0, Lcom/inmobi/media/g8;->a:I

    :goto_4
    if-nez v0, :cond_6

    goto :goto_5

    .line 31
    :cond_6
    iput v2, v0, Lcom/inmobi/media/g8;->b:I

    :goto_5
    return-void

    :cond_7
    :goto_6
    const/4 v1, 0x0

    .line 32
    :try_start_1
    iget-object v4, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v4, :cond_8

    .line 33
    iget-object v5, p0, Lcom/inmobi/media/L8;->w:Lcom/inmobi/media/J8;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 34
    iget-object v5, p0, Lcom/inmobi/media/L8;->v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 35
    iget-object v5, p0, Lcom/inmobi/media/L8;->x:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 36
    iget-object v5, p0, Lcom/inmobi/media/L8;->A:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 37
    iget-object v5, p0, Lcom/inmobi/media/L8;->y:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 38
    iget-object v5, p0, Lcom/inmobi/media/L8;->z:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 39
    iget-object v5, p0, Lcom/inmobi/media/L8;->b:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 42
    :cond_8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    const/4 v6, 0x3

    if-lt v4, v5, :cond_9

    .line 43
    iget-object v4, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v4, :cond_a

    iget-object v5, p0, Lcom/inmobi/media/L8;->u:Lcom/inmobi/media/F7;

    .line 44
    iget-object v5, v5, Lcom/inmobi/media/F7;->e:Landroid/media/AudioAttributes;

    .line 45
    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    goto :goto_7

    .line 47
    :cond_9
    iget-object v4, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 49
    :cond_a
    :goto_7
    iget-object v4, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 50
    :cond_b
    iput v1, p0, Lcom/inmobi/media/L8;->o:I

    .line 51
    iget-object v4, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-nez v4, :cond_c

    goto :goto_8

    .line 52
    :cond_c
    iput v3, v4, Lcom/inmobi/media/g8;->a:I

    :goto_8
    if-eqz v4, :cond_d

    .line 53
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->getMediaController()Lcom/inmobi/media/E8;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 54
    invoke-virtual {v4, p0}, Lcom/inmobi/media/E8;->setMediaPlayer(Lcom/inmobi/media/L8;)V

    .line 55
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->a()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    invoke-virtual {v4}, Lcom/inmobi/media/E8;->d()V

    .line 57
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 58
    instance-of v5, v4, Lcom/inmobi/media/C8;

    if-eqz v5, :cond_10

    .line 60
    move-object v5, v4

    check-cast v5, Lcom/inmobi/media/C8;

    .line 61
    iget-object v5, v5, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 62
    const-string v7, "shouldAutoPlay"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 63
    iget-object v5, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-nez v5, :cond_e

    goto :goto_9

    .line 64
    :cond_e
    iput v6, v5, Lcom/inmobi/media/g8;->b:I

    .line 65
    :cond_f
    :goto_9
    check-cast v4, Lcom/inmobi/media/C8;

    .line 66
    iget-object v4, v4, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 67
    const-string v5, "didCompleteQ4"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x8

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/L8;->a(II)V

    return-void

    .line 72
    :cond_10
    invoke-virtual {p0, v1, v1}, Lcom/inmobi/media/L8;->a(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    .line 74
    iget-object v4, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-nez v4, :cond_11

    goto :goto_a

    .line 75
    :cond_11
    iput v2, v4, Lcom/inmobi/media/g8;->a:I

    :goto_a
    if-nez v4, :cond_12

    goto :goto_b

    .line 76
    :cond_12
    iput v2, v4, Lcom/inmobi/media/g8;->b:I

    .line 77
    :goto_b
    iget-object v2, p0, Lcom/inmobi/media/L8;->A:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-interface {v2, v4, v3, v1}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 78
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 79
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_13
    :goto_c
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->b:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/inmobi/media/L8;->b:Landroid/view/Surface;

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->g()V

    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->m:Lcom/inmobi/media/I8;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/L8;->u:Lcom/inmobi/media/F7;

    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/F7;->a()V

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 5
    iput-object v3, v0, Lcom/inmobi/media/F7;->f:Landroid/media/AudioFocusRequest;

    .line 7
    :cond_1
    iput-object v3, v0, Lcom/inmobi/media/F7;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/inmobi/media/C8;

    if-eqz v1, :cond_2

    .line 10
    move-object v2, v0

    check-cast v2, Lcom/inmobi/media/C8;

    .line 11
    iget-object v2, v2, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 12
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->getCurrentPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "seekPosition"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    iget-object v2, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    const/4 v4, 0x0

    if-nez v2, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    iput v4, v2, Lcom/inmobi/media/g8;->a:I

    :goto_0
    if-nez v2, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    iput v4, v2, Lcom/inmobi/media/g8;->b:I

    :goto_1
    if-eqz v2, :cond_5

    .line 17
    :try_start_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 19
    sget-object v4, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 20
    const-string v4, "event"

    invoke-static {v2, v4}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v2

    .line 21
    sget-object v4, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v4, v2}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    .line 22
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 24
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 25
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 26
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 27
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 28
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    :cond_6
    if-eqz v1, :cond_7

    .line 29
    check-cast v0, Lcom/inmobi/media/C8;

    .line 30
    iget-object v0, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 31
    const-string v1, "placementType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Byte"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_8

    .line 32
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/inmobi/media/g8;->a()V

    goto :goto_3

    .line 35
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/inmobi/media/g8;->a()V

    .line 37
    :cond_8
    :goto_3
    sget-object v0, Lcom/inmobi/media/L8;->C:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object v3, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    return-void
.end method

.method public final getAudioFocusManager$media_release()Lcom/inmobi/media/F7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->u:Lcom/inmobi/media/F7;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/inmobi/media/L8;->d:I

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/inmobi/media/L8;->d:I

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 6
    :cond_0
    iget v0, p0, Lcom/inmobi/media/L8;->d:I

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/inmobi/media/L8;->o:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/media/L8;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/media/L8;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getLastVolume()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/media/L8;->h:I

    return v0
.end method

.method public final getMSizeChangedListener()Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method public final getMediaController()Lcom/inmobi/media/E8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->n:Lcom/inmobi/media/E8;

    return-object v0
.end method

.method public final getMediaPlayer()Lcom/inmobi/media/g8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    return-object v0
.end method

.method public final getPauseScheduled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/L8;->t:Z

    return v0
.end method

.method public final getPlaybackEventListener()Lcom/inmobi/media/G8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->j:Lcom/inmobi/media/G8;

    return-object v0
.end method

.method public final getQuartileCompletedListener()Lcom/inmobi/media/H8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->i:Lcom/inmobi/media/H8;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/inmobi/media/g8;->a:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getVideoVolume()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/inmobi/media/L8;->g:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getVolume()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/inmobi/media/L8;->g:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/inmobi/media/L8;->g:I

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v2, v0, Lcom/inmobi/media/C8;

    if-eqz v2, :cond_1

    .line 6
    check-cast v0, Lcom/inmobi/media/C8;

    .line 7
    iget-object v0, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "currentMediaVolume"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 2
    iput v1, p0, Lcom/inmobi/media/L8;->g:I

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/inmobi/media/C8;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/inmobi/media/C8;

    .line 7
    iget-object v0, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    const/16 v1, 0xf

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "currentMediaVolume"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final isPlaying()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final j()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->a()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/L8;->u:Lcom/inmobi/media/F7;

    invoke-virtual {v0}, Lcom/inmobi/media/F7;->a()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v3, v0, Lcom/inmobi/media/C8;

    if-eqz v3, :cond_2

    .line 7
    check-cast v0, Lcom/inmobi/media/C8;

    .line 8
    iget-object v3, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 9
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "didPause"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v3, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "seekPosition"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 13
    const-string v2, "didCompleteQ4"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-nez v0, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    iput v1, v0, Lcom/inmobi/media/g8;->a:I

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/L8;->j:Lcom/inmobi/media/G8;

    if-eqz v0, :cond_4

    check-cast v0, Lcom/inmobi/media/a8;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/a8;->a(B)V

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-nez v0, :cond_5

    goto :goto_1

    .line 20
    :cond_5
    iput v1, v0, Lcom/inmobi/media/g8;->b:I

    :goto_1
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/L8;->u:Lcom/inmobi/media/F7;

    invoke-virtual {v0}, Lcom/inmobi/media/F7;->c()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->i()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 1
    :try_start_0
    iget v0, p0, Lcom/inmobi/media/L8;->e:I

    invoke-static {v0, p1}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/inmobi/media/L8;->f:I

    invoke-static {v1, p2}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/inmobi/media/L8;->e:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/inmobi/media/L8;->f:I

    if-lez v2, :cond_8

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    .line 12
    iget v0, p0, Lcom/inmobi/media/L8;->e:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/inmobi/media/L8;->f:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_0

    .line 14
    div-int/2addr v3, v0

    goto :goto_4

    :cond_0
    if-le v1, v3, :cond_4

    .line 17
    div-int v0, v1, v2

    goto :goto_2

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    .line 22
    iget v0, p0, Lcom/inmobi/media/L8;->f:I

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/inmobi/media/L8;->e:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_0
    move v0, p1

    goto :goto_5

    :cond_3
    if-ne v1, v2, :cond_6

    .line 30
    iget v1, p0, Lcom/inmobi/media/L8;->e:I

    mul-int/2addr v1, p2

    iget v2, p0, Lcom/inmobi/media/L8;->f:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    :cond_4
    :goto_1
    move v1, p2

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_2
    move v1, p2

    goto :goto_5

    .line 37
    :cond_6
    iget v2, p0, Lcom/inmobi/media/L8;->e:I

    .line 38
    iget v4, p0, Lcom/inmobi/media/L8;->f:I

    if-ne v1, v3, :cond_7

    if-le v4, p2, :cond_7

    mul-int v1, p2, v2

    .line 42
    div-int/2addr v1, v4

    goto :goto_3

    :cond_7
    move v1, v2

    move p2, v4

    :goto_3
    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    mul-int/2addr v4, p1

    .line 47
    div-int v3, v4, v2

    :goto_4
    move v1, v3

    goto :goto_0

    .line 51
    :cond_8
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 53
    :catch_0
    sget-object p1, Lcom/inmobi/media/L8;->C:Ljava/lang/String;

    const-string p2, "TAG"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method public final pause()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->a()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iput v1, v0, Lcom/inmobi/media/g8;->a:I

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/L8;->u:Lcom/inmobi/media/F7;

    invoke-virtual {v0}, Lcom/inmobi/media/F7;->a()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 8
    instance-of v2, v0, Lcom/inmobi/media/C8;

    if-eqz v2, :cond_2

    .line 9
    check-cast v0, Lcom/inmobi/media/C8;

    .line 10
    iget-object v2, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 11
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "didPause"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, v0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 13
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "seekPosition"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/L8;->j:Lcom/inmobi/media/G8;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/inmobi/media/a8;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/inmobi/media/a8;->a(B)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-nez v0, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    iput v1, v0, Lcom/inmobi/media/g8;->b:I

    :goto_1
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/inmobi/media/L8;->t:Z

    return-void
.end method

.method public final seekTo(I)V
    .locals 0

    return-void
.end method

.method public final setIsLockScreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/media/L8;->l:Z

    return-void
.end method

.method public final setLastVolume(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/media/L8;->h:I

    return-void
.end method

.method public final setMSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/L8;->v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public final setMediaController(Lcom/inmobi/media/E8;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/L8;->n:Lcom/inmobi/media/E8;

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->getMediaController()Lcom/inmobi/media/E8;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p0}, Lcom/inmobi/media/E8;->setMediaPlayer(Lcom/inmobi/media/L8;)V

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/inmobi/media/E8;->d()V

    :cond_0
    return-void
.end method

.method public final setMediaErrorListener(Lcom/inmobi/media/F8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/L8;->k:Lcom/inmobi/media/F8;

    return-void
.end method

.method public final setPlaybackEventListener(Lcom/inmobi/media/G8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/L8;->j:Lcom/inmobi/media/G8;

    return-void
.end method

.method public final setQuartileCompletedListener(Lcom/inmobi/media/H8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/L8;->i:Lcom/inmobi/media/H8;

    return-void
.end method

.method public final start()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/PowerManager;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/KeyguardManager;

    .line 3
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->a()Z

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/inmobi/media/C8;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/inmobi/media/C8;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "null cannot be cast to non-null type kotlin.Boolean"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    .line 7
    iget-object v7, v3, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 8
    const-string v8, "shouldAutoPlay"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v6

    :goto_2
    const/16 v8, 0x8

    if-eqz v2, :cond_3

    if-nez v7, :cond_3

    .line 12
    invoke-virtual {p0, v8, v5}, Lcom/inmobi/media/L8;->a(II)V

    :cond_3
    const/4 v9, 0x3

    if-eqz v2, :cond_10

    if-eqz v0, :cond_10

    .line 14
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz v7, :cond_10

    .line 15
    iget-boolean v0, p0, Lcom/inmobi/media/L8;->l:Z

    if-nez v0, :cond_4

    if-nez v1, :cond_10

    :cond_4
    const-string v0, "didCompleteQ4"

    if-eqz v3, :cond_5

    .line 16
    iget-object v1, v3, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 18
    iget-object v1, v3, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 19
    const-string v2, "seekPosition"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v5

    :goto_3
    if-eqz v3, :cond_6

    .line 20
    invoke-virtual {v3}, Lcom/inmobi/media/C8;->c()Z

    move-result v2

    goto :goto_4

    :cond_6
    move v2, v5

    :goto_4
    if-eqz v2, :cond_7

    .line 23
    iget-object v2, p0, Lcom/inmobi/media/L8;->u:Lcom/inmobi/media/F7;

    invoke-virtual {v2}, Lcom/inmobi/media/F7;->c()V

    goto :goto_5

    .line 25
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->c()V

    .line 26
    :goto_5
    invoke-virtual {p0}, Lcom/inmobi/media/L8;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 27
    iget-object v2, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 28
    :cond_8
    iget-object v1, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 29
    :cond_9
    iget-object v1, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-nez v1, :cond_a

    goto :goto_6

    .line 30
    :cond_a
    iput v9, v1, Lcom/inmobi/media/g8;->a:I

    .line 31
    :goto_6
    invoke-virtual {p0, v8, v8}, Lcom/inmobi/media/L8;->a(II)V

    if-eqz v3, :cond_f

    .line 32
    iget-object v1, v3, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 33
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, v3, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 35
    const-string v1, "didPause"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 36
    iget-object v0, p0, Lcom/inmobi/media/L8;->j:Lcom/inmobi/media/G8;

    if-eqz v0, :cond_b

    check-cast v0, Lcom/inmobi/media/a8;

    invoke-virtual {v0, v9}, Lcom/inmobi/media/a8;->a(B)V

    .line 37
    :cond_b
    iget-object v0, v3, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 40
    :cond_c
    iget-object v0, p0, Lcom/inmobi/media/L8;->j:Lcom/inmobi/media/G8;

    if-eqz v0, :cond_d

    check-cast v0, Lcom/inmobi/media/a8;

    invoke-virtual {v0, v6}, Lcom/inmobi/media/a8;->a(B)V

    .line 42
    :cond_d
    :goto_7
    iget-object v0, p0, Lcom/inmobi/media/L8;->m:Lcom/inmobi/media/I8;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    move v5, v6

    :cond_e
    if-eqz v5, :cond_f

    .line 43
    iget-object v0, p0, Lcom/inmobi/media/L8;->m:Lcom/inmobi/media/I8;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 46
    :cond_f
    iget-object v0, p0, Lcom/inmobi/media/L8;->n:Lcom/inmobi/media/E8;

    if-eqz v0, :cond_10

    .line 47
    invoke-virtual {v0}, Lcom/inmobi/media/E8;->d()V

    .line 48
    :cond_10
    iget-object v0, p0, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-nez v0, :cond_11

    goto :goto_8

    .line 49
    :cond_11
    iput v9, v0, Lcom/inmobi/media/g8;->b:I

    :goto_8
    return-void
.end method
