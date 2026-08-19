.class public Lcom/itextpdf/commons/utils/ZipFileReader;
.super Ljava/lang/Object;
.source "ZipFileReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private thresholdEntries:I

.field private thresholdRatio:D

.field private thresholdSize:I

.field private final zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/itextpdf/commons/utils/ZipFileReader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/commons/utils/ZipFileReader;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3b9aca00

    .line 49
    iput v0, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->thresholdSize:I

    const/16 v0, 0x2710

    .line 50
    iput v0, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->thresholdEntries:I

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 51
    iput-wide v0, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->thresholdRatio:D

    if-eqz p1, :cond_0

    .line 64
    new-instance v0, Ljava/util/zip/ZipFile;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->zipFile:Ljava/util/zip/ZipFile;

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "File name can not be null."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void
.end method

.method public getFileNames()Ljava/util/Set;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 81
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 82
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 84
    new-instance v6, Ljava/io/BufferedInputStream;

    iget-object v7, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v7, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v7, 0x1

    add-int/2addr v3, v7

    const/16 v8, 0x800

    .line 87
    :try_start_0
    new-array v8, v8, [B

    move v9, v2

    .line 89
    :cond_1
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_2

    add-int/2addr v9, v10

    add-int/2addr v4, v10

    int-to-double v10, v9

    .line 92
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v12

    long-to-double v12, v12

    div-double/2addr v10, v12

    .line 93
    iget-wide v12, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->thresholdRatio:D

    cmpl-double v10, v10, v12

    if-lez v10, :cond_1

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    if-eqz v7, :cond_3

    .line 99
    sget-object v1, Lcom/itextpdf/commons/utils/ZipFileReader;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Ratio between compressed and uncompressed data is highly suspicious, looks like a Zip Bomb Attack. Threshold ratio is {0}."

    iget-wide v3, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->thresholdRatio:D

    .line 100
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 99
    invoke-static {v2, v3}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 103
    :cond_3
    :try_start_1
    iget v7, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->thresholdSize:I

    if-le v4, v7, :cond_4

    .line 104
    sget-object v1, Lcom/itextpdf/commons/utils/ZipFileReader;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "The uncompressed data size is too much for the application resource capacity, looks like a Zip Bomb Attack. Threshold size is {0}."

    .line 105
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 104
    invoke-static {v2, v3}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_2

    .line 108
    :cond_4
    iget v7, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->thresholdEntries:I

    if-le v3, v7, :cond_5

    .line 109
    sget-object v1, Lcom/itextpdf/commons/utils/ZipFileReader;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Too much entries in this archive, can lead to inodes exhaustion of the system, looks like a Zip Bomb Attack. Threshold number of file entries is {0}."

    .line 110
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 109
    invoke-static {v2, v3}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 113
    :cond_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 114
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 115
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 84
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 113
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1

    :cond_6
    :goto_4
    return-object v0
.end method

.method public readFromZip(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 136
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Zip entry not found for name: {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "File name can not be null."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setThresholdEntries(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->thresholdEntries:I

    return-void
.end method

.method public setThresholdRatio(D)V
    .locals 0

    .line 167
    iput-wide p1, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->thresholdRatio:D

    return-void
.end method

.method public setThresholdSize(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/itextpdf/commons/utils/ZipFileReader;->thresholdSize:I

    return-void
.end method
