.class final Lcom/itextpdf/io/image/BmpImageHelper;
.super Ljava/lang/Object;
.source "BmpImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;
    }
.end annotation


# static fields
.field private static final BI_BITFIELDS:I = 0x3

.field private static final BI_RGB:I = 0x0

.field private static final BI_RLE4:I = 0x2

.field private static final BI_RLE8:I = 0x1

.field private static final LCS_CALIBRATED_RGB:I = 0x0

.field private static final LCS_CMYK:I = 0x2

.field private static final LCS_SRGB:I = 0x1

.field private static final VERSION_2_1_BIT:I = 0x0

.field private static final VERSION_2_24_BIT:I = 0x3

.field private static final VERSION_2_4_BIT:I = 0x1

.field private static final VERSION_2_8_BIT:I = 0x2

.field private static final VERSION_3_1_BIT:I = 0x4

.field private static final VERSION_3_24_BIT:I = 0x7

.field private static final VERSION_3_4_BIT:I = 0x5

.field private static final VERSION_3_8_BIT:I = 0x6

.field private static final VERSION_3_NT_16_BIT:I = 0x8

.field private static final VERSION_3_NT_32_BIT:I = 0x9

.field private static final VERSION_4_16_BIT:I = 0xd

.field private static final VERSION_4_1_BIT:I = 0xa

.field private static final VERSION_4_24_BIT:I = 0xe

.field private static final VERSION_4_32_BIT:I = 0xf

.field private static final VERSION_4_4_BIT:I = 0xb

