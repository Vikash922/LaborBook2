.class public final Lcom/inmobi/media/w4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/v4;


# instance fields
.field public final a:Landroid/graphics/Movie;

.field public b:I

.field public c:J

.field public volatile d:Z

.field public e:Lcom/inmobi/media/x4;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p1, v1

    new-array p1, p1, [B

    .line 19
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 22
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {v1}, Lcom/inmobi/media/p9;->a(Ljava/io/Closeable;)V

    const/4 v1, 0x0

    .line 27
    invoke-static {p1, v1, v0}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lcom/inmobi/media/w4;->a:Landroid/graphics/Movie;

    if-eqz p1, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot decode gif byte array"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 30
    invoke-static {v1}, Lcom/inmobi/media/p9;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static final a(Lcom/inmobi/media/w4;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/inmobi/media/w4;->b:I

    .line 15
    invoke-virtual {p0, v0}, Lcom/inmobi/media/w4;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/inmobi/media/w4;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final a(Landroid/graphics/Canvas;FF)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/inmobi/media/w4;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/w4;->a:Landroid/graphics/Movie;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Movie;->duration()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    :goto_0
    iget p2, p0, Lcom/inmobi/media/w4;->b:I

    add-int/lit8 p2, p2, 0x14

    if-lt p2, p1, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/inmobi/media/w4;->e()V

    :cond_2
    return-void
.end method

.method public final a(Lcom/inmobi/media/x4;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/inmobi/media/w4;->e:Lcom/inmobi/media/x4;

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/media/w4;->d:Z

    .line 2
    iget-boolean p1, p0, Lcom/inmobi/media/w4;->d:Z

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget p1, p0, Lcom/inmobi/media/w4;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/inmobi/media/w4;->c:J

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/w4;->e:Lcom/inmobi/media/x4;

    if-eqz p1, :cond_1

    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/inmobi/media/w4;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3
    iput-wide v0, p0, Lcom/inmobi/media/w4;->c:J

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/inmobi/media/w4;->a:Landroid/graphics/Movie;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    const/16 v2, 0x3e8

    .line 9
    :cond_2
    iget-wide v3, p0, Lcom/inmobi/media/w4;->c:J

    sub-long/2addr v0, v3

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/inmobi/media/w4;->b:I

    .line 10
    iget-object v1, p0, Lcom/inmobi/media/w4;->a:Landroid/graphics/Movie;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/graphics/Movie;->setTime(I)Z

    :cond_3
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/w4;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/w4;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/media/w4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/inmobi/media/w4$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/w4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final start()V
    .locals 0

    return-void
.end method
