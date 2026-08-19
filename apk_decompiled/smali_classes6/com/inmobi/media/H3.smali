.class public final Lcom/inmobi/media/H3;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/I3;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/I3;Ljava/io/FileOutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/media/I3;

    .line 2
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v0, p0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/media/I3;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/inmobi/media/I3;->c:Z

    :goto_0
    return-void
.end method

.method public final flush()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v0, p0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/media/I3;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/inmobi/media/I3;->c:Z

    :goto_0
    return-void
.end method

.method public final write(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object p1, p0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/media/I3;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/inmobi/media/I3;->c:Z

    :goto_0
    return-void
.end method

.method public final write([BII)V
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    iget-object p1, p0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/media/I3;

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p1, Lcom/inmobi/media/I3;->c:Z

    :goto_0
    return-void
.end method
