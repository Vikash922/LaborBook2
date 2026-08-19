.class public Lcom/itextpdf/io/codec/Jbig2SegmentReader;
.super Ljava/lang/Object;
.source "Jbig2SegmentReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;,
        Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;
    }
.end annotation


# static fields
.field public static final END_OF_FILE:I = 0x33

.field public static final END_OF_PAGE:I = 0x31

.field public static final END_OF_STRIPE:I = 0x32

.field public static final EXTENSION:I = 0x3e

.field public static final IMMEDIATE_GENERIC_REFINEMENT_REGION:I = 0x2a

.field public static final IMMEDIATE_GENERIC_REGION:I = 0x26

.field public static final IMMEDIATE_HALFTONE_REGION:I = 0x16

.field public static final IMMEDIATE_LOSSLESS_GENERIC_REFINEMENT_REGION:I = 0x2b

.field public static final IMMEDIATE_LOSSLESS_GENERIC_REGION:I = 0x27

.field public static final IMMEDIATE_LOSSLESS_HALFTONE_REGION:I = 0x17

.field public static final IMMEDIATE_LOSSLESS_TEXT_REGION:I = 0x7

.field public static final IMMEDIATE_TEXT_REGION:I = 0x6

.field public static final INTERMEDIATE_GENERIC_REFINEMENT_REGION:I = 0x28

.field public static final INTERMEDIATE_GENERIC_REGION:I = 0x24

.field public static final INTERMEDIATE_HALFTONE_REGION:I = 0x14

.field public static final INTERMEDIATE_TEXT_REGION:I = 0x4

.field public static final PAGE_INFORMATION:I = 0x30

.field public static final PATTERN_DICTIONARY:I = 0x10

.field public static final PROFILES:I = 0x34

.field public static final SYMBOL_DICTIONARY:I = 0x0

.field public static final TABLES:I = 0x35


# instance fields
.field private final globals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;",
            ">;"
        }
    .end annotation
.end field

.field private number_of_pages:I

.field private number_of_pages_known:Z

.field private final pages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;",
            ">;"
        }
    .end annotation
.end field

.field private ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field private read:Z

.field private final segments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;",
            ">;"
        }
    .end annotation
.end field

.field private sequential:Z


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V
    .locals 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->segments:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->globals:Ljava/util/Set;

    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->number_of_pages:I

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->read:Z

    .line 214
    iput-object p1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    return-void
.end method

