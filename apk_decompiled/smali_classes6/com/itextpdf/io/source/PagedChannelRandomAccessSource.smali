.class Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;
.super Lcom/itextpdf/io/source/GroupedRandomAccessSource;
.source "PagedChannelRandomAccessSource.java"

# interfaces
.implements Lcom/itextpdf/io/source/IRandomAccessSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_OPEN_BUFFERS:I = 0x10

.field public static final DEFAULT_TOTAL_BUFSIZE:I = 0x4000000


# instance fields
.field private final bufferSize:I

.field private final channel:Ljava/nio/channels/FileChannel;

.field private final mru:Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU<",
            "Lcom/itextpdf/io/source/IRandomAccessSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x4000000

    const/16 v1, 0x10

    .line 88
    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;-><init>(Ljava/nio/channels/FileChannel;II)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    div-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->buildSources(Ljava/nio/channels/FileChannel;I)[Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;-><init>([Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 100
    iput-object p1, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->channel:Ljava/nio/channels/FileChannel;

    .line 101
    iput p2, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->bufferSize:I

    .line 102
    new-instance p1, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;

    invoke-direct {p1, p3}, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;-><init>(I)V

    iput-object p1, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->mru:Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;

    return-void
.end method

.method private static buildSources(Ljava/nio/channels/FileChannel;I)[Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    int-to-long v4, p1

    .line 117
    div-long v6, v0, v4

    long-to-int p1, v6

    rem-long v6, v0, v4

    cmp-long v2, v6, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    add-int/2addr p1, v2

    .line 119
    new-array v2, p1, [Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;

    :goto_1
    if-ge v3, p1, :cond_1

    int-to-long v6, v3

    mul-long v10, v6, v4

    sub-long v6, v0, v10

    .line 122
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 123
    new-instance v6, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;

    move-object v8, v6

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v2

    .line 115
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "File size must be greater than zero"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const-string v0, "Closing of the file channel this source is based on failed."

    const-class v1, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;

    :try_start_0
    invoke-super {p0}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :try_start_1
    iget-object v2, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 168
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 169
    invoke-interface {v1, v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    .line 166
    :try_start_2
    iget-object v3, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 168
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 169
    invoke-interface {v1, v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    :goto_1
    throw v2
.end method

.method protected getStartingSourceIndex(J)I
    .locals 2

    .line 133
    iget v0, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->bufferSize:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method protected sourceInUse(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    check-cast p1, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;

    invoke-virtual {p1}, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->open()V

    return-void
.end method

.method protected sourceReleased(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->mru:Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;->enqueue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/io/source/IRandomAccessSource;

    if-eqz p1, :cond_0

    .line 144
    invoke-interface {p1}, Lcom/itextpdf/io/source/IRandomAccessSource;->close()V

    :cond_0
    return-void
.end method
