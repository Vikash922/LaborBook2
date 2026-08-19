.class Lcom/itextpdf/io/font/OpenTypeParser;
.super Ljava/lang/Object;
.source "OpenTypeParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;,
        Lcom/itextpdf/io/font/OpenTypeParser$PostTable;,
        Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;,
        Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;,
        Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
    }
.end annotation


# static fields
.field private static final HEAD_LOCA_FORMAT_OFFSET:I = 0x33


# instance fields
.field protected allNameEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected cff:Z

.field protected cffLength:I

.field protected cffOffset:I

.field protected cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

.field protected directoryOffset:I

.field protected fileName:Ljava/lang/String;

.field protected fontName:Ljava/lang/String;

.field private glyphWidthsByIndex:[I

.field protected head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

.field protected hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

.field protected os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

.field protected post:Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

.field protected raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field protected tables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field protected ttcIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 174
    iput v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->ttcIndex:I

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cff:Z

    .line 236
    invoke-static {p1}, Lcom/itextpdf/io/font/OpenTypeParser;->getTTCName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    .line 238
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->ttcIndex:I

    .line 241
    :cond_0
    new-instance p1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iput-object p1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 242
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->initializeSfntTables()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cff:Z

    .line 230
    iput p2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->ttcIndex:I

    .line 231
    new-instance p2, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iput-object p2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 232
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->initializeSfntTables()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 174
    iput v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->ttcIndex:I

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cff:Z

    .line 219
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 220
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->initializeSfntTables()V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cff:Z

    .line 224
    iput p2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->ttcIndex:I

    .line 225
    new-instance p2, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iput-object p2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 226
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->initializeSfntTables()V

    return-void
.end method

.method protected static getTTCName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 466
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ttc,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    .line 470
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initializeSfntTables()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    .line 385
    iget v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->ttcIndex:I

    const/4 v1, 0x4

    if-ltz v0, :cond_6

    if-gez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 389
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "The font index for {0} must be positive."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 391
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "The font index must be positive."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_1
    invoke-direct {p0, v1}, Lcom/itextpdf/io/font/OpenTypeParser;->readStandardString(I)Ljava/lang/String;

    move-result-object v2

    .line 395
    const-string v3, "ttcf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 396
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 397
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "{0} is not a valid ttc file."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 399
    :cond_2
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Not a valid ttc file."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 403
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v2

    if-lt v0, v2, :cond_5

    .line 405
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 406
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v3, "The font index for {0} must be between 0 and {1}. It is {2}."

    invoke-direct {v1, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    .line 407
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 409
    :cond_4
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v3, "The font index must be between 0 and {0}. It is {1}."

    invoke-direct {v1, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    .line 410
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 413
    :cond_5
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    mul-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 414
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->directoryOffset:I

    .line 416
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->directoryOffset:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 417
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v0

    const/high16 v2, 0x10000

    if-eq v0, v2, :cond_8

    const v2, 0x4f54544f    # 3.562295E9f

    if-eq v0, v2, :cond_8

    .line 419
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 420
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "{0} is not a valid ttf or otf file."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 422
    :cond_7
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Not a valid ttf or otf file."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_8
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 426
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 428
    invoke-direct {p0, v1}, Lcom/itextpdf/io/font/OpenTypeParser;->readStandardString(I)Ljava/lang/String;

    move-result-object v3

    .line 429
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 431
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v4

    .line 432
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    .line 433
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method private readCmapTable()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "cmap"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 829
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "Table {0} does not exist in {1}"

    invoke-direct {v0, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 831
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "Table {0} does not exist."

    invoke-direct {v0, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 834
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 835
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 836
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 841
    new-instance v3, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {v3}, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v3, v1, :cond_6

    .line 843
    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v8

    .line 844
    iget-object v9, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v9

    .line 845
    iget-object v10, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x1

    if-ne v8, v11, :cond_2

    if-nez v9, :cond_2

    .line 847
    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    iput-boolean v12, v6, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->fontSpecific:Z

    move v6, v10

    goto :goto_1

    :cond_2
    if-ne v8, v11, :cond_3

    if-ne v9, v12, :cond_3

    move v5, v10

    goto :goto_1

    :cond_3
    if-ne v8, v11, :cond_4

    const/16 v11, 0xa

    if-ne v9, v11, :cond_4

    move v7, v10

    goto :goto_1

    :cond_4
    if-ne v8, v12, :cond_5

    if-nez v9, :cond_5

    move v4, v10

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    const/4 v3, 0x4

    if-lez v4, :cond_a

    .line 858
    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v9, v0, v2

    add-int/2addr v9, v4

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 859
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    if-eqz v4, :cond_9

    if-eq v4, v3, :cond_8

    if-eq v4, v1, :cond_7

    goto :goto_2

    .line 868
    :cond_7
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat6()Ljava/util/Map;

    move-result-object v8

    iput-object v8, v4, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap10:Ljava/util/Map;

    goto :goto_2

    .line 865
    :cond_8
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat4(Z)Ljava/util/Map;

    move-result-object v8

    iput-object v8, v4, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap10:Ljava/util/Map;

    goto :goto_2

    .line 862
    :cond_9
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat0()Ljava/util/Map;

    move-result-object v8

    iput-object v8, v4, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap10:Ljava/util/Map;

    :cond_a
    :goto_2
    if-lez v5, :cond_b

    .line 873
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v8, v0, v2

    add-int/2addr v8, v5

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 874
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    if-ne v4, v3, :cond_b

    .line 876
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat4(Z)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v4, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap31:Ljava/util/Map;

    :cond_b
    if-lez v6, :cond_d

    .line 880
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v5, v0, v2

    add-int/2addr v5, v6

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 881
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    if-ne v4, v3, :cond_c

    .line 883
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    iget-boolean v5, v4, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->fontSpecific:Z

    invoke-direct {p0, v5}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat4(Z)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v4, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap10:Ljava/util/Map;

    goto :goto_3

    .line 885
    :cond_c
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    iput-boolean v2, v4, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->fontSpecific:Z

    :cond_d
    :goto_3
    if-lez v7, :cond_12

    .line 889
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v0, v0, v2

    add-int/2addr v0, v7

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 890
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    if-eqz v0, :cond_11

    if-eq v0, v3, :cond_10

    if-eq v0, v1, :cond_f

    const/16 v1, 0xc

    if-eq v0, v1, :cond_e

    goto :goto_4

    .line 902
    :cond_e
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat12()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmapExt:Ljava/util/Map;

    goto :goto_4

    .line 899
    :cond_f
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat6()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmapExt:Ljava/util/Map;

    goto :goto_4

    .line 896
    :cond_10
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat4(Z)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmapExt:Ljava/util/Map;

    goto :goto_4

    .line 893
    :cond_11
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat0()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmapExt:Ljava/util/Map;

    :cond_12
    :goto_4
    return-void
.end method

.method private readFormat0()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 957
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    const/4 v3, 0x2

    .line 959
    new-array v3, v3, [I

    .line 960
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedByte()I

    move-result v4

    aput v4, v3, v1

    .line 961
    invoke-virtual {p0, v4}, Lcom/itextpdf/io/font/OpenTypeParser;->getGlyphWidth(I)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 962
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readFormat12()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1051
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1052
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 1054
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    .line 1055
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 1056
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    .line 1058
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v5

    .line 1059
    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v6

    .line 1060
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v7

    :goto_1
    if-gt v5, v6, :cond_0

    .line 1062
    new-array v8, v2, [I

    .line 1063
    aput v7, v8, v3

    .line 1064
    invoke-virtual {p0, v7}, Lcom/itextpdf/io/font/OpenTypeParser;->getGlyphWidth(I)I

    move-result v9

    const/4 v10, 0x1

    aput v9, v8, v10

    .line 1065
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v7, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private readFormat4(Z)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 975
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 976
    iget-object v2, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 977
    iget-object v3, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 978
    iget-object v3, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    div-int/2addr v3, v4

    .line 979
    iget-object v5, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 980
    new-array v5, v3, [I

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_0

    .line 982
    iget-object v8, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v8

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 984
    :cond_0
    iget-object v7, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 985
    new-array v7, v3, [I

    move v8, v6

    :goto_1
    if-ge v8, v3, :cond_1

    .line 987
    iget-object v9, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 989
    :cond_1
    new-array v8, v3, [I

    move v9, v6

    :goto_2
    if-ge v9, v3, :cond_2

    .line 991
    iget-object v10, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 993
    :cond_2
    new-array v9, v3, [I

    move v10, v6

    :goto_3
    if-ge v10, v3, :cond_3

    .line 995
    iget-object v11, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 997
    :cond_3
    div-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x8

    mul-int/lit8 v10, v3, 0x4

    sub-int/2addr v2, v10

    new-array v10, v2, [I

    move v11, v6

    :goto_4
    if-ge v11, v2, :cond_4

    .line 999
    iget-object v12, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_4
    move v11, v6

    :goto_5
    if-ge v11, v3, :cond_9

    .line 1003
    aget v12, v7, v11

    :goto_6
    aget v13, v5, v11

    if-gt v12, v13, :cond_8

    const v13, 0xffff

    if-eq v12, v13, :cond_8

    .line 1004
    aget v14, v9, v11

    if-nez v14, :cond_5

    .line 1005
    aget v14, v8, v11

    add-int/2addr v14, v12

    :goto_7
    and-int/2addr v13, v14

    goto :goto_8

    .line 1007
    :cond_5
    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v11

    sub-int/2addr v14, v3

    add-int/2addr v14, v12

    aget v15, v7, v11

    sub-int/2addr v14, v15

    if-lt v14, v2, :cond_6

    goto :goto_9

    .line 1010
    :cond_6
    aget v14, v10, v14

    aget v15, v8, v11

    add-int/2addr v14, v15

    goto :goto_7

    .line 1012
    :goto_8
    new-array v14, v4, [I

    .line 1013
    aput v13, v14, v6

    .line 1014
    invoke-virtual {v0, v13}, Lcom/itextpdf/io/font/OpenTypeParser;->getGlyphWidth(I)I

    move-result v13

    const/4 v15, 0x1

    aput v13, v14, v15

    if-eqz p1, :cond_7

    const v13, 0xff00

    and-int/2addr v13, v12

    const v15, 0xf000

    if-ne v13, v15, :cond_7

    and-int/lit16 v13, v12, 0xff

    .line 1020
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    :cond_7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_9
    return-object v1
.end method

.method private readFormat6()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1037
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1038
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 1039
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 1040
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    const/4 v5, 0x2

    .line 1042
    new-array v5, v5, [I

    .line 1043
    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    aput v6, v5, v3

    .line 1044
    invoke-virtual {p0, v6}, Lcom/itextpdf/io/font/OpenTypeParser;->getGlyphWidth(I)I

    move-result v6

    const/4 v7, 0x1

    aput v6, v5, v7

    add-int v6, v4, v1

    .line 1045
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readHeadTable()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "head"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 718
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "Table {0} does not exist in {1}"

    invoke-direct {v0, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 720
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "Table {0} does not exist."

    invoke-direct {v0, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 723
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x0

    aget v0, v0, v2

    const/16 v2, 0x10

    add-int/2addr v0, v2

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 724
    new-instance v0, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    invoke-direct {v0}, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    .line 725
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->flags:I

    .line 726
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->unitsPerEm:I

    .line 727
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 728
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->xMin:S

    .line 729
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->yMin:S

    .line 730
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->xMax:S

    .line 731
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->yMax:S

    .line 732
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->macStyle:I

    return-void
.end method

.method private readHheaTable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "hhea"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 688
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "Table {0} does not exist in {1}"

    invoke-direct {v0, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 690
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "Table {0} does not exist."

    invoke-direct {v0, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 693
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x0

    aget v0, v0, v2

    add-int/lit8 v0, v0, 0x4

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 694
    new-instance v0, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    invoke-direct {v0}, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    .line 695
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->Ascender:S

    .line 696
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->Descender:S

    .line 697
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->LineGap:S

    .line 698
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->advanceWidthMax:I

    .line 699
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->minLeftSideBearing:S

    .line 700
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->minRightSideBearing:S

    .line 701
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->xMaxExtent:S

    .line 702
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->caretSlopeRise:S

    .line 703
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->caretSlopeRun:S

    .line 704
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 705
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->numberOfHMetrics:I

    return-void
.end method

.method private readNameTable()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 635
    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v2, "name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-nez v1, :cond_1

    .line 637
    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 638
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v3, "Table {0} does not exist in {1}"

    invoke-direct {v1, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v1

    throw v1

    .line 640
    :cond_0
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v3, "Table {0} does not exist."

    invoke-direct {v1, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v1

    throw v1

    .line 643
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/itextpdf/io/font/OpenTypeParser;->allNameEntries:Ljava/util/Map;

    .line 644
    iget-object v2, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x2

    add-int/2addr v4, v5

    int-to-long v6, v4

    invoke-virtual {v2, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 645
    iget-object v2, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 646
    iget-object v4, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    move v6, v3

    :goto_0
    if-ge v6, v2, :cond_5

    .line 648
    iget-object v7, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    .line 649
    iget-object v8, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v8

    .line 650
    iget-object v9, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v9

    .line 651
    iget-object v10, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 652
    iget-object v11, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v11

    .line 653
    iget-object v12, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v12

    .line 655
    iget-object v13, v0, Lcom/itextpdf/io/font/OpenTypeParser;->allNameEntries:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 656
    iget-object v13, v0, Lcom/itextpdf/io/font/OpenTypeParser;->allNameEntries:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    goto :goto_1

    .line 658
    :cond_2
    iget-object v13, v0, Lcom/itextpdf/io/font/OpenTypeParser;->allNameEntries:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v14

    .line 660
    :goto_1
    iget-object v13, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v13}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v13

    long-to-int v13, v13

    .line 661
    iget-object v14, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v15, v1, v3

    add-int/2addr v15, v4

    add-int/2addr v15, v12

    move/from16 v16, v4

    int-to-long v3, v15

    invoke-virtual {v14, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v7, :cond_4

    if-eq v7, v3, :cond_4

    if-ne v7, v5, :cond_3

    if-ne v8, v4, :cond_3

    goto :goto_2

    .line 666
    :cond_3
    invoke-direct {v0, v11}, Lcom/itextpdf/io/font/OpenTypeParser;->readStandardString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 664
    :cond_4
    :goto_2
    invoke-direct {v0, v11}, Lcom/itextpdf/io/font/OpenTypeParser;->readUnicodeString(I)Ljava/lang/String;

    move-result-object v11

    :goto_3
    const/4 v14, 0x4

    .line 668
    new-array v14, v14, [Ljava/lang/String;

    .line 669
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    aput-object v7, v14, v12

    .line 670
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v4

    .line 671
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v5

    aput-object v11, v14, v3

    .line 668
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v3, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v7, v13

    invoke-virtual {v3, v7, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    add-int/lit8 v6, v6, 0x1

    move v3, v12

    move/from16 v4, v16

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private readOs_2Table()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "OS/2"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    const-string v1, "os/2"

    if-eqz v0, :cond_0

    .line 746
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "Table {0} does not exist in {1}"

    invoke-direct {v0, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 748
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "Table {0} does not exist."

    invoke-direct {v0, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 751
    :cond_1
    new-instance v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    invoke-direct {v1}, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    .line 752
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x0

    aget v0, v0, v2

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 753
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 754
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->xAvgCharWidth:S

    .line 755
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWeightClass:I

    .line 756
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWidthClass:I

    .line 757
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->fsType:S

    .line 758
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySubscriptXSize:S

    .line 759
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySubscriptYSize:S

    .line 760
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySubscriptXOffset:S

    .line 761
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySubscriptYOffset:S

    .line 762
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySuperscriptXSize:S

    .line 763
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySuperscriptYSize:S

    .line 764
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySuperscriptXOffset:S

    .line 765
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySuperscriptYOffset:S

    .line 766
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->yStrikeoutSize:S

    .line 767
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->yStrikeoutPosition:S

    .line 768
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sFamilyClass:S

    .line 769
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->panose:[B

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 770
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 771
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->achVendID:[B

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 772
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->fsSelection:I

    .line 773
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usFirstCharIndex:I

    .line 774
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usLastCharIndex:I

    .line 775
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoAscender:S

    .line 776
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoDescender:S

    .line 777
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-short v1, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoDescender:S

    if-lez v1, :cond_2

    .line 778
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoDescender:S

    neg-int v3, v3

    int-to-short v3, v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoDescender:S

    .line 780
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    iput-short v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoLineGap:S

    .line 781
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWinAscent:I

    .line 782
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWinDescent:I

    .line 783
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget v1, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWinDescent:I

    if-lez v1, :cond_3

    .line 784
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWinDescent:I

    neg-int v3, v3

    int-to-short v3, v3

    iput v3, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWinDescent:I

    .line 786
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iput v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ulCodePageRange1:I

    .line 787
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iput v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ulCodePageRange2:I

    if-lez v0, :cond_4

    .line 789
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v2

    iput v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ulCodePageRange1:I

    .line 790
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v2

    iput v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ulCodePageRange2:I

    :cond_4
    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 794
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 795
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sCapHeight:I

    goto :goto_0

    .line 797
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget v1, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->unitsPerEm:I

    int-to-double v1, v1

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sCapHeight:I

    :goto_0
    return-void
.end method

.method private readPostTable()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "post"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    .line 804
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x0

    aget v0, v0, v2

    add-int/lit8 v0, v0, 0x4

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 805
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v0

    .line 806
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 807
    new-instance v3, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    invoke-direct {v3}, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->post:Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    int-to-double v4, v0

    int-to-double v0, v1

    const-wide/high16 v6, 0x40d0000000000000L    # 16384.0

    div-double/2addr v0, v6

    add-double/2addr v4, v0

    double-to-float v0, v4

    .line 808
    iput v0, v3, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->italicAngle:F

    .line 809
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->post:Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->underlinePosition:I

    .line 810
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->post:Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->underlineThickness:I

    .line 811
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->post:Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v0, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->isFixedPitch:Z

    goto :goto_0

    .line 813
    :cond_1
    new-instance v0, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    invoke-direct {v0}, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->post:Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    .line 814
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-short v1, v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->caretSlopeRun:S

    int-to-double v1, v1

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-short v3, v3, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->caretSlopeRise:S

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    neg-double v1, v1

    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->italicAngle:F

    :goto_0
    return-void
.end method

.method private readStandardString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const-string v1, "Cp1252"

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readUnicodeString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 929
    div-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 931
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readChar()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 933
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected checkCff()V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "CFF "

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 477
    iput-boolean v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cff:Z

    const/4 v2, 0x0

    .line 478
    aget v2, v0, v2

    iput v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cffOffset:I

    .line 479
    aget v0, v0, v1

    iput v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cffLength:I

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    return-void
.end method

.method public getAllNameEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->allNameEntries:Ljava/util/Map;

    return-object v0
.end method

.method public getCmapTable()Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    return-object v0
.end method

.method public getFontNames()Lcom/itextpdf/io/font/FontNames;
    .locals 8

    .line 289
    new-instance v0, Lcom/itextpdf/io/font/FontNames;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontNames;-><init>()V

    .line 290
    invoke-virtual {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->getAllNameEntries()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->setAllNames(Ljava/util/Map;)V

    .line 291
    invoke-virtual {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->getPsFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->setFontName(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 292
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->setFullName([[Ljava/lang/String;)V

    const/16 v1, 0x10

    .line 293
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->setFamilyName([[Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {v0, v2}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/io/font/FontNames;->setFamilyName([[Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x2

    .line 299
    invoke-virtual {v0, v3}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 301
    aget-object v7, v4, v6

    aget-object v7, v7, v5

    invoke-virtual {v0, v7}, Lcom/itextpdf/io/font/FontNames;->setStyle(Ljava/lang/String;)V

    :cond_1
    const/16 v7, 0x11

    .line 303
    invoke-virtual {v0, v7}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {v0, v7}, Lcom/itextpdf/io/font/FontNames;->setSubfamily([[Ljava/lang/String;)V

    goto :goto_1

    .line 307
    :cond_2
    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/FontNames;->setSubfamily([[Ljava/lang/String;)V

    :goto_1
    const/16 v1, 0x14

    .line 309
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 311
    aget-object v1, v1, v6

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->setCidFontName(Ljava/lang/String;)V

    .line 313
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget v1, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWeightClass:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->setFontWeight(I)V

    .line 314
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget v1, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWidthClass:I

    invoke-static {v1}, Lcom/itextpdf/io/font/constants/FontStretches;->fromOpenTypeWidthClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->setFontStretch(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget v1, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->macStyle:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->setMacStyle(I)V

    .line 316
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-short v1, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->fsType:S

    if-eq v1, v3, :cond_4

    goto :goto_2

    :cond_4
    move v2, v6

    :goto_2
    invoke-virtual {v0, v2}, Lcom/itextpdf/io/font/FontNames;->setAllowEmbedding(Z)V

    return-object v0
.end method

.method public getFullFont()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createView()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 329
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 334
    :try_start_1
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 338
    :catch_1
    :cond_1
    throw v1
.end method

.method protected getGlyphWidth(I)I
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->glyphWidthsByIndex:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 944
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    .line 945
    :cond_0
    aget p1, v0, p1

    return p1
.end method

.method public getGlyphWidthsByIndex()[I
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->glyphWidthsByIndex:[I

    return-object v0
.end method

.method public getHeadTable()Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    return-object v0
.end method

.method public getHheaTable()Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    return-object v0
.end method

.method public getOs_2Table()Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    return-object v0
.end method

.method public getPostTable()Lcom/itextpdf/io/font/OpenTypeParser$PostTable;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->post:Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    return-object v0
.end method

.method public getPsFontName()Ljava/lang/String;
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fontName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->allNameEntries:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 252
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fontName:Ljava/lang/String;

    goto :goto_0

    .line 254
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fontName:Ljava/lang/String;

    .line 257
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method getSubset(Ljava/util/Set;Z)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    new-instance v6, Lcom/itextpdf/io/font/TrueTypeFontSubset;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 371
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createView()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v2

    iget v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->directoryOffset:I

    move-object v0, v6

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/io/font/TrueTypeFontSubset;-><init>(Ljava/lang/String;Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/util/Set;IZ)V

    .line 372
    invoke-virtual {v6}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->process()[B

    move-result-object p1

    return-object p1
.end method

.method public isCff()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cff:Z

    return v0
.end method

.method protected loadTables(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readNameTable()V

    .line 443
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readHeadTable()V

    .line 444
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readOs_2Table()V

    .line 445
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readPostTable()V

    if-eqz p1, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->checkCff()V

    .line 448
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readHheaTable()V

    .line 449
    invoke-virtual {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readGlyphWidths()V

    .line 450
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readCmapTable()V

    :cond_0
    return-void
.end method

.method protected readBbox(I)[[I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "head"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 564
    const-string v2, "Table {0} does not exist in {1}"

    const-string v3, "Table {0} does not exist."

    if-nez v0, :cond_1

    .line 565
    iget-object p1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 566
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p1, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p1

    throw p1

    .line 568
    :cond_0
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p1, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p1

    throw p1

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v4, 0x0

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x33

    int-to-long v5, v0

    invoke-virtual {v1, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 572
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v4

    .line 573
    :goto_0
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v6, "loca"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    if-nez v5, :cond_3

    const/4 p1, 0x0

    .line 575
    move-object v0, p1

    check-cast v0, [[I

    return-object p1

    .line 577
    :cond_3
    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v7, v5, v4

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    if-eqz v0, :cond_4

    .line 580
    aget v0, v5, v1

    div-int/lit8 v0, v0, 0x2

    .line 581
    new-array v5, v0, [I

    move v6, v4

    :goto_1
    if-ge v6, v0, :cond_5

    .line 583
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 586
    :cond_4
    aget v0, v5, v1

    div-int/lit8 v0, v0, 0x4

    .line 587
    new-array v5, v0, [I

    move v6, v4

    :goto_2
    if-ge v6, v0, :cond_5

    .line 589
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 593
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v6, "glyf"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_7

    .line 595
    iget-object p1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 596
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p1, v2}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    filled-new-array {v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p1

    throw p1

    .line 598
    :cond_6
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p1, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p1

    throw p1

    .line 601
    :cond_7
    aget v0, v0, v4

    .line 602
    array-length v2, v5

    sub-int/2addr v2, v1

    new-array v2, v2, [[I

    .line 603
    :goto_3
    array-length v3, v5

    sub-int/2addr v3, v1

    if-ge v4, v3, :cond_9

    .line 604
    aget v3, v5, v4

    add-int/lit8 v6, v4, 0x1

    .line 605
    aget v7, v5, v6

    if-eq v3, v7, :cond_8

    .line 606
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x2

    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 607
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 608
    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/2addr v3, p1

    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 609
    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    div-int/2addr v7, p1

    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 610
    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    div-int/2addr v8, p1

    iget-object v9, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 611
    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    div-int/2addr v9, p1

    filled-new-array {v3, v7, v8, v9}, [I

    move-result-object v3

    aput-object v3, v2, v4

    :cond_8
    move v4, v6

    goto :goto_3

    :cond_9
    return-object v2
.end method

.method public readCffFont()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->isCff()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 354
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createView()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v1

    .line 355
    iget v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cffOffset:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 356
    iget v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cffLength:I

    new-array v0, v0, [B

    .line 357
    invoke-virtual {v1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 362
    :try_start_1
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 366
    :catch_1
    :cond_2
    throw v0
.end method

.method protected readGlyphWidths()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget v0, v0, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->numberOfHMetrics:I

    .line 492
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget v1, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->unitsPerEm:I

    .line 494
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v3, "hmtx"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-nez v2, :cond_1

    .line 496
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 497
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Table {0} does not exist in {1}"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 499
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Table {0} does not exist."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 502
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readNumGlyphs()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->glyphWidthsByIndex:[I

    .line 503
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v4, 0x0

    aget v2, v2, v4

    int-to-long v5, v2

    invoke-virtual {v3, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    :goto_0
    if-ge v4, v0, :cond_2

    .line 505
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->glyphWidthsByIndex:[I

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/2addr v3, v1

    aput v3, v2, v4

    .line 507
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    div-int/2addr v2, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    move v1, v0

    .line 512
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->glyphWidthsByIndex:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    add-int/lit8 v3, v0, -0x1

    .line 513
    aget v3, v2, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected readKerning(I)Lcom/itextpdf/io/util/IntHashtable;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "kern"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 527
    new-instance v1, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v1}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    .line 531
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x2

    add-int/2addr v4, v5

    int-to-long v6, v4

    invoke-virtual {v2, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 532
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 533
    aget v0, v0, v3

    add-int/lit8 v0, v0, 0x4

    move v4, v3

    move v6, v4

    :goto_0
    if-ge v4, v2, :cond_2

    add-int/2addr v0, v6

    .line 537
    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 538
    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 539
    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    .line 540
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    const v8, 0xfff7

    and-int/2addr v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 542
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    .line 543
    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_1

    .line 545
    iget-object v9, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v9

    .line 546
    iget-object v10, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v10

    mul-int/lit16 v10, v10, 0x3e8

    div-int/2addr v10, p1

    .line 547
    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected readNumGlyphs()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "maxp"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    return v0

    .line 623
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x0

    aget v0, v0, v2

    add-int/lit8 v0, v0, 0x4

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 624
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    return v0
.end method
