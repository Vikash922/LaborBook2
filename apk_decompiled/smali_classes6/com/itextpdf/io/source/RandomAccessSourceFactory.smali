.class public final Lcom/itextpdf/io/source/RandomAccessSourceFactory;
.super Ljava/lang/Object;
.source "RandomAccessSourceFactory.java"


# static fields
.field private static forceReadDefaultValue:Z = false


# instance fields
.field private exclusivelyLockFile:Z

.field private forceRead:Z

.field private usePlainRandomAccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-boolean v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->forceReadDefaultValue:Z

    iput-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->forceRead:Z

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->usePlainRandomAccess:Z

    .line 81
    iput-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->exclusivelyLockFile:Z

    return-void
.end method

.method private createByReadingToMemory(Ljava/io/InputStream;)Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    :try_start_0
    new-instance v0, Lcom/itextpdf/io/source/ArrayRandomAccessSource;

    invoke-static {p1}, Lcom/itextpdf/io/util/StreamUtil;->inputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ArrayRandomAccessSource;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 316
    :catch_1
    throw v0
.end method

.method private createByReadingToMemory(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-static {p1}, Lcom/itextpdf/io/util/ResourceUtil;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0, v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createByReadingToMemory(Ljava/io/InputStream;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1

    return-object p1

    .line 297
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "{0} not found as file or resource."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static exceptionIsMapFailureException(Ljava/io/IOException;)Z
    .locals 1

    .line 328
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Map failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setForceReadDefaultValue(Z)V
    .locals 0

    .line 94
    sput-boolean p0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->forceReadDefaultValue:Z

    return-void
.end method


# virtual methods
.method public createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    .line 206
    const-string v0, "file:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jar:"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wsjar:"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vfszip:"

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-direct {p0, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createByReadingToMemory(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1

    return-object p1

    .line 212
    :cond_1
    :goto_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource(Ljava/net/URL;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1

    return-object p1

    .line 218
    :cond_2
    iget-boolean v1, p0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->forceRead:Z

    if-eqz v1, :cond_3

    .line 219
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createByReadingToMemory(Ljava/io/InputStream;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1

    return-object p1

    .line 222
    :cond_3
    iget-boolean p1, p0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->exclusivelyLockFile:Z

    if-eqz p1, :cond_4

    const-string p1, "rw"

    goto :goto_1

    :cond_4
    const-string p1, "r"

    .line 224
    :goto_1
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-direct {v1, v0, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    iget-boolean p1, p0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->exclusivelyLockFile:Z

    if-eqz p1, :cond_5

    .line 226
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 229
    :cond_5
    iget-boolean p1, p0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->usePlainRandomAccess:Z

    if-eqz p1, :cond_6

    .line 230
    new-instance p1, Lcom/itextpdf/io/source/RAFRandomAccessSource;

    invoke-direct {p1, v1}, Lcom/itextpdf/io/source/RAFRandomAccessSource;-><init>(Ljava/io/RandomAccessFile;)V

    return-object p1

    .line 237
    :cond_6
    :try_start_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_7

    .line 238
    new-instance p1, Lcom/itextpdf/io/source/RAFRandomAccessSource;

    invoke-direct {p1, v1}, Lcom/itextpdf/io/source/RAFRandomAccessSource;-><init>(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object p1

    .line 243
    :cond_7
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/nio/channels/FileChannel;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    move-exception p1

    .line 245
    :try_start_2
    invoke-static {p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->exceptionIsMapFailureException(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 246
    new-instance p1, Lcom/itextpdf/io/source/RAFRandomAccessSource;

    invoke-direct {p1, v1}, Lcom/itextpdf/io/source/RAFRandomAccessSource;-><init>(Ljava/io/RandomAccessFile;)V

    return-object p1

    .line 248
    :cond_8
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 254
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 256
    :catch_2
    throw p1
.end method

.method public createBestSource(Ljava/nio/channels/FileChannel;)Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    const-wide/32 v2, 0x4000000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 274
    new-instance v0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;

    new-instance v1, Lcom/itextpdf/io/source/FileChannelRandomAccessSource;

    invoke-direct {v1, p1}, Lcom/itextpdf/io/source/FileChannelRandomAccessSource;-><init>(Ljava/nio/channels/FileChannel;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v0

    .line 276
    :cond_0
    new-instance v0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;

    new-instance v1, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;

    invoke-direct {v1, p1}, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;-><init>(Ljava/nio/channels/FileChannel;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v0
.end method

.method public createRanged(Lcom/itextpdf/io/source/IRandomAccessSource;[J)Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    array-length v0, p2

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/itextpdf/io/source/IRandomAccessSource;

    const/4 v1, 0x0

    .line 282
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 283
    div-int/lit8 v2, v1, 0x2

    new-instance v9, Lcom/itextpdf/io/source/WindowRandomAccessSource;

    aget-wide v5, p2, v1

    add-int/lit8 v3, v1, 0x1

    aget-wide v7, p2, v3

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/itextpdf/io/source/WindowRandomAccessSource;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;JJ)V

    aput-object v9, v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 285
    :cond_0
    new-instance p1, Lcom/itextpdf/io/source/GroupedRandomAccessSource;

    invoke-direct {p1, v0}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;-><init>([Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object p1
.end method

.method public createSource(Ljava/io/InputStream;)Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-static {p1}, Lcom/itextpdf/io/util/StreamUtil;->inputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1

    return-object p1
.end method

.method public createSource(Ljava/io/RandomAccessFile;)Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/itextpdf/io/source/RAFRandomAccessSource;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/source/RAFRandomAccessSource;-><init>(Ljava/io/RandomAccessFile;)V

    return-object v0
.end method

.method public createSource(Ljava/net/URL;)Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1

    .line 145
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource(Ljava/io/InputStream;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    :catch_1
    throw v0
.end method

.method public createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 1

    .line 128
    new-instance v0, Lcom/itextpdf/io/source/ArrayRandomAccessSource;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/source/ArrayRandomAccessSource;-><init>([B)V

    return-object v0
.end method

.method public extractOrCreateSource(Ljava/io/InputStream;)Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    instance-of v0, p1, Lcom/itextpdf/io/source/RASInputStream;

    if-eqz v0, :cond_0

    .line 170
    check-cast p1, Lcom/itextpdf/io/source/RASInputStream;

    invoke-virtual {p1}, Lcom/itextpdf/io/source/RASInputStream;->getSource()Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1

    return-object p1

    .line 172
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/io/util/StreamUtil;->inputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1

    return-object p1
.end method

.method public setExclusivelyLockFile(Z)Lcom/itextpdf/io/source/RandomAccessSourceFactory;
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->exclusivelyLockFile:Z

    return-object p0
.end method

.method public setForceRead(Z)Lcom/itextpdf/io/source/RandomAccessSourceFactory;
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->forceRead:Z

    return-object p0
.end method

.method public setUsePlainRandomAccess(Z)Lcom/itextpdf/io/source/RandomAccessSourceFactory;
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->usePlainRandomAccess:Z

    return-object p0
.end method