.method public static copyByteArray([B)[B
    .locals 3

    .line 218
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 219
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public getGlobal(Z)[B
    .locals 6

    .line 428
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 431
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->globals:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 432
    check-cast v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;

    if-eqz p1, :cond_1

    .line 433
    iget v4, v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->type:I

    const/16 v5, 0x33

    if-eq v4, v5, :cond_0

    iget v4, v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->type:I

    const/16 v5, 0x31

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 437
    :cond_1
    iget-object v4, v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->headerData:[B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 438
    iget-object v3, v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->data:[B

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 441
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 442
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    move-object v1, p1

    .line 444
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 446
    const-class v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 447
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public getPage(I)Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;

    return-object p1
.end method

.method public getPageHeight(I)I
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;

    iget p1, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->pageBitmapHeight:I

    return p1
.end method

.method public getPageWidth(I)I
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;

    iget p1, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->pageBitmapWidth:I

    return p1
.end method

.method public numberOfPages()I
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public read()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->read:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->read:Z

    .line 229
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->readFileHeader()V

    .line 231
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->sequential:Z

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->readHeader()Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;

    move-result-object v0

    .line 235
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->readSegment(Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;)V

    .line 236
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->segments:Ljava/util/Map;

    iget v2, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->segmentNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_1

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->readHeader()Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->segments:Ljava/util/Map;

    iget v2, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->segmentNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget v0, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->type:I

    const/16 v1, 0x33

    if-ne v0, v1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->segments:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 246
    iget-object v2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->segments:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->readSegment(Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 225
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already.attempted.a.read.on.this.jbig2.file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method readFileHeader()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    const/16 v0, 0x8

    .line 386
    new-array v1, v0, [B

    .line 387
    iget-object v2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([B)I

    .line 389
    new-array v2, v0, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 392
    aget-byte v5, v1, v4

    aget-byte v6, v2, v4

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 393
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "File header idstring is not good at byte {0}"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 399
    :goto_1
    iput-boolean v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->sequential:Z

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_3

    move v3, v2

    .line 400
    :cond_3
    iput-boolean v3, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->number_of_pages_known:Z

    and-int/lit16 v0, v0, 0xfc

    if-nez v0, :cond_5

    if-eqz v3, :cond_4

    .line 407
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->number_of_pages:I

    :cond_4
    return-void

    .line 403
    :cond_5
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "File header flags bits from 2 to 7 should be 0, some not"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        -0x69t
        0x4at
        0x42t
        0x32t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method readHeader()Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v0

    long-to-int v0, v0

    .line 282
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v1

    .line 283
    new-instance v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;

    invoke-direct {v2, v1}, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;-><init>(I)V

    .line 286
    iget-object v3, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v3

    and-int/lit16 v4, v3, 0x80

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x80

    if-ne v4, v7, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 288
    :goto_0
    iput-boolean v4, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->deferredNonRetain:Z

    and-int/lit8 v4, v3, 0x40

    const/16 v7, 0x40

    if-ne v4, v7, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    and-int/lit8 v3, v3, 0x3f

    .line 291
    iput v3, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->type:I

    .line 294
    iget-object v3, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v3

    and-int/lit16 v7, v3, 0xe0

    const/4 v8, 0x5

    shr-int/2addr v7, v8

    const/4 v9, 0x7

    if-ne v7, v9, :cond_5

    .line 301
    iget-object v3, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v3, v7, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 302
    iget-object v3, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v3

    const v7, 0x1fffffff

    and-int v9, v3, v7

    add-int/lit8 v3, v9, 0x1

    .line 303
    new-array v10, v3, [Z

    move v3, v5

    move v7, v3

    .line 307
    :cond_2
    rem-int/lit8 v8, v3, 0x8

    if-nez v8, :cond_3

    .line 309
    iget-object v7, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v7

    :cond_3
    shl-int v11, v6, v8

    and-int/2addr v11, v7

    shr-int v8, v11, v8

    if-ne v8, v6, :cond_4

    move v8, v6

    goto :goto_2

    :cond_4
    move v8, v5

    .line 311
    :goto_2
    aput-boolean v8, v10, v3

    add-int/lit8 v3, v3, 0x1

    if-le v3, v9, :cond_2

    move v7, v9

    goto :goto_5

    :cond_5
    const/4 v9, 0x4

    if-gt v7, v9, :cond_7

    add-int/lit8 v8, v7, 0x1

    .line 317
    new-array v10, v8, [Z

    and-int/lit8 v3, v3, 0x1f

    move v8, v5

    :goto_3
    if-gt v8, v7, :cond_8

    shl-int v9, v6, v8

    and-int/2addr v9, v3

    shr-int/2addr v9, v8

    if-ne v9, v6, :cond_6

    move v9, v6

    goto :goto_4

    :cond_6
    move v9, v5

    .line 320
    :goto_4
    aput-boolean v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    if-eq v7, v8, :cond_10

    const/4 v3, 0x6

    if-eq v7, v3, :cond_10

    const/4 v10, 0x0

    .line 328
    :cond_8
    :goto_5
    iput-object v10, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->segmentRetentionFlags:[Z

    .line 329
    iput v7, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->countOfReferredToSegments:I

    add-int/lit8 v3, v7, 0x1

    .line 332
    new-array v3, v3, [I

    :goto_6
    if-gt v6, v7, :cond_b

    const/16 v5, 0x100

    if-gt v1, v5, :cond_9

    .line 335
    iget-object v5, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v5

    aput v5, v3, v6

    goto :goto_7

    :cond_9
    const/high16 v5, 0x10000

    if-gt v1, v5, :cond_a

    .line 337
    iget-object v5, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    aput v5, v3, v6

    goto :goto_7

    .line 339
    :cond_a
    iget-object v5, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedInt()J

    move-result-wide v8

    long-to-int v5, v8

    aput v5, v3, v6

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 342
    :cond_b
    iput-object v3, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->referredToSegmentNumbers:[I

    .line 346
    iget-object v3, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v5

    long-to-int v3, v5

    sub-int/2addr v3, v0

    if-eqz v4, :cond_c

    .line 348
    iget-object v5, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v5

    goto :goto_8

    .line 350
    :cond_c
    iget-object v5, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v5

    :goto_8
    if-ltz v5, :cond_f

    .line 356
    iput v5, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page:I

    .line 358
    iput-boolean v4, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page_association_size:Z

    .line 359
    iput v3, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page_association_offset:I

    if-lez v5, :cond_d

    .line 361
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 362
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;

    invoke-direct {v4, v5, p0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;-><init>(ILcom/itextpdf/io/codec/Jbig2SegmentReader;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    if-lez v5, :cond_e

    .line 365
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->addSegment(Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;)V

    goto :goto_9

    .line 367
    :cond_e
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->globals:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    :goto_9
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedInt()J

    move-result-wide v3

    .line 373
    iput-wide v3, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->dataLength:J

    .line 375
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v3

    long-to-int v1, v3

    .line 376
    iget-object v3, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    sub-int/2addr v1, v0

    .line 377
    new-array v0, v1, [B

    .line 378
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([B)I

    .line 379
    iput-object v0, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->headerData:[B

    return-object v2

    .line 353
    :cond_f
    new-instance v2, Lcom/itextpdf/io/exceptions/IOException;

    const-string v3, "Page {0} is invalid for segment {1} starting at {2}"

    invoke-direct {v2, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 324
    :cond_10
    new-instance v2, Lcom/itextpdf/io/exceptions/IOException;

    const-string v3, "Count of referred-to segments has forbidden value in the header for segment {0} starting at {1}"

    invoke-direct {v2, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0
.end method

.method readSegment(Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v0

    long-to-int v0, v0

    .line 255
    iget-wide v1, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->dataLength:J

    const-wide v3, 0xffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    .line 259
    :cond_0
    iget-wide v1, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->dataLength:J

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 260
    iget-object v2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([B)I

    .line 261
    iput-object v1, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->data:[B

    .line 263
    iget v1, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->type:I

    const/16 v2, 0x30

    if-ne v1, v2, :cond_2

    .line 264
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v1

    long-to-int v1, v1

    .line 265
    iget-object v2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 266
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v0

    .line 267
    iget-object v2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v2

    .line 268
    iget-object v3, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 269
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    iget v3, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;

    if-eqz v1, :cond_1

    .line 274
    iput v0, v1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->pageBitmapWidth:I

    .line 275
    iput v2, v1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->pageBitmapHeight:I

    goto :goto_0

    .line 271
    :cond_1
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Referring to widht or height of a page we haven\'t seen yet: {0}"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 455
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->read:Z

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Jbig2SegmentReader: number of pages: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->numberOfPages()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 458
    :cond_0
    const-string v0, "Jbig2SegmentReader in indeterminate state."

    return-object v0
.end method
