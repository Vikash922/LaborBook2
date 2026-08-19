.class Lcom/itextpdf/io/font/Type1Parser;
.super Ljava/lang/Object;
.source "Type1Parser.java"


# static fields
.field private static final AFM_HEADER:Ljava/lang/String; = "StartFontMetrics"


# instance fields
.field private afmData:[B

.field private afmPath:Ljava/lang/String;

.field private isBuiltInFont:Z

.field private pfbData:[B

.field private pfbPath:Ljava/lang/String;

.field private sourceFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/Type1Parser;->sourceFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    .line 77
    iput-object p3, p0, Lcom/itextpdf/io/font/Type1Parser;->afmData:[B

    .line 78
    iput-object p4, p0, Lcom/itextpdf/io/font/Type1Parser;->pfbData:[B

    .line 79
    iput-object p1, p0, Lcom/itextpdf/io/font/Type1Parser;->afmPath:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/itextpdf/io/font/Type1Parser;->pfbPath:Ljava/lang/String;

    return-void
.end method

.method private isAfmFile(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StartFontMetrics"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 162
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 164
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readByte()B

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :catch_0
    invoke-virtual {p1, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    return v2

    .line 170
    :cond_0
    invoke-virtual {p1, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getAfmPath()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Parser;->afmPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "com/itextpdf/io/font/afm/"

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lcom/itextpdf/io/font/Type1Parser;->isBuiltInFont:Z

    .line 85
    iget-object v2, p0, Lcom/itextpdf/io/font/Type1Parser;->afmPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/io/font/constants/StandardFonts;->isStandardFont(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ".afm"

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 86
    iput-boolean v2, p0, Lcom/itextpdf/io/font/Type1Parser;->isBuiltInFont:Z

    const/16 v2, 0x400

    .line 87
    new-array v2, v2, [B

    const/4 v4, 0x0

    .line 90
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Parser;->afmPath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/itextpdf/io/util/ResourceUtil;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 95
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 98
    invoke-virtual {v0, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 104
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    :catch_0
    :cond_1
    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v2, p0, Lcom/itextpdf/io/font/Type1Parser;->sourceFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-virtual {v2, v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v1

    .line 93
    :cond_2
    :try_start_2
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "{0} was not found as resource."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_3

    .line 104
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 107
    :catch_1
    :cond_3
    throw v0

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Parser;->afmPath:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Parser;->sourceFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    iget-object v2, p0, Lcom/itextpdf/io/font/Type1Parser;->afmPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v0

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Parser;->afmPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pfm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 113
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v2, p0, Lcom/itextpdf/io/font/Type1Parser;->sourceFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    iget-object v3, p0, Lcom/itextpdf/io/font/Type1Parser;->afmPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 115
    invoke-static {v1, v0}, Lcom/itextpdf/io/font/Pfm2afm;->convert(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/io/OutputStream;)V

    .line 116
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    .line 117
    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v2, p0, Lcom/itextpdf/io/font/Type1Parser;->sourceFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v1

    .line 119
    :cond_6
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "{0} is not an afm or pfm font file."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Parser;->afmPath:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 121
    :cond_7
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Parser;->afmData:[B

    const-string v1, "Invalid afm or pfm font file."

    if-eqz v0, :cond_9

    .line 122
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v2, p0, Lcom/itextpdf/io/font/Type1Parser;->sourceFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    iget-object v3, p0, Lcom/itextpdf/io/font/Type1Parser;->afmData:[B

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 123
    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/Type1Parser;->isAfmFile(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v0

    .line 126
    :cond_8
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    :try_start_4
    invoke-static {v0, v2}, Lcom/itextpdf/io/font/Pfm2afm;->convert(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    .line 134
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Parser;->sourceFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v0

    :catchall_1
    move-exception v1

    goto :goto_1

    .line 130
    :catch_2
    :try_start_5
    new-instance v2, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {v2, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 132
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    .line 133
    throw v1

    .line 137
    :cond_9
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPostscriptBinary()Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Parser;->pfbData:[B

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Parser;->sourceFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    iget-object v2, p0, Lcom/itextpdf/io/font/Type1Parser;->pfbData:[B

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Parser;->pfbPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pfb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Parser;->sourceFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    iget-object v2, p0, Lcom/itextpdf/io/font/Type1Parser;->pfbPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v0

    .line 147
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Parser;->afmPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pfb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/Type1Parser;->pfbPath:Ljava/lang/String;

    .line 148
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Parser;->sourceFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    iget-object v2, p0, Lcom/itextpdf/io/font/Type1Parser;->pfbPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v0
.end method

.method public isBuiltInFont()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/itextpdf/io/font/Type1Parser;->isBuiltInFont:Z

    return v0
.end method
