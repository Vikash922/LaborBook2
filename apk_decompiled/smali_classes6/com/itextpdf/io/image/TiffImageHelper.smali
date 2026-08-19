.class Lcom/itextpdf/io/image/TiffImageHelper;
.super Ljava/lang/Object;
.source "TiffImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyPredictor([BIIII)V
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_2

    mul-int v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p4

    move v1, p4

    :goto_1
    mul-int v2, p2, p4

    if-ge v1, v2, :cond_1

    .line 693
    aget-byte v2, p0, v0

    sub-int v3, v0, p4

    aget-byte v3, p0, v3

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static decodePackbits([B[B)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 656
    :cond_0
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    .line 657
    aget-byte v4, p0, v2

    if-ltz v4, :cond_1

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_1

    move v2, v3

    move v3, v0

    :goto_1
    add-int/lit8 v5, v4, 0x1

    if-ge v3, v5, :cond_0

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v2, 0x1

    .line 663
    aget-byte v2, p0, v2

    aput-byte v2, p1, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v5

    move v2, v6

    goto :goto_1

    :cond_1
    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_2

    const/16 v5, -0x80

    if-eq v4, v5, :cond_2

    add-int/lit8 v2, v2, 0x2

    .line 669
    aget-byte v3, p0, v3

    move v5, v0

    :goto_2
    not-int v6, v4

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_0

    add-int/lit8 v6, v1, 0x1

    .line 674
    aput-byte v3, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    move v1, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catch_0
    :cond_3
    return-void
.end method

.method private static getArrayLongShort(Lcom/itextpdf/io/codec/TIFFDirectory;I)[J
    .locals 3

    .line 634
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFField;->getType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 639
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFField;->getAsLongs()[J

    move-result-object p0

    goto :goto_1

    .line 643
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/TIFFField;->getAsChars()[C

    move-result-object p0

    .line 644
    array-length p1, p0

    new-array p1, p1, [J

    const/4 v0, 0x0

    .line 645
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 646
    aget-char v1, p0, v0

    int-to-long v1, v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method private static getDpi(Lcom/itextpdf/io/codec/TIFFField;I)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 599
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/codec/TIFFField;->getAsRational(I)[J

    move-result-object p0

    .line 600
    aget-wide v1, p0, v0

    long-to-float v1, v1

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    long-to-float p0, v3

    div-float/2addr v1, p0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-eq p1, v2, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    goto :goto_1

    :cond_1
    float-to-double p0, v1

    const-wide v0, 0x400451eb851eb852L    # 2.54

    mul-double/2addr p0, v0

    goto :goto_0

    :cond_2
    float-to-double p0, v1

    :goto_0
    add-double/2addr p0, v3

    double-to-int v0, p0

    :goto_1
    return v0
.end method

.method private static processExtraSamples(Lcom/itextpdf/io/source/DeflaterOutputStream;Lcom/itextpdf/io/source/DeflaterOutputStream;[BIIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    if-ne p4, v0, :cond_2

    mul-int/2addr p5, p6

    .line 617
    new-array p4, p5, [B

    mul-int/2addr p5, p3

    const/4 p6, 0x0

    move v0, p6

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v0, p5, :cond_1

    move v3, p6

    :goto_1
    add-int/lit8 v4, p3, -0x1

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    add-int v5, v0, v3

    .line 623
    aget-byte v5, p2, v5

    aput-byte v5, p2, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, p3

    add-int/lit8 v4, v0, -0x1

    .line 625
    aget-byte v4, p2, v4

    aput-byte v4, p4, v2

    move v2, v3

    goto :goto_0

    .line 627
    :cond_1
    invoke-virtual {p0, p2, p6, v1}, Lcom/itextpdf/io/source/DeflaterOutputStream;->write([BII)V

    .line 628
    invoke-virtual {p1, p4, p6, v2}, Lcom/itextpdf/io/source/DeflaterOutputStream;->write([BII)V

    return-void

    .line 630
    :cond_2
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Extra samples are not supported."

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static processImage(Lcom/itextpdf/io/image/ImageData;)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_2

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->loadData()V

    .line 89
    :cond_0
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 91
    new-instance v0, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;

    check-cast p0, Lcom/itextpdf/io/image/TiffImageData;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;-><init>(Lcom/itextpdf/io/image/TiffImageData;)V

    .line 92
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/TiffImageHelper;->processTiffImage(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;)V

    .line 93
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    .line 95
    iget-boolean p0, v0, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->jpegProcessing:Z

    if-nez p0, :cond_1

    .line 96
    iget-object p0, v0, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    iget-object v0, v0, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->additional:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/itextpdf/io/image/RawImageHelper;->updateImageAttributes(Lcom/itextpdf/io/image/RawImageData;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 99
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "TIFF image exception."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 83
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "TIFF image expected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static processTiffImage(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;)V
    .locals 47

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 104
    iget-object v0, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v0}, Lcom/itextpdf/io/image/TiffImageData;->isRecoverFromImageError()Z

    move-result v3

    .line 105
    iget-object v0, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v0}, Lcom/itextpdf/io/image/TiffImageData;->getPage()I

    move-result v0

    .line 106
    iget-object v4, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v4}, Lcom/itextpdf/io/image/TiffImageData;->isDirect()Z

    move-result v4

    const/4 v5, 0x1

    if-lt v0, v5, :cond_26

    .line 110
    :try_start_0
    new-instance v6, Lcom/itextpdf/io/codec/TIFFDirectory;

    sub-int/2addr v0, v5

    invoke-direct {v6, v1, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)V

    const/16 v0, 0x142

    .line 111
    invoke-virtual {v6, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v0

    if-nez v0, :cond_25

    const/16 v0, 0x103

    .line 114
    invoke-virtual {v6, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 115
    invoke-virtual {v6, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v7

    long-to-int v0, v7

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    const v8, 0x8003

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v7, v11, :cond_1

    if-eq v7, v10, :cond_1

    if-eq v7, v9, :cond_1

    if-eq v7, v8, :cond_1

    .line 124
    invoke-static {v6, v1, v2}, Lcom/itextpdf/io/image/TiffImageHelper;->processTiffImageColor(Lcom/itextpdf/io/codec/TIFFDirectory;Lcom/itextpdf/io/source/RandomAccessFileOrArray;Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;)V

    return-void

    :cond_1
    const/16 v0, 0x112

    .line 128
    invoke-virtual {v6, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v12

    const/16 v13, 0x8

    if-eqz v12, :cond_7

    .line 129
    invoke-virtual {v6, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v14

    long-to-int v0, v14

    if-eq v0, v10, :cond_6

    if-ne v0, v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v14, 0x5

    if-eq v0, v14, :cond_5

    if-ne v0, v13, :cond_3

    goto :goto_1

    :cond_3
    const/4 v14, 0x6

    if-eq v0, v14, :cond_4

    const/4 v14, 0x7

    if-ne v0, v14, :cond_7

    :cond_4
    const v0, -0x4036f025

    goto :goto_3

    :cond_5
    :goto_1
    const v0, 0x3fc90fdb

    goto :goto_3

    :cond_6
    :goto_2
    const v0, 0x40490fdb    # (float)Math.PI

    :goto_3
    move v14, v0

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    :goto_4
    const/16 v0, 0x101

    .line 141
    invoke-virtual {v6, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    long-to-int v13, v12

    const/16 v12, 0x100

    .line 142
    invoke-virtual {v6, v12}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x128

    .line 145
    invoke-virtual {v6, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 146
    invoke-virtual {v6, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v8

    long-to-int v0, v8

    goto :goto_5

    :cond_8
    move v0, v11

    :goto_5
    const/16 v8, 0x11a

    .line 147
    invoke-virtual {v6, v8}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/itextpdf/io/image/TiffImageHelper;->getDpi(Lcom/itextpdf/io/codec/TIFFField;I)I

    move-result v8

    const/16 v9, 0x11b

    .line 148
    invoke-virtual {v6, v9}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/itextpdf/io/image/TiffImageHelper;->getDpi(Lcom/itextpdf/io/codec/TIFFField;I)I

    move-result v9

    if-ne v0, v5, :cond_a

    if-eqz v9, :cond_9

    int-to-float v0, v8

    int-to-float v8, v9

    div-float/2addr v0, v8

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    move v8, v0

    const/4 v9, 0x0

    const/4 v15, 0x0

    goto :goto_7

    :cond_a
    move v15, v9

    move v9, v8

    const/4 v8, 0x0

    :goto_7
    const/16 v0, 0x116

    .line 156
    invoke-virtual {v6, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 157
    invoke-virtual {v6, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v10

    long-to-int v0, v10

    goto :goto_8

    :cond_b
    move v0, v13

    :goto_8
    if-lez v0, :cond_d

    if-le v0, v13, :cond_c

    goto :goto_9

    :cond_c
    move v10, v0

    goto :goto_a

    :cond_d
    :goto_9
    move v10, v13

    :goto_a
    const/16 v0, 0x111

    .line 160
    invoke-static {v6, v0}, Lcom/itextpdf/io/image/TiffImageHelper;->getArrayLongShort(Lcom/itextpdf/io/codec/TIFFDirectory;I)[J

    move-result-object v11

    const/16 v0, 0x117

    .line 161
    invoke-static {v6, v0}, Lcom/itextpdf/io/image/TiffImageHelper;->getArrayLongShort(Lcom/itextpdf/io/codec/TIFFDirectory;I)[J

    move-result-object v0

    const-wide/16 v24, 0x0

    if-eqz v0, :cond_e

    .line 164
    array-length v12, v0

    if-ne v12, v5, :cond_f

    const/4 v12, 0x0

    aget-wide v27, v0, v12

    cmp-long v26, v27, v24

    if-eqz v26, :cond_e

    aget-wide v29, v11, v12

    add-long v27, v27, v29

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v29

    cmp-long v12, v27, v29

    if-lez v12, :cond_f

    :cond_e
    if-ne v13, v10, :cond_f

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v27

    move-object/from16 v30, v6

    const/4 v12, 0x0

    aget-wide v5, v11, v12

    long-to-int v0, v5

    int-to-long v5, v0

    sub-long v27, v27, v5

    const/4 v5, 0x1

    new-array v0, v5, [J

    aput-wide v27, v0, v12

    goto :goto_b

    :cond_f
    move-object/from16 v30, v6

    :goto_b
    move-object v5, v0

    const/16 v0, 0x10a

    move-object/from16 v6, v30

    .line 168
    invoke-virtual {v6, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v12, 0x0

    .line 170
    invoke-virtual {v0, v12}, Lcom/itextpdf/io/codec/TIFFField;->getAsInt(I)I

    move-result v0

    move v12, v0

    goto :goto_c

    :cond_10
    const/4 v12, 0x1

    :goto_c
    const/16 v0, 0x106

    .line 173
    invoke-virtual {v6, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v27

    const-wide/16 v30, 0x1

    if-eqz v27, :cond_11

    .line 174
    invoke-virtual {v6, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v27

    cmp-long v0, v27, v30

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_d

    :cond_11
    const/4 v0, 0x0

    :goto_d
    const-wide/16 v27, 0x4

    move/from16 v32, v14

    const/4 v14, 0x2

    if-eq v7, v14, :cond_12

    const/4 v14, 0x3

    if-eq v7, v14, :cond_15

    const/4 v14, 0x4

    if-eq v7, v14, :cond_13

    const v14, 0x8003

    if-eq v7, v14, :cond_12

    move v14, v0

    move/from16 v33, v8

    move-wide/from16 v30, v24

    const/4 v8, 0x0

    goto/16 :goto_13

    :cond_12
    move/from16 v33, v8

    goto :goto_11

    :cond_13
    const/16 v14, 0x125

    .line 199
    invoke-virtual {v6, v14}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v14

    if-eqz v14, :cond_14

    move/from16 v33, v8

    const/4 v8, 0x0

    .line 201
    invoke-virtual {v14, v8}, Lcom/itextpdf/io/codec/TIFFField;->getAsLong(I)J

    move-result-wide v30

    move v14, v0

    goto :goto_e

    :cond_14
    move/from16 v33, v8

    move v14, v0

    move-wide/from16 v30, v24

    :goto_e
    const/16 v8, 0x100

    goto :goto_13

    :cond_15
    move/from16 v33, v8

    or-int/lit8 v8, v0, 0xc

    const/16 v14, 0x124

    .line 188
    invoke-virtual {v6, v14}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v14

    if-eqz v14, :cond_18

    move/from16 v20, v8

    const/4 v8, 0x0

    .line 190
    invoke-virtual {v14, v8}, Lcom/itextpdf/io/codec/TIFFField;->getAsLong(I)J

    move-result-wide v34

    and-long v30, v34, v30

    cmp-long v8, v30, v24

    if-eqz v8, :cond_16

    const/16 v8, 0x102

    move/from16 v17, v8

    goto :goto_f

    :cond_16
    const/16 v17, 0x101

    :goto_f
    and-long v30, v34, v27

    cmp-long v8, v30, v24

    if-eqz v8, :cond_17

    or-int/lit8 v0, v0, 0xe

    move v14, v0

    move/from16 v8, v17

    goto :goto_10

    :cond_17
    move/from16 v8, v17

    move/from16 v14, v20

    :goto_10
    move-wide/from16 v30, v24

    move-wide/from16 v24, v34

    goto :goto_13

    :cond_18
    move/from16 v20, v8

    move/from16 v14, v20

    goto :goto_12

    :goto_11
    or-int/lit8 v0, v0, 0xa

    move v14, v0

    :goto_12
    move-wide/from16 v30, v24

    const/16 v8, 0x101

    :goto_13
    if-eqz v4, :cond_19

    if-ne v10, v13, :cond_19

    move-object/from16 v41, v6

    const/4 v4, 0x0

    .line 207
    aget-wide v6, v5, v4

    long-to-int v0, v6

    new-array v0, v0, [B

    .line 208
    aget-wide v3, v11, v4

    move-object/from16 v6, p0

    invoke-virtual {v6, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 209
    invoke-virtual {v6, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 210
    iget-object v3, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/16 v20, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v3

    move/from16 v18, v1

    move/from16 v19, v13

    move/from16 v21, v8

    move/from16 v22, v14

    move-object/from16 v23, v0

    invoke-static/range {v17 .. v24}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B[I)V

    .line 211
    iget-object v0, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/image/TiffImageData;->setInverted(Z)V

    move v3, v9

    move v6, v15

    move/from16 v7, v32

    goto/16 :goto_1b

    :cond_19
    move-object/from16 v41, v6

    move-object/from16 v6, p0

    .line 214
    new-instance v4, Lcom/itextpdf/io/codec/CCITTG4Encoder;

    invoke-direct {v4, v1}, Lcom/itextpdf/io/codec/CCITTG4Encoder;-><init>(I)V

    move/from16 v42, v9

    move/from16 v43, v15

    const/4 v9, 0x0

    move v15, v13

    .line 215
    :goto_14
    array-length v0, v11

    if-ge v9, v0, :cond_22

    move/from16 v20, v13

    move/from16 v44, v14

    .line 216
    aget-wide v13, v5, v9

    long-to-int v0, v13

    new-array v13, v0, [B

    move-object/from16 v17, v4

    move-object v14, v5

    .line 217
    aget-wide v4, v11, v9

    invoke-virtual {v6, v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 218
    invoke-virtual {v6, v13}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 219
    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 220
    new-instance v5, Lcom/itextpdf/io/codec/TIFFFaxDecoder;

    invoke-direct {v5, v12, v1, v4}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;-><init>(III)V

    .line 221
    invoke-virtual {v5, v3}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->setRecoverFromImageError(Z)V

    add-int/lit8 v0, v1, 0x7

    const/16 v21, 0x8

    .line 222
    div-int/lit8 v0, v0, 0x8

    mul-int/2addr v0, v4

    move/from16 v45, v12

    new-array v12, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move/from16 v46, v9

    const/4 v9, 0x2

    if-eq v7, v9, :cond_21

    const/4 v9, 0x3

    if-eq v7, v9, :cond_1d

    const/4 v9, 0x4

    if-eq v7, v9, :cond_1b

    const v9, 0x8003

    move/from16 v16, v3

    move/from16 v34, v8

    if-eq v7, v9, :cond_1a

    move-object/from16 v9, v17

    move/from16 v3, v42

    move/from16 v6, v43

    const/4 v8, 0x0

    move/from16 v17, v7

    move/from16 v7, v32

    move/from16 v32, v33

    goto/16 :goto_1a

    :cond_1a
    move-object/from16 v9, v17

    move/from16 v3, v42

    move/from16 v6, v43

    const/4 v8, 0x0

    move/from16 v17, v7

    move/from16 v7, v32

    move/from16 v32, v33

    goto/16 :goto_19

    :cond_1b
    const v9, 0x8003

    const/16 v37, 0x0

    move-object/from16 v34, v5

    move-object/from16 v35, v12

    move-object/from16 v36, v13

    move/from16 v38, v4

    move-wide/from16 v39, v30

    .line 260
    :try_start_1
    invoke-virtual/range {v34 .. v40}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeT6([B[BIIJ)V
    :try_end_1
    .catch Lcom/itextpdf/io/exceptions/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_15
    move-object/from16 v5, v17

    goto :goto_16

    :catch_0
    move-exception v0

    move-object v5, v0

    if-eqz v3, :cond_1c

    goto :goto_15

    .line 266
    :goto_16
    :try_start_2
    invoke-virtual {v5, v12, v4}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->fax4Encode([BI)V

    move/from16 v16, v3

    move-object v9, v5

    goto :goto_18

    .line 263
    :cond_1c
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1d
    move-object/from16 v9, v17

    const/16 v37, 0x0

    move-object/from16 v34, v5

    move-object/from16 v35, v12

    move-object/from16 v36, v13

    move/from16 v38, v4

    move-wide/from16 v39, v24

    .line 231
    :try_start_3
    invoke-virtual/range {v34 .. v40}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decode2D([B[BIIJ)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_17

    :catch_1
    move-exception v0

    move-object/from16 v17, v0

    xor-long v24, v24, v27

    const/16 v37, 0x0

    move-object/from16 v34, v5

    move-object/from16 v35, v12

    move-object/from16 v36, v13

    move/from16 v38, v4

    move-wide/from16 v39, v24

    .line 236
    :try_start_4
    invoke-virtual/range {v34 .. v40}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decode2D([B[BIIJ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 256
    :goto_17
    :try_start_5
    invoke-virtual {v9, v12, v4}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->fax4Encode([BI)V

    move/from16 v16, v3

    :goto_18
    move/from16 v17, v7

    move/from16 v34, v8

    move/from16 v7, v32

    move/from16 v32, v33

    move/from16 v3, v42

    move/from16 v6, v43

    const/4 v8, 0x0

    goto :goto_1a

    :catch_2
    if-eqz v3, :cond_20

    const/4 v3, 0x1

    if-eq v10, v3, :cond_1f

    const/4 v3, 0x0

    .line 244
    aget-wide v4, v14, v3

    long-to-int v0, v4

    new-array v0, v0, [B

    .line 245
    aget-wide v3, v11, v3

    invoke-virtual {v6, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 246
    invoke-virtual {v6, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 247
    iget-object v3, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/4 v4, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v3

    move/from16 v18, v1

    move/from16 v19, v20

    move/from16 v20, v4

    move/from16 v21, v8

    move/from16 v22, v44

    move-object/from16 v23, v0

    invoke-static/range {v17 .. v24}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B[I)V

    .line 248
    iget-object v0, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/image/TiffImageData;->setInverted(Z)V

    .line 249
    iget-object v0, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    move/from16 v1, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/io/image/TiffImageData;->setDpi(II)V

    .line 250
    iget-object v0, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/image/TiffImageData;->setXYRatio(F)V

    const/4 v1, 0x0

    cmpl-float v0, v32, v1

    if-eqz v0, :cond_1e

    .line 252
    iget-object v0, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/image/TiffImageData;->setRotation(F)V

    :cond_1e
    return-void

    .line 241
    :cond_1f
    throw v17

    .line 239
    :cond_20
    throw v17

    :cond_21
    move/from16 v16, v3

    move-object/from16 v9, v17

    move/from16 v3, v42

    move/from16 v6, v43

    move/from16 v17, v7

    move/from16 v7, v32

    move/from16 v32, v33

    move/from16 v34, v8

    const/4 v8, 0x0

    .line 226
    :goto_19
    invoke-virtual {v5, v12, v13, v8, v4}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decode1D([B[BII)V

    .line 227
    invoke-virtual {v9, v12, v4}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->fax4Encode([BI)V

    :goto_1a
    sub-int/2addr v15, v10

    add-int/lit8 v0, v46, 0x1

    move/from16 v42, v3

    move/from16 v43, v6

    move-object v4, v9

    move-object v5, v14

    move/from16 v3, v16

    move/from16 v13, v20

    move/from16 v33, v32

    move/from16 v8, v34

    move/from16 v14, v44

    move/from16 v12, v45

    move-object/from16 v6, p0

    move v9, v0

    move/from16 v32, v7

    move/from16 v7, v17

    goto/16 :goto_14

    :cond_22
    move-object v9, v4

    move/from16 v20, v13

    move/from16 v44, v14

    move/from16 v7, v32

    move/from16 v3, v42

    move/from16 v6, v43

    .line 271
    invoke-virtual {v9}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->close()[B

    move-result-object v23

    .line 272
    iget-object v0, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/4 v4, 0x1

    and-int/lit8 v22, v44, 0x1

    const/16 v24, 0x0

    const/4 v4, 0x0

    const/16 v21, 0x100

    move-object/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v20

    move/from16 v20, v4

    invoke-static/range {v17 .. v24}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B[I)V

    .line 275
    :goto_1b
    iget-object v0, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v0, v3, v6}, Lcom/itextpdf/io/image/TiffImageData;->setDpi(II)V

    const v0, 0x8773

    move-object/from16 v1, v41

    .line 276
    invoke-virtual {v1, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v3, :cond_23

    .line 278
    :try_start_6
    invoke-virtual {v1, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/TIFFField;->getAsBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/colors/IccProfile;->getInstance([B)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/itextpdf/io/colors/IccProfile;->getNumComponents()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_23

    .line 281
    iget-object v1, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/image/TiffImageData;->setProfile(Lcom/itextpdf/io/colors/IccProfile;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_3
    :cond_23
    const/4 v1, 0x0

    cmpl-float v0, v7, v1

    if-eqz v0, :cond_24

    .line 287
    :try_start_7
    iget-object v0, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v0, v7}, Lcom/itextpdf/io/image/TiffImageData;->setRotation(F)V

    :cond_24
    return-void

    .line 112
    :cond_25
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Tiles are not supported."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 289
    :catch_4
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Cannot read TIFF image."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_26
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Page number must be >= 1."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static processTiffImageColor(Lcom/itextpdf/io/codec/TIFFDirectory;Lcom/itextpdf/io/source/RandomAccessFileOrArray;Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x103

    .line 296
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 297
    invoke-virtual {v0, v3}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const v4, 0x8005

    const v6, 0x80b2

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x7

    const/16 v10, 0x8

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_2

    if-eq v3, v6, :cond_2

    if-eq v3, v8, :cond_2

    if-eq v3, v7, :cond_2

    if-eq v3, v9, :cond_2

    if-ne v3, v10, :cond_1

    goto :goto_1

    .line 311
    :cond_1
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Compression {0} is not supported."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_1
    const/16 v11, 0x106

    .line 313
    invoke-virtual {v0, v11}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eqz v11, :cond_4

    if-eq v11, v5, :cond_4

    if-eq v11, v13, :cond_4

    if-eq v11, v12, :cond_4

    if-eq v11, v8, :cond_4

    if-eq v3, v7, :cond_4

    if-ne v3, v9, :cond_3

    goto :goto_2

    .line 323
    :cond_3
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Photometric {0} is not supported."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_2
    const/16 v14, 0x112

    .line 326
    invoke-virtual {v0, v14}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v15

    const/4 v4, 0x4

    const/16 v16, 0x0

    if-eqz v15, :cond_a

    .line 327
    invoke-virtual {v0, v14}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eq v14, v12, :cond_9

    if-ne v14, v4, :cond_5

    goto :goto_4

    :cond_5
    if-eq v14, v8, :cond_8

    if-ne v14, v10, :cond_6

    goto :goto_3

    :cond_6
    if-eq v14, v7, :cond_7

    if-ne v14, v9, :cond_a

    :cond_7
    const v14, -0x4036f025

    goto :goto_5

    :cond_8
    :goto_3
    const v14, 0x3fc90fdb

    goto :goto_5

    :cond_9
    :goto_4
    const v14, 0x40490fdb    # (float)Math.PI

    goto :goto_5

    :cond_a
    move/from16 v14, v16

    :goto_5
    const/16 v15, 0x11c

    .line 335
    invoke-virtual {v0, v15}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 336
    invoke-virtual {v0, v15}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v17

    const-wide/16 v19, 0x2

    cmp-long v15, v17, v19

    if-eqz v15, :cond_b

    goto :goto_6

    .line 337
    :cond_b
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Planar images are not supported."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_6
    const/16 v15, 0x152

    .line 339
    invoke-virtual {v0, v15}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v15

    const/16 v9, 0x115

    .line 344
    invoke-virtual {v0, v9}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 345
    invoke-virtual {v0, v9}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    goto :goto_7

    :cond_d
    move v6, v5

    :goto_7
    const/16 v7, 0x102

    .line 347
    invoke-virtual {v0, v7}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 348
    invoke-virtual {v0, v7}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v8

    long-to-int v7, v8

    goto :goto_8

    :cond_e
    move v7, v5

    :goto_8
    if-eq v7, v5, :cond_10

    if-eq v7, v13, :cond_10

    if-eq v7, v4, :cond_10

    if-ne v7, v10, :cond_f

    goto :goto_9

    .line 356
    :cond_f
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Bits per sample {0} is not supported."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    :cond_10
    :goto_9
    const/16 v4, 0x101

    .line 358
    invoke-virtual {v0, v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v8

    long-to-int v4, v8

    const/16 v8, 0x100

    .line 359
    invoke-virtual {v0, v8}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    const/16 v9, 0x128

    .line 363
    invoke-virtual {v0, v9}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v20

    if-eqz v20, :cond_11

    move/from16 v35, v11

    .line 364
    invoke-virtual {v0, v9}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v10

    long-to-int v9, v10

    goto :goto_a

    :cond_11
    move/from16 v35, v11

    move v9, v13

    :goto_a
    const/16 v10, 0x11a

    .line 365
    invoke-virtual {v0, v10}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/itextpdf/io/image/TiffImageHelper;->getDpi(Lcom/itextpdf/io/codec/TIFFField;I)I

    move-result v10

    const/16 v11, 0x11b

    .line 366
    invoke-virtual {v0, v11}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/itextpdf/io/image/TiffImageHelper;->getDpi(Lcom/itextpdf/io/codec/TIFFField;I)I

    move-result v9

    const/16 v11, 0x10a

    .line 368
    invoke-virtual {v0, v11}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_12

    .line 370
    invoke-virtual {v11, v12}, Lcom/itextpdf/io/codec/TIFFField;->getAsInt(I)I

    move-result v11

    goto :goto_b

    :cond_12
    move v11, v5

    :goto_b
    if-ne v11, v13, :cond_13

    move v11, v5

    goto :goto_c

    :cond_13
    move v11, v12

    :goto_c
    const/16 v13, 0x116

    .line 375
    invoke-virtual {v0, v13}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 376
    invoke-virtual {v0, v13}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    goto :goto_d

    :cond_14
    move v12, v4

    :goto_d
    if-lez v12, :cond_15

    if-le v12, v4, :cond_16

    :cond_15
    move v12, v4

    :cond_16
    const/16 v13, 0x111

    .line 379
    invoke-static {v0, v13}, Lcom/itextpdf/io/image/TiffImageHelper;->getArrayLongShort(Lcom/itextpdf/io/codec/TIFFDirectory;I)[J

    move-result-object v13

    const/16 v5, 0x117

    .line 380
    invoke-static {v0, v5}, Lcom/itextpdf/io/image/TiffImageHelper;->getArrayLongShort(Lcom/itextpdf/io/codec/TIFFDirectory;I)[J

    move-result-object v5

    if-eqz v5, :cond_17

    move/from16 v36, v14

    .line 383
    array-length v14, v5

    move/from16 v37, v9

    const/4 v9, 0x1

    if-ne v14, v9, :cond_19

    const/4 v9, 0x0

    aget-wide v21, v5, v9

    const-wide/16 v23, 0x0

    cmp-long v14, v21, v23

    if-eqz v14, :cond_18

    aget-wide v23, v13, v9

    add-long v21, v21, v23

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v23

    cmp-long v9, v21, v23

    if-lez v9, :cond_19

    goto :goto_e

    :cond_17
    move/from16 v37, v9

    move/from16 v36, v14

    :cond_18
    :goto_e
    if-ne v4, v12, :cond_19

    .line 384
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v21

    move v14, v10

    const/4 v5, 0x0

    aget-wide v9, v13, v5

    long-to-int v9, v9

    int-to-long v9, v9

    sub-long v21, v21, v9

    const/4 v9, 0x1

    new-array v10, v9, [J

    aput-wide v21, v10, v5

    move-object v5, v10

    goto :goto_f

    :cond_19
    move v14, v10

    :goto_f
    const/4 v9, 0x5

    if-eq v3, v9, :cond_1a

    const v9, 0x80b2

    if-eq v3, v9, :cond_1a

    const/16 v9, 0x8

    if-ne v3, v9, :cond_1e

    :cond_1a
    const/16 v9, 0x13d

    .line 387
    invoke-virtual {v0, v9}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v9

    if-eqz v9, :cond_1e

    const/4 v10, 0x0

    .line 389
    invoke-virtual {v9, v10}, Lcom/itextpdf/io/codec/TIFFField;->getAsInt(I)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1c

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1b

    goto :goto_10

    .line 391
    :cond_1b
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Illegal value for predictor in TIFF file."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const/4 v10, 0x2

    :goto_10
    if-ne v9, v10, :cond_1f

    const/16 v10, 0x8

    if-ne v7, v10, :cond_1d

    goto :goto_11

    .line 394
    :cond_1d
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "{0} bit samples are not supported for horizontal differencing predictor."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    :cond_1e
    const/4 v9, 0x1

    :cond_1f
    :goto_11
    const/4 v10, 0x5

    if-ne v3, v10, :cond_20

    .line 399
    new-instance v10, Lcom/itextpdf/io/codec/TIFFLZWDecoder;

    invoke-direct {v10, v8, v9, v6}, Lcom/itextpdf/io/codec/TIFFLZWDecoder;-><init>(III)V

    goto :goto_12

    :cond_20
    const/4 v10, 0x0

    :goto_12
    if-lez v15, :cond_21

    move/from16 v38, v14

    .line 407
    new-instance v14, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v14}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    move/from16 v39, v4

    .line 408
    new-instance v4, Lcom/itextpdf/io/source/DeflaterOutputStream;

    invoke-direct {v4, v14}, Lcom/itextpdf/io/source/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v40, v14

    const/4 v14, 0x1

    goto :goto_13

    :cond_21
    move/from16 v39, v4

    move/from16 v38, v14

    const/4 v4, 0x0

    const/4 v14, 0x1

    const/16 v40, 0x0

    :goto_13
    if-ne v7, v14, :cond_22

    if-ne v6, v14, :cond_22

    move/from16 v14, v35

    move-object/from16 v35, v4

    const/4 v4, 0x3

    if-eq v14, v4, :cond_23

    .line 413
    new-instance v4, Lcom/itextpdf/io/codec/CCITTG4Encoder;

    invoke-direct {v4, v8}, Lcom/itextpdf/io/codec/CCITTG4Encoder;-><init>(I)V

    move/from16 v41, v15

    const/4 v15, 0x6

    const/16 v27, 0x0

    goto :goto_14

    :cond_22
    move/from16 v14, v35

    move-object/from16 v35, v4

    .line 415
    :cond_23
    new-instance v4, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v4}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    move/from16 v41, v15

    const/4 v15, 0x6

    if-eq v3, v15, :cond_24

    const/4 v15, 0x7

    if-eq v3, v15, :cond_24

    .line 417
    new-instance v15, Lcom/itextpdf/io/source/DeflaterOutputStream;

    invoke-direct {v15, v4}, Lcom/itextpdf/io/source/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v27, v4

    move-object/from16 v28, v15

    const/4 v4, 0x0

    const/4 v15, 0x6

    goto :goto_15

    :cond_24
    move-object/from16 v27, v4

    const/4 v4, 0x0

    const/4 v15, 0x6

    :goto_14
    const/16 v28, 0x0

    :goto_15
    if-ne v3, v15, :cond_27

    const/16 v4, 0x201

    .line 424
    invoke-virtual {v0, v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 427
    invoke-virtual {v0, v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v9

    long-to-int v4, v9

    .line 428
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v9

    long-to-int v9, v9

    sub-int/2addr v9, v4

    const/16 v10, 0x202

    .line 430
    invoke-virtual {v0, v10}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 431
    invoke-virtual {v0, v10}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    const/4 v10, 0x0

    aget-wide v11, v5, v10

    long-to-int v5, v11

    add-int/2addr v9, v5

    .line 435
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v10

    long-to-int v5, v10

    sub-int/2addr v5, v4

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v5, v5, [B

    .line 437
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v9

    long-to-int v9, v9

    add-int/2addr v9, v4

    int-to-long v9, v9

    .line 439
    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 440
    invoke-virtual {v1, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 441
    iget-object v1, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    iput-object v5, v1, Lcom/itextpdf/io/image/TiffImageData;->data:[B

    .line 442
    iget-object v1, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    sget-object v4, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    invoke-virtual {v1, v4}, Lcom/itextpdf/io/image/TiffImageData;->setOriginalType(Lcom/itextpdf/io/image/ImageType;)V

    .line 443
    iget-object v1, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-static {v1}, Lcom/itextpdf/io/image/JpegImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    const/4 v1, 0x1

    .line 444
    iput-boolean v1, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->jpegProcessing:Z

    goto/16 :goto_17

    .line 425
    :cond_26
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Missing tag(s) for OJPEG compression"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    const/4 v15, 0x7

    if-ne v3, v15, :cond_2d

    .line 446
    array-length v4, v5

    const/4 v9, 0x1

    if-gt v4, v9, :cond_2c

    const/4 v4, 0x0

    .line 448
    aget-wide v9, v5, v4

    long-to-int v5, v9

    new-array v9, v5, [B

    .line 449
    aget-wide v10, v13, v4

    invoke-virtual {v1, v10, v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 450
    invoke-virtual {v1, v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    const/16 v1, 0x15b

    .line 453
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 455
    invoke-virtual {v1}, Lcom/itextpdf/io/codec/TIFFField;->getAsBytes()[B

    move-result-object v1

    .line 457
    array-length v4, v1

    const/4 v10, 0x0

    .line 459
    aget-byte v11, v1, v10

    const/4 v10, -0x1

    if-ne v11, v10, :cond_28

    const/4 v10, 0x1

    aget-byte v11, v1, v10

    const/16 v10, -0x28

    if-ne v11, v10, :cond_28

    add-int/lit8 v4, v4, -0x2

    const/4 v10, 0x2

    goto :goto_16

    :cond_28
    const/4 v10, 0x0

    .line 464
    :goto_16
    array-length v11, v1

    const/4 v12, 0x2

    sub-int/2addr v11, v12

    aget-byte v11, v1, v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_29

    array-length v11, v1

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aget-byte v11, v1, v11

    const/16 v12, -0x27

    if-ne v11, v12, :cond_29

    add-int/lit8 v4, v4, -0x2

    .line 466
    :cond_29
    new-array v11, v4, [B

    const/4 v12, 0x0

    .line 467
    invoke-static {v1, v10, v11, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, v5, v4

    .line 469
    new-array v1, v1, [B

    const/4 v10, 0x2

    .line 470
    invoke-static {v9, v12, v1, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    invoke-static {v11, v12, v1, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v10

    sub-int/2addr v5, v10

    .line 472
    invoke-static {v9, v10, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v1

    .line 475
    :cond_2a
    iget-object v1, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    iput-object v9, v1, Lcom/itextpdf/io/image/TiffImageData;->data:[B

    .line 476
    iget-object v1, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    sget-object v4, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    invoke-virtual {v1, v4}, Lcom/itextpdf/io/image/TiffImageData;->setOriginalType(Lcom/itextpdf/io/image/ImageType;)V

    .line 477
    iget-object v1, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-static {v1}, Lcom/itextpdf/io/image/JpegImageHelper;->processImage(Lcom/itextpdf/io/image/ImageData;)V

    const/4 v1, 0x1

    .line 478
    iput-boolean v1, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->jpegProcessing:Z

    const/4 v1, 0x2

    if-ne v14, v1, :cond_2b

    .line 480
    iget-object v1, v2, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/itextpdf/io/image/TiffImageData;->setColorTransform(I)V

    goto :goto_17

    :cond_2b
    const/4 v15, 0x0

    :goto_17
    move-object v1, v2

    goto/16 :goto_20

    .line 447
    :cond_2c
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Compression jpeg is only supported with a single strip. This image has {0} strips."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    array-length v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    :cond_2d
    const/4 v15, 0x0

    move/from16 v0, v39

    .line 483
    :goto_18
    array-length v2, v13

    if-ge v15, v2, :cond_37

    move v2, v9

    move-object/from16 v29, v10

    .line 484
    aget-wide v9, v5, v15

    long-to-int v9, v9

    new-array v9, v9, [B

    move-object v10, v4

    move-object/from16 v30, v5

    .line 485
    aget-wide v4, v13, v15

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 486
    invoke-virtual {v1, v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 487
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2e

    mul-int v5, v8, v7

    mul-int/2addr v5, v6

    const/16 v17, 0x7

    add-int/lit8 v5, v5, 0x7

    const/16 v20, 0x8

    .line 490
    div-int/lit8 v5, v5, 0x8

    mul-int/2addr v5, v4

    new-array v5, v5, [B

    goto :goto_19

    :cond_2e
    const/4 v5, 0x0

    :goto_19
    if-eqz v11, :cond_2f

    .line 492
    invoke-static {v9}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->reverseBits([B)V

    :cond_2f
    const/4 v1, 0x1

    if-eq v3, v1, :cond_34

    const/4 v1, 0x5

    if-eq v3, v1, :cond_33

    const/16 v1, 0x8

    if-eq v3, v1, :cond_31

    const v1, 0x8005

    if-eq v3, v1, :cond_30

    const v1, 0x80b2

    if-eq v3, v1, :cond_32

    :goto_1a
    move-object/from16 v1, v29

    goto :goto_1b

    :cond_30
    const v1, 0x80b2

    .line 503
    invoke-static {v9, v5}, Lcom/itextpdf/io/image/TiffImageHelper;->decodePackbits([B[B)V

    goto :goto_1a

    :cond_31
    const v1, 0x80b2

    .line 496
    :cond_32
    invoke-static {v9, v5}, Lcom/itextpdf/io/util/FilterUtil;->inflateData([B[B)V

    .line 497
    invoke-static {v5, v2, v8, v4, v6}, Lcom/itextpdf/io/image/TiffImageHelper;->applyPredictor([BIIII)V

    goto :goto_1a

    :cond_33
    move-object/from16 v1, v29

    .line 506
    invoke-virtual {v1, v9, v5, v4}, Lcom/itextpdf/io/codec/TIFFLZWDecoder;->decode([B[BI)[B

    :goto_1b
    const/4 v9, 0x1

    goto :goto_1c

    :cond_34
    move-object/from16 v1, v29

    move-object v5, v9

    goto :goto_1b

    :goto_1c
    if-ne v7, v9, :cond_35

    if-ne v6, v9, :cond_35

    const/4 v9, 0x3

    if-eq v14, v9, :cond_35

    .line 510
    invoke-virtual {v10, v5, v4}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->fax4Encode([BI)V

    goto :goto_1d

    :cond_35
    if-lez v41, :cond_36

    move-object/from16 v20, v28

    move-object/from16 v21, v35

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v4

    .line 513
    invoke-static/range {v20 .. v26}, Lcom/itextpdf/io/image/TiffImageHelper;->processExtraSamples(Lcom/itextpdf/io/source/DeflaterOutputStream;Lcom/itextpdf/io/source/DeflaterOutputStream;[BIIII)V

    :goto_1d
    move-object/from16 v4, v28

    goto :goto_1e

    :cond_36
    move-object/from16 v4, v28

    .line 515
    invoke-virtual {v4, v5}, Lcom/itextpdf/io/source/DeflaterOutputStream;->write([B)V

    :goto_1e
    sub-int/2addr v0, v12

    add-int/lit8 v15, v15, 0x1

    move v9, v2

    move-object/from16 v28, v4

    move-object v4, v10

    move-object/from16 v5, v30

    move-object v10, v1

    move-object/from16 v1, p1

    goto/16 :goto_18

    :cond_37
    move-object v10, v4

    move-object/from16 v4, v28

    const/4 v0, 0x1

    if-ne v7, v0, :cond_39

    if-ne v6, v0, :cond_39

    const/4 v1, 0x3

    if-eq v14, v1, :cond_39

    move-object/from16 v1, p2

    .line 520
    iget-object v2, v1, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    if-ne v14, v0, :cond_38

    const/16 v32, 0x1

    goto :goto_1f

    :cond_38
    const/16 v32, 0x0

    .line 521
    :goto_1f
    invoke-virtual {v10}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->close()[B

    move-result-object v33

    const/16 v34, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x100

    move-object/from16 v27, v2

    move/from16 v28, v8

    move/from16 v29, v39

    .line 520
    invoke-static/range {v27 .. v34}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B[I)V

    goto :goto_20

    :cond_39
    move-object/from16 v1, p2

    .line 523
    invoke-virtual {v4}, Lcom/itextpdf/io/source/DeflaterOutputStream;->close()V

    .line 524
    iget-object v0, v1, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    sub-int v23, v6, v41

    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v25

    move-object/from16 v20, v0

    move/from16 v21, v8

    move/from16 v22, v39

    move/from16 v24, v7

    invoke-static/range {v20 .. v25}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 525
    iget-object v0, v1, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/itextpdf/io/image/TiffImageData;->setDeflated(Z)V

    .line 528
    :goto_20
    iget-object v0, v1, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    move/from16 v4, v37

    move/from16 v2, v38

    invoke-virtual {v0, v2, v4}, Lcom/itextpdf/io/image/TiffImageData;->setDpi(II)V

    const/4 v0, 0x6

    if-eq v3, v0, :cond_3f

    const/4 v0, 0x7

    if-eq v3, v0, :cond_3f

    const v0, 0x8773

    move-object/from16 v2, p0

    .line 530
    invoke-virtual {v2, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3a

    const v0, 0x8773

    .line 532
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/TIFFField;->getAsBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/colors/IccProfile;->getInstance([B)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object v0

    sub-int v6, v6, v41

    .line 534
    invoke-virtual {v0}, Lcom/itextpdf/io/colors/IccProfile;->getNumComponents()I

    move-result v3

    if-ne v6, v3, :cond_3a

    .line 535
    iget-object v3, v1, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v3, v0}, Lcom/itextpdf/io/image/TiffImageData;->setProfile(Lcom/itextpdf/io/colors/IccProfile;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_3a
    const/16 v0, 0x140

    .line 541
    :try_start_2
    invoke-virtual {v2, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/16 v0, 0x140

    .line 542
    invoke-virtual {v2, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/io/codec/TIFFField;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lcom/itextpdf/io/codec/TIFFField;->getAsChars()[C

    move-result-object v0

    .line 544
    array-length v2, v0

    new-array v3, v2, [B

    .line 545
    array-length v4, v0

    const/4 v5, 0x3

    div-int/2addr v4, v5

    mul-int/lit8 v5, v4, 0x2

    const/4 v9, 0x0

    :goto_21
    if-ge v9, v4, :cond_3b

    mul-int/lit8 v6, v9, 0x3

    .line 549
    aget-char v10, v0, v9

    const/16 v11, 0x8

    shr-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v3, v6

    add-int/lit8 v10, v6, 0x1

    add-int v12, v9, v4

    .line 550
    aget-char v12, v0, v12

    shr-int/2addr v12, v11

    int-to-byte v12, v12

    aput-byte v12, v3, v10

    add-int/lit8 v6, v6, 0x2

    add-int v10, v9, v5

    .line 551
    aget-char v10, v0, v10

    shr-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v3, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    :cond_3b
    const/4 v9, 0x0

    :goto_22
    if-ge v9, v2, :cond_3d

    .line 558
    aget-byte v6, v3, v9

    if-eqz v6, :cond_3c

    const/4 v2, 0x0

    goto :goto_23

    :cond_3c
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    :cond_3d
    const/4 v2, 0x1

    :goto_23
    if-eqz v2, :cond_3e

    const/4 v12, 0x0

    :goto_24
    if-ge v12, v4, :cond_3e

    mul-int/lit8 v2, v12, 0x3

    .line 565
    aget-char v6, v0, v12

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    add-int/lit8 v6, v2, 0x1

    add-int v9, v12, v4

    .line 566
    aget-char v9, v0, v9

    int-to-byte v9, v9

    aput-byte v9, v3, v6

    add-int/lit8 v2, v2, 0x2

    add-int v6, v12, v5

    .line 567
    aget-char v6, v0, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_24

    .line 571
    :cond_3e
    const-string v0, "/Indexed"

    .line 572
    const-string v2, "/DeviceRGB"

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 573
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    .line 574
    invoke-static {v3, v5}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v2, v4, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 575
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->additional:Ljava/util/Map;

    .line 576
    iget-object v2, v1, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->additional:Ljava/util/Map;

    const-string v3, "ColorSpace"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    if-nez v14, :cond_40

    .line 580
    iget-object v0, v1, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/itextpdf/io/image/TiffImageData;->setInverted(Z)V

    :cond_40
    cmpl-float v0, v36, v16

    if-eqz v0, :cond_41

    .line 582
    iget-object v0, v1, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    move/from16 v14, v36

    invoke-virtual {v0, v14}, Lcom/itextpdf/io/image/TiffImageData;->setRotation(F)V

    :cond_41
    if-lez v41, :cond_42

    .line 584
    invoke-virtual/range {v35 .. v35}, Lcom/itextpdf/io/source/DeflaterOutputStream;->close()V

    const/4 v0, 0x0

    .line 585
    invoke-static {v0}, Lcom/itextpdf/io/image/ImageDataFactory;->createRawImage([B)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/image/RawImageData;

    .line 586
    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v25

    const/16 v23, 0x1

    move-object/from16 v20, v0

    move/from16 v21, v8

    move/from16 v22, v39

    move/from16 v24, v7

    invoke-static/range {v20 .. v25}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 587
    invoke-virtual {v0}, Lcom/itextpdf/io/image/RawImageData;->makeMask()V

    const/4 v2, 0x1

    .line 588
    invoke-virtual {v0, v2}, Lcom/itextpdf/io/image/RawImageData;->setDeflated(Z)V

    .line 589
    iget-object v1, v1, Lcom/itextpdf/io/image/TiffImageHelper$TiffParameters;->image:Lcom/itextpdf/io/image/TiffImageData;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/image/TiffImageData;->setImageMask(Lcom/itextpdf/io/image/ImageData;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_42
    return-void

    .line 592
    :catch_1
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Cannot get TIFF image color."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
