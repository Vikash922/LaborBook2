.class public final Lcom/inmobi/media/I3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/J3;

.field public final b:[Z

.field public c:Z

.field public final synthetic d:Lcom/inmobi/media/L3;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/L3;Lcom/inmobi/media/J3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/I3;->d:Lcom/inmobi/media/L3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/inmobi/media/I3;->a:Lcom/inmobi/media/J3;

    .line 3
    iget-boolean p2, p2, Lcom/inmobi/media/J3;->c:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p1, Lcom/inmobi/media/L3;->h:I

    .line 5
    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/inmobi/media/I3;->b:[Z

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/io/OutputStream;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/I3;->d:Lcom/inmobi/media/L3;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/I3;->a:Lcom/inmobi/media/J3;

    .line 3
    iget-object v2, v1, Lcom/inmobi/media/J3;->d:Lcom/inmobi/media/I3;

    if-ne v2, p0, :cond_1

    .line 4
    iget-boolean v2, v1, Lcom/inmobi/media/J3;->c:Z

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/inmobi/media/I3;->b:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 7
    :cond_0
    invoke-virtual {v1, p1}, Lcom/inmobi/media/J3;->b(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 13
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/inmobi/media/I3;->d:Lcom/inmobi/media/L3;

    .line 14
    iget-object v1, v1, Lcom/inmobi/media/L3;->a:Ljava/io/File;

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :goto_0
    :try_start_4
    new-instance p1, Lcom/inmobi/media/H3;

    invoke-direct {p1, p0, v1}, Lcom/inmobi/media/H3;-><init>(Lcom/inmobi/media/I3;Ljava/io/FileOutputStream;)V

    monitor-exit v0

    return-object p1

    .line 24
    :catch_1
    sget-object p1, Lcom/inmobi/media/L3;->q:Lcom/inmobi/media/G3;

    .line 25
    monitor-exit v0

    return-object p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    .line 47
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p2}, Lcom/inmobi/media/I3;->a(I)Ljava/io/OutputStream;

    move-result-object p2

    sget-object v2, Lcom/inmobi/media/Wc;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, p2, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-static {v1}, Lcom/inmobi/media/Wc;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/inmobi/media/Wc;->a(Ljava/io/Closeable;)V

    .line 51
    throw p1
.end method
