.class public Lcom/itextpdf/kernel/pdf/PdfReader;
.super Ljava/lang/Object;
.source "PdfReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;,
        Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;
    }
.end annotation


# static fields
.field public static final DEFAULT_STRICTNESS_LEVEL:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

.field protected static correctStreamLength:Z = false

.field private static final endobj:[B

.field private static final endstream:[B

.field private static final endstream1:Ljava/lang/String; = "endstream"

.field private static final endstream2:Ljava/lang/String; = "\nendstream"

.field private static final endstream3:Ljava/lang/String; = "\r\nendstream"

.field private static final endstream4:Ljava/lang/String; = "\rendstream"


# instance fields
.field private currentIndirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

.field protected decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

.field protected encrypted:Z

.field protected eofPos:J

.field protected fixedXref:Z

.field protected headerPdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field protected hybridXref:Z

.field protected lastXref:J

.field private memorySavingMode:Z

.field protected pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

.field protected pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

.field protected rebuiltXref:Z

.field private strictnessLevel:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

.field protected tokens:Lcom/itextpdf/io/source/PdfTokenizer;

.field protected trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

.field private unethicalReading:Z

.field private xmpMeta:Lcom/itextpdf/kernel/xmp/XMPMeta;

.field protected xrefStm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->LENIENT:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfReader;->DEFAULT_STRICTNESS_LEVEL:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    .line 94
    const-string v0, "endstream"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfReader;->endstream:[B

    .line 95
    const-string v0, "endobj"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfReader;->endobj:[B

    const/4 v0, 0x1

    .line 97
    sput-boolean v0, Lcom/itextpdf/kernel/pdf/PdfReader;->correctStreamLength:Z

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/source/IRandomAccessSource;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;Lcom/itextpdf/kernel/pdf/ReaderProperties;Z)V

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/io/source/IRandomAccessSource;Lcom/itextpdf/kernel/pdf/ReaderProperties;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfReader;->DEFAULT_STRICTNESS_LEVEL:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->strictnessLevel:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    .line 125
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->rebuiltXref:Z

    .line 126
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->hybridXref:Z

    .line 127
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->fixedXref:Z

    .line 128
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->xrefStm:Z

    .line 207
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    .line 208
    invoke-static {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfReader;->getOffsetTokeniser(Lcom/itextpdf/io/source/IRandomAccessSource;Z)Lcom/itextpdf/io/source/PdfTokenizer;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    new-instance v0, Lcom/itextpdf/kernel/pdf/ReaderProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/ReaderProperties;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->extractOrCreateSource(Ljava/io/InputStream;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;Lcom/itextpdf/kernel/pdf/ReaderProperties;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    new-instance v0, Lcom/itextpdf/kernel/pdf/ReaderProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/ReaderProperties;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    const/4 v1, 0x0

    .line 188
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->setForceRead(Z)Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object p1

    const/4 v0, 0x1

    .line 186
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;Lcom/itextpdf/kernel/pdf/ReaderProperties;Z)V

    return-void
.end method

.method private checkPdfStreamLength(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1490
    sget-boolean v0, Lcom/itextpdf/kernel/pdf/PdfReader;->correctStreamLength:Z

    if-nez v0, :cond_0

    return-void

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->length()J

    move-result-wide v0

    .line 1493
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOffset()J

    move-result-wide v2

    .line 1496
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    .line 1497
    const-string v5, "endstream"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 1498
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v2

    const-wide/16 v10, 0x14

    sub-long/2addr v0, v10

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 1502
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0, v8, v9}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1503
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 1504
    const-string v1, "\nendstream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\r\nendstream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\rendstream"

    .line 1505
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_0

    .line 1510
    :cond_3
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    .line 1511
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :goto_0
    if-eqz v6, :cond_b

    .line 1515
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    .line 1516
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6, v2, v3}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1519
    :cond_4
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v8

    .line 1520
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    .line 1523
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6, v0, v7}, Lcom/itextpdf/io/source/PdfTokenizer;->readLineSegment(Lcom/itextpdf/io/source/ByteBuffer;Z)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1524
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->CONSERVATIVE:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->strictnessLevel:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->isStricter(Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 1525
    :cond_5
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Stream shall end with endstream keyword."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1529
    :cond_6
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfReader;->endstream:[B

    invoke-virtual {v0, v6}, Lcom/itextpdf/io/source/ByteBuffer;->startsWith([B)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    .line 1531
    :cond_7
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfReader;->endobj:[B

    invoke-virtual {v0, v6}, Lcom/itextpdf/io/source/ByteBuffer;->startsWith([B)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1532
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-wide/16 v6, 0x10

    sub-long v6, v8, v6

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1533
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 1534
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    int-to-long v0, v0

    add-long v8, v6, v0

    :cond_8
    :goto_1
    sub-long v0, v8, v2

    long-to-int v0, v0

    .line 1541
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-wide/16 v2, 0x2

    sub-long v2, v8, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1542
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_9

    add-int/lit8 v0, v0, -0x1

    .line 1545
    :cond_9
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-wide/16 v2, 0x1

    sub-long/2addr v8, v2

    invoke-virtual {v1, v8, v9}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1546
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    add-int/lit8 v0, v0, -0x1

    .line 1549
    :cond_a
    invoke-virtual {v4, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(I)V

    .line 1550
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->updateLength(I)V

    :cond_b
    return-void
.end method

.method private createPdfNullInstance(Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 0

    if-eqz p1, :cond_0

    .line 1556
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    return-object p1

    .line 1558
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfNull;-><init>()V

    return-object p1
.end method

.method public static decodeBytes([BLcom/itextpdf/kernel/pdf/PdfDictionary;)[B
    .locals 1

    .line 467
    invoke-static {}, Lcom/itextpdf/kernel/pdf/filters/FilterHandlers;->getDefaultFilterHandlers()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->decodeBytes([BLcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeBytes([BLcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 483
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 484
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 486
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    .line 487
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v4

    if-ne v4, v3, :cond_2

    .line 489
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 494
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 495
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 499
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->isMemoryLimitsAwarenessRequiredOnDecompression(Lcom/itextpdf/kernel/pdf/PdfArray;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    if-eqz v5, :cond_5

    .line 502
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->beginDecompressedPdfStreamProcessing()Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    .line 505
    :cond_5
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 506
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    const/4 v8, 0x3

    if-eqz v7, :cond_6

    .line 507
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v9

    if-eq v9, v8, :cond_8

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v9

    if-eq v9, v3, :cond_8

    :cond_6
    if-eqz v7, :cond_7

    .line 508
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->release()V

    .line 509
    :cond_7
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->DP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    :cond_8
    if-eqz v7, :cond_b

    .line 512
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v9

    if-ne v9, v8, :cond_9

    .line 513
    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_3

    .line 514
    :cond_9
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v9

    if-ne v9, v3, :cond_a

    .line 515
    move-object v6, v7

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 517
    :cond_a
    :goto_3
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->release()V

    .line 519
    :cond_b
    :goto_4
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_11

    .line 520
    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 521
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;

    if-eqz v9, :cond_10

    .line 527
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v10

    if-ge v4, v10, :cond_e

    .line 528
    invoke-virtual {v6, v4, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 529
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_c

    goto :goto_5

    .line 531
    :cond_c
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v11

    if-ne v11, v8, :cond_d

    .line 532
    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    goto :goto_6

    .line 534
    :cond_d
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Decode parameter type {0} is not supported."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p0

    throw p0

    :cond_e
    :goto_5
    move-object v10, v0

    .line 540
    :goto_6
    invoke-interface {v9, p0, v7, v10, p1}, Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;->decode([BLcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)[B

    move-result-object p0

    if-eqz v5, :cond_f

    .line 542
    array-length v7, p0

    int-to-long v9, v7

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->considerBytesOccupiedByDecompressedPdfStream(J)Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 523
    :cond_10
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Filter {0} is not supported."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 524
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p0

    throw p0

    :cond_11
    if-eqz v5, :cond_12

    .line 546
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->endDecompressedPdfStreamProcessing()Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    :cond_12
    return-object p0
.end method

.method private static getOffsetTokeniser(Lcom/itextpdf/io/source/IRandomAccessSource;Z)Lcom/itextpdf/io/source/PdfTokenizer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1572
    new-instance v0, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {v1, p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 1575
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getHeaderOffset()I

    move-result p1
    :try_end_0
    .catch Lcom/itextpdf/io/exceptions/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 1583
    new-instance v0, Lcom/itextpdf/io/source/WindowRandomAccessSource;

    int-to-long v1, p1

    invoke-direct {v0, p0, v1, v2}, Lcom/itextpdf/io/source/WindowRandomAccessSource;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;J)V

    .line 1584
    new-instance p0, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance p1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {p1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {p0, p1}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    move-object v0, p0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    if-eqz p1, :cond_1

    .line 1578
    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->close()V

    .line 1580
    :cond_1
    throw p0
.end method

.method private isCurrentObjectATrailer()Z
    .locals 3

    const/4 v0, 0x0

    .line 1369
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1370
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Root:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private processArrayReadError()V
    .locals 3

    .line 1415
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 1416
    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 1415
    const-string v1, "unexpected {0} was encountered."

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1417
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->CONSERVATIVE:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->getStrictnessLevel()Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->isStricter(Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1418
    const-class v1, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 1419
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 1421
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private readDecryptObj()V
    .locals 8

    .line 1426
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    if-eqz v0, :cond_0

    return-void

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Encrypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1431
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    .line 1433
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 1434
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Adobe_PubSec:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1435
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificate:Ljava/security/cert/Certificate;

    if-eqz v0, :cond_2

    .line 1439
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificateKey:Ljava/security/Key;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificate:Ljava/security/cert/Certificate;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v6, v1, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificateKeyProvider:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v7, v1, Lcom/itextpdf/kernel/pdf/ReaderProperties;->externalDecryptionProcess:Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/kernel/pdf/PdfEncryption;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    goto :goto_0

    .line 1436
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Certificate is not provided. Document is encrypted with public key certificate, it should be passed to PdfReader constructor with properties. See ReaderProperties#setPublicKeySecurityParams() method."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1441
    :cond_3
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Standard:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1442
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/ReaderProperties;->password:[B

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->getOriginalFileId()[B

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfEncryption;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[B)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    :goto_0
    return-void

    .line 1444
    :cond_4
    new-instance v1, Lcom/itextpdf/kernel/crypto/securityhandler/UnsupportedSecurityHandlerException;

    const-string v2, "Failed to open the document. Security handler {0} is not supported"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/UnsupportedSecurityHandlerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readObject(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1451
    :cond_0
    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v1, :cond_1

    .line 1452
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p1

    .line 1454
    :cond_1
    :try_start_0
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->currentIndirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 1455
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 1456
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object p2

    .line 1457
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 1458
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObjectStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 1459
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p1

    .line 1460
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_7

    .line 1463
    :try_start_1
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1464
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 1465
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Obj:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 1466
    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getObjNr()I

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 1467
    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getGenNr()I

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v3

    if-eq v1, v3, :cond_4

    .line 1468
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v3, "Invalid offset for object {0}."

    .line 1469
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 1468
    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1471
    :cond_4
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz p2, :cond_6

    .line 1473
    :try_start_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result p2

    if-nez p2, :cond_6

    .line 1474
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->fixXref()V

    .line 1475
    invoke-direct {p0, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_5

    .line 1480
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->setIndirectReference(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    :cond_5
    return-object v0

    .line 1477
    :cond_6
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    return-object v0

    :catch_1
    move-exception p1

    .line 1485
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot read PdfObject."

    invoke-direct {p2, v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private setTrailerFromTrailerIndex(Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1377
    const-string v0, "Trailer not found."

    if-eqz p1, :cond_2

    .line 1380
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    const/4 p1, 0x0

    .line 1381
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1382
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Root:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1383
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1385
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz p1, :cond_1

    return-void

    .line 1386
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1378
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

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

    .line 217
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->close()V

    return-void
.end method

.method public computeUserPassword()[B
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isOpenedWithFullPermission()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/ReaderProperties;->password:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->computeUserPassword([B)[B

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 668
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected fixXref()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1284
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->fixedXref:Z

    .line 1285
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v1

    .line 1286
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1287
    new-instance v2, Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    .line 1288
    new-instance v3, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v4, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;

    invoke-direct {v5, v2}, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;-><init>(Lcom/itextpdf/io/source/ByteBuffer;)V

    invoke-direct {v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v3, v4}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 1290
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v4

    .line 1291
    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    .line 1294
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6, v2, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->readLineSegment(Lcom/itextpdf/io/source/ByteBuffer;Z)Z

    move-result v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    const/4 v6, 0x0

    .line 1296
    invoke-virtual {v2, v6}, Lcom/itextpdf/io/source/ByteBuffer;->get(I)B

    move-result v7

    const/16 v8, 0x30

    if-lt v7, v8, :cond_0

    invoke-virtual {v2, v6}, Lcom/itextpdf/io/source/ByteBuffer;->get(I)B

    move-result v7

    const/16 v8, 0x39

    if-gt v7, v8, :cond_0

    .line 1297
    invoke-static {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->checkObjectStart(Lcom/itextpdf/io/source/PdfTokenizer;)[I

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 1300
    :cond_2
    aget v6, v7, v6

    .line 1301
    aget v7, v7, v0

    .line 1302
    invoke-virtual {v1, v6}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1303
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v8

    if-ne v8, v7, :cond_0

    .line 1304
    invoke-virtual {v6, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->fixOffset(J)V

    goto :goto_0
.end method

.method public getCryptoMode()I
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 628
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getCryptoMode()I

    move-result v0

    return v0

    .line 622
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFileLength()J
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastXref()J
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->lastXref:J

    return-wide v0

    .line 357
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getModifiedFileId()[B
    .locals 3

    .line 714
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 720
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 722
    new-array v0, v0, [B

    return-object v0

    .line 715
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOriginalFileId()[B
    .locals 4

    .line 690
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 696
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 698
    :cond_0
    new-array v0, v1, [B

    return-object v0

    .line 691
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPdfAConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    if-nez v0, :cond_2

    .line 642
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->xmpMeta:Lcom/itextpdf/kernel/xmp/XMPMeta;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXmpMetadata()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXmpMetadata()[B

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->xmpMeta:Lcom/itextpdf/kernel/xmp/XMPMeta;

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->xmpMeta:Lcom/itextpdf/kernel/xmp/XMPMeta;

    if-eqz v0, :cond_2

    .line 651
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;->getConformanceLevel(Lcom/itextpdf/kernel/xmp/XMPMeta;)Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 643
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :catch_0
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object v0
.end method

.method public getPermissions()J
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPermissions()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPermissions()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 603
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v0

    return-object v0
.end method

.method public getStrictnessLevel()Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->strictnessLevel:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    return-object v0
.end method

.method protected getXrefPrev(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfNumber;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1395
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1396
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    return-object p1

    .line 1398
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->CONSERVATIVE:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    .line 1399
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->getStrictnessLevel()Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->isStricter(Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1400
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1401
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1402
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    return-object p1

    .line 1405
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/exceptions/InvalidXRefPrevException;

    const-string v0, "Prev pointer in xref structure shall be direct number object."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/InvalidXRefPrevException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasFixedXref()Z
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->fixedXref:Z

    return v0

    .line 343
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasHybridXref()Z
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->hybridXref:Z

    return v0

    .line 313
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasRebuiltXref()Z
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->rebuiltXref:Z

    return v0

    .line 298
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasXrefStm()Z
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->xrefStm:Z

    return v0

    .line 327
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCloseStream()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->isCloseStream()Z

    move-result v0

    return v0
.end method

.method public isEncrypted()Z
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    return v0

    .line 734
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isMemorySavingMode()Z
    .locals 1

    .line 1411
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->memorySavingMode:Z

    return v0
.end method

.method public isOpenedWithFullPermission()Z
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isOpenedWithFullPermission()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->unethicalReading:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 581
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readArray(Z)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 991
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    :goto_0
    const/4 v1, 0x1

    .line 993
    invoke-virtual {p0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 995
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {p1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object p1

    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq p1, v1, :cond_0

    .line 996
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->processArrayReadError()V

    :cond_0
    return-object v0

    .line 1000
    :cond_1
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0
.end method

.method protected readDictionary(Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 965
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 967
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 968
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v1, v2, :cond_0

    return-object v0

    .line 971
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Name:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v1, v2, :cond_1

    .line 972
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 973
    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 972
    const-string v3, "Dictionary key {0} is not a name."

    invoke-virtual {v1, v3, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x1

    .line 975
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readPdfName(Z)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .line 976
    invoke-virtual {p0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-nez v1, :cond_3

    .line 978
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const/4 v5, 0x0

    const-string v6, "unexpected {0} was encountered."

    if-ne v3, v4, :cond_2

    .line 979
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v4, ">>"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 980
    invoke-static {v6, v4}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Object;

    .line 979
    invoke-virtual {v3, v4, v7}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 981
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v3, v4, :cond_3

    .line 982
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v4, "]"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 983
    invoke-static {v6, v4}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 982
    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 985
    :cond_3
    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0
.end method

.method protected readObject(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    const/4 v0, 0x1

    .line 837
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1
.end method

.method protected readObject(Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 841
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1
.end method

.method protected readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 886
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v0

    .line 887
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfReader$1;->$SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType:[I

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 935
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->Null:[B

    invoke-virtual {p2, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 936
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->createPdfNullInstance(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1

    .line 933
    :pswitch_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Unexpected end of file."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 931
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readReference(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1

    .line 929
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readPdfName(Z)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    return-object p1

    .line 922
    :pswitch_3
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->isHexString()Z

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([BZ)V

    .line 923
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 924
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->currentIndirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result p2

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->currentIndirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {p1, p2, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;->setDecryption(IILcom/itextpdf/kernel/pdf/PdfEncryption;)V

    :cond_0
    return-object p1

    .line 920
    :pswitch_4
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {p2}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>([B)V

    return-object p1

    .line 918
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfReader;->readArray(Z)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    return-object p1

    .line 889
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfReader;->readDictionary(Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    .line 890
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {p2}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v0

    .line 894
    :cond_1
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {p2}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 895
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Comment:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v2, v3, :cond_1

    :cond_2
    if-eqz p2, :cond_6

    .line 897
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer;->Stream:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 901
    :cond_3
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {p2}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result p2

    const/16 v0, 0x20

    if-eq p2, v0, :cond_3

    const/16 v0, 0x9

    if-eq p2, v0, :cond_3

    if-eqz p2, :cond_3

    const/16 v0, 0xc

    if-eq p2, v0, :cond_3

    const/16 v0, 0xa

    if-eq p2, v0, :cond_4

    .line 904
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {p2}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result p2

    :cond_4
    if-eq p2, v0, :cond_5

    .line 907
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0, p2}, Lcom/itextpdf/io/source/PdfTokenizer;->backOnePosition(I)V

    .line 909
    :cond_5
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfStream;

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v0

    invoke-direct {p2, v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>(JLcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 910
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOffset()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getLength()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    return-object p2

    .line 913
    :cond_6
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {p2, v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    return-object p1

    .line 937
    :cond_7
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->True:[B

    invoke-virtual {p2, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    .line 939
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfBoolean;->TRUE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    return-object p1

    .line 941
    :cond_8
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;-><init>(Z)V

    return-object p1

    .line 943
    :cond_9
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer;->False:[B

    invoke-virtual {p2, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result p2

    if-eqz p2, :cond_b

    if-eqz p1, :cond_a

    .line 945
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfBoolean;->FALSE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    return-object p1

    .line 947
    :cond_a
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;-><init>(Z)V

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected readObjectStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 774
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v0

    .line 775
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->First:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    .line 776
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v2

    const/4 v3, 0x1

    .line 777
    invoke-virtual {p0, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfReader;->readStreamBytes(Lcom/itextpdf/kernel/pdf/PdfStream;Z)[B

    move-result-object v4

    .line 778
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 780
    :try_start_0
    new-instance v6, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v7, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v8, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v8}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v8, v4}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v6, v7}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    iput-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 781
    new-array v4, v2, [I

    .line 782
    new-array v6, v2, [I

    const/4 v7, 0x0

    move v9, v3

    move v8, v7

    :goto_0
    if-ge v8, v2, :cond_4

    .line 785
    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_2

    .line 788
    :cond_0
    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v9

    sget-object v10, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v9, v10, :cond_1

    :goto_1
    move v9, v7

    goto :goto_2

    .line 792
    :cond_1
    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/PdfTokenizer;->getIntValue()I

    move-result v9

    aput v9, v6, v8

    .line 793
    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    .line 796
    :cond_2
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v10

    sget-object v11, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v10, v11, :cond_3

    goto :goto_1

    .line 800
    :cond_3
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/PdfTokenizer;->getIntValue()I

    move-result v10

    add-int/2addr v10, v1

    aput v10, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v9, :cond_9

    move v1, v7

    :goto_3
    if-ge v1, v2, :cond_8

    .line 805
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    aget v9, v4, v1

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 806
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    .line 808
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v8

    aget v9, v6, v1

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v8

    .line 809
    iget-object v9, v8, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    if-nez v9, :cond_7

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result v9

    if-eq v9, v0, :cond_5

    goto :goto_5

    .line 819
    :cond_5
    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v9

    sget-object v10, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v9, v10, :cond_6

    .line 822
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>([B)V

    goto :goto_4

    .line 824
    :cond_6
    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    aget v10, v4, v1

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 825
    invoke-virtual {p0, v7, v3}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    .line 827
    :goto_4
    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setRefersTo(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 828
    invoke-virtual {v9, v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->setIndirectReference(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 830
    :cond_8
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    iput-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    return-void

    .line 803
    :cond_9
    :try_start_1
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Error while reading Object Stream."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 832
    iput-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 833
    throw p1
.end method

.method protected readPdf()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->checkPdfHeader()Ljava/lang/String;

    move-result-object v0

    .line 748
    :try_start_0
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/PdfVersion;->fromString(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->headerPdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    .line 753
    :try_start_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readXref()V
    :try_end_1
    .catch Lcom/itextpdf/kernel/exceptions/XrefCycledReferencesException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/itextpdf/kernel/exceptions/MemoryLimitsAwareException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/itextpdf/kernel/exceptions/InvalidXRefPrevException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 760
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->CONSERVATIVE:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->getStrictnessLevel()Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->isStricter(Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    const-class v1, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 762
    const-string v2, "Error occurred while reading cross reference table. Cross reference table will be rebuilt."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 764
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->rebuildXref()V

    .line 769
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->markReadingCompleted()V

    .line 770
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readDecryptObj()V

    return-void

    .line 766
    :cond_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 758
    :goto_1
    throw v0

    .line 750
    :catch_4
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "PDF version is not valid."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v1
.end method

.method protected readPdfName(Z)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    if-eqz p1, :cond_0

    .line 956
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->staticNames:Ljava/util/Map;

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz p1, :cond_0

    return-object p1

    .line 961
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>([B)V

    return-object p1
.end method

.method protected readReference(Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 7

    .line 845
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getObjNr()I

    move-result v3

    if-gez v3, :cond_0

    .line 847
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->createPdfNullInstance(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    .line 850
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    .line 851
    const-string v2, "Invalid indirect reference {0} {1} R"

    const-class v4, Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v1, :cond_3

    .line 852
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 854
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getObjNr()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 855
    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->getGenNr()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 854
    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 856
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->createPdfNullInstance(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1

    .line 858
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v0

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->getGenNr()I

    move-result v3

    if-eq v0, v3, :cond_5

    .line 859
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->fixedXref:Z

    if-eqz v0, :cond_2

    .line 860
    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 861
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 862
    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getObjNr()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 863
    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->getGenNr()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 862
    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 861
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 864
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->createPdfNullInstance(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1

    .line 866
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    .line 867
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{0} {1} R"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid indirect reference {0}."

    invoke-direct {p1, v1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    .line 871
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 872
    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 873
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getObjNr()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 874
    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->getGenNr()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 873
    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 875
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->createPdfNullInstance(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1

    .line 877
    :cond_4
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 878
    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getGenNr()I

    move-result v4

    const-wide/16 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 877
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public readStream(Lcom/itextpdf/kernel/pdf/PdfStream;Z)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfReader;->readStreamBytes(Lcom/itextpdf/kernel/pdf/PdfStream;Z)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 455
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public readStreamBytes(Lcom/itextpdf/kernel/pdf/PdfStream;Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readStreamBytesRaw(Lcom/itextpdf/kernel/pdf/PdfStream;)[B

    move-result-object v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 375
    invoke-static {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->decodeBytes([BLcom/itextpdf/kernel/pdf/PdfDictionary;)[B

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public readStreamBytesRaw(Lcom/itextpdf/kernel/pdf/PdfStream;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 391
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XRef:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ObjStm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->checkPdfStreamLength(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 394
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 397
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getLength()I

    move-result v2

    const/4 v3, 0x0

    if-gtz v2, :cond_2

    .line 399
    new-array p1, v3, [B

    return-object p1

    .line 400
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v4

    .line 403
    :try_start_0
    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 404
    new-array v0, v2, [B

    .line 405
    invoke-virtual {v4, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 406
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->doesStreamBelongToEmbeddedFile(Lcom/itextpdf/kernel/pdf/PdfStream;)Z

    move-result v1

    .line 407
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_a

    .line 408
    :cond_3
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 411
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 412
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/IndirectFilterUtils;->throwFlushedFilterException(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 414
    :cond_4
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_0
    move v3, v2

    goto :goto_2

    .line 416
    :cond_5
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v5

    if-ne v5, v2, :cond_8

    .line 417
    move-object v5, v1

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    move v6, v3

    .line 418
    :goto_1
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 419
    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 420
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/IndirectFilterUtils;->throwFlushedFilterException(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 422
    :cond_6
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_0

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 428
    :cond_8
    :goto_2
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->release()V

    :cond_9
    if-nez v3, :cond_a

    .line 431
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setHashKeyForNextObject(II)V

    .line 432
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->decryptByteArray([B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :cond_a
    :try_start_1
    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 440
    :catch_1
    throw p1
.end method

.method protected readXref()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getStartxref()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1007
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    .line 1008
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer;->Startxref:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1011
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    .line 1012
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v0, v1, :cond_5

    .line 1015
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getLongValue()J

    move-result-wide v0

    .line 1016
    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->lastXref:J

    .line 1017
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->eofPos:J

    .line 1019
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readXrefStream(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1020
    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->xrefStm:Z
    :try_end_0
    .catch Lcom/itextpdf/kernel/exceptions/XrefCycledReferencesException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/itextpdf/kernel/exceptions/MemoryLimitsAwareException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/itextpdf/kernel/exceptions/InvalidXRefPrevException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1031
    :catch_0
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->clear()V

    .line 1033
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1034
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readXrefSection()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1041
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1043
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1044
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->getXrefPrev(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1064
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Size:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 1066
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Invalid xref table."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v0

    .line 1049
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1050
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->CONSERVATIVE:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->getStrictnessLevel()Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->isStricter(Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1052
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Trailer prev entry points to its own cross reference section."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1055
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/exceptions/XrefCycledReferencesException;

    const-string v1, "Xref table has cycled references. Prev pointer indicates an already visited xref table."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/XrefCycledReferencesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1060
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1061
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readXrefSection()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 1026
    :goto_1
    throw v0

    .line 1013
    :cond_5
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "PDF startxref is not followed by a number."

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    .line 1009
    :cond_6
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "PDF startxref not found."

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method protected readXrefSection()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1071
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 1072
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer;->Xref:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v2, "xref subsection not found."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    .line 1076
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 1077
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer;->Trailer:[B

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1146
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1147
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->XRefStm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1148
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 1149
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v2

    int-to-long v4, v2

    .line 1151
    :try_start_0
    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfReader;->readXrefStream(J)Z

    .line 1152
    iput-boolean v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->xrefStm:Z

    .line 1153
    iput-boolean v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->hybridXref:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1155
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->clear()V

    .line 1156
    throw v1

    :cond_2
    :goto_0
    return-object v1

    .line 1080
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v2

    sget-object v4, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v2, v4, :cond_4

    .line 1081
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v4, "Object number of the first object in this xref subsection not found."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1084
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getIntValue()I

    move-result v2

    .line 1085
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 1086
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v4, v5, :cond_5

    .line 1087
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v5, "Number of entries in this xref subsection not found."

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1089
    :cond_5
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->getIntValue()I

    move-result v4

    add-int/2addr v4, v2

    move v11, v2

    :goto_1
    if-ge v11, v4, :cond_1

    .line 1091
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 1092
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->getLongValue()J

    move-result-wide v9

    .line 1093
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 1094
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->getIntValue()I

    move-result v8

    .line 1095
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    const-wide/16 v5, 0x0

    cmp-long v12, v9, v5

    if-nez v12, :cond_6

    const v5, 0xffff

    if-ne v8, v5, :cond_6

    if-ne v11, v3, :cond_6

    if-eqz v2, :cond_6

    add-int/lit8 v4, v4, -0x1

    move v11, v1

    goto/16 :goto_7

    .line 1112
    :cond_6
    invoke-virtual {v0, v11}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v5

    const/4 v6, 0x4

    if-eqz v5, :cond_7

    .line 1113
    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v7

    if-ne v7, v8, :cond_7

    move v7, v3

    goto :goto_2

    :cond_7
    move v7, v1

    :goto_2
    if-eqz v5, :cond_9

    if-nez v7, :cond_8

    .line 1116
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v13

    if-nez v13, :cond_8

    goto :goto_3

    :cond_8
    move v13, v1

    goto :goto_4

    :cond_9
    :goto_3
    move v13, v3

    :goto_4
    if-eqz v13, :cond_a

    .line 1119
    new-instance v14, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-object v5, v14

    move v7, v11

    invoke-direct/range {v5 .. v10}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V

    goto :goto_5

    :cond_a
    if-eqz v7, :cond_e

    .line 1121
    invoke-virtual {v5, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 1122
    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->clearState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1127
    :goto_5
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v7, Lcom/itextpdf/io/source/PdfTokenizer;->N:[B

    invoke-virtual {v6, v7}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez v12, :cond_d

    .line 1129
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v7, "file position 0 cross reference entry in this xref subsection."

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 1132
    :cond_b
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v7, Lcom/itextpdf/io/source/PdfTokenizer;->F:[B

    invoke-virtual {v6, v7}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz v13, :cond_d

    const/4 v6, 0x2

    .line 1134
    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_6

    .line 1137
    :cond_c
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v7, "Invalid cross reference entry in this xref subsection."

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_6
    if-eqz v13, :cond_e

    .line 1142
    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    :cond_e
    :goto_7
    add-int/2addr v11, v3

    goto/16 :goto_1
.end method

.method protected readXrefStream(J)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1163
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-wide/from16 v2, p1

    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    if-eqz v6, :cond_1a

    .line 1165
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6, v2, v3}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1166
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v6

    const/4 v8, 0x0

    if-nez v6, :cond_0

    return v8

    .line 1169
    :cond_0
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v6

    sget-object v9, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v6, v9, :cond_1

    return v8

    .line 1172
    :cond_1
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v6

    sget-object v9, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v6, v9, :cond_2

    goto/16 :goto_d

    .line 1175
    :cond_2
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v9, Lcom/itextpdf/io/source/PdfTokenizer;->Obj:[B

    invoke-virtual {v6, v9}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_c

    .line 1178
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1179
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v2

    .line 1180
    invoke-virtual {v0, v8}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 1182
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v6

    const/16 v9, 0x9

    if-ne v6, v9, :cond_17

    .line 1183
    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 1184
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->XRef:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v9}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    return v8

    .line 1190
    :cond_4
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v6, :cond_5

    .line 1191
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iput-object v6, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1192
    invoke-virtual {v6, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->putAll(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1193
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1194
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1195
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1196
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1199
    :cond_5
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Size:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v6

    .line 1201
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Index:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v9}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    if-nez v9, :cond_6

    .line 1203
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v9}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1204
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v10, v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1205
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v10, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 1207
    :cond_6
    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1209
    :goto_1
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v10

    .line 1211
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v11, v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/itextpdf/kernel/pdf/PdfReader;->getXrefPrev(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 1213
    move-object v4, v11

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v4

    .line 1214
    :cond_7
    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->setCapacity(I)V

    .line 1215
    invoke-virtual {v0, v3, v7}, Lcom/itextpdf/kernel/pdf/PdfReader;->readStreamBytes(Lcom/itextpdf/kernel/pdf/PdfStream;Z)[B

    move-result-object v3

    const/4 v6, 0x3

    .line 1217
    new-array v11, v6, [I

    move v12, v8

    :goto_2
    if-ge v12, v6, :cond_8

    .line 1219
    invoke-virtual {v10, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v13

    aput v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_8
    move v6, v8

    move v10, v6

    .line 1221
    :goto_3
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v12

    if-ge v6, v12, :cond_15

    .line 1222
    invoke-virtual {v9, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v12

    add-int/lit8 v13, v6, 0x1

    .line 1223
    invoke-virtual {v9, v13}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v13

    add-int v14, v12, v13

    .line 1224
    invoke-virtual {v2, v14}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->setCapacity(I)V

    move v15, v12

    :goto_4
    add-int/lit8 v18, v13, -0x1

    if-lez v13, :cond_14

    .line 1227
    aget v12, v11, v8

    if-lez v12, :cond_9

    move v12, v8

    move v13, v12

    .line 1229
    :goto_5
    aget v14, v11, v8

    if-ge v12, v14, :cond_a

    shl-int/lit8 v13, v13, 0x8

    add-int/lit8 v14, v10, 0x1

    .line 1230
    aget-byte v10, v3, v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v13, v10

    add-int/lit8 v12, v12, 0x1

    move v10, v14

    goto :goto_5

    :cond_9
    move v13, v7

    :cond_a
    const-wide/16 v16, 0x0

    move v12, v8

    move-object/from16 p2, v9

    move-wide/from16 v8, v16

    .line 1234
    :goto_6
    aget v14, v11, v7

    if-ge v12, v14, :cond_b

    const/16 v14, 0x8

    shl-long/2addr v8, v14

    add-int/lit8 v14, v10, 0x1

    .line 1235
    aget-byte v10, v3, v10

    and-int/lit16 v10, v10, 0xff

    move-wide/from16 v19, v4

    int-to-long v4, v10

    add-long/2addr v8, v4

    add-int/lit8 v12, v12, 0x1

    move v10, v14

    move-wide/from16 v4, v19

    goto :goto_6

    :cond_b
    move-wide/from16 v19, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7
    const/4 v14, 0x2

    .line 1238
    aget v12, v11, v14

    if-ge v5, v12, :cond_c

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v12, v10, 0x1

    .line 1239
    aget-byte v10, v3, v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v4, v10

    add-int/lit8 v5, v5, 0x1

    move v10, v12

    goto :goto_7

    :cond_c
    if-eqz v13, :cond_f

    if-eq v13, v7, :cond_e

    if-ne v13, v14, :cond_d

    .line 1251
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/16 v16, 0x0

    move-wide/from16 v21, v8

    int-to-long v7, v4

    move-object v12, v5

    move v14, v15

    move v9, v15

    move/from16 v15, v16

    move-wide/from16 v16, v7

    invoke-direct/range {v12 .. v17}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V

    move-wide/from16 v7, v21

    long-to-int v4, v7

    .line 1252
    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setObjStreamNumber(I)V

    goto :goto_8

    .line 1255
    :cond_d
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "Invalid xref stream."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move-wide v7, v8

    move v9, v15

    .line 1248
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-object v12, v5

    move v14, v9

    move v15, v4

    move-wide/from16 v16, v7

    invoke-direct/range {v12 .. v17}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V

    goto :goto_8

    :cond_f
    move-wide v7, v8

    move v9, v15

    .line 1245
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-object v12, v5

    move v15, v14

    move v14, v9

    move v0, v15

    move v15, v4

    move-wide/from16 v16, v7

    invoke-direct/range {v12 .. v17}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 1258
    :goto_8
    invoke-virtual {v2, v9}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    const/4 v4, 0x4

    if-eqz v0, :cond_10

    .line 1259
    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v7

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v8

    if-ne v7, v8, :cond_10

    const/4 v7, 0x1

    goto :goto_9

    :cond_10
    const/4 v7, 0x0

    :goto_9
    if-eqz v0, :cond_12

    if-nez v7, :cond_11

    .line 1262
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v8

    if-nez v8, :cond_11

    goto :goto_a

    :cond_11
    if-eqz v7, :cond_13

    .line 1267
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 1268
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setObjStreamNumber(I)V

    .line 1269
    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->clearState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_b

    .line 1265
    :cond_12
    :goto_a
    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    :cond_13
    :goto_b
    add-int/lit8 v15, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move/from16 v13, v18

    move-wide/from16 v4, v19

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_14
    move-wide/from16 v19, v4

    move-object/from16 p2, v9

    add-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_3

    :cond_15
    move-wide/from16 v19, v4

    .line 1275
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    move-object/from16 v0, p0

    move-wide/from16 v2, v19

    goto/16 :goto_0

    .line 1276
    :cond_16
    new-instance v0, Lcom/itextpdf/kernel/exceptions/XrefCycledReferencesException;

    const-string v1, "Xref stream has cycled references. Prev pointer indicates an already visited xref stream."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/XrefCycledReferencesException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move v0, v8

    return v0

    :cond_18
    :goto_c
    move v0, v8

    return v0

    :cond_19
    :goto_d
    move v0, v8

    return v0

    :cond_1a
    move v0, v7

    return v0
.end method

.method protected rebuildXref()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1312
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->xrefStm:Z

    .line 1313
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->hybridXref:Z

    const/4 v1, 0x1

    .line 1314
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->rebuiltXref:Z

    .line 1315
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v2

    .line 1316
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->clear()V

    .line 1317
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    const/4 v3, 0x0

    .line 1318
    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1319
    new-instance v4, Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v5, 0x18

    invoke-direct {v4, v5}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    .line 1320
    new-instance v5, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v6, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;

    invoke-direct {v7, v4}, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;-><init>(Lcom/itextpdf/io/source/ByteBuffer;)V

    invoke-direct {v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v5, v6}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 1325
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v11

    .line 1326
    invoke-virtual {v4}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    .line 1329
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6, v4, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->readLineSegment(Lcom/itextpdf/io/source/ByteBuffer;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1363
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfReader;->setTrailerFromTrailerIndex(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->close()V

    return-void

    .line 1332
    :cond_1
    :try_start_1
    invoke-virtual {v4, v0}, Lcom/itextpdf/io/source/ByteBuffer;->get(I)B

    move-result v6

    const/16 v7, 0x74

    if-ne v6, v7, :cond_4

    .line 1333
    invoke-static {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->checkTrailer(Lcom/itextpdf/io/source/ByteBuffer;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 1336
    :cond_2
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6, v11, v12}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1337
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    .line 1338
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v6

    .line 1339
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->isCurrentObjectATrailer()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1344
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 1346
    :cond_3
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v8, v6, v7}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    goto :goto_0

    .line 1348
    :cond_4
    invoke-virtual {v4, v0}, Lcom/itextpdf/io/source/ByteBuffer;->get(I)B

    move-result v6

    const/16 v7, 0x30

    if-lt v6, v7, :cond_0

    invoke-virtual {v4, v0}, Lcom/itextpdf/io/source/ByteBuffer;->get(I)B

    move-result v6

    const/16 v7, 0x39

    if-gt v6, v7, :cond_0

    .line 1349
    invoke-static {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->checkObjectStart(Lcom/itextpdf/io/source/PdfTokenizer;)[I

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_0

    .line 1353
    :cond_5
    aget v9, v6, v0

    .line 1354
    aget v10, v6, v1

    .line 1355
    invoke-virtual {v2, v9}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v2, v9}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v6

    if-gt v6, v10, :cond_0

    .line 1356
    :cond_6
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V

    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1320
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 1364
    :try_start_3
    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public setCloseStream(Z)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/source/PdfTokenizer;->setCloseStream(Z)V

    return-void
.end method

.method public setMemorySavingMode(Z)Lcom/itextpdf/kernel/pdf/PdfReader;
    .locals 0

    .line 244
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->memorySavingMode:Z

    return-object p0
.end method

.method public setStrictnessLevel(Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;)Lcom/itextpdf/kernel/pdf/PdfReader;
    .locals 0

    if-nez p1, :cond_0

    .line 266
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfReader;->DEFAULT_STRICTNESS_LEVEL:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    :cond_0
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->strictnessLevel:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    return-object p0
.end method

.method public setUnethicalReading(Z)Lcom/itextpdf/kernel/pdf/PdfReader;
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->unethicalReading:Z

    return-object p0
.end method