.field private static final VERSION_4_8_BIT:I = 0xc


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeRLE(Z[BLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)[B
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1062
    iget v2, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v3, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    .line 1067
    :goto_0
    :try_start_0
    iget v8, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v4, v8, :cond_e

    array-length v8, v0

    if-ge v5, v8, :cond_e

    add-int/lit8 v8, v5, 0x1

    .line 1068
    aget-byte v9, v0, v5

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x1

    if-eqz v9, :cond_3

    add-int/lit8 v5, v5, 0x2

    .line 1071
    aget-byte v8, v0, v8

    and-int/lit16 v11, v8, 0xff

    if-eqz p0, :cond_0

    move v8, v9

    :goto_1
    if-eqz v8, :cond_2

    add-int/lit8 v10, v7, 0x1

    int-to-byte v12, v11

    .line 1074
    aput-byte v12, v2, v7

    add-int/lit8 v8, v8, -0x1

    move v7, v10

    goto :goto_1

    :cond_0
    move v12, v3

    :goto_2
    if-ge v12, v9, :cond_2

    add-int/lit8 v13, v7, 0x1

    and-int/lit8 v14, v12, 0x1

    if-ne v14, v10, :cond_1

    and-int/lit8 v14, v8, 0xf

    goto :goto_3

    :cond_1
    ushr-int/lit8 v14, v11, 0x4

    and-int/lit8 v14, v14, 0xf

    :goto_3
    int-to-byte v14, v14

    .line 1078
    aput-byte v14, v2, v7

    add-int/lit8 v12, v12, 0x1

    move v7, v13

    goto :goto_2

    :cond_2
    add-int/2addr v6, v9

    goto :goto_0

    :cond_3
    add-int/lit8 v9, v5, 0x2

    .line 1084
    aget-byte v8, v0, v8

    and-int/lit16 v11, v8, 0xff

    if-ne v11, v10, :cond_4

    goto/16 :goto_9

    :cond_4
    if-eqz v11, :cond_c

    const/4 v12, 0x2

    if-eq v11, v12, :cond_b

    if-eqz p0, :cond_5

    move v5, v11

    :goto_4
    if-eqz v5, :cond_8

    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v9, 0x1

    .line 1103
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v7

    add-int/lit8 v5, v5, -0x1

    move v7, v13

    move v9, v14

    goto :goto_4

    :cond_5
    move v5, v3

    move v13, v5

    :goto_5
    if-ge v5, v11, :cond_8

    and-int/lit8 v14, v5, 0x1

    if-nez v14, :cond_6

    add-int/lit8 v13, v9, 0x1

    .line 1108
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    move/from16 v16, v13

    move v13, v9

    move/from16 v9, v16

    :cond_6
    add-int/lit8 v15, v7, 0x1

    if-ne v14, v10, :cond_7

    and-int/lit8 v14, v13, 0xf

    goto :goto_6

    :cond_7
    ushr-int/lit8 v14, v13, 0x4

    and-int/lit8 v14, v14, 0xf

    :goto_6
    int-to-byte v14, v14

    .line 1109
    aput-byte v14, v2, v7

    add-int/lit8 v5, v5, 0x1

    move v7, v15

    goto :goto_5

    :cond_8
    add-int/2addr v6, v11

    if-eqz p0, :cond_9

    and-int/lit8 v5, v8, 0x1

    if-ne v5, v10, :cond_d

    goto :goto_7

    :cond_9
    and-int/lit8 v5, v8, 0x3

    if-eq v5, v10, :cond_a

    if-ne v5, v12, :cond_d

    :cond_a
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_b
    add-int/lit8 v7, v5, 0x3

    .line 1095
    aget-byte v8, v0, v9

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x4

    .line 1096
    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    .line 1097
    iget v7, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v6

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 1091
    iget v5, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v5, v4

    move v6, v3

    move v7, v5

    :cond_d
    :goto_8
    move v5, v9

    goto/16 :goto_0

    :catch_0
    :cond_e
    :goto_9
    return-object v2
.end method

.method private static findMask(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method

.method private static findShift(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private static getImage(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    iget v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "Invalid BMP file compression."

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    return v2

    .line 660
    :pswitch_0
    invoke-static {v6, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read1632Bit(ZLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    return v6

    .line 655
    :pswitch_1
    iget v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v1, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v0, v1

    mul-int/2addr v0, v5

    new-array v12, v0, [B

    .line 656
    invoke-static {v12, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read24Bit([BLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 657
    iget-object v7, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->image:Lcom/itextpdf/io/image/BmpImageData;

    iget v8, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v9, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    const/4 v10, 0x3

    const/16 v11, 0x8

    invoke-static/range {v7 .. v12}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    return v6

    .line 652
    :pswitch_2
    invoke-static {v2, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read1632Bit(ZLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    return v6

    .line 640
    :pswitch_3
    iget-wide v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v0, v0

    if-eqz v0, :cond_1

    if-ne v0, v6, :cond_0

    .line 645
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readRLE8(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    goto :goto_0

    .line 648
    :cond_0
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p0, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 642
    :cond_1
    invoke-static {v4, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read8Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    :goto_0
    return v6

    .line 628
    :pswitch_4
    iget-wide v7, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v0, v7

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    .line 633
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readRLE4(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    goto :goto_1

    .line 636
    :cond_2
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p0, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 630
    :cond_3
    invoke-static {v4, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read4Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    :goto_1
    return v6

    .line 625
    :pswitch_5
    invoke-static {v4, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read1Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    return v6

    .line 622
    :pswitch_6
    invoke-static {v6, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read1632Bit(ZLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    return v6

    .line 619
    :pswitch_7
    invoke-static {v2, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read1632Bit(ZLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    return v6

    .line 614
    :pswitch_8
    iget v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v1, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v0, v1

    mul-int/2addr v0, v5

    new-array v12, v0, [B

    .line 615
    invoke-static {v12, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read24Bit([BLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 616
    iget-object v7, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->image:Lcom/itextpdf/io/image/BmpImageData;

    iget v8, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v9, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    const/4 v10, 0x3

    const/16 v11, 0x8

    invoke-static/range {v7 .. v12}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    return v6

    .line 601
    :pswitch_9
    iget-wide v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v0, v0

    if-eqz v0, :cond_5

    if-ne v0, v6, :cond_4

    .line 606
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readRLE8(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    goto :goto_2

    .line 609
    :cond_4
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p0, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 603
    :cond_5
    invoke-static {v4, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read8Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    :goto_2
    return v6

    .line 589
    :pswitch_a
    iget-wide v7, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v0, v7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 594
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readRLE4(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    goto :goto_3

    .line 597
    :cond_6
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p0, v3}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 591
    :cond_7
    invoke-static {v4, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read4Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    :goto_3
    return v6

    .line 586
    :pswitch_b
    invoke-static {v4, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read1Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    return v6

    .line 580
    :pswitch_c
    iget v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v1, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v0, v1

    mul-int/2addr v0, v5

    new-array v12, v0, [B

    .line 581
    invoke-static {v12, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read24Bit([BLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 582
    iget-object v7, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->image:Lcom/itextpdf/io/image/BmpImageData;

    iget v8, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v9, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    const/4 v10, 0x3

    const/16 v11, 0x8

    invoke-static/range {v7 .. v12}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    return v6

    .line 576
    :pswitch_d
    invoke-static {v5, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read8Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    return v6

    .line 572
    :pswitch_e
    invoke-static {v5, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read4Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    return v6

    .line 568
    :pswitch_f
    invoke-static {v5, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->read1Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getPalette(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)[B
    .locals 8

    .line 540
    iget-object v0, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 542
    :cond_0
    iget-object v0, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    array-length v0, v0

    div-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 543
    iget-object v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    array-length v1, v1

    div-int/2addr v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    mul-int v3, v2, p0

    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v5, v4, 0x2

    .line 547
    iget-object v6, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    add-int/lit8 v7, v3, 0x1

    aget-byte v6, v6, v3

    aput-byte v6, v0, v5

    add-int/lit8 v5, v4, 0x1

    .line 548
    iget-object v6, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    add-int/lit8 v3, v3, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v0, v5

    .line 549
    iget-object v5, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    aget-byte v3, v5, v3

    aput-byte v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static indexedModel([BIILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 6

    .line 667
    iget-object v0, p3, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->image:Lcom/itextpdf/io/image/BmpImageData;

    iget v1, p3, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v2, p3, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    const/4 v3, 0x1

    move v4, p1

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 671
    invoke-static {p2, p3}, Lcom/itextpdf/io/image/BmpImageHelper;->getPalette(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)[B

    move-result-object p0

    .line 672
    array-length p1, p0

    .line 673
    div-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    .line 674
    invoke-static {p0, p2}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "/Indexed"

    const-string v0, "/DeviceRGB"

    filled-new-array {p2, v0, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 675
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p3, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->additional:Ljava/util/Map;

    .line 676
    iget-object p1, p3, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->additional:Ljava/util/Map;

    const-string p2, "ColorSpace"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static process(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;Ljava/io/InputStream;)V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 145
    iput-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    .line 146
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->image:Lcom/itextpdf/io/image/BmpImageData;

    invoke-virtual {v1}, Lcom/itextpdf/io/image/BmpImageData;->isNoHeader()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    .line 149
    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v1

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_0

    .line 154
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapFileSize:J

    .line 157
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    .line 158
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    .line 161
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Invalid magic value for bmp file. Must be \'BM\'"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v1

    const-wide/16 v3, 0xc

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 169
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    move-result v4

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    .line 170
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    move-result v4

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    goto :goto_1

    .line 172
    :cond_2
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v4

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    .line 173
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v4

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    .line 176
    :goto_1
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    move-result v4

    .line 177
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    .line 179
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v6, "color_planes"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "bits_per_pixel"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    .line 184
    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->numBands:I

    .line 185
    iget-wide v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 186
    iput-wide v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    :cond_3
    const/16 v6, 0x18

    const-wide/16 v9, 0xe

    .line 187
    const-string v13, "bmp_version"

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-nez v3, :cond_d

    .line 189
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v11, "BMP v. 2.x"

    invoke-interface {v3, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    if-ne v3, v7, :cond_4

    .line 193
    iput v15, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto :goto_2

    .line 194
    :cond_4
    iget v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    if-ne v3, v8, :cond_5

    .line 195
    iput v7, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto :goto_2

    .line 196
    :cond_5
    iget v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    if-ne v3, v14, :cond_6

    .line 197
    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto :goto_2

    .line 198
    :cond_6
    iget v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    if-ne v3, v6, :cond_7

    .line 199
    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    .line 203
    :cond_7
    :goto_2
    iget-wide v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    sub-long/2addr v12, v9

    sub-long/2addr v12, v1

    const-wide/16 v9, 0x3

    div-long/2addr v12, v9

    long-to-int v6, v12

    mul-int/2addr v6, v4

    .line 205
    iget-wide v9, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    cmp-long v9, v9, v1

    if-nez v9, :cond_c

    .line 206
    iget v9, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    if-eqz v9, :cond_b

    if-eq v9, v7, :cond_a

    if-eq v9, v5, :cond_9

    if-eq v9, v4, :cond_8

    goto :goto_3

    :cond_8
    move v6, v15

    goto :goto_3

    :cond_9
    const/16 v6, 0x300

    goto :goto_3

    :cond_a
    const/16 v6, 0x30

    goto :goto_3

    :cond_b
    const/4 v6, 0x6

    :goto_3
    int-to-long v9, v6

    add-long/2addr v1, v9

    .line 220
    iput-wide v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    .line 222
    :cond_c
    invoke-static {v6, v0}, Lcom/itextpdf/io/image/BmpImageHelper;->readPalette(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    goto/16 :goto_e

    .line 224
    :cond_d
    iget-object v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v11}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v11

    iput-wide v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    .line 225
    iget-object v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v11}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v11

    iput-wide v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageSize:J

    .line 226
    iget-object v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v11}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v11

    int-to-long v11, v11

    iput-wide v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->xPelsPerMeter:J

    .line 227
    iget-object v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v11}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v11

    int-to-long v11, v11

    iput-wide v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->yPelsPerMeter:J

    .line 228
    iget-object v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v11}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 229
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v16

    .line 231
    iget-wide v9, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v3, v9

    const-string v9, "compression"

    if-eqz v3, :cond_11

    if-eq v3, v7, :cond_10

    if-eq v3, v5, :cond_f

    if-eq v3, v4, :cond_e

    goto :goto_4

    .line 245
    :cond_e
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v10, "BI_BITFIELDS"

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 241
    :cond_f
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v10, "BI_RLE4"

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 237
    :cond_10
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v10, "BI_RLE8"

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 233
    :cond_11
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v10, "BI_RGB"

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :goto_4
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget-wide v9, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->xPelsPerMeter:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "x_pixels_per_meter"

    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget-wide v9, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->yPelsPerMeter:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "y_pixels_per_meter"

    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v9, "colors_used"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v9, "colors_important"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v9, 0x28

    cmp-long v3, v1, v9

    .line 254
    const-string v9, "alpha_mask"

    const-wide/16 v16, 0x38

    const-string v10, "blue_mask"

    const-string v15, "green_mask"

    const-string v4, "red_mask"

    if-eqz v3, :cond_20

    const-wide/16 v18, 0x34

    cmp-long v3, v1, v18

    if-eqz v3, :cond_20

    cmp-long v3, v1, v16

    if-nez v3, :cond_12

    goto/16 :goto_9

    :cond_12
    const-wide/16 v16, 0x6c

    cmp-long v3, v1, v16

    .line 364
    const-string v5, "Not implemented yet."

    if-nez v3, :cond_1f

    .line 367
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v6, "BMP v. 4.x"

    invoke-interface {v3, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    move-object/from16 v20, v15

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v14

    long-to-int v3, v14

    iput v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    .line 371
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v13

    long-to-int v3, v13

    iput v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    .line 372
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v13

    long-to-int v3, v13

    iput v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    .line 374
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v13

    long-to-int v3, v13

    iput v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->alphaMask:I

    .line 375
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v13

    .line 376
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v15

    .line 377
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v16

    .line 378
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v17

    .line 379
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v21

    .line 380
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v22

    .line 381
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v23

    .line 382
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v24

    .line 383
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v25

    .line 384
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readLong(Ljava/io/InputStream;)I

    move-result v26

    .line 385
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v27

    .line 386
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v29

    .line 387
    iget-object v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v31

    .line 389
    iget v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    if-ne v3, v7, :cond_13

    const/16 v3, 0xa

    .line 390
    iput v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto :goto_5

    .line 391
    :cond_13
    iget v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    if-ne v3, v8, :cond_14

    const/16 v3, 0xb

    .line 392
    iput v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto :goto_5

    .line 393
    :cond_14
    iget v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_15

    const/16 v3, 0xc

    .line 394
    iput v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto :goto_5

    .line 395
    :cond_15
    iget v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v6, 0x10

    if-ne v3, v6, :cond_16

    const/16 v6, 0xd

    .line 396
    iput v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    .line 397
    iget-wide v7, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v6, v7

    if-nez v6, :cond_18

    const/16 v6, 0x7c00

    .line 398
    iput v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    const/16 v6, 0x3e0

    .line 399
    iput v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    const/16 v6, 0x1f

    .line 400
    iput v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    goto :goto_5

    .line 402
    :cond_16
    iget v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v7, 0x18

    if-ne v6, v7, :cond_17

    const/16 v6, 0xe

    .line 403
    iput v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto :goto_5

    .line 404
    :cond_17
    iget v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v7, 0x20

    if-ne v6, v7, :cond_18

    const/16 v6, 0xf

    .line 405
    iput v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    .line 406
    iget-wide v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v6, v6

    if-nez v6, :cond_18

    const/high16 v6, 0xff0000

    .line 407
    iput v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    const v6, 0xff00

    .line 408
    iput v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    const/16 v6, 0xff

    .line 409
    iput v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    .line 413
    :cond_18
    :goto_5
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v7, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v7, v20

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->alphaMask:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-wide v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    const-wide/16 v8, 0xe

    sub-long/2addr v6, v8

    sub-long/2addr v6, v1

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    long-to-int v4, v6

    const/4 v6, 0x4

    mul-int/2addr v4, v6

    .line 421
    iget-wide v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    cmp-long v6, v6, v1

    if-nez v6, :cond_1b

    .line 422
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_8

    :pswitch_0
    const-wide/16 v6, 0x0

    cmp-long v4, v11, v6

    if-nez v4, :cond_19

    const-wide/16 v11, 0x100

    :cond_19
    long-to-int v4, v11

    const/4 v8, 0x4

    goto :goto_7

    :pswitch_1
    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    cmp-long v4, v11, v6

    if-nez v4, :cond_1a

    const-wide/16 v11, 0x10

    goto :goto_6

    :pswitch_2
    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    cmp-long v4, v11, v6

    if-nez v4, :cond_1a

    const-wide/16 v11, 0x2

    :cond_1a
    :goto_6
    long-to-int v4, v11

    :goto_7
    mul-int/2addr v4, v8

    :goto_8
    int-to-long v6, v4

    add-long/2addr v1, v6

    .line 436
    iput-wide v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    .line 438
    :cond_1b
    invoke-static {v4, v0}, Lcom/itextpdf/io/image/BmpImageHelper;->readPalette(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    long-to-int v1, v13

    .line 440
    const-string v2, "color_space"

    if-eqz v1, :cond_1e

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1d

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1c

    goto/16 :goto_e

    .line 464
    :cond_1c
    iget-object v0, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v1, "LCS_CMYK"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1d
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v4, "LCS_sRGB"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 443
    :cond_1e
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v3, "LCS_CALIBRATED_RGB"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v2, "redX"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v2, "redY"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v2, "redZ"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v2, "greenX"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v2, "greenY"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v2, "greenZ"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v2, "blueX"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v2, "blueY"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v2, "blueZ"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v2, "gamma_red"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v2, "gamma_green"

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v0, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v1, "gamma_blue"

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_1f
    iget-object v0, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v1, "BMP v. 5.x"

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_9
    move-object v7, v15

    .line 257
    iget-wide v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->compression:J

    long-to-int v5, v5

    if-eqz v5, :cond_26

    const/4 v6, 0x1

    if-eq v5, v6, :cond_26

    const/4 v6, 0x2

    if-eq v5, v6, :cond_26

    const/4 v6, 0x3

    if-ne v5, v6, :cond_25

    .line 331
    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v3, 0x10

    if-ne v5, v3, :cond_21

    const/16 v5, 0x8

    .line 332
    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto :goto_a

    .line 333
    :cond_21
    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v8, 0x20

    if-ne v5, v8, :cond_22

    const/16 v5, 0x9

    .line 334
    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    .line 338
    :cond_22
    :goto_a
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v14

    long-to-int v5, v14

    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    .line 339
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v14

    long-to-int v5, v14

    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    .line 340
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v14

    long-to-int v5, v14

    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    cmp-long v1, v1, v16

    if-nez v1, :cond_23

    .line 344
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->alphaMask:I

    .line 345
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->alphaMask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_23
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-eqz v1, :cond_24

    long-to-int v1, v11

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    .line 355
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/BmpImageHelper;->readPalette(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 358
    :cond_24
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v2, "BMP v. 3.x NT"

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 362
    :cond_25
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Invalid BMP file compression."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_26
    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_27

    const/4 v5, 0x4

    .line 264
    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto/16 :goto_b

    :cond_27
    const/4 v5, 0x4

    .line 265
    iget v8, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    if-ne v8, v5, :cond_28

    const/4 v5, 0x5

    .line 266
    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto/16 :goto_b

    .line 267
    :cond_28
    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_29

    const/4 v5, 0x6

    .line 268
    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto/16 :goto_b

    .line 269
    :cond_29
    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v8, 0x18

    if-ne v5, v8, :cond_2a

    const/4 v5, 0x7

    .line 270
    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    goto :goto_b

    .line 271
    :cond_2a
    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v3, 0x10

    if-ne v5, v3, :cond_2b

    .line 272
    iput v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    const/16 v5, 0x7c00

    .line 273
    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    const/16 v5, 0x3e0

    .line 274
    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    const/16 v5, 0x1f

    .line 275
    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    .line 276
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v8, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v8, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v8, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 279
    :cond_2b
    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v8, 0x20

    if-ne v5, v8, :cond_2c

    const/16 v5, 0x9

    .line 280
    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    const/high16 v5, 0xff0000

    .line 281
    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    const v5, 0xff00

    .line 282
    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    const/16 v5, 0xff

    .line 283
    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    .line 284
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v8, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v8, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v8, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    :goto_b
    const-wide/16 v14, 0x34

    cmp-long v5, v1, v14

    if-ltz v5, :cond_2d

    .line 291
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v14

    long-to-int v5, v14

    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    .line 292
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v14

    long-to-int v5, v14

    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    .line 293
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v14

    long-to-int v5, v14

    iput v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    .line 294
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v8, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    cmp-long v4, v1, v16

    if-nez v4, :cond_2e

    .line 300
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->alphaMask:I

    .line 301
    iget-object v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->alphaMask:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_2e
    iget-wide v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    const-wide/16 v7, 0xe

    sub-long/2addr v4, v7

    sub-long/2addr v4, v1

    const-wide/16 v7, 0x4

    div-long/2addr v4, v7

    long-to-int v4, v4

    const/4 v5, 0x4

    mul-int/2addr v4, v5

    .line 307
    iget-wide v7, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    cmp-long v7, v7, v1

    if-nez v7, :cond_33

    .line 308
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    if-eq v4, v5, :cond_31

    const/4 v7, 0x5

    if-eq v4, v7, :cond_30

    const/4 v7, 0x6

    if-eq v4, v7, :cond_2f

    const/4 v4, 0x0

    goto :goto_d

    :cond_2f
    const-wide/16 v7, 0x0

    cmp-long v4, v11, v7

    if-nez v4, :cond_32

    const-wide/16 v11, 0x100

    goto :goto_c

    :cond_30
    const-wide/16 v7, 0x0

    cmp-long v4, v11, v7

    if-nez v4, :cond_32

    const-wide/16 v11, 0x10

    goto :goto_c

    :cond_31
    const-wide/16 v7, 0x0

    cmp-long v4, v11, v7

    if-nez v4, :cond_32

    const-wide/16 v11, 0x2

    :cond_32
    :goto_c
    long-to-int v4, v11

    mul-int/2addr v4, v5

    :goto_d
    int-to-long v7, v4

    add-long/2addr v1, v7

    .line 322
    iput-wide v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    .line 324
    :cond_33
    invoke-static {v4, v0}, Lcom/itextpdf/io/image/BmpImageHelper;->readPalette(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    .line 326
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v2, "BMP v. 3.x"

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :goto_e
    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-lez v1, :cond_34

    const/4 v1, 0x1

    .line 476
    iput-boolean v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    const/4 v2, 0x0

    goto :goto_f

    :cond_34
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 479
    iput-boolean v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    .line 480
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    .line 483
    :goto_f
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    if-eq v4, v1, :cond_3a

    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/4 v4, 0x4

    if-eq v1, v4, :cond_39

    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v4, 0x8

    if-ne v1, v4, :cond_35

    goto :goto_11

    .line 527
    :cond_35
    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_36

    const/4 v1, 0x3

    .line 528
    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->numBands:I

    goto/16 :goto_17

    :cond_36
    const/4 v1, 0x3

    .line 529
    iget v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitsPerPixel:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_38

    .line 530
    iget v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->alphaMask:I

    if-nez v2, :cond_37

    move v4, v1

    goto :goto_10

    :cond_37
    const/4 v4, 0x4

    :goto_10
    iput v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->numBands:I

    goto/16 :goto_17

    .line 535
    :cond_38
    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->numBands:I

    goto/16 :goto_17

    :cond_39
    :goto_11
    const/4 v1, 0x1

    .line 484
    :cond_3a
    iput v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->numBands:I

    .line 488
    iget v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    const/16 v4, 0x100

    if-eqz v3, :cond_3d

    iget v3, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    if-eq v3, v1, :cond_3d

    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageType:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3b

    goto :goto_14

    .line 509
    :cond_3b
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    array-length v1, v1

    const/4 v3, 0x4

    div-int/2addr v1, v3

    if-le v1, v4, :cond_3c

    goto :goto_12

    :cond_3c
    move v4, v1

    .line 516
    :goto_12
    new-array v1, v4, [B

    .line 517
    new-array v3, v4, [B

    .line 518
    new-array v5, v4, [B

    move v15, v2

    :goto_13
    if-ge v15, v4, :cond_3f

    mul-int/lit8 v2, v15, 0x4

    .line 521
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    aget-byte v6, v6, v2

    aput-byte v6, v5, v15

    .line 522
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    add-int/lit8 v7, v2, 0x1

    aget-byte v6, v6, v7

    aput-byte v6, v3, v15

    .line 523
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    const/4 v7, 0x2

    add-int/2addr v2, v7

    aget-byte v2, v6, v2

    aput-byte v2, v1, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_13

    .line 492
    :cond_3d
    :goto_14
    iget-object v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    array-length v1, v1

    const/4 v3, 0x3

    div-int/2addr v1, v3

    if-le v1, v4, :cond_3e

    goto :goto_15

    :cond_3e
    move v4, v1

    .line 499
    :goto_15
    new-array v1, v4, [B

    .line 500
    new-array v3, v4, [B

    .line 501
    new-array v5, v4, [B

    move v15, v2

    :goto_16
    if-ge v15, v4, :cond_3f

    mul-int/lit8 v2, v15, 0x3

    .line 504
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    aget-byte v6, v6, v2

    aput-byte v6, v5, v15

    .line 505
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    add-int/lit8 v7, v2, 0x1

    aget-byte v6, v6, v7

    aput-byte v6, v3, v15

    .line 506
    iget-object v6, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    const/4 v7, 0x2

    add-int/2addr v2, v7

    aget-byte v2, v6, v2

    aput-byte v2, v1, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    :cond_3f
    :goto_17
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static processImage(Lcom/itextpdf/io/image/ImageData;)V
    .locals 8

    .line 121
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->BMP:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_2

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->loadData()V

    .line 129
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 130
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/itextpdf/io/image/ImageData;->imageSize:I

    .line 131
    new-instance v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;

    move-object v2, p0

    check-cast v2, Lcom/itextpdf/io/image/BmpImageData;

    invoke-direct {v1, v2}, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;-><init>(Lcom/itextpdf/io/image/BmpImageData;)V

    .line 132
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/BmpImageHelper;->process(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;Ljava/io/InputStream;)V

    .line 133
    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->getImage(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget v0, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/ImageData;->setWidth(F)V

    .line 135
    iget v0, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/ImageData;->setHeight(F)V

    .line 136
    iget-wide v2, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->xPelsPerMeter:J

    long-to-double v2, v2

    const-wide v4, 0x3f9a027525460aa6L    # 0.0254

    mul-double/2addr v2, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v0, v2

    iget-wide v2, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->yPelsPerMeter:J

    long-to-double v2, v2

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/io/image/ImageData;->setDpi(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_1
    iget-object p0, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->image:Lcom/itextpdf/io/image/BmpImageData;

    iget-object v0, v1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->additional:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/RawImageHelper;->updateImageAttributes(Lcom/itextpdf/io/image/RawImageData;Ljava/util/Map;)V

    return-void

    :catch_0
    move-exception p0

    .line 139
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Bmp image exception."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 122
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BMP image expected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static read1632Bit(ZLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 908
    iget v1, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    invoke-static {v1}, Lcom/itextpdf/io/image/BmpImageHelper;->findMask(I)I

    move-result v1

    .line 909
    iget v2, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->redMask:I

    invoke-static {v2}, Lcom/itextpdf/io/image/BmpImageHelper;->findShift(I)I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .line 911
    iget v4, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    invoke-static {v4}, Lcom/itextpdf/io/image/BmpImageHelper;->findMask(I)I

    move-result v4

    .line 912
    iget v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->greenMask:I

    invoke-static {v5}, Lcom/itextpdf/io/image/BmpImageHelper;->findShift(I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    .line 914
    iget v7, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    invoke-static {v7}, Lcom/itextpdf/io/image/BmpImageHelper;->findMask(I)I

    move-result v7

    .line 915
    iget v8, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->blueMask:I

    invoke-static {v8}, Lcom/itextpdf/io/image/BmpImageHelper;->findShift(I)I

    move-result v8

    add-int/lit8 v9, v7, 0x1

    .line 917
    iget v10, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x3

    new-array v10, v10, [B

    if-nez p0, :cond_0

    .line 923
    iget v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/lit8 v12, v12, 0x10

    .line 924
    rem-int/lit8 v13, v12, 0x20

    if-eqz v13, :cond_0

    .line 925
    div-int/lit8 v13, v12, 0x20

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v13, v13, 0x20

    sub-int/2addr v13, v12

    int-to-double v12, v13

    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    div-double/2addr v12, v14

    .line 926
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 930
    :goto_0
    iget-wide v13, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageSize:J

    long-to-int v13, v13

    if-nez v13, :cond_1

    .line 932
    iget-wide v13, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapFileSize:J

    iget-wide v13, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    .line 937
    :cond_1
    iget-boolean v13, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    if-eqz v13, :cond_5

    .line 938
    iget v13, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    add-int/lit8 v13, v13, -0x1

    :goto_1
    if-ltz v13, :cond_9

    .line 939
    iget v14, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/lit8 v14, v14, 0x3

    mul-int/2addr v14, v13

    const/4 v15, 0x0

    .line 940
    :goto_2
    iget v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    if-ge v15, v11, :cond_3

    if-eqz p0, :cond_2

    .line 942
    iget-object v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    move/from16 v17, v12

    invoke-static {v11}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v11

    long-to-int v11, v11

    goto :goto_3

    :cond_2
    move/from16 v17, v12

    .line 944
    iget-object v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v11}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    move-result v11

    :goto_3
    add-int/lit8 v12, v14, 0x1

    ushr-int v18, v11, v2

    move/from16 v19, v2

    and-int v2, v18, v1

    mul-int/lit16 v2, v2, 0x100

    .line 945
    div-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v10, v14

    add-int/lit8 v2, v14, 0x2

    ushr-int v18, v11, v5

    move/from16 v20, v5

    and-int v5, v18, v4

    mul-int/lit16 v5, v5, 0x100

    .line 946
    div-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v10, v12

    add-int/lit8 v14, v14, 0x3

    ushr-int v5, v11, v8

    and-int/2addr v5, v7

    mul-int/lit16 v5, v5, 0x100

    .line 947
    div-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v10, v2

    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v17

    move/from16 v2, v19

    move/from16 v5, v20

    goto :goto_2

    :cond_3
    move/from16 v19, v2

    move/from16 v20, v5

    move v11, v12

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v11, :cond_4

    .line 950
    iget-object v5, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v13, v13, -0x1

    move v12, v11

    move/from16 v2, v19

    move/from16 v5, v20

    goto :goto_1

    :cond_5
    move/from16 v19, v2

    move/from16 v20, v5

    move v11, v12

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 954
    :goto_5
    iget v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v2, v12, :cond_9

    const/4 v12, 0x0

    .line 955
    :goto_6
    iget v13, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    if-ge v12, v13, :cond_7

    if-eqz p0, :cond_6

    .line 957
    iget-object v13, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v13}, Lcom/itextpdf/io/image/BmpImageHelper;->readDWord(Ljava/io/InputStream;)J

    move-result-wide v13

    long-to-int v13, v13

    goto :goto_7

    .line 959
    :cond_6
    iget-object v13, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-static {v13}, Lcom/itextpdf/io/image/BmpImageHelper;->readWord(Ljava/io/InputStream;)I

    move-result v13

    :goto_7
    add-int/lit8 v14, v5, 0x1

    ushr-int v15, v13, v19

    and-int/2addr v15, v1

    mul-int/lit16 v15, v15, 0x100

    .line 960
    div-int/2addr v15, v3

    int-to-byte v15, v15

    aput-byte v15, v10, v5

    add-int/lit8 v15, v5, 0x2

    ushr-int v17, v13, v20

    move/from16 v18, v1

    and-int v1, v17, v4

    mul-int/lit16 v1, v1, 0x100

    .line 961
    div-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v10, v14

    add-int/lit8 v5, v5, 0x3

    ushr-int v1, v13, v8

    and-int/2addr v1, v7

    mul-int/lit16 v1, v1, 0x100

    .line 962
    div-int/2addr v1, v9

    int-to-byte v1, v1

    aput-byte v1, v10, v15

    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v18

    goto :goto_6

    :cond_7
    move/from16 v18, v1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v11, :cond_8

    .line 965
    iget-object v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v18

    goto :goto_5

    .line 969
    :cond_9
    iget-object v11, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->image:Lcom/itextpdf/io/image/BmpImageData;

    iget v12, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v13, v0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    const/4 v14, 0x3

    const/16 v15, 0x8

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v16}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    return-void
.end method

.method private static read1Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    iget v0, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iget v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    .line 700
    iget v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 702
    rem-int/lit8 v2, v1, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    rsub-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v2, v1

    .line 707
    iget v4, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v4, v2

    .line 710
    new-array v5, v4, [B

    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_1

    .line 713
    iget-object v7, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    sub-int v8, v4, v6

    invoke-virtual {v7, v5, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_1

    .line 717
    :cond_1
    iget-boolean v6, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    if-eqz v6, :cond_2

    .line 722
    :goto_2
    iget v6, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v3, v6, :cond_3

    add-int/lit8 v6, v3, 0x1

    mul-int v7, v6, v2

    sub-int v7, v4, v7

    mul-int/2addr v3, v1

    .line 723
    invoke-static {v5, v7, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v6

    goto :goto_2

    .line 730
    :cond_2
    :goto_3
    iget v4, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v3, v4, :cond_3

    mul-int v4, v3, v2

    mul-int v6, v3, v1

    .line 731
    invoke-static {v5, v4, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    .line 738
    invoke-static {v0, v1, p0, p1}, Lcom/itextpdf/io/image/BmpImageHelper;->indexedModel([BIILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    return-void
.end method

.method private static read24Bit([BLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    iget v0, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/lit8 v0, v0, 0x18

    .line 839
    rem-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 840
    div-int/lit8 v1, v0, 0x20

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x20

    sub-int/2addr v1, v0

    int-to-double v0, v1

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v3

    .line 841
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 845
    :goto_0
    iget v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x4

    iget v3, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v1, v3

    .line 847
    new-array v3, v1, [B

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_2

    .line 850
    iget-object v5, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    sub-int v6, v1, v4

    invoke-virtual {v5, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gez v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v4, v5

    goto :goto_1

    .line 859
    :cond_2
    :goto_2
    iget-boolean v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    if-eqz v1, :cond_4

    .line 860
    iget v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v4, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    neg-int v4, v0

    move v5, v2

    .line 863
    :cond_3
    iget v6, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v5, v6, :cond_6

    add-int/lit8 v5, v5, 0x1

    .line 864
    iget v6, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x3

    sub-int v6, v1, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v0

    move v7, v2

    .line 866
    :goto_3
    iget v8, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    if-ge v7, v8, :cond_3

    add-int/lit8 v8, v6, 0x2

    add-int/lit8 v9, v4, 0x1

    .line 867
    aget-byte v10, v3, v4

    aput-byte v10, p0, v8

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v10, v4, 0x2

    .line 868
    aget-byte v9, v3, v9

    aput-byte v9, p0, v8

    add-int/lit8 v4, v4, 0x3

    .line 869
    aget-byte v8, v3, v10

    aput-byte v8, p0, v6

    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    neg-int v1, v0

    move v4, v2

    move v5, v4

    .line 875
    :goto_4
    iget v6, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v4, v6, :cond_6

    add-int/2addr v1, v0

    move v6, v2

    .line 877
    :goto_5
    iget v7, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    if-ge v6, v7, :cond_5

    add-int/lit8 v7, v5, 0x2

    add-int/lit8 v8, v1, 0x1

    .line 878
    aget-byte v9, v3, v1

    aput-byte v9, p0, v7

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v9, v1, 0x2

    .line 879
    aget-byte v8, v3, v8

    aput-byte v8, p0, v7

    add-int/lit8 v1, v1, 0x3

    .line 880
    aget-byte v7, v3, v9

    aput-byte v7, p0, v5

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method private static read4Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    iget v0, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    .line 748
    iget v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 749
    rem-int/lit8 v2, v1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    rsub-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v2, v1

    .line 754
    iget v5, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v5, v2

    .line 757
    new-array v6, v5, [B

    move v7, v3

    :goto_1
    if-ge v7, v5, :cond_1

    .line 760
    iget-object v8, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    sub-int v9, v5, v7

    invoke-virtual {v8, v6, v7, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_1

    .line 764
    :cond_1
    iget-boolean v7, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    if-eqz v7, :cond_2

    .line 768
    :goto_2
    iget v7, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v3, v7, :cond_3

    add-int/lit8 v7, v3, 0x1

    mul-int v8, v7, v2

    sub-int v8, v5, v8

    mul-int/2addr v3, v1

    .line 769
    invoke-static {v6, v8, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v7

    goto :goto_2

    .line 776
    :cond_2
    :goto_3
    iget v5, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v3, v5, :cond_3

    mul-int v5, v3, v2

    mul-int v7, v3, v1

    .line 777
    invoke-static {v6, v5, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 784
    :cond_3
    invoke-static {v0, v4, p0, p1}, Lcom/itextpdf/io/image/BmpImageHelper;->indexedModel([BIILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    return-void
.end method

.method private static read8Bit(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    iget v0, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    .line 794
    iget v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    const/16 v2, 0x8

    mul-int/2addr v1, v2

    .line 795
    rem-int/lit8 v3, v1, 0x20

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 796
    div-int/lit8 v3, v1, 0x20

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x20

    sub-int/2addr v3, v1

    int-to-double v5, v3

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    div-double/2addr v5, v7

    .line 797
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    .line 800
    :goto_0
    iget v3, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    add-int/2addr v3, v1

    iget v5, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v3, v5

    .line 803
    new-array v5, v3, [B

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_1

    .line 806
    iget-object v7, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    sub-int v8, v3, v6

    invoke-virtual {v7, v5, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_1

    .line 809
    :cond_1
    iget-boolean v6, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    if-eqz v6, :cond_2

    .line 813
    :goto_2
    iget v6, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v4, v6, :cond_3

    add-int/lit8 v6, v4, 0x1

    .line 814
    iget v7, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    add-int/2addr v7, v1

    mul-int/2addr v7, v6

    sub-int v7, v3, v7

    iget v8, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/2addr v4, v8

    iget v8, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    invoke-static {v5, v7, v0, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v6

    goto :goto_2

    .line 821
    :cond_2
    :goto_3
    iget v3, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v4, v3, :cond_3

    .line 822
    iget v3, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    add-int/2addr v3, v1

    mul-int/2addr v3, v4

    iget v6, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/2addr v6, v4

    iget v7, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    invoke-static {v5, v3, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 829
    :cond_3
    invoke-static {v0, v2, p0, p1}, Lcom/itextpdf/io/image/BmpImageHelper;->indexedModel([BIILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    return-void
.end method

.method private static readDWord(Ljava/io/InputStream;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1179
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedInt(Ljava/io/InputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static readInt(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1170
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v0

    .line 1171
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v1

    .line 1172
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v2

    .line 1173
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr p0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static readLong(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1184
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readInt(Ljava/io/InputStream;)I

    move-result p0

    return p0
.end method

.method private static readPalette(ILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 684
    :cond_0
    new-array v0, p0, [B

    iput-object v0, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    .line 687
    iget-object v1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    iget-object v2, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    sub-int v3, p0, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/2addr v0, v1

    goto :goto_0

    .line 689
    :cond_1
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Incomplete palette."

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 693
    :cond_2
    iget-object p0, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->properties:Ljava/util/Map;

    const-string v0, "palette"

    iget-object p1, p1, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->palette:[B

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static readRLE4(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1014
    iget-wide v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageSize:J

    long-to-int v0, v0

    if-nez v0, :cond_0

    .line 1016
    iget-wide v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapFileSize:J

    iget-wide v2, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 1020
    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1023
    iget-object v4, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    sub-int v5, v0, v3

    invoke-virtual {v4, v1, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 1028
    :cond_1
    invoke-static {v2, v1, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->decodeRLE(Z[BLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)[B

    move-result-object v0

    .line 1031
    iget-boolean v1, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    if-eqz v1, :cond_4

    .line 1034
    iget v1, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v3, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v1, v3

    new-array v1, v1, [B

    .line 1037
    iget v3, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    add-int/lit8 v3, v3, -0x1

    move v4, v2

    :goto_1
    if-ltz v3, :cond_3

    .line 1038
    iget v5, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    mul-int/2addr v5, v3

    .line 1039
    iget v6, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    add-int/2addr v6, v4

    :goto_2
    if-eq v4, v6, :cond_2

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v5, 0x1

    .line 1041
    aget-byte v5, v0, v5

    aput-byte v5, v1, v4

    move v4, v7

    move v5, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1045
    :cond_4
    iget v1, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 1046
    iget v3, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v3, v1

    new-array v3, v3, [B

    move v4, v2

    move v5, v4

    move v6, v5

    .line 1049
    :goto_3
    iget v7, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    const/4 v8, 0x4

    if-ge v4, v7, :cond_7

    move v7, v2

    .line 1050
    :goto_4
    iget v9, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    if-ge v7, v9, :cond_6

    and-int/lit8 v9, v7, 0x1

    if-nez v9, :cond_5

    .line 1052
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v6

    add-int/lit8 v10, v5, 0x1

    aget-byte v5, v0, v5

    shl-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v3, v9

    move v5, v10

    goto :goto_5

    .line 1054
    :cond_5
    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v6

    aget-byte v10, v3, v9

    add-int/lit8 v11, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    or-int/2addr v5, v10

    int-to-byte v5, v5

    aput-byte v5, v3, v9

    move v5, v11

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    add-int/2addr v6, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1058
    :cond_7
    invoke-static {v3, v8, v8, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->indexedModel([BIILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    return-void
.end method

.method private static readRLE8(Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 975
    iget-wide v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->imageSize:J

    long-to-int v0, v0

    if-nez v0, :cond_0

    .line 977
    iget-wide v0, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapFileSize:J

    iget-wide v2, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->bitmapOffset:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 981
    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 984
    iget-object v4, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->inputStream:Ljava/io/InputStream;

    sub-int v5, v0, v3

    invoke-virtual {v4, v1, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 989
    invoke-static {v0, v1, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->decodeRLE(Z[BLcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)[B

    move-result-object v0

    .line 992
    iget v1, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    iget v3, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    mul-int/2addr v1, v3

    .line 994
    iget-boolean v3, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->isBottomUp:Z

    if-eqz v3, :cond_3

    .line 999
    array-length v3, v0

    new-array v3, v3, [B

    .line 1000
    iget v4, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->width:I

    .line 1001
    :goto_1
    iget v5, p0, Lcom/itextpdf/io/image/BmpImageHelper$BmpParameters;->height:I

    if-ge v2, v5, :cond_2

    add-int/lit8 v5, v2, 0x1

    mul-int v6, v5, v4

    sub-int v6, v1, v6

    mul-int/2addr v2, v4

    .line 1002
    invoke-static {v0, v6, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v5

    goto :goto_1

    :cond_2
    move-object v0, v3

    :cond_3
    const/16 v1, 0x8

    const/4 v2, 0x4

    .line 1009
    invoke-static {v0, v1, v2, p0}, Lcom/itextpdf/io/image/BmpImageHelper;->indexedModel([BIILcom/itextpdf/io/image/BmpImageHelper$BmpParameters;)V

    return-void
.end method

.method private static readShort(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v0

    .line 1149
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method private static readUnsignedByte(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1136
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static readUnsignedInt(Ljava/io/InputStream;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1160
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v0

    .line 1161
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v1

    .line 1162
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v2

    .line 1163
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr p0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p0, v1

    or-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static readUnsignedShort(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1141
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result v0

    .line 1142
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedByte(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static readWord(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1155
    invoke-static {p0}, Lcom/itextpdf/io/image/BmpImageHelper;->readUnsignedShort(Ljava/io/InputStream;)I

    move-result p0

    return p0
.end method
