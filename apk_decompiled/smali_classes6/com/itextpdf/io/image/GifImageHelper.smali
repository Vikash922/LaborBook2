.class public final Lcom/itextpdf/io/image/GifImageHelper;
.super Ljava/lang/Object;
.source "GifImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/image/GifImageHelper$GifParameters;
    }
.end annotation


# static fields
.field static final MAX_STACK_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeImageData(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 349
    iget v1, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->iw:I

    iget v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    mul-int/2addr v1, v2

    .line 354
    iget-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->prefix:[S

    const/16 v3, 0x1000

    if-nez v2, :cond_0

    .line 355
    new-array v2, v3, [S

    iput-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->prefix:[S

    .line 356
    :cond_0
    iget-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->suffix:[B

    if-nez v2, :cond_1

    .line 357
    new-array v2, v3, [B

    iput-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->suffix:[B

    .line 358
    :cond_1
    iget-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelStack:[B

    if-nez v2, :cond_2

    const/16 v2, 0x1001

    .line 359
    new-array v2, v2, [B

    iput-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelStack:[B

    .line 361
    :cond_2
    iget v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->iw:I

    iget v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x7

    const/16 v4, 0x8

    div-int/2addr v2, v4

    iput v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_line_stride:I

    .line 362
    iget v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_line_stride:I

    iget v5, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    mul-int/2addr v2, v5

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_out:[B

    .line 364
    iget-boolean v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->interlace:Z

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v4, v5

    .line 370
    :goto_0
    iget-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int v6, v5, v2

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x2

    add-int/2addr v2, v5

    shl-int v9, v5, v2

    sub-int/2addr v9, v5

    const/4 v10, 0x0

    move v11, v10

    :goto_1
    if-ge v11, v6, :cond_4

    .line 378
    iget-object v12, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->prefix:[S

    aput-short v10, v12, v11

    .line 379
    iget-object v12, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->suffix:[B

    int-to-byte v13, v11

    aput-byte v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    move v15, v2

    move/from16 v21, v5

    move/from16 v17, v9

    move v12, v10

    move v13, v12

    move v14, v13

    move/from16 v16, v14

    move/from16 v18, v16

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v22, v20

    move/from16 v23, v22

    const/4 v3, -0x1

    move v10, v8

    :goto_2
    if-ge v12, v1, :cond_17

    if-nez v13, :cond_f

    if-ge v14, v15, :cond_7

    if-nez v18, :cond_6

    .line 392
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/GifImageHelper;->readBlock(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v18

    if-gtz v18, :cond_5

    goto/16 :goto_a

    :cond_5
    const/16 v19, 0x0

    .line 399
    :cond_6
    iget-object v11, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->block:[B

    aget-byte v11, v11, v19

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v14

    add-int v16, v16, v11

    add-int/lit8 v14, v14, 0x8

    add-int/lit8 v19, v19, 0x1

    const/4 v11, -0x1

    add-int/lit8 v18, v18, -0x1

    goto :goto_2

    :cond_7
    const/4 v11, -0x1

    and-int v5, v16, v17

    shr-int v16, v16, v15

    sub-int/2addr v14, v15

    if-gt v5, v10, :cond_17

    if-ne v5, v7, :cond_8

    goto/16 :goto_9

    :cond_8
    if-ne v5, v6, :cond_9

    move v15, v2

    move v10, v8

    move/from16 v17, v9

    move v3, v11

    goto/16 :goto_8

    :cond_9
    if-ne v3, v11, :cond_a

    .line 425
    iget-object v3, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelStack:[B

    add-int/lit8 v11, v13, 0x1

    move/from16 v24, v1

    iget-object v1, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->suffix:[B

    aget-byte v1, v1, v5

    aput-byte v1, v3, v13

    move v3, v5

    move/from16 v20, v3

    move v13, v11

    move/from16 v1, v24

    goto/16 :goto_8

    :cond_a
    move/from16 v24, v1

    if-ne v5, v10, :cond_b

    .line 432
    iget-object v1, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelStack:[B

    add-int/lit8 v11, v13, 0x1

    move/from16 v25, v2

    move/from16 v2, v20

    int-to-byte v2, v2

    aput-byte v2, v1, v13

    move v1, v3

    move v13, v11

    goto :goto_3

    :cond_b
    move/from16 v25, v2

    move v1, v5

    :goto_3
    if-le v1, v6, :cond_c

    .line 436
    iget-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelStack:[B

    add-int/lit8 v11, v13, 0x1

    move/from16 v20, v5

    iget-object v5, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->suffix:[B

    aget-byte v5, v5, v1

    aput-byte v5, v2, v13

    .line 437
    iget-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->prefix:[S

    aget-short v1, v2, v1

    move v13, v11

    move/from16 v5, v20

    goto :goto_3

    :cond_c
    move/from16 v20, v5

    .line 439
    iget-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->suffix:[B

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x1000

    if-lt v10, v2, :cond_d

    goto/16 :goto_9

    .line 445
    :cond_d
    iget-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelStack:[B

    add-int/lit8 v5, v13, 0x1

    int-to-byte v11, v1

    aput-byte v11, v2, v13

    .line 446
    iget-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->prefix:[S

    int-to-short v3, v3

    aput-short v3, v2, v10

    .line 447
    iget-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->suffix:[B

    aput-byte v11, v2, v10

    add-int/lit8 v10, v10, 0x1

    and-int v2, v10, v17

    const/16 v11, 0x1000

    if-nez v2, :cond_e

    if-ge v10, v11, :cond_e

    add-int/lit8 v15, v15, 0x1

    add-int v17, v17, v10

    :cond_e
    move v13, v5

    move/from16 v3, v20

    move/from16 v20, v1

    goto :goto_4

    :cond_f
    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v2, v20

    const/16 v11, 0x1000

    :goto_4
    const/4 v1, -0x1

    add-int/2addr v13, v1

    add-int/lit8 v12, v12, 0x1

    .line 461
    iget-object v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelStack:[B

    aget-byte v2, v2, v13

    move/from16 v5, v22

    move/from16 v1, v23

    invoke-static {v1, v5, v2, v0}, Lcom/itextpdf/io/image/GifImageHelper;->setPixel(IIILcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    add-int/lit8 v1, v1, 0x1

    .line 463
    iget v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->iw:I

    if-lt v1, v2, :cond_16

    add-int v1, v5, v4

    .line 466
    iget v2, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    if-lt v1, v2, :cond_15

    .line 467
    iget-boolean v1, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->interlace:Z

    if-eqz v1, :cond_14

    const/4 v2, 0x1

    :goto_5
    add-int/lit8 v1, v21, 0x1

    const/4 v5, 0x4

    const/4 v11, 0x2

    if-eq v1, v11, :cond_12

    const/4 v4, 0x3

    if-eq v1, v4, :cond_11

    if-eq v1, v5, :cond_10

    .line 484
    iget v4, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    sub-int/2addr v4, v2

    move v5, v4

    const/4 v4, 0x0

    goto :goto_6

    :cond_10
    move v5, v2

    move v4, v11

    goto :goto_6

    :cond_11
    move v4, v5

    move v5, v11

    .line 487
    :cond_12
    :goto_6
    iget v11, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    move/from16 v21, v1

    if-ge v5, v11, :cond_13

    move/from16 v22, v5

    move/from16 v1, v24

    const/16 v23, 0x0

    move v5, v2

    move/from16 v2, v25

    goto/16 :goto_2

    :cond_13
    const/16 v11, 0x1000

    goto :goto_5

    :cond_14
    const/4 v2, 0x1

    .line 491
    iget v1, v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    add-int/lit8 v22, v1, -0x1

    move v5, v2

    move/from16 v1, v24

    move/from16 v2, v25

    const/4 v4, 0x0

    goto :goto_7

    :cond_15
    move/from16 v22, v1

    move/from16 v1, v24

    move/from16 v2, v25

    const/4 v5, 0x1

    :goto_7
    const/16 v23, 0x0

    goto/16 :goto_2

    :cond_16
    move/from16 v23, v1

    move/from16 v22, v5

    move/from16 v1, v24

    move/from16 v2, v25

    :goto_8
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_17
    :goto_9
    const/4 v5, 0x0

    :goto_a
    return v5
.end method

.method private static newBpc(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_1

    const/16 p0, 0x8

    return p0

    :cond_0
    return v1

    :cond_1
    return p0
.end method

.method private static process(Ljava/io/InputStream;Lcom/itextpdf/io/image/GifImageHelper$GifParameters;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iput-object p0, p1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    .line 152
    invoke-static {p1}, Lcom/itextpdf/io/image/GifImageHelper;->readHeader(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    .line 153
    invoke-static {p1, p2}, Lcom/itextpdf/io/image/GifImageHelper;->readContents(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;I)V

    .line 154
    iget p0, p1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->currentFrame:I

    if-le p0, p2, :cond_0

    return-void

    .line 155
    :cond_0
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Cannot find frame number {0} (zero-based)"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p0

    throw p0
.end method

.method public static processImage(Lcom/itextpdf/io/image/GifImageData;)V
    .locals 1

    const/4 v0, -0x1

    .line 128
    invoke-static {p0, v0}, Lcom/itextpdf/io/image/GifImageHelper;->processImage(Lcom/itextpdf/io/image/GifImageData;I)V

    return-void
.end method

.method public static processImage(Lcom/itextpdf/io/image/GifImageData;I)V
    .locals 2

    .line 137
    new-instance v0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;-><init>(Lcom/itextpdf/io/image/GifImageData;)V

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/GifImageData;->getData()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/itextpdf/io/image/GifImageData;->loadData()V

    .line 143
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/GifImageData;->getData()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 144
    invoke-static {v1, v0, p1}, Lcom/itextpdf/io/image/GifImageHelper;->process(Ljava/io/InputStream;Lcom/itextpdf/io/image/GifImageHelper$GifParameters;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 146
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "GIF image exception."

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static readBlock(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->blockSize:I

    .line 211
    iget v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->blockSize:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 212
    iput v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->blockSize:I

    return v1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->block:[B

    iget v3, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->blockSize:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->blockSize:I

    .line 216
    iget p0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->blockSize:I

    return p0
.end method

.method private static readColorTable(ILcom/itextpdf/io/image/GifImageHelper$GifParameters;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    shl-int v1, v0, p0

    mul-int/lit8 v1, v1, 0x3

    .line 222
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->newBpc(I)I

    move-result p0

    shl-int p0, v0, p0

    mul-int/lit8 p0, p0, 0x3

    .line 223
    new-array p0, p0, [B

    .line 224
    iget-object p1, p1, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/itextpdf/io/util/StreamUtil;->readFully(Ljava/io/InputStream;[BII)V

    return-object p0
.end method

.method private static readContents(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 246
    iput v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->currentFrame:I

    :goto_0
    if-nez v0, :cond_5

    .line 248
    iget-object v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0x21

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2c

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v0, v3

    goto :goto_0

    .line 252
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readFrame(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    .line 253
    iget v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->currentFrame:I

    if-ne v1, p1, :cond_1

    move v0, v3

    .line 256
    :cond_1
    iget v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->currentFrame:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->currentFrame:I

    goto :goto_0

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xf9

    if-eq v1, v2, :cond_4

    const/16 v2, 0xff

    if-eq v1, v2, :cond_3

    .line 274
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->skip(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    goto :goto_0

    .line 268
    :cond_3
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readBlock(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    .line 270
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->skip(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    goto :goto_0

    .line 264
    :cond_4
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readGraphicControlExt(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static readFrame(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ix:I

    .line 290
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->iy:I

    .line 291
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->iw:I

    .line 292
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    .line 294
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 296
    :goto_0
    iput-boolean v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->lctFlag:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 298
    :goto_1
    iput-boolean v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->interlace:Z

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    shl-int v4, v1, v0

    .line 302
    iput v4, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->lctSize:I

    .line 303
    iget v4, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_gbpc:I

    invoke-static {v4}, Lcom/itextpdf/io/image/GifImageHelper;->newBpc(I)I

    move-result v4

    iput v4, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    .line 304
    iget-boolean v4, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->lctFlag:Z

    if-eqz v4, :cond_2

    add-int/2addr v0, v2

    .line 306
    invoke-static {v0, p0}, Lcom/itextpdf/io/image/GifImageHelper;->readColorTable(ILcom/itextpdf/io/image/GifImageHelper$GifParameters;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_curr_table:[B

    .line 307
    invoke-static {v0}, Lcom/itextpdf/io/image/GifImageHelper;->newBpc(I)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    goto :goto_2

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_global_table:[B

    iput-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_curr_table:[B

    .line 312
    :goto_2
    iget-boolean v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transparency:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transIndex:I

    iget-object v4, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_curr_table:[B

    array-length v4, v4

    div-int/lit8 v4, v4, 0x3

    if-lt v0, v4, :cond_3

    .line 313
    iput-boolean v3, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transparency:Z

    .line 315
    :cond_3
    iget-boolean v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transparency:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    if-ne v0, v2, :cond_4

    const/16 v0, 0xc

    .line 316
    new-array v0, v0, [B

    .line 317
    iget-object v4, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_curr_table:[B

    const/4 v5, 0x6

    invoke-static {v4, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iput-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_curr_table:[B

    .line 319
    iput v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    .line 322
    :cond_4
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->decodeImageData(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 324
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->skip(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    .line 328
    :cond_5
    :try_start_0
    const-string v0, "/Indexed"

    .line 329
    const-string v1, "/DeviceRGB"

    .line 330
    iget-object v3, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_curr_table:[B

    array-length v3, v3

    .line 331
    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 332
    iget-object v3, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_curr_table:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 333
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 334
    const-string v2, "ColorSpace"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v0, Lcom/itextpdf/io/image/RawImageData;

    iget-object v2, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_out:[B

    sget-object v3, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    invoke-direct {v0, v2, v3}, Lcom/itextpdf/io/image/RawImageData;-><init>([BLcom/itextpdf/io/image/ImageType;)V

    .line 336
    iget v4, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->iw:I

    iget v5, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->ih:I

    iget v7, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    iget-object v8, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_out:[B

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 337
    invoke-static {v0, v1}, Lcom/itextpdf/io/image/RawImageHelper;->updateImageAttributes(Lcom/itextpdf/io/image/RawImageData;Ljava/util/Map;)V

    .line 338
    iget-object v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->image:Lcom/itextpdf/io/image/GifImageData;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/image/GifImageData;->addFrame(Lcom/itextpdf/io/image/ImageData;)V

    .line 339
    iget-boolean v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transparency:Z

    if-eqz v1, :cond_6

    .line 340
    iget v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transIndex:I

    iget p0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transIndex:I

    filled-new-array {v1, p0}, [I

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/itextpdf/io/image/RawImageData;->setTransparency([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception p0

    .line 343
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "GIF image exception."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static readGraphicControlExt(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 520
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    .line 522
    iput v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->dispose:I

    .line 523
    iget v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->dispose:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 525
    iput v2, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->dispose:I

    :cond_0
    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 527
    :goto_0
    iput-boolean v2, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transparency:Z

    .line 529
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->delay:I

    .line 531
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->transIndex:I

    .line 533
    iget-object p0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    return-void
.end method

.method private static readHeader(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GIF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readLSD(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V

    .line 171
    iget-boolean v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->gctFlag:Z

    if-eqz v0, :cond_1

    .line 172
    iget v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_gbpc:I

    invoke-static {v0, p0}, Lcom/itextpdf/io/image/GifImageHelper;->readColorTable(ILcom/itextpdf/io/image/GifImageHelper$GifParameters;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_global_table:[B

    :cond_1
    return-void

    .line 167
    :cond_2
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "GIF signature not found."

    invoke-direct {p0, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readLSD(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->image:Lcom/itextpdf/io/image/GifImageData;

    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/image/GifImageData;->setLogicalWidth(F)V

    .line 183
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->image:Lcom/itextpdf/io/image/GifImageData;

    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/image/GifImageData;->setLogicalHeight(F)V

    .line 186
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 188
    :goto_0
    iput-boolean v1, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->gctFlag:Z

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v2

    .line 189
    iput v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_gbpc:I

    .line 191
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->bgIndex:I

    .line 193
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->pixelAspect:I

    return-void
.end method

.method private static readShort(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object p0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->input:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method private static setPixel(IIILcom/itextpdf/io/image/GifImageHelper$GifParameters;)V
    .locals 3

    .line 502
    iget v0, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 503
    iget v0, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->iw:I

    mul-int/2addr v0, p1

    add-int/2addr p0, v0

    .line 504
    iget-object p1, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_out:[B

    int-to-byte p2, p2

    aput-byte p2, p1, p0

    goto :goto_0

    .line 507
    :cond_0
    iget v0, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_line_stride:I

    mul-int/2addr v0, p1

    iget p1, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    div-int p1, v1, p1

    div-int p1, p0, p1

    add-int/2addr v0, p1

    .line 508
    iget p1, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    iget v2, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    div-int v2, v1, v2

    rem-int/2addr p0, v2

    mul-int/2addr p1, p0

    sub-int/2addr v1, p1

    iget p0, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_bpc:I

    sub-int/2addr v1, p0

    shl-int p0, p2, v1

    .line 509
    iget-object p1, p3, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->m_out:[B

    aget-byte p2, p1, v0

    int-to-byte p0, p0

    or-int/2addr p0, p2

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    :goto_0
    return-void
.end method

.method private static skip(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/io/image/GifImageHelper;->readBlock(Lcom/itextpdf/io/image/GifImageHelper$GifParameters;)I

    .line 543
    iget v0, p0, Lcom/itextpdf/io/image/GifImageHelper$GifParameters;->blockSize:I

    if-gtz v0, :cond_0

    return-void
.end method
