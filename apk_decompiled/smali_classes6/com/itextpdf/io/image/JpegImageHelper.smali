.class Lcom/itextpdf/io/image/JpegImageHelper;
.super Ljava/lang/Object;
.source "JpegImageHelper.java"


# static fields
.field private static final JFIF_ID:[B

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final M_APP0:I = 0xe0

.field private static final M_APP2:I = 0xe2

.field private static final M_APPD:I = 0xed

.field private static final M_APPE:I = 0xee

.field private static final NOPARAM_MARKER:I = 0x2

.field private static final NOPARAM_MARKERS:[I

.field private static final NOT_A_MARKER:I = -0x1

.field private static final PS_8BIM_RESO:[B

.field private static final UNSUPPORTED_MARKER:I = 0x1

.field private static final UNSUPPORTED_MARKERS:[I

.field private static final VALID_MARKER:I

.field private static final VALID_MARKERS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    const-class v0, Lcom/itextpdf/io/image/JpegImageHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/image/JpegImageHelper;->LOGGER:Lorg/slf4j/Logger;

    const/16 v0, 0xc1

    const/16 v1, 0xc2

    const/16 v2, 0xc0

    .line 75
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/image/JpegImageHelper;->VALID_MARKERS:[I

    const/16 v0, 0xb

    .line 85
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/image/JpegImageHelper;->UNSUPPORTED_MARKERS:[I

    const/16 v0, 0xa

    .line 95
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/io/image/JpegImageHelper;->NOPARAM_MARKERS:[I

    const/4 v0, 0x5

    .line 117
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/itextpdf/io/image/JpegImageHelper;->JFIF_ID:[B

    const/4 v0, 0x6

    .line 122
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/itextpdf/io/image/JpegImageHelper;->PS_8BIM_RESO:[B

    return-void

    nop

    :array_0
    .array-data 4
        0xc3
        0xc5
        0xc6
        0xc7
        0xc8
        0xc9
        0xca
        0xcb
        0xcd
        0xce
        0xcf
    .end array-data

    :array_1
    .array-data 4
        0xd0
        0xd1
        0xd2
        0xd3
        0xd4
        0xd5
        0xd6
        0xd7
        0xd8
        0x1
    .end array-data

    :array_2
    .array-data 1
        0x4at
        0x46t
        0x49t
        0x46t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x38t
        0x42t
        0x49t
        0x4dt
        0x3t
        -0x13t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static attemptToSetIccProfileToImage([[BLcom/itextpdf/io/image/ImageData;)V
    .locals 7

    if-eqz p0, :cond_3

    .line 160
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/16 v4, 0xe

    if-ge v2, v0, :cond_1

    aget-object v5, p0, v2

    if-nez v5, :cond_0

    return-void

    .line 164
    :cond_0
    array-length v5, v5

    sub-int/2addr v5, v4

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    new-array v0, v3, [B

    .line 168
    array-length v2, p0

    move v3, v1

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, p0, v1

    .line 169
    array-length v6, v5

    sub-int/2addr v6, v4

    invoke-static {v5, v4, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    array-length v5, v5

    sub-int/2addr v5, v4

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getColorEncodingComponentsNumber()I

    move-result p0

    invoke-static {v0, p0}, Lcom/itextpdf/io/colors/IccProfile;->getInstance([BI)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/io/image/ImageData;->setProfile(Lcom/itextpdf/io/colors/IccProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 175
    sget-object p1, Lcom/itextpdf/io/image/JpegImageHelper;->LOGGER:Lorg/slf4j/Logger;

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 175
    const-string v0, "During the construction of the ICC profile, the {0} error with message \"{1}\" occurred, the ICC profile will not be installed in the image."

    invoke-static {v0, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private static getShort(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static marker(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 402
    :goto_0
    sget-object v2, Lcom/itextpdf/io/image/JpegImageHelper;->VALID_MARKERS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 403
    aget v2, v2, v1

    if-ne p0, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 407
    :goto_1
    sget-object v2, Lcom/itextpdf/io/image/JpegImageHelper;->NOPARAM_MARKERS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 408
    aget v2, v2, v1

    if-ne p0, v2, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    :cond_3
    :goto_2
    sget-object v1, Lcom/itextpdf/io/image/JpegImageHelper;->UNSUPPORTED_MARKERS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 413
    aget v1, v1, v0

    if-ne p0, v1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public static processImage(Lcom/itextpdf/io/image/ImageData;)V
    .locals 4

    .line 131
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->loadData()V

    .line 138
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 140
    :cond_0
    const-string v1, "Byte array"

    .line 142
    :goto_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    :try_start_1
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/itextpdf/io/image/ImageData;->imageSize:I

    .line 144
    invoke-static {v2, v1, p0}, Lcom/itextpdf/io/image/JpegImageHelper;->processParameters(Ljava/io/InputStream;Ljava/lang/String;Lcom/itextpdf/io/image/ImageData;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    :catch_0
    invoke-static {p0}, Lcom/itextpdf/io/image/JpegImageHelper;->updateAttributes(Lcom/itextpdf/io/image/ImageData;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 146
    :goto_1
    :try_start_3
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "JPEG image exception."

    invoke-direct {v1, v2, p0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v0, :cond_1

    .line 150
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 153
    :catch_3
    :cond_1
    throw p0

    .line 132
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "JPEG image expected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static processParameters(Ljava/io/InputStream;Ljava/lang/String;Lcom/itextpdf/io/image/ImageData;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 202
    move-object v3, v2

    check-cast v3, [[B

    .line 203
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_24

    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v5, 0xd8

    if-ne v3, v5, :cond_24

    const/4 v3, 0x1

    move v5, v3

    .line 209
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_23

    if-ne v6, v4, :cond_21

    .line 213
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    const-wide/16 v7, 0x2

    const/high16 v9, 0x3f000000    # 0.5f

    const v10, 0x40228f5c    # 2.54f

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-eqz v5, :cond_7

    const/16 v14, 0xe0

    if-ne v6, v14, :cond_7

    .line 216
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v5

    if-ge v5, v11, :cond_0

    add-int/lit8 v5, v5, -0x2

    int-to-long v5, v5

    .line 218
    invoke-static {v0, v5, v6}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    goto :goto_3

    .line 221
    :cond_0
    sget-object v6, Lcom/itextpdf/io/image/JpegImageHelper;->JFIF_ID:[B

    array-length v6, v6

    new-array v11, v6, [B

    .line 222
    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-ne v14, v6, :cond_6

    move v14, v12

    :goto_1
    if-ge v14, v6, :cond_2

    .line 227
    aget-byte v15, v11, v14

    sget-object v16, Lcom/itextpdf/io/image/JpegImageHelper;->JFIF_ID:[B

    aget-byte v4, v16, v14

    if-eq v15, v4, :cond_1

    add-int/lit8 v5, v5, -0x2

    sub-int/2addr v5, v6

    int-to-long v4, v5

    .line 233
    invoke-static {v0, v4, v5}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    goto :goto_3

    :cond_1
    add-int/lit8 v14, v14, 0x1

    const/16 v4, 0xff

    goto :goto_1

    .line 236
    :cond_2
    invoke-static {v0, v7, v8}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 238
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v7

    .line 239
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v8

    if-ne v4, v3, :cond_3

    .line 241
    invoke-virtual {v1, v7, v8}, Lcom/itextpdf/io/image/ImageData;->setDpi(II)V

    goto :goto_2

    :cond_3
    if-ne v4, v13, :cond_4

    int-to-float v4, v7

    mul-float/2addr v4, v10

    add-float/2addr v4, v9

    float-to-int v4, v4

    int-to-float v7, v8

    mul-float/2addr v7, v10

    add-float/2addr v7, v9

    float-to-int v7, v7

    .line 243
    invoke-virtual {v1, v4, v7}, Lcom/itextpdf/io/image/ImageData;->setDpi(II)V

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, -0x2

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x7

    int-to-long v4, v5

    .line 245
    invoke-static {v0, v4, v5}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    :goto_3
    move v5, v12

    :cond_5
    :goto_4
    const/16 v4, 0xff

    goto :goto_0

    .line 224
    :cond_6
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "{0} corrupted jfif marker."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    :cond_7
    const/16 v4, 0xee

    .line 248
    const-string v14, "ISO-8859-1"

    const/16 v15, 0xc

    if-ne v6, v4, :cond_a

    .line 249
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v4

    sub-int/2addr v4, v13

    .line 250
    new-array v6, v4, [B

    move v7, v12

    :goto_5
    if-ge v7, v4, :cond_8

    .line 252
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    if-lt v4, v15, :cond_9

    .line 255
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x5

    invoke-direct {v4, v6, v12, v7, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 256
    const-string v6, "Adobe"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 257
    invoke-virtual {v1, v3}, Lcom/itextpdf/io/image/ImageData;->setInverted(Z)V

    :cond_9
    :goto_6
    const/16 v11, 0xff

    goto/16 :goto_c

    :cond_a
    const/16 v4, 0xe2

    if-ne v6, v4, :cond_f

    .line 263
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v4

    sub-int/2addr v4, v13

    .line 264
    new-array v6, v4, [B

    move v7, v12

    :goto_7
    if-ge v7, v4, :cond_b

    .line 266
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    const/16 v7, 0xe

    if-lt v4, v7, :cond_9

    .line 269
    new-instance v4, Ljava/lang/String;

    const/16 v7, 0xb

    invoke-direct {v4, v6, v12, v7, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 270
    const-string v7, "ICC_PROFILE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 271
    aget-byte v4, v6, v15

    const/16 v7, 0xff

    and-int/2addr v4, v7

    const/16 v8, 0xd

    .line 272
    aget-byte v8, v6, v8

    and-int/2addr v8, v7

    if-ge v4, v3, :cond_c

    move v4, v3

    :cond_c
    if-ge v8, v3, :cond_d

    move v8, v3

    :cond_d
    if-nez v2, :cond_e

    .line 279
    new-array v2, v8, [[B

    :cond_e
    sub-int/2addr v4, v3

    .line 280
    aput-object v6, v2, v4

    goto/16 :goto_4

    :cond_f
    const/16 v4, 0xed

    const/16 v14, 0x8

    if-ne v6, v4, :cond_1c

    .line 286
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v4

    sub-int/2addr v4, v13

    .line 287
    new-array v6, v4, [B

    move v7, v12

    :goto_8
    if-ge v7, v4, :cond_10

    .line 289
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_10
    move v7, v12

    .line 293
    :goto_9
    sget-object v8, Lcom/itextpdf/io/image/JpegImageHelper;->PS_8BIM_RESO:[B

    array-length v8, v8

    sub-int v8, v4, v8

    if-ge v7, v8, :cond_12

    move v8, v12

    .line 295
    :goto_a
    sget-object v15, Lcom/itextpdf/io/image/JpegImageHelper;->PS_8BIM_RESO:[B

    array-length v12, v15

    if-ge v8, v12, :cond_12

    add-int v12, v7, v8

    .line 296
    aget-byte v12, v6, v12

    aget-byte v15, v15, v8

    if-eq v12, v15, :cond_11

    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x0

    goto :goto_9

    :cond_11
    add-int/lit8 v8, v8, 0x1

    const/4 v12, 0x0

    goto :goto_a

    .line 305
    :cond_12
    sget-object v8, Lcom/itextpdf/io/image/JpegImageHelper;->PS_8BIM_RESO:[B

    array-length v12, v8

    add-int/2addr v7, v12

    .line 306
    array-length v8, v8

    sub-int/2addr v4, v8

    if-ge v7, v4, :cond_9

    .line 309
    aget-byte v4, v6, v7

    add-int/2addr v4, v3

    int-to-byte v4, v4

    .line 313
    rem-int/lit8 v8, v4, 0x2

    if-ne v8, v3, :cond_13

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    :cond_13
    add-int/2addr v7, v4

    .line 318
    aget-byte v4, v6, v7

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v8, v7, 0x1

    aget-byte v8, v6, v8

    shl-int/2addr v8, v11

    add-int/2addr v4, v8

    add-int/lit8 v8, v7, 0x2

    aget-byte v8, v6, v8

    shl-int/2addr v8, v14

    add-int/2addr v4, v8

    add-int/lit8 v8, v7, 0x3

    aget-byte v8, v6, v8

    add-int/2addr v4, v8

    if-eq v4, v11, :cond_14

    goto/16 :goto_6

    :cond_14
    add-int/lit8 v4, v7, 0x4

    .line 326
    aget-byte v4, v6, v4

    shl-int/2addr v4, v14

    add-int/lit8 v8, v7, 0x5

    aget-byte v8, v6, v8

    const/16 v11, 0xff

    and-int/2addr v8, v11

    add-int/2addr v4, v8

    add-int/lit8 v8, v7, 0x8

    .line 330
    aget-byte v8, v6, v8

    shl-int/2addr v8, v14

    add-int/lit8 v12, v7, 0x9

    aget-byte v12, v6, v12

    and-int/2addr v12, v11

    add-int/2addr v8, v12

    add-int/lit8 v12, v7, 0xc

    .line 334
    aget-byte v12, v6, v12

    shl-int/2addr v12, v14

    add-int/lit8 v15, v7, 0xd

    aget-byte v15, v6, v15

    and-int/2addr v15, v11

    add-int/2addr v12, v15

    add-int/lit8 v15, v7, 0x10

    .line 338
    aget-byte v15, v6, v15

    shl-int/lit8 v14, v15, 0x8

    add-int/lit8 v7, v7, 0x11

    aget-byte v6, v6, v7

    and-int/2addr v6, v11

    add-int/2addr v14, v6

    if-eq v8, v3, :cond_15

    if-ne v8, v13, :cond_18

    :cond_15
    if-ne v8, v13, :cond_16

    int-to-float v4, v4

    mul-float/2addr v4, v10

    add-float/2addr v4, v9

    float-to-int v4, v4

    .line 343
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiX()I

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiX()I

    move-result v6

    if-eq v6, v4, :cond_17

    .line 344
    sget-object v6, Lcom/itextpdf/io/image/JpegImageHelper;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiX()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Inconsistent metadata (dpiX: {0} vs {1})"

    invoke-static {v8, v7}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_b

    .line 346
    :cond_17
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiY()I

    move-result v6

    invoke-virtual {v1, v4, v6}, Lcom/itextpdf/io/image/ImageData;->setDpi(II)V

    :cond_18
    :goto_b
    if-eq v14, v3, :cond_19

    if-ne v14, v13, :cond_22

    :cond_19
    if-ne v14, v13, :cond_1a

    int-to-float v6, v12

    mul-float/2addr v6, v10

    add-float/2addr v6, v9

    float-to-int v12, v6

    .line 352
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiY()I

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiY()I

    move-result v6

    if-eq v6, v12, :cond_1b

    .line 353
    sget-object v4, Lcom/itextpdf/io/image/JpegImageHelper;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiY()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Inconsistent metadata (dpiY: {0} vs {1})"

    invoke-static {v7, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 355
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiX()I

    move-result v6

    invoke-virtual {v1, v6, v4}, Lcom/itextpdf/io/image/ImageData;->setDpi(II)V

    goto :goto_c

    :cond_1c
    const/16 v11, 0xff

    .line 362
    invoke-static {v6}, Lcom/itextpdf/io/image/JpegImageHelper;->marker(I)I

    move-result v4

    if-nez v4, :cond_1e

    .line 364
    invoke-static {v0, v7, v8}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ne v3, v14, :cond_1d

    .line 368
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/image/ImageData;->setHeight(F)V

    .line 369
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/image/ImageData;->setWidth(F)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/image/ImageData;->setColorEncodingComponentsNumber(I)V

    .line 371
    invoke-virtual {v1, v14}, Lcom/itextpdf/io/image/ImageData;->setBpc(I)V

    .line 381
    invoke-static {v2, v1}, Lcom/itextpdf/io/image/JpegImageHelper;->attemptToSetIccProfileToImage([[BLcom/itextpdf/io/image/ImageData;)V

    return-void

    .line 366
    :cond_1d
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "{0} must have 8 bits per component."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    :cond_1e
    if-eq v4, v3, :cond_20

    if-eq v4, v13, :cond_1f

    .line 376
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v4

    sub-int/2addr v4, v13

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    :cond_1f
    move-object/from16 v4, p1

    const/4 v5, 0x0

    goto :goto_c

    .line 374
    :cond_20
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "{0} unsupported jpeg marker {1}."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, p1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    :cond_21
    move v11, v4

    move-object/from16 v4, p1

    :cond_22
    :goto_c
    move v4, v11

    goto/16 :goto_0

    .line 211
    :cond_23
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Premature EOF while reading JPEG."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    move-object/from16 v4, p1

    .line 204
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "{0} is not a valid jpeg file."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0
.end method

.method private static updateAttributes(Lcom/itextpdf/io/image/ImageData;)V
    .locals 3

    .line 183
    const-string v0, "DCTDecode"

    iput-object v0, p0, Lcom/itextpdf/io/image/ImageData;->filter:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getColorTransform()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ColorTransform"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iput-object v0, p0, Lcom/itextpdf/io/image/ImageData;->decodeParms:Ljava/util/Map;

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getColorEncodingComponentsNumber()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->isInverted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 191
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/io/image/ImageData;->decode:[F

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
