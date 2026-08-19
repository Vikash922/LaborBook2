.class public final Lcom/itextpdf/io/image/RawImageHelper;
.super Ljava/lang/Object;
.source "RawImageHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static updateCcittImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B)V
    .locals 1

    const/16 v0, 0x100

    if-eq p4, v0, :cond_1

    const/16 v0, 0x101

    if-eq p4, v0, :cond_1

    const/16 v0, 0x102

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "CCITT compression type must be CCITTG4, CCITTG3_1D or CCITTG3_2D."

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 157
    invoke-static {p6}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->reverseBits([B)V

    :cond_2
    int-to-float p2, p2

    .line 158
    invoke-virtual {p0, p2}, Lcom/itextpdf/io/image/RawImageData;->setHeight(F)V

    int-to-float p1, p1

    .line 159
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/image/RawImageData;->setWidth(F)V

    .line 160
    invoke-virtual {p0, p5}, Lcom/itextpdf/io/image/RawImageData;->setColorEncodingComponentsNumber(I)V

    .line 161
    invoke-virtual {p0, p4}, Lcom/itextpdf/io/image/RawImageData;->setTypeCcitt(I)V

    .line 162
    iput-object p6, p0, Lcom/itextpdf/io/image/RawImageData;->data:[B

    return-void
.end method

.method public static updateImageAttributes(Lcom/itextpdf/io/image/RawImageData;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/image/RawImageData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->isRawImage()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->getColorEncodingComponentsNumber()I

    move-result v0

    .line 60
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->getTypeCcitt()I

    move-result v1

    const/16 v2, 0xff

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-le v1, v2, :cond_6

    .line 62
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->isMask()Z

    move-result p1

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0, v4}, Lcom/itextpdf/io/image/RawImageData;->setColorEncodingComponentsNumber(I)V

    .line 64
    :cond_0
    invoke-virtual {p0, v4}, Lcom/itextpdf/io/image/RawImageData;->setBpc(I)V

    .line 65
    const-string p1, "CCITTFaxDecode"

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/image/RawImageData;->setFilter(Ljava/lang/String;)V

    add-int/lit16 v1, v1, -0x101

    .line 67
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_1

    .line 69
    const-string v2, "K"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 71
    const-string v1, "BlackIs1"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 73
    const-string v1, "EncodedByteAlign"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4

    .line 75
    const-string v1, "EndOfLine"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 77
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "EndOfBlock"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->getWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "Columns"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->getHeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "Rows"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Lcom/itextpdf/io/image/RawImageData;->decodeParms:Ljava/util/Map;

    goto :goto_1

    :cond_6
    if-eq v0, v4, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    .line 93
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->isInverted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 94
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/io/image/RawImageData;->decode:[F

    goto :goto_0

    .line 88
    :cond_7
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->isInverted()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    .line 89
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/itextpdf/io/image/RawImageData;->decode:[F

    goto :goto_0

    .line 84
    :cond_8
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->isInverted()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    .line 85
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/itextpdf/io/image/RawImageData;->decode:[F

    :cond_9
    :goto_0
    if-eqz p1, :cond_a

    .line 97
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/image/RawImageData;->setImageAttributes(Ljava/util/Map;)V

    .line 99
    :cond_a
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->isMask()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->getBpc()I

    move-result p1

    if-eq p1, v4, :cond_b

    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->getBpc()I

    move-result p1

    if-le p1, v3, :cond_c

    :cond_b
    const/4 p1, -0x1

    .line 100
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/image/RawImageData;->setColorEncodingComponentsNumber(I)V

    .line 101
    :cond_c
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->isDeflated()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 102
    const-string p1, "FlateDecode"

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/image/RawImageData;->setFilter(Ljava/lang/String;)V

    :cond_d
    :goto_1
    return-void

    .line 57
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Raw image expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

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

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected static updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V
    .locals 1

    int-to-float p2, p2

    .line 120
    invoke-virtual {p0, p2}, Lcom/itextpdf/io/image/RawImageData;->setHeight(F)V

    int-to-float p1, p1

    .line 121
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/image/RawImageData;->setWidth(F)V

    const/4 p1, 0x4

    const/4 p2, 0x1

    if-eq p3, p2, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    if-ne p3, p1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Components must be 1, 3 or 4."

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eq p4, p2, :cond_3

    const/4 p2, 0x2

    if-eq p4, p2, :cond_3

    if-eq p4, p1, :cond_3

    const/16 p1, 0x8

    if-ne p4, p1, :cond_2

    goto :goto_1

    .line 125
    :cond_2
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Bits per component must be 1, 2, 4 or 8."

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_3
    :goto_1
    invoke-virtual {p0, p3}, Lcom/itextpdf/io/image/RawImageData;->setColorEncodingComponentsNumber(I)V

    .line 127
    invoke-virtual {p0, p4}, Lcom/itextpdf/io/image/RawImageData;->setBpc(I)V

    .line 128
    iput-object p5, p0, Lcom/itextpdf/io/image/RawImageData;->data:[B

    return-void
.end method

.method protected static updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B[I)V
    .locals 9

    if-eqz p6, :cond_1

    .line 133
    array-length v0, p6

    mul-int/lit8 v1, p3, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Transparency length must be equal to 2 with CCITT images"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    if-ne p4, v0, :cond_2

    .line 136
    invoke-static {p5, p1, p2}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->compress([BII)[B

    move-result-object v7

    const/16 v5, 0x100

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v8, p6

    .line 137
    invoke-static/range {v1 .. v8}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B[I)V

    goto :goto_1

    .line 140
    :cond_2
    invoke-static/range {p0 .. p5}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 141
    invoke-virtual {p0, p6}, Lcom/itextpdf/io/image/RawImageData;->setTransparency([I)V

    :goto_1
    return-void
.end method

.method protected static updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B[I)V
    .locals 2

    if-eqz p7, :cond_1

    .line 147
    array-length v0, p7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance p0, Lcom/itextpdf/io/exceptions/IOException;

    const-string p1, "Transparency length must be equal to 2 with CCITT images"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p6}, Lcom/itextpdf/io/image/RawImageHelper;->updateCcittImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B)V

    .line 150
    invoke-virtual {p0, p7}, Lcom/itextpdf/io/image/RawImageData;->setTransparency([I)V

    return-void
.end method
