.class Lcom/itextpdf/io/image/AwtImageDataFactory;
.super Ljava/lang/Object;
.source "AwtImageDataFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/awt/Image;Ljava/awt/Color;)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/image/AwtImageDataFactory;->create(Ljava/awt/Image;Ljava/awt/Color;Z)Lcom/itextpdf/io/image/ImageData;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/awt/Image;Ljava/awt/Color;Z)Lcom/itextpdf/io/image/ImageData;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 69
    instance-of v0, v1, Ljava/awt/image/BufferedImage;

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    .line 70
    move-object v0, v1

    check-cast v0, Ljava/awt/image/BufferedImage;

    .line 71
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result v0

    if-ne v0, v7, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move/from16 v8, p2

    .line 76
    :goto_0
    new-instance v9, Ljava/awt/image/PixelGrabber;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Ljava/awt/image/PixelGrabber;-><init>(Ljava/awt/Image;IIIIZ)V

    .line 78
    :try_start_0
    invoke-virtual {v9}, Ljava/awt/image/PixelGrabber;->grabPixels()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-virtual {v9}, Ljava/awt/image/PixelGrabber;->getStatus()I

    move-result v0

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-nez v0, :cond_20

    .line 85
    invoke-virtual {v9}, Ljava/awt/image/PixelGrabber;->getWidth()I

    move-result v0

    .line 86
    invoke-virtual {v9}, Ljava/awt/image/PixelGrabber;->getHeight()I

    move-result v2

    .line 87
    invoke-virtual {v9}, Ljava/awt/image/PixelGrabber;->getPixels()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    const/16 v4, 0xfa

    const/4 v5, 0x2

    const/16 v9, 0xff

    if-eqz v8, :cond_11

    .line 89
    div-int/lit8 v8, v0, 0x8

    and-int/lit8 v11, v0, 0x7

    if-eqz v11, :cond_1

    move v11, v7

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    add-int/2addr v8, v11

    mul-int/2addr v8, v2

    .line 90
    new-array v14, v8, [B

    mul-int v8, v2, v0

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRed()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getGreen()I

    move-result v12

    add-int/2addr v11, v12

    .line 97
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getBlue()I

    move-result v12

    add-int/2addr v11, v12

    const/16 v12, 0x180

    if-ge v11, v12, :cond_2

    const/4 v11, 0x0

    goto :goto_2

    :cond_2
    move v11, v7

    :goto_2
    if-eqz p1, :cond_9

    move v13, v1

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v5, v8, :cond_8

    .line 105
    aget v1, v3, v5

    shr-int/lit8 v6, v1, 0x18

    and-int/2addr v6, v9

    if-ge v6, v4, :cond_3

    if-ne v11, v7, :cond_4

    goto :goto_4

    :cond_3
    and-int/lit16 v1, v1, 0x888

    if-eqz v1, :cond_4

    :goto_4
    or-int/2addr v12, v13

    :cond_4
    shr-int/lit8 v1, v13, 0x1

    if-eqz v1, :cond_6

    add-int/lit8 v6, v15, 0x1

    if-lt v6, v0, :cond_5

    goto :goto_5

    :cond_5
    move v13, v1

    goto :goto_6

    :cond_6
    :goto_5
    add-int/lit8 v1, v16, 0x1

    int-to-byte v6, v12

    .line 115
    aput-byte v6, v14, v16

    move/from16 v16, v1

    const/4 v12, 0x0

    const/16 v13, 0x80

    :goto_6
    add-int/lit8 v15, v15, 0x1

    if-lt v15, v0, :cond_7

    const/4 v15, 0x0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    const/16 v1, 0x80

    goto :goto_3

    :cond_8
    const/4 v15, 0x0

    goto :goto_b

    :cond_9
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v11, 0x80

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_7
    if-ge v1, v8, :cond_10

    if-nez v6, :cond_b

    .line 126
    aget v15, v3, v1

    shr-int/lit8 v10, v15, 0x18

    and-int/2addr v10, v9

    if-nez v10, :cond_b

    .line 128
    new-array v6, v5, [I

    and-int/lit16 v10, v15, 0x888

    if-eqz v10, :cond_a

    move v10, v9

    goto :goto_8

    :cond_a
    const/4 v10, 0x0

    .line 130
    :goto_8
    aput v10, v6, v7

    const/4 v15, 0x0

    aput v10, v6, v15

    .line 133
    :cond_b
    aget v10, v3, v1

    and-int/lit16 v10, v10, 0x888

    if-eqz v10, :cond_c

    or-int/2addr v13, v11

    :cond_c
    shr-int/lit8 v10, v11, 0x1

    if-eqz v10, :cond_e

    add-int/lit8 v11, v12, 0x1

    if-lt v11, v0, :cond_d

    goto :goto_9

    :cond_d
    move v11, v10

    goto :goto_a

    :cond_e
    :goto_9
    add-int/lit8 v10, v4, 0x1

    int-to-byte v11, v13

    .line 137
    aput-byte v11, v14, v4

    move v4, v10

    const/16 v11, 0x80

    const/4 v13, 0x0

    :goto_a
    add-int/lit8 v12, v12, 0x1

    if-lt v12, v0, :cond_f

    const/4 v12, 0x0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_10
    move-object v15, v6

    :goto_b
    const/4 v12, 0x1

    const/4 v13, 0x1

    move v10, v0

    move v11, v2

    .line 146
    invoke-static/range {v10 .. v15}, Lcom/itextpdf/io/image/ImageDataFactory;->create(IIII[B[I)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    return-object v0

    :cond_11
    mul-int v1, v0, v2

    mul-int/lit8 v6, v1, 0x3

    .line 148
    new-array v14, v6, [B

    if-eqz p1, :cond_12

    .line 157
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRed()I

    move-result v6

    .line 158
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getGreen()I

    move-result v8

    .line 159
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getBlue()I

    move-result v10

    goto :goto_c

    :cond_12
    move v6, v9

    move v8, v6

    move v10, v8

    :goto_c
    if-eqz p1, :cond_15

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_d
    if-ge v5, v1, :cond_14

    .line 164
    aget v7, v3, v5

    shr-int/lit8 v11, v7, 0x18

    and-int/2addr v11, v9

    if-ge v11, v4, :cond_13

    add-int/lit8 v7, v16, 0x1

    int-to-byte v11, v6

    .line 166
    aput-byte v11, v14, v16

    add-int/lit8 v11, v16, 0x2

    int-to-byte v12, v8

    .line 167
    aput-byte v12, v14, v7

    add-int/lit8 v16, v16, 0x3

    int-to-byte v7, v10

    .line 168
    aput-byte v7, v14, v11

    goto :goto_e

    :cond_13
    add-int/lit8 v11, v16, 0x1

    shr-int/lit8 v12, v7, 0x10

    and-int/2addr v12, v9

    int-to-byte v12, v12

    .line 170
    aput-byte v12, v14, v16

    add-int/lit8 v12, v16, 0x2

    shr-int/lit8 v13, v7, 0x8

    and-int/2addr v13, v9

    int-to-byte v13, v13

    .line 171
    aput-byte v13, v14, v11

    add-int/lit8 v16, v16, 0x3

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 172
    aput-byte v7, v14, v12

    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_14
    const/4 v4, 0x0

    :goto_f
    const/4 v15, 0x0

    goto/16 :goto_14

    .line 177
    :cond_15
    new-array v4, v1, [B

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_10
    if-ge v15, v1, :cond_1d

    .line 180
    aget v12, v3, v15

    shr-int/lit8 v13, v12, 0x18

    and-int/2addr v13, v9

    int-to-byte v13, v13

    aput-byte v13, v4, v15

    const/16 v17, 0x3

    if-nez v6, :cond_1b

    if-eqz v13, :cond_17

    const/4 v5, -0x1

    if-eq v13, v5, :cond_17

    move v6, v7

    :cond_16
    const/16 v16, 0x0

    const/16 v18, 0x2

    goto :goto_13

    :cond_17
    const v5, 0xffffff

    if-nez v11, :cond_19

    if-nez v13, :cond_16

    and-int v8, v12, v5

    const/4 v11, 0x6

    .line 188
    new-array v11, v11, [I

    shr-int/lit8 v13, v8, 0x10

    and-int/2addr v13, v9

    .line 189
    aput v13, v11, v7

    const/16 v16, 0x0

    aput v13, v11, v16

    shr-int/lit8 v13, v8, 0x8

    and-int/2addr v13, v9

    .line 190
    aput v13, v11, v17

    const/16 v18, 0x2

    aput v13, v11, v18

    and-int/lit16 v12, v12, 0xff

    const/4 v13, 0x5

    .line 191
    aput v12, v11, v13

    const/4 v13, 0x4

    aput v12, v11, v13

    move/from16 v12, v16

    :goto_11
    if-ge v12, v15, :cond_1c

    .line 197
    aget v13, v3, v12

    and-int/2addr v13, v5

    if-ne v13, v8, :cond_18

    move v6, v7

    goto :goto_13

    :cond_18
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_19
    const/16 v16, 0x0

    const/16 v18, 0x2

    and-int v7, v12, v5

    if-eq v7, v8, :cond_1a

    if-nez v13, :cond_1a

    :goto_12
    const/4 v6, 0x1

    goto :goto_13

    :cond_1a
    and-int/2addr v5, v12

    if-ne v5, v8, :cond_1c

    if-eqz v13, :cond_1c

    goto :goto_12

    :cond_1b
    move/from16 v18, v5

    const/16 v16, 0x0

    :cond_1c
    :goto_13
    add-int/lit8 v5, v10, 0x1

    .line 214
    aget v7, v3, v15

    shr-int/lit8 v12, v7, 0x10

    and-int/2addr v12, v9

    int-to-byte v12, v12

    aput-byte v12, v14, v10

    add-int/lit8 v12, v10, 0x2

    shr-int/lit8 v13, v7, 0x8

    and-int/2addr v13, v9

    int-to-byte v13, v13

    .line 215
    aput-byte v13, v14, v5

    add-int/lit8 v10, v10, 0x3

    and-int/lit16 v5, v7, 0xff

    int-to-byte v5, v5

    .line 216
    aput-byte v5, v14, v12

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v18

    const/4 v7, 0x1

    goto/16 :goto_10

    :cond_1d
    if-eqz v6, :cond_1e

    goto/16 :goto_f

    :cond_1e
    move-object v15, v11

    const/4 v4, 0x0

    :goto_14
    const/4 v12, 0x3

    const/16 v13, 0x8

    move v10, v0

    move v11, v2

    .line 223
    invoke-static/range {v10 .. v15}, Lcom/itextpdf/io/image/ImageDataFactory;->create(IIII[B[I)Lcom/itextpdf/io/image/ImageData;

    move-result-object v1

    if-eqz v4, :cond_1f

    const/16 v13, 0x8

    const/4 v15, 0x0

    const/4 v12, 0x1

    move v10, v0

    move v11, v2

    move-object v14, v4

    .line 225
    invoke-static/range {v10 .. v15}, Lcom/itextpdf/io/image/ImageDataFactory;->create(IIII[B[I)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/itextpdf/io/image/ImageData;->makeMask()V

    .line 227
    invoke-virtual {v1, v0}, Lcom/itextpdf/io/image/ImageData;->setImageMask(Lcom/itextpdf/io/image/ImageData;)V

    :cond_1f
    return-object v1

    .line 83
    :cond_20
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Java.awt.image fetch aborted or errored"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Java.awt.image was interrupted. Waiting for pixels"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
