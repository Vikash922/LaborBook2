.class final Lcom/itextpdf/io/codec/brotli/dec/Decode;
.super Ljava/lang/Object;
.source "Decode.java"


# static fields
.field private static final CODE_LENGTH_CODES:I = 0x12

.field private static final CODE_LENGTH_CODE_ORDER:[I

.field private static final CODE_LENGTH_REPEAT_CODE:I = 0x10

.field private static final DEFAULT_CODE_LENGTH:I = 0x8

.field private static final DISTANCE_CONTEXT_BITS:I = 0x2

.field private static final DISTANCE_SHORT_CODE_INDEX_OFFSET:[I

.field private static final DISTANCE_SHORT_CODE_VALUE_OFFSET:[I

.field private static final FIXED_TABLE:[I

.field private static final HUFFMAN_TABLE_BITS:I = 0x8

.field private static final HUFFMAN_TABLE_MASK:I = 0xff

.field private static final LITERAL_CONTEXT_BITS:I = 0x6

.field private static final NUM_BLOCK_LENGTH_CODES:I = 0x1a

.field private static final NUM_DISTANCE_SHORT_CODES:I = 0x10

.field private static final NUM_INSERT_AND_COPY_CODES:I = 0x2c0

.field private static final NUM_LITERAL_CODES:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x12

    .line 26
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/codec/brotli/dec/Decode;->CODE_LENGTH_CODE_ORDER:[I

    const/16 v0, 0x10

    .line 31
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/itextpdf/io/codec/brotli/dec/Decode;->DISTANCE_SHORT_CODE_INDEX_OFFSET:[I

    .line 35
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/itextpdf/io/codec/brotli/dec/Decode;->DISTANCE_SHORT_CODE_VALUE_OFFSET:[I

    .line 42
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/itextpdf/io/codec/brotli/dec/Decode;->FIXED_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x0
        0x5
        0x11
        0x6
        0x10
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40001
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40005
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyUncompressedData(Lcom/itextpdf/io/codec/brotli/dec/State;)V
    .locals 5

    .line 531
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->br:Lcom/itextpdf/io/codec/brotli/dec/BitReader;

    .line 532
    iget-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBuffer:[B

    .line 535
    iget v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    .line 536
    invoke-static {v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->reload(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 537
    iput v3, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    return-void

    .line 541
    :cond_0
    iget v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    iget v4, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 542
    iget v4, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    invoke-static {v0, v1, v4, v2}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->copyBytes(Lcom/itextpdf/io/codec/brotli/dec/BitReader;[BII)V

    .line 543
    iget v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    .line 544
    iget v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    .line 545
    iget v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    iget v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x5

    .line 546
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->nextRunningState:I

    .line 547
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesToWrite:I

    const/4 v0, 0x0

    .line 548
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesWritten:I

    const/16 v0, 0xc

    .line 549
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    return-void

    .line 553
    :cond_1
    invoke-static {v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->reload(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 554
    iput v3, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    return-void
.end method

.method private static decodeBlockTypeAndLength(Lcom/itextpdf/io/codec/brotli/dec/State;I)V
    .locals 7

    .line 335
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->br:Lcom/itextpdf/io/codec/brotli/dec/BitReader;

    .line 336
    iget-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockTypeRb:[I

    mul-int/lit8 v2, p1, 0x2

    .line 338
    invoke-static {v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->fillBitWindow(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 339
    iget-object v3, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockTypeTrees:[I

    mul-int/lit16 v4, p1, 0x438

    invoke-static {v3, v4, v0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->readSymbol([IILcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result v3

    .line 341
    iget-object v5, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLength:[I

    iget-object v6, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLenTrees:[I

    invoke-static {v6, v4, v0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->readBlockLength([IILcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result v0

    aput v0, v5, p1

    const/4 v0, 0x1

    if-ne v3, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 345
    aget v3, v1, v3

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 347
    aget v3, v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x2

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numBlockTypes:[I

    aget v0, v0, p1

    if-lt v3, v0, :cond_2

    .line 352
    iget-object p0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numBlockTypes:[I

    aget p0, p0, p1

    sub-int/2addr v3, p0

    :cond_2
    add-int/lit8 p0, v2, 0x1

    .line 354
    aget p1, v1, p0

    aput p1, v1, v2

    .line 355
    aput v3, v1, p0

    return-void
.end method

.method private static decodeCommandBlockSwitch(Lcom/itextpdf/io/codec/brotli/dec/State;)V
    .locals 3

    const/4 v0, 0x1

    .line 370
    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->decodeBlockTypeAndLength(Lcom/itextpdf/io/codec/brotli/dec/State;I)V

    .line 371
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup1:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iget-object v0, v0, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->trees:[I

    iget-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockTypeRb:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    aget v0, v0, v1

    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->treeCommandOffset:I

    return-void
.end method

.method private static decodeContextMap(I[BLcom/itextpdf/io/codec/brotli/dec/BitReader;)I
    .locals 8

    .line 291
    invoke-static {p2}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readMoreInput(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 292
    invoke-static {p2}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->decodeVarLenUnsignedByte(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 295
    invoke-static {p1, v2, p0}, Lcom/itextpdf/io/codec/brotli/dec/Utils;->fillWithZeroes([BII)V

    return v0

    .line 299
    :cond_0
    invoke-static {p2, v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    const/4 v3, 0x4

    .line 302
    invoke-static {p2, v3}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const/16 v4, 0x438

    .line 304
    new-array v4, v4, [I

    add-int v5, v0, v3

    .line 305
    invoke-static {v5, v4, v2, p2}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->readHuffmanCode(I[IILcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    move v5, v2

    :cond_3
    :goto_2
    if-ge v5, p0, :cond_7

    .line 307
    invoke-static {p2}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readMoreInput(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 308
    invoke-static {p2}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->fillBitWindow(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 309
    invoke-static {v4, v2, p2}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->readSymbol([IILcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result v6

    if-nez v6, :cond_4

    .line 311
    aput-byte v2, p1, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-gt v6, v3, :cond_6

    shl-int v7, v1, v6

    .line 314
    invoke-static {p2, v6}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v6

    add-int/2addr v7, v6

    :goto_4
    if-eqz v7, :cond_3

    if-ge v5, p0, :cond_5

    .line 319
    aput-byte v2, p1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 317
    :cond_5
    new-instance p0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    const-string p1, "Corrupted context map"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sub-int/2addr v6, v3

    int-to-byte v6, v6

    .line 324
    aput-byte v6, p1, v5

    goto :goto_3

    .line 328
    :cond_7
    invoke-static {p2, v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result p2

    if-ne p2, v1, :cond_8

    .line 329
    invoke-static {p1, p0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->inverseMoveToFrontTransform([BI)V

    :cond_8
    return v0
.end method

.method private static decodeDistanceBlockSwitch(Lcom/itextpdf/io/codec/brotli/dec/State;)V
    .locals 3

    const/4 v0, 0x2

    .line 375
    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->decodeBlockTypeAndLength(Lcom/itextpdf/io/codec/brotli/dec/State;I)V

    .line 376
    iget-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockTypeRb:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    shl-int/lit8 v0, v1, 0x2

    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->distContextMapSlice:I

    return-void
.end method

.method private static decodeLiteralBlockSwitch(Lcom/itextpdf/io/codec/brotli/dec/State;)V
    .locals 4

    const/4 v0, 0x0

    .line 359
    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->decodeBlockTypeAndLength(Lcom/itextpdf/io/codec/brotli/dec/State;I)V

    .line 360
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockTypeRb:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    shl-int/lit8 v2, v0, 0x6

    .line 361
    iput v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextMapSlice:I

    .line 362
    iget-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextMap:[B

    iget v3, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextMapSlice:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->literalTreeIndex:I

    .line 363
    iget-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup0:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iget-object v2, v2, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->trees:[I

    iget v3, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->literalTreeIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->literalTree:I

    .line 364
    iget-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextModes:[B

    aget-byte v0, v2, v0

    .line 365
    sget-object v2, Lcom/itextpdf/io/codec/brotli/dec/Context;->LOOKUP_OFFSETS:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextLookupOffset1:I

    .line 366
    sget-object v2, Lcom/itextpdf/io/codec/brotli/dec/Context;->LOOKUP_OFFSETS:[I

    add-int/2addr v0, v1

    aget v0, v2, v0

    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextLookupOffset2:I

    return-void
.end method

.method private static decodeMetaBlockLength(Lcom/itextpdf/io/codec/brotli/dec/BitReader;Lcom/itextpdf/io/codec/brotli/dec/State;)V
    .locals 9

    const/4 v0, 0x1

    .line 63
    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p1, Lcom/itextpdf/io/codec/brotli/dec/State;->inputEnd:Z

    .line 64
    iput v2, p1, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    .line 65
    iput-boolean v2, p1, Lcom/itextpdf/io/codec/brotli/dec/State;->isUncompressed:Z

    .line 66
    iput-boolean v2, p1, Lcom/itextpdf/io/codec/brotli/dec/State;->isMetadata:Z

    .line 67
    iget-boolean v1, p1, Lcom/itextpdf/io/codec/brotli/dec/State;->inputEnd:Z

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    .line 70
    invoke-static {p0, v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v3

    const/4 v4, 0x4

    add-int/2addr v3, v4

    const/4 v5, 0x7

    .line 71
    const-string v6, "Exuberant nibble"

    if-ne v3, v5, :cond_6

    .line 72
    iput-boolean v0, p1, Lcom/itextpdf/io/codec/brotli/dec/State;->isMetadata:Z

    .line 73
    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v3

    if-nez v3, :cond_5

    .line 76
    invoke-static {p0, v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_9

    const/16 v4, 0x8

    .line 81
    invoke-static {p0, v4}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v5, v3, 0x1

    if-ne v5, v1, :cond_4

    if-gt v1, v0, :cond_3

    goto :goto_2

    .line 83
    :cond_3
    new-instance p0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    invoke-direct {p0, v6}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_4
    :goto_2
    iget v5, p1, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    mul-int/lit8 v7, v3, 0x8

    shl-int/2addr v4, v7

    or-int/2addr v4, v5

    iput v4, p1, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 74
    :cond_5
    new-instance p0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    const-string p1, "Corrupted reserved bit"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_9

    .line 89
    invoke-static {p0, v4}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v7, v1, 0x1

    if-ne v7, v3, :cond_8

    if-gt v3, v4, :cond_7

    goto :goto_4

    .line 91
    :cond_7
    new-instance p0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    invoke-direct {p0, v6}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_8
    :goto_4
    iget v7, p1, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    mul-int/lit8 v8, v1, 0x4

    shl-int/2addr v5, v8

    or-int/2addr v5, v7

    iput v5, p1, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 96
    :cond_9
    iget v1, p1, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    .line 97
    iget-boolean v1, p1, Lcom/itextpdf/io/codec/brotli/dec/State;->inputEnd:Z

    if-nez v1, :cond_b

    .line 98
    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result p0

    if-ne p0, v0, :cond_a

    goto :goto_5

    :cond_a
    move v0, v2

    :goto_5
    iput-boolean v0, p1, Lcom/itextpdf/io/codec/brotli/dec/State;->isUncompressed:Z

    :cond_b
    return-void
.end method

.method private static decodeVarLenUnsignedByte(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)I
    .locals 2

    const/4 v0, 0x1

    .line 51
    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 52
    invoke-static {p0, v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 56
    :cond_0
    invoke-static {p0, v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result p0

    shl-int/2addr v0, v1

    add-int/2addr p0, v0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static decompress(Lcom/itextpdf/io/codec/brotli/dec/State;)V
    .locals 19

    move-object/from16 v0, p0

    .line 583
    iget v1, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    if-eqz v1, :cond_23

    .line 586
    iget v1, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_22

    .line 589
    iget-object v1, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->br:Lcom/itextpdf/io/codec/brotli/dec/BitReader;

    .line 590
    iget v2, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 591
    iget-object v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBuffer:[B

    move-object v10, v4

    .line 593
    :cond_0
    :goto_0
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    const-string v5, "Invalid metablock length"

    const/16 v6, 0xa

    if-eq v4, v6, :cond_1f

    .line 595
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    const/16 v11, 0xc

    if-eq v4, v11, :cond_1c

    const/16 v12, 0x8

    const-string v6, "Invalid backward reference"

    const/4 v7, 0x4

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x0

    packed-switch v4, :pswitch_data_0

    .line 845
    new-instance v1, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 779
    :pswitch_0
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyLength:I

    if-lt v4, v7, :cond_3

    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyLength:I

    const/16 v5, 0x18

    if-gt v4, v5, :cond_3

    .line 781
    sget-object v4, Lcom/itextpdf/io/codec/brotli/dec/Dictionary;->OFFSETS_BY_LENGTH:[I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyLength:I

    aget v4, v4, v5

    .line 782
    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distance:I

    iget v7, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxDistance:I

    sub-int/2addr v5, v7

    sub-int/2addr v5, v3

    .line 783
    sget-object v7, Lcom/itextpdf/io/codec/brotli/dec/Dictionary;->SIZE_BITS_BY_LENGTH:[I

    iget v8, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyLength:I

    aget v7, v7, v8

    shl-int v8, v3, v7

    sub-int/2addr v8, v3

    and-int/2addr v8, v5

    ushr-int/2addr v5, v7

    .line 787
    iget v7, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyLength:I

    mul-int/2addr v8, v7

    add-int v7, v4, v8

    .line 788
    sget-object v4, Lcom/itextpdf/io/codec/brotli/dec/Transform;->TRANSFORMS:[Lcom/itextpdf/io/codec/brotli/dec/Transform;

    array-length v4, v4

    if-ge v5, v4, :cond_2

    .line 789
    iget v6, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyDst:I

    .line 790
    invoke-static {}, Lcom/itextpdf/io/codec/brotli/dec/Dictionary;->getData()Ljava/nio/ByteBuffer;

    move-result-object v8

    iget v9, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyLength:I

    sget-object v4, Lcom/itextpdf/io/codec/brotli/dec/Transform;->TRANSFORMS:[Lcom/itextpdf/io/codec/brotli/dec/Transform;

    aget-object v13, v4, v5

    move-object v4, v10

    move v5, v6

    move-object v6, v8

    move v8, v9

    move-object v9, v13

    .line 789
    invoke-static/range {v4 .. v9}, Lcom/itextpdf/io/codec/brotli/dec/Transform;->transformDictionaryWord([BILjava/nio/ByteBuffer;IILcom/itextpdf/io/codec/brotli/dec/Transform;)I

    move-result v4

    .line 792
    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyDst:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyDst:I

    .line 793
    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    .line 794
    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v5, v4

    iput v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    .line 795
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyDst:I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    if-lt v4, v5, :cond_1

    .line 796
    iput v12, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->nextRunningState:I

    .line 797
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesToWrite:I

    .line 798
    iput v15, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesWritten:I

    .line 799
    iput v11, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 808
    :cond_1
    iput v14, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 803
    :cond_2
    new-instance v0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v6}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_3
    new-instance v0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v6}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 812
    :pswitch_1
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyDst:I

    iget v6, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    sub-int/2addr v5, v6

    invoke-static {v10, v4, v10, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    iput v14, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 829
    :pswitch_2
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->copyUncompressedData(Lcom/itextpdf/io/codec/brotli/dec/State;)V

    goto/16 :goto_0

    .line 818
    :goto_1
    :pswitch_3
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    if-lez v4, :cond_4

    .line 819
    invoke-static {v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readMoreInput(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 821
    invoke-static {v1, v12}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    .line 822
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v4, v3

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    goto :goto_1

    .line 824
    :cond_4
    iput v3, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 607
    :pswitch_4
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->readMetablockHuffmanCodesAndContextMaps(Lcom/itextpdf/io/codec/brotli/dec/State;)V

    .line 608
    iput v14, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    .line 612
    :pswitch_5
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    if-gtz v4, :cond_5

    .line 613
    iput v3, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 616
    :cond_5
    invoke-static {v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readMoreInput(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 617
    iget-object v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLength:[I

    aget v4, v4, v3

    if-nez v4, :cond_6

    .line 618
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->decodeCommandBlockSwitch(Lcom/itextpdf/io/codec/brotli/dec/State;)V

    .line 620
    :cond_6
    iget-object v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLength:[I

    aget v5, v4, v3

    sub-int/2addr v5, v3

    aput v5, v4, v3

    .line 621
    invoke-static {v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->fillBitWindow(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 622
    iget-object v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup1:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iget-object v4, v4, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->codes:[I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->treeCommandOffset:I

    invoke-static {v4, v5, v1}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->readSymbol([IILcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x6

    .line 624
    iput v15, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distanceCode:I

    if-lt v5, v13, :cond_7

    add-int/lit8 v5, v5, -0x2

    const/4 v12, -0x1

    .line 627
    iput v12, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distanceCode:I

    .line 629
    :cond_7
    sget-object v12, Lcom/itextpdf/io/codec/brotli/dec/Prefix;->INSERT_RANGE_LUT:[I

    aget v12, v12, v5

    ushr-int/lit8 v16, v4, 0x3

    and-int/lit8 v16, v16, 0x7

    add-int v12, v12, v16

    .line 630
    sget-object v16, Lcom/itextpdf/io/codec/brotli/dec/Prefix;->COPY_RANGE_LUT:[I

    aget v5, v16, v5

    and-int/lit8 v4, v4, 0x7

    add-int/2addr v5, v4

    .line 631
    sget-object v4, Lcom/itextpdf/io/codec/brotli/dec/Prefix;->INSERT_LENGTH_OFFSET:[I

    aget v4, v4, v12

    sget-object v16, Lcom/itextpdf/io/codec/brotli/dec/Prefix;->INSERT_LENGTH_N_BITS:[I

    aget v12, v16, v12

    .line 632
    invoke-static {v1, v12}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v12

    add-int/2addr v4, v12

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->insertLength:I

    .line 633
    sget-object v4, Lcom/itextpdf/io/codec/brotli/dec/Prefix;->COPY_LENGTH_OFFSET:[I

    aget v4, v4, v5

    sget-object v12, Lcom/itextpdf/io/codec/brotli/dec/Prefix;->COPY_LENGTH_N_BITS:[I

    aget v5, v12, v5

    .line 634
    invoke-static {v1, v5}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyLength:I

    .line 636
    iput v15, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->j:I

    .line 637
    iput v9, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    .line 641
    :pswitch_6
    iget-boolean v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->trivialLiteralContext:Z

    if-eqz v4, :cond_a

    .line 642
    :cond_8
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->j:I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->insertLength:I

    if-ge v4, v5, :cond_d

    .line 643
    invoke-static {v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readMoreInput(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 644
    iget-object v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLength:[I

    aget v4, v4, v15

    if-nez v4, :cond_9

    .line 645
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->decodeLiteralBlockSwitch(Lcom/itextpdf/io/codec/brotli/dec/State;)V

    .line 647
    :cond_9
    iget-object v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLength:[I

    aget v5, v4, v15

    sub-int/2addr v5, v3

    aput v5, v4, v15

    .line 648
    invoke-static {v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->fillBitWindow(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 649
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    iget-object v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup0:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iget-object v5, v5, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->codes:[I

    iget v12, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->literalTree:I

    .line 650
    invoke-static {v5, v12, v1}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->readSymbol([IILcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v10, v4

    .line 651
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->j:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->j:I

    .line 652
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    if-ne v4, v2, :cond_8

    .line 653
    iput v9, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->nextRunningState:I

    .line 654
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesToWrite:I

    .line 655
    iput v15, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesWritten:I

    .line 656
    iput v11, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    goto/16 :goto_3

    .line 661
    :cond_a
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    sub-int/2addr v4, v3

    and-int/2addr v4, v2

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    .line 662
    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    sub-int/2addr v5, v13

    and-int/2addr v5, v2

    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    .line 663
    :goto_2
    iget v12, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->j:I

    iget v8, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->insertLength:I

    if-ge v12, v8, :cond_d

    .line 664
    invoke-static {v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readMoreInput(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 665
    iget-object v8, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLength:[I

    aget v8, v8, v15

    if-nez v8, :cond_b

    .line 666
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->decodeLiteralBlockSwitch(Lcom/itextpdf/io/codec/brotli/dec/State;)V

    .line 668
    :cond_b
    iget-object v8, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextMap:[B

    iget v12, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextMapSlice:I

    sget-object v17, Lcom/itextpdf/io/codec/brotli/dec/Context;->LOOKUP:[I

    iget v7, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextLookupOffset1:I

    add-int/2addr v7, v4

    aget v7, v17, v7

    sget-object v17, Lcom/itextpdf/io/codec/brotli/dec/Context;->LOOKUP:[I

    iget v13, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextLookupOffset2:I

    add-int/2addr v13, v5

    aget v5, v17, v13

    or-int/2addr v5, v7

    add-int/2addr v12, v5

    aget-byte v5, v8, v12

    and-int/lit16 v5, v5, 0xff

    .line 671
    iget-object v7, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLength:[I

    aget v8, v7, v15

    sub-int/2addr v8, v3

    aput v8, v7, v15

    .line 673
    invoke-static {v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->fillBitWindow(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 674
    iget-object v7, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup0:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iget-object v7, v7, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->codes:[I

    iget-object v8, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup0:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iget-object v8, v8, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->trees:[I

    aget v5, v8, v5

    invoke-static {v7, v5, v1}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->readSymbol([IILcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result v5

    .line 676
    iget v7, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    int-to-byte v8, v5

    aput-byte v8, v10, v7

    .line 677
    iget v7, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->j:I

    add-int/2addr v7, v3

    iput v7, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->j:I

    .line 678
    iget v7, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    if-ne v7, v2, :cond_c

    .line 679
    iput v9, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->nextRunningState:I

    .line 680
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesToWrite:I

    .line 681
    iput v15, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesWritten:I

    .line 682
    iput v11, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    goto :goto_3

    :cond_c
    const/4 v7, 0x4

    const/4 v8, 0x7

    const/4 v13, 0x2

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    goto :goto_2

    .line 687
    :cond_d
    :goto_3
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    if-eq v4, v9, :cond_e

    goto/16 :goto_0

    .line 690
    :cond_e
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->insertLength:I

    sub-int/2addr v4, v5

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    .line 691
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    if-gtz v4, :cond_f

    .line 692
    iput v14, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 695
    :cond_f
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distanceCode:I

    if-gez v4, :cond_12

    .line 696
    invoke-static {v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readMoreInput(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 697
    iget-object v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLength:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    if-nez v4, :cond_10

    .line 698
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->decodeDistanceBlockSwitch(Lcom/itextpdf/io/codec/brotli/dec/State;)V

    .line 700
    :cond_10
    iget-object v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLength:[I

    aget v7, v4, v5

    sub-int/2addr v7, v3

    aput v7, v4, v5

    .line 701
    invoke-static {v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->fillBitWindow(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 702
    iget-object v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup2:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iget-object v4, v4, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->codes:[I

    iget-object v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup2:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iget-object v5, v5, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->trees:[I

    iget-object v7, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distContextMap:[B

    iget v8, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distContextMapSlice:I

    iget v9, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyLength:I

    const/4 v12, 0x4

    if-le v9, v12, :cond_11

    move v9, v14

    goto :goto_4

    :cond_11
    iget v9, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyLength:I

    const/4 v12, 0x2

    sub-int/2addr v9, v12

    :goto_4
    add-int/2addr v8, v9

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget v5, v5, v7

    invoke-static {v4, v5, v1}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->readSymbol([IILcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result v4

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distanceCode:I

    .line 705
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distanceCode:I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->numDirectDistanceCodes:I

    if-lt v4, v5, :cond_12

    .line 706
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distanceCode:I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->numDirectDistanceCodes:I

    sub-int/2addr v4, v5

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distanceCode:I

    .line 707
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distanceCode:I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distancePostfixMask:I

    and-int/2addr v4, v5

    .line 708
    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distanceCode:I

    iget v7, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distancePostfixBits:I

    ushr-int/2addr v5, v7

    iput v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distanceCode:I

    .line 709
    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distanceCode:I

    ushr-int/2addr v5, v3

    add-int/2addr v5, v3

    .line 710
    iget v7, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distanceCode:I

    and-int/2addr v7, v3

    const/4 v8, 0x2

    add-int/2addr v7, v8

    shl-int/2addr v7, v5

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    .line 711
    iget v8, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->numDirectDistanceCodes:I

    add-int/2addr v8, v4

    .line 712
    invoke-static {v1, v5}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v4

    add-int/2addr v7, v4

    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distancePostfixBits:I

    shl-int v4, v7, v4

    add-int/2addr v8, v4

    iput v8, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distanceCode:I

    .line 718
    :cond_12
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distanceCode:I

    iget-object v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distRb:[I

    iget v7, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distRbIdx:I

    invoke-static {v4, v5, v7}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->translateShortCodes(I[II)I

    move-result v4

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distance:I

    .line 719
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distance:I

    if-ltz v4, :cond_1a

    .line 723
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxDistance:I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxBackwardDistance:I

    if-eq v4, v5, :cond_13

    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxBackwardDistance:I

    if-ge v4, v5, :cond_13

    .line 725
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxDistance:I

    goto :goto_5

    .line 727
    :cond_13
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxBackwardDistance:I

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxDistance:I

    .line 730
    :goto_5
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyDst:I

    .line 731
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distance:I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxDistance:I

    if-le v4, v5, :cond_14

    const/16 v4, 0x9

    .line 732
    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 736
    :cond_14
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distanceCode:I

    if-lez v4, :cond_15

    .line 737
    iget-object v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distRb:[I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distRbIdx:I

    and-int/2addr v5, v14

    iget v7, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distance:I

    aput v7, v4, v5

    .line 738
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distRbIdx:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distRbIdx:I

    .line 741
    :cond_15
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyLength:I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    if-gt v4, v5, :cond_19

    .line 744
    iput v15, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->j:I

    const/4 v4, 0x7

    .line 745
    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    .line 748
    :pswitch_7
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distance:I

    sub-int/2addr v4, v5

    and-int/2addr v4, v2

    .line 749
    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    .line 750
    iget v6, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyLength:I

    iget v7, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->j:I

    sub-int/2addr v6, v7

    add-int v7, v4, v6

    if-ge v7, v2, :cond_17

    add-int v7, v5, v6

    if-ge v7, v2, :cond_17

    :goto_6
    if-ge v15, v6, :cond_16

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v4, 0x1

    .line 753
    aget-byte v4, v10, v4

    aput-byte v4, v10, v5

    add-int/lit8 v15, v15, 0x1

    move v5, v7

    move v4, v8

    goto :goto_6

    .line 755
    :cond_16
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->j:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->j:I

    .line 756
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v4, v6

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    .line 757
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    goto :goto_7

    .line 759
    :cond_17
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->j:I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->copyLength:I

    if-ge v4, v5, :cond_18

    .line 760
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    iget v6, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->distance:I

    sub-int/2addr v5, v6

    and-int/2addr v5, v2

    aget-byte v5, v10, v5

    aput-byte v5, v10, v4

    .line 762
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v4, v3

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    .line 763
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->j:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->j:I

    .line 764
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    if-ne v4, v2, :cond_17

    const/4 v4, 0x7

    .line 765
    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->nextRunningState:I

    .line 766
    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    iput v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesToWrite:I

    .line 767
    iput v15, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesWritten:I

    .line 768
    iput v11, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    goto :goto_8

    :cond_18
    :goto_7
    const/4 v4, 0x7

    .line 773
    :goto_8
    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    if-ne v5, v4, :cond_0

    .line 774
    iput v14, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 742
    :cond_19
    new-instance v0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v6}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_1a
    new-instance v0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    const-string v1, "Negative distance"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :pswitch_8
    iget v2, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    if-ltz v2, :cond_1b

    .line 600
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->readMetablockInfo(Lcom/itextpdf/io/codec/brotli/dec/State;)V

    .line 602
    iget v2, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    sub-int/2addr v2, v3

    .line 603
    iget-object v10, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBuffer:[B

    goto/16 :goto_0

    .line 598
    :cond_1b
    new-instance v0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v5}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_1c
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->writeRingBuffer(Lcom/itextpdf/io/codec/brotli/dec/State;)Z

    move-result v4

    if-nez v4, :cond_1d

    return-void

    .line 837
    :cond_1d
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    iget v5, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxBackwardDistance:I

    if-lt v4, v5, :cond_1e

    .line 838
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxBackwardDistance:I

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxDistance:I

    .line 840
    :cond_1e
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    and-int/2addr v4, v2

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    .line 841
    iget v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->nextRunningState:I

    iput v4, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 848
    :cond_1f
    iget v2, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    if-ne v2, v6, :cond_21

    .line 849
    iget v2, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    if-ltz v2, :cond_20

    .line 852
    invoke-static {v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->jumpToByteBoundary(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 853
    iget-object v0, v0, Lcom/itextpdf/io/codec/brotli/dec/State;->br:Lcom/itextpdf/io/codec/brotli/dec/BitReader;

    invoke-static {v0, v3}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->checkHealth(Lcom/itextpdf/io/codec/brotli/dec/BitReader;Z)V

    goto :goto_9

    .line 850
    :cond_20
    new-instance v0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v5}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_9
    return-void

    .line 587
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress after close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress until initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static inverseMoveToFrontTransform([BI)V
    .locals 4

    const/16 v0, 0x100

    .line 146
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 148
    aput v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p1, :cond_2

    .line 151
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    .line 152
    aget v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    if-eqz v0, :cond_1

    .line 154
    invoke-static {v1, v0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->moveToFront([II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static maybeReallocateRingBuffer(Lcom/itextpdf/io/codec/brotli/dec/State;)V
    .locals 6

    .line 380
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxRingBufferSize:I

    int-to-long v1, v0

    .line 381
    iget-wide v3, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->expectedTotalSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 383
    iget-wide v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->expectedTotalSize:J

    long-to-int v1, v1

    iget-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->customDictionary:[B

    array-length v2, v2

    add-int/2addr v1, v2

    :goto_0
    shr-int/lit8 v2, v0, 0x1

    if-le v2, v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 387
    :cond_0
    iget-boolean v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->inputEnd:Z

    if-nez v1, :cond_1

    const/16 v1, 0x4000

    if-ge v0, v1, :cond_1

    iget v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxRingBufferSize:I

    if-lt v2, v1, :cond_1

    move v0, v1

    .line 391
    :cond_1
    iget v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    if-gt v0, v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v0, 0x25

    .line 395
    new-array v1, v1, [B

    .line 396
    iget-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBuffer:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 397
    iget-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBuffer:[B

    iget v4, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 400
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->customDictionary:[B

    array-length v2, v2

    if-eqz v2, :cond_5

    .line 401
    iget-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->customDictionary:[B

    array-length v2, v2

    .line 403
    iget v4, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxBackwardDistance:I

    if-le v2, v4, :cond_4

    .line 404
    iget v4, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxBackwardDistance:I

    sub-int/2addr v2, v4

    .line 405
    iget v4, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxBackwardDistance:I

    goto :goto_1

    :cond_4
    move v4, v2

    move v2, v3

    .line 407
    :goto_1
    iget-object v5, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->customDictionary:[B

    invoke-static {v5, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    iput v4, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    .line 409
    iput v4, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesToIgnore:I

    .line 412
    :cond_5
    :goto_2
    iput-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBuffer:[B

    .line 413
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    return-void
.end method

.method private static moveToFront([II)V
    .locals 2

    .line 138
    aget v0, p0, p1

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    .line 140
    aget v1, p0, v1

    aput v1, p0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 142
    aput v0, p0, p1

    return-void
.end method

.method private static readBlockLength([IILcom/itextpdf/io/codec/brotli/dec/BitReader;)I
    .locals 1

    .line 122
    invoke-static {p2}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->fillBitWindow(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 123
    invoke-static {p0, p1, p2}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->readSymbol([IILcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result p0

    .line 124
    sget-object p1, Lcom/itextpdf/io/codec/brotli/dec/Prefix;->BLOCK_LENGTH_N_BITS:[I

    aget p1, p1, p0

    .line 125
    sget-object v0, Lcom/itextpdf/io/codec/brotli/dec/Prefix;->BLOCK_LENGTH_OFFSET:[I

    aget p0, v0, p0

    invoke-static {p2, p1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static readHuffmanCode(I[IILcom/itextpdf/io/codec/brotli/dec/BitReader;)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p3

    .line 222
    invoke-static/range {p3 .. p3}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readMoreInput(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 224
    new-array v2, v0, [I

    const/4 v3, 0x2

    .line 225
    invoke-static {v1, v3}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    add-int/lit8 v4, v0, -0x1

    const/4 v7, 0x4

    .line 229
    new-array v7, v7, [I

    .line 230
    invoke-static {v1, v3}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v8

    add-int/2addr v8, v6

    move v9, v5

    :goto_0
    if-eqz v4, :cond_0

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_1
    if-ge v4, v8, :cond_1

    .line 238
    invoke-static {v1, v9}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v10

    rem-int/2addr v10, v0

    aput v10, v7, v4

    .line 239
    aput v3, v2, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 241
    :cond_1
    aget v4, v7, v5

    aput v6, v2, v4

    if-eq v8, v6, :cond_d

    if-eq v8, v3, :cond_5

    const/4 v4, 0x3

    if-eq v8, v4, :cond_4

    .line 254
    aget v8, v7, v5

    aget v9, v7, v6

    if-eq v8, v9, :cond_2

    aget v10, v7, v3

    if-eq v8, v10, :cond_2

    aget v11, v7, v4

    if-eq v8, v11, :cond_2

    if-eq v9, v10, :cond_2

    if-eq v9, v11, :cond_2

    if-eq v10, v11, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    move v8, v5

    .line 256
    :goto_2
    invoke-static {v1, v6}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 257
    aget v1, v7, v3

    aput v4, v2, v1

    .line 258
    aget v1, v7, v4

    aput v4, v2, v1

    goto :goto_3

    .line 260
    :cond_3
    aget v1, v7, v5

    aput v3, v2, v1

    :goto_3
    move v6, v8

    goto :goto_6

    .line 250
    :cond_4
    aget v1, v7, v5

    aget v4, v7, v6

    if-eq v1, v4, :cond_c

    aget v3, v7, v3

    if-eq v1, v3, :cond_c

    if-eq v4, v3, :cond_c

    move v5, v6

    goto :goto_5

    .line 246
    :cond_5
    aget v1, v7, v5

    aget v3, v7, v6

    if-eq v1, v3, :cond_6

    move v5, v6

    .line 247
    :cond_6
    aput v6, v2, v3

    goto :goto_5

    :cond_7
    const/16 v3, 0x12

    .line 265
    new-array v7, v3, [I

    const/16 v8, 0x20

    move v10, v5

    move v9, v8

    :goto_4
    if-ge v4, v3, :cond_9

    if-lez v9, :cond_9

    .line 269
    sget-object v11, Lcom/itextpdf/io/codec/brotli/dec/Decode;->CODE_LENGTH_CODE_ORDER:[I

    aget v11, v11, v4

    .line 270
    invoke-static/range {p3 .. p3}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->fillBitWindow(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 271
    iget-wide v12, v1, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->accumulator:J

    iget v14, v1, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    ushr-long/2addr v12, v14

    long-to-int v12, v12

    and-int/lit8 v12, v12, 0xf

    .line 273
    iget v13, v1, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    sget-object v14, Lcom/itextpdf/io/codec/brotli/dec/Decode;->FIXED_TABLE:[I

    aget v15, v14, v12

    shr-int/lit8 v15, v15, 0x10

    add-int/2addr v13, v15

    iput v13, v1, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    .line 274
    aget v12, v14, v12

    const v13, 0xffff

    and-int/2addr v12, v13

    .line 275
    aput v12, v7, v11

    if-eqz v12, :cond_8

    shr-int v11, v8, v12

    sub-int/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    if-eq v10, v6, :cond_a

    if-nez v9, :cond_b

    :cond_a
    move v5, v6

    .line 282
    :cond_b
    invoke-static {v7, v0, v2, v1}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->readHuffmanCodeLengths([II[ILcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    :cond_c
    :goto_5
    move v6, v5

    :cond_d
    :goto_6
    if-eqz v6, :cond_e

    const/16 v1, 0x8

    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 287
    invoke-static {v3, v4, v1, v2, v0}, Lcom/itextpdf/io/codec/brotli/dec/Huffman;->buildHuffmanTable([III[II)V

    return-void

    .line 285
    :cond_e
    new-instance v0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    const-string v1, "Can\'t readHuffmanCode"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readHuffmanCodeLengths([II[ILcom/itextpdf/io/codec/brotli/dec/BitReader;)V
    .locals 11

    const/16 v0, 0x20

    .line 166
    new-array v0, v0, [I

    const/4 v1, 0x5

    const/16 v2, 0x12

    const/4 v3, 0x0

    .line 168
    invoke-static {v0, v3, v1, p0, v2}, Lcom/itextpdf/io/codec/brotli/dec/Huffman;->buildHuffmanTable([III[II)V

    const/16 p0, 0x8

    const v1, 0x8000

    move v4, v1

    move v2, v3

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v2, p1, :cond_8

    if-lez v4, :cond_8

    .line 171
    invoke-static {p3}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readMoreInput(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 172
    invoke-static {p3}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->fillBitWindow(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 173
    iget-wide v7, p3, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->accumulator:J

    iget v9, p3, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    ushr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    .line 174
    iget v8, p3, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    aget v9, v0, v7

    const/16 v10, 0x10

    shr-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, p3, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    .line 175
    aget v7, v0, v7

    const v8, 0xffff

    and-int/2addr v7, v8

    if-ge v7, v10, :cond_1

    add-int/lit8 v6, v2, 0x1

    .line 178
    aput v7, p2, v2

    if-eqz v7, :cond_0

    shr-int p0, v1, v7

    sub-int/2addr v4, p0

    move v2, v6

    move p0, v7

    goto :goto_1

    :cond_0
    move v2, v6

    :goto_1
    move v6, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v7, -0xe

    if-ne v7, v10, :cond_2

    move v7, p0

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    if-eq v5, v7, :cond_3

    move v6, v3

    move v5, v7

    :cond_3
    if-lez v6, :cond_4

    add-int/lit8 v7, v6, -0x2

    shl-int/2addr v7, v8

    goto :goto_3

    :cond_4
    move v7, v6

    .line 198
    :goto_3
    invoke-static {p3, v8}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    add-int/2addr v7, v8

    sub-int v6, v7, v6

    add-int v8, v2, v6

    if-gt v8, p1, :cond_7

    move v8, v3

    :goto_4
    if-ge v8, v6, :cond_5

    add-int/lit8 v9, v2, 0x1

    .line 204
    aput v5, p2, v2

    add-int/lit8 v8, v8, 0x1

    move v2, v9

    goto :goto_4

    :cond_5
    if-eqz v5, :cond_6

    rsub-int/lit8 v8, v5, 0xf

    shl-int/2addr v6, v8

    sub-int/2addr v4, v6

    :cond_6
    move v6, v7

    goto :goto_0

    .line 201
    :cond_7
    new-instance p0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    const-string p1, "symbol + repeatDelta > numSymbols"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-nez v4, :cond_9

    sub-int/2addr p1, v2

    .line 215
    invoke-static {p2, v2, p1}, Lcom/itextpdf/io/codec/brotli/dec/Utils;->fillWithZeroes([III)V

    return-void

    .line 212
    :cond_9
    new-instance p0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    const-string p1, "Unused space"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readMetablockHuffmanCodesAndContextMaps(Lcom/itextpdf/io/codec/brotli/dec/State;)V
    .locals 11

    .line 461
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->br:Lcom/itextpdf/io/codec/brotli/dec/BitReader;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_1

    .line 464
    iget-object v3, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numBlockTypes:[I

    invoke-static {v0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->decodeVarLenUnsignedByte(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result v6

    add-int/2addr v6, v5

    aput v6, v3, v2

    .line 465
    iget-object v3, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLength:[I

    const/high16 v6, 0x10000000

    aput v6, v3, v2

    .line 466
    iget-object v3, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numBlockTypes:[I

    aget v3, v3, v2

    if-le v3, v5, :cond_0

    .line 467
    iget-object v3, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numBlockTypes:[I

    aget v3, v3, v2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockTypeTrees:[I

    mul-int/lit16 v5, v2, 0x438

    invoke-static {v3, v4, v5, v0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->readHuffmanCode(I[IILcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    const/16 v3, 0x1a

    .line 469
    iget-object v4, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLenTrees:[I

    invoke-static {v3, v4, v5, v0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->readHuffmanCode(I[IILcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 471
    iget-object v3, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLength:[I

    iget-object v4, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLenTrees:[I

    invoke-static {v4, v5, v0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->readBlockLength([IILcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result v4

    aput v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    :cond_1
    invoke-static {v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readMoreInput(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 477
    invoke-static {v0, v4}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v2

    iput v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->distancePostfixBits:I

    const/4 v2, 0x4

    .line 479
    invoke-static {v0, v2}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v6

    iget v7, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->distancePostfixBits:I

    shl-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numDirectDistanceCodes:I

    .line 480
    iget v6, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->distancePostfixBits:I

    shl-int v6, v5, v6

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->distancePostfixMask:I

    .line 481
    iget v6, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numDirectDistanceCodes:I

    const/16 v7, 0x30

    iget v8, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->distancePostfixBits:I

    shl-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 483
    iget-object v7, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numBlockTypes:[I

    aget v7, v7, v1

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextModes:[B

    move v7, v1

    .line 484
    :goto_1
    iget-object v8, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numBlockTypes:[I

    aget v8, v8, v1

    if-ge v7, v8, :cond_3

    add-int/lit8 v8, v7, 0x60

    .line 486
    iget-object v9, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numBlockTypes:[I

    aget v9, v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_2

    .line 488
    iget-object v9, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextModes:[B

    invoke-static {v0, v4}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v10

    shl-int/2addr v10, v5

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 490
    :cond_2
    invoke-static {v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readMoreInput(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    goto :goto_1

    .line 494
    :cond_3
    iget-object v7, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numBlockTypes:[I

    aget v7, v7, v1

    shl-int/lit8 v7, v7, 0x6

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextMap:[B

    .line 495
    iget-object v7, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numBlockTypes:[I

    aget v7, v7, v1

    shl-int/lit8 v7, v7, 0x6

    iget-object v8, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextMap:[B

    invoke-static {v7, v8, v0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->decodeContextMap(I[BLcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result v7

    .line 497
    iput-boolean v5, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->trivialLiteralContext:Z

    move v8, v1

    .line 498
    :goto_3
    iget-object v9, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numBlockTypes:[I

    aget v9, v9, v1

    shl-int/lit8 v9, v9, 0x6

    if-ge v8, v9, :cond_5

    .line 499
    iget-object v9, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextMap:[B

    aget-byte v9, v9, v8

    shr-int/lit8 v10, v8, 0x6

    if-eq v9, v10, :cond_4

    .line 500
    iput-boolean v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->trivialLiteralContext:Z

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 506
    :cond_5
    :goto_4
    iget-object v8, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numBlockTypes:[I

    aget v8, v8, v4

    shl-int/2addr v8, v4

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->distContextMap:[B

    .line 507
    iget-object v8, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numBlockTypes:[I

    aget v8, v8, v4

    shl-int/2addr v8, v4

    iget-object v9, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->distContextMap:[B

    invoke-static {v8, v9, v0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->decodeContextMap(I[BLcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result v8

    .line 510
    iget-object v9, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup0:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    const/16 v10, 0x100

    invoke-static {v9, v10, v7}, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->init(Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;II)V

    .line 511
    iget-object v7, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup1:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iget-object v9, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numBlockTypes:[I

    aget v9, v9, v5

    const/16 v10, 0x2c0

    invoke-static {v7, v10, v9}, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->init(Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;II)V

    .line 512
    iget-object v7, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup2:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    invoke-static {v7, v6, v8}, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->init(Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;II)V

    .line 514
    iget-object v6, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup0:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    invoke-static {v6, v0}, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->decode(Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 515
    iget-object v6, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup1:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    invoke-static {v6, v0}, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->decode(Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 516
    iget-object v6, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup2:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    invoke-static {v6, v0}, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->decode(Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 518
    iput v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextMapSlice:I

    .line 519
    iput v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->distContextMapSlice:I

    .line 520
    sget-object v0, Lcom/itextpdf/io/codec/brotli/dec/Context;->LOOKUP_OFFSETS:[I

    iget-object v6, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextModes:[B

    aget-byte v6, v6, v1

    aget v0, v0, v6

    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextLookupOffset1:I

    .line 521
    sget-object v0, Lcom/itextpdf/io/codec/brotli/dec/Context;->LOOKUP_OFFSETS:[I

    iget-object v6, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextModes:[B

    aget-byte v6, v6, v1

    add-int/2addr v6, v5

    aget v0, v0, v6

    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->contextLookupOffset2:I

    .line 522
    iput v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->literalTreeIndex:I

    .line 523
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup0:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iget-object v0, v0, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->trees:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->literalTree:I

    .line 524
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup1:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iget-object v0, v0, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->trees:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->treeCommandOffset:I

    .line 526
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockTypeRb:[I

    iget-object v6, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockTypeRb:[I

    iget-object v7, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockTypeRb:[I

    aput v5, v7, v2

    aput v5, v6, v4

    aput v5, v0, v1

    .line 527
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockTypeRb:[I

    iget-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockTypeRb:[I

    iget-object p0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockTypeRb:[I

    const/4 v4, 0x5

    aput v1, p0, v4

    aput v1, v2, v3

    aput v1, v0, v5

    return-void
.end method

.method private static readMetablockInfo(Lcom/itextpdf/io/codec/brotli/dec/State;)V
    .locals 4

    .line 422
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->br:Lcom/itextpdf/io/codec/brotli/dec/BitReader;

    .line 424
    iget-boolean v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->inputEnd:Z

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    .line 425
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->nextRunningState:I

    .line 426
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesToWrite:I

    const/4 v0, 0x0

    .line 427
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesWritten:I

    const/16 v0, 0xc

    .line 428
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    return-void

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup0:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->codes:[I

    .line 433
    iget-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup0:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iput-object v2, v1, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->trees:[I

    .line 434
    iget-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup1:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iput-object v2, v1, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->codes:[I

    .line 435
    iget-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup1:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iput-object v2, v1, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->trees:[I

    .line 436
    iget-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup2:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iput-object v2, v1, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->codes:[I

    .line 437
    iget-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup2:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    iput-object v2, v1, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;->trees:[I

    .line 439
    invoke-static {v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readMoreInput(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 440
    invoke-static {v0, p0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->decodeMetaBlockLength(Lcom/itextpdf/io/codec/brotli/dec/BitReader;Lcom/itextpdf/io/codec/brotli/dec/State;)V

    .line 441
    iget v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->isMetadata:Z

    if-nez v1, :cond_1

    return-void

    .line 444
    :cond_1
    iget-boolean v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->isUncompressed:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->isMetadata:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 448
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    goto :goto_2

    .line 445
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->jumpToByteBoundary(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    .line 446
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->isMetadata:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    const/4 v0, 0x5

    :goto_1
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    .line 451
    :goto_2
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->isMetadata:Z

    if-eqz v0, :cond_5

    return-void

    .line 454
    :cond_5
    iget-wide v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->expectedTotalSize:J

    iget v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->metaBlockLength:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->expectedTotalSize:J

    .line 455
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    iget v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxRingBufferSize:I

    if-ge v0, v1, :cond_6

    .line 456
    invoke-static {p0}, Lcom/itextpdf/io/codec/brotli/dec/Decode;->maybeReallocateRingBuffer(Lcom/itextpdf/io/codec/brotli/dec/State;)V

    :cond_6
    return-void
.end method

.method private static readSymbol([IILcom/itextpdf/io/codec/brotli/dec/BitReader;)I
    .locals 5

    .line 106
    iget-wide v0, p2, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->accumulator:J

    iget v2, p2, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    and-int/lit16 v1, v0, 0xff

    add-int/2addr p1, v1

    .line 108
    aget v1, p0, p1

    shr-int/lit8 v2, v1, 0x10

    const v3, 0xffff

    and-int/2addr v1, v3

    const/16 v4, 0x8

    if-gt v2, v4, :cond_0

    .line 111
    iget p0, p2, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    add-int/2addr p0, v2

    iput p0, p2, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    return v1

    :cond_0
    add-int/2addr p1, v1

    const/4 v1, 0x1

    shl-int v2, v1, v2

    sub-int/2addr v2, v1

    and-int/2addr v0, v2

    ushr-int/2addr v0, v4

    add-int/2addr p1, v0

    .line 117
    iget v0, p2, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    aget v1, p0, p1

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, p2, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->bitOffset:I

    .line 118
    aget p0, p0, p1

    and-int/2addr p0, v3

    return p0
.end method

.method static setCustomDictionary(Lcom/itextpdf/io/codec/brotli/dec/State;[B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 576
    new-array p1, p1, [B

    :cond_0
    iput-object p1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->customDictionary:[B

    return-void
.end method

.method private static translateShortCodes(I[II)I
    .locals 1

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    .line 130
    sget-object v0, Lcom/itextpdf/io/codec/brotli/dec/Decode;->DISTANCE_SHORT_CODE_INDEX_OFFSET:[I

    aget v0, v0, p0

    add-int/2addr p2, v0

    and-int/lit8 p2, p2, 0x3

    .line 132
    aget p1, p1, p2

    sget-object p2, Lcom/itextpdf/io/codec/brotli/dec/Decode;->DISTANCE_SHORT_CODE_VALUE_OFFSET:[I

    aget p0, p2, p0

    add-int/2addr p1, p0

    return p1

    :cond_0
    add-int/lit8 p0, p0, -0xf

    return p0
.end method

.method private static writeRingBuffer(Lcom/itextpdf/io/codec/brotli/dec/State;)Z
    .locals 7

    .line 559
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesToIgnore:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 560
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesWritten:I

    iget v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesToIgnore:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesWritten:I

    .line 561
    iput v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesToIgnore:I

    .line 563
    :cond_0
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->outputLength:I

    iget v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->outputUsed:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesToWrite:I

    iget v3, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesWritten:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    iget-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBuffer:[B

    iget v3, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesWritten:I

    iget-object v4, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->output:[B

    iget v5, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->outputOffset:I

    iget v6, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->outputUsed:I

    add-int/2addr v5, v6

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    iget v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->outputUsed:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->outputUsed:I

    .line 569
    iget v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesWritten:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesWritten:I

    .line 572
    :cond_1
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->outputUsed:I

    iget p0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->outputLength:I

    if-ge v0, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
