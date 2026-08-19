.class public final Lcom/inmobi/media/K8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/L8;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/L8;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/K8;->a:Lcom/inmobi/media/L8;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p2, "texture"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/inmobi/media/K8;->a:Lcom/inmobi/media/L8;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2
    iput-object p3, p2, Lcom/inmobi/media/L8;->b:Landroid/view/Surface;

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/K8;->a:Lcom/inmobi/media/L8;

    .line 4
    invoke-virtual {p1}, Lcom/inmobi/media/L8;->e()V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string v0, "texture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/K8;->a:Lcom/inmobi/media/L8;

    .line 2
    iget-object p1, p1, Lcom/inmobi/media/L8;->b:Landroid/view/Surface;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/K8;->a:Lcom/inmobi/media/L8;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Lcom/inmobi/media/L8;->b:Landroid/view/Surface;

    .line 6
    iget-object p1, p1, Lcom/inmobi/media/L8;->n:Lcom/inmobi/media/E8;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/inmobi/media/E8;->c()V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/K8;->a:Lcom/inmobi/media/L8;

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->g()V

    const/4 p1, 0x1

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/K8;->a:Lcom/inmobi/media/L8;

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->getMediaPlayer()Lcom/inmobi/media/g8;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget p1, p1, Lcom/inmobi/media/g8;->b:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/K8;->a:Lcom/inmobi/media/L8;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of p2, p1, Lcom/inmobi/media/C8;

    if-eqz p2, :cond_2

    .line 5
    check-cast p1, Lcom/inmobi/media/C8;

    .line 6
    iget-object p1, p1, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 7
    const-string p2, "seekPosition"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p2, p0, Lcom/inmobi/media/K8;->a:Lcom/inmobi/media/L8;

    .line 10
    invoke-virtual {p2}, Lcom/inmobi/media/L8;->a()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 11
    iget-object p2, p2, Lcom/inmobi/media/L8;->c:Lcom/inmobi/media/g8;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/K8;->a:Lcom/inmobi/media/L8;

    invoke-virtual {p1}, Lcom/inmobi/media/L8;->start()V

    :cond_3
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const-string v0, "texture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
