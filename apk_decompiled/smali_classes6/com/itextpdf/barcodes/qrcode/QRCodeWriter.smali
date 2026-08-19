.class public final Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"


# static fields
.field private static final QUIET_ZONE_SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static renderResult(Lcom/itextpdf/barcodes/qrcode/QRCode;II)Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .locals 18

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/qrcode/QRCode;->getMatrix()Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v1

    .line 116
    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v2

    add-int/lit8 v3, v1, 0x8

    add-int/lit8 v4, v2, 0x8

    move/from16 v5, p1

    .line 119
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v6, p2

    .line 120
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 122
    div-int v3, v5, v3

    div-int v4, v6, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int v4, v1, v3

    sub-int v7, v5, v4

    .line 127
    div-int/lit8 v7, v7, 0x2

    mul-int v8, v2, v3

    sub-int v9, v6, v8

    .line 128
    div-int/lit8 v9, v9, 0x2

    .line 130
    new-instance v10, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-direct {v10, v5, v6}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;-><init>(II)V

    .line 131
    invoke-virtual {v10}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v11

    .line 135
    new-array v12, v5, [B

    const/4 v14, 0x0

    :goto_0
    const/4 v15, -0x1

    if-ge v14, v9, :cond_0

    .line 139
    aget-object v13, v11, v14

    invoke-static {v13, v15}, Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;->setRowColor([BB)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v0

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v2, :cond_7

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v7, :cond_1

    .line 147
    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    move/from16 v16, v7

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v1, :cond_4

    .line 153
    aget-object v17, v0, v13

    aget-byte v15, v17, v14

    move-object/from16 p2, v0

    const/4 v0, 0x1

    if-ne v15, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_4

    :cond_2
    const/4 v0, -0x1

    :goto_4
    const/4 v15, 0x0

    :goto_5
    if-ge v15, v3, :cond_3

    add-int v17, v16, v15

    .line 155
    aput-byte v0, v12, v17

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_3
    add-int v16, v16, v3

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    const/4 v15, -0x1

    goto :goto_3

    :cond_4
    move-object/from16 p2, v0

    add-int v0, v7, v4

    :goto_6
    if-ge v0, v5, :cond_5

    const/4 v14, -0x1

    .line 163
    aput-byte v14, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    mul-int v0, v13, v3

    add-int/2addr v0, v9

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v3, :cond_6

    add-int v15, v0, v14

    .line 169
    aget-object v15, v11, v15

    move/from16 v16, v0

    const/4 v0, 0x0

    invoke-static {v12, v0, v15, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v16

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    const/4 v15, -0x1

    goto :goto_1

    :cond_7
    add-int/2addr v9, v8

    :goto_8
    if-ge v9, v6, :cond_8

    .line 176
    aget-object v0, v11, v9

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;->setRowColor([BB)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_8
    return-object v10
.end method

.method private static setRowColor([BB)V
    .locals 2

    const/4 v0, 0x0

    .line 183
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 184
    aput-byte p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;II)Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/exceptions/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;->encode(Ljava/lang/String;IILjava/util/Map;)Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;IILjava/util/Map;)Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Lcom/itextpdf/barcodes/qrcode/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/itextpdf/barcodes/qrcode/ByteMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/barcodes/exceptions/WriterException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 95
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->L:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    if-eqz p4, :cond_0

    .line 97
    sget-object v1, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;->ERROR_CORRECTION:Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 105
    :cond_0
    new-instance v1, Lcom/itextpdf/barcodes/qrcode/QRCode;

    invoke-direct {v1}, Lcom/itextpdf/barcodes/qrcode/QRCode;-><init>()V

    .line 106
    invoke-static {p1, v0, p4, v1}, Lcom/itextpdf/barcodes/qrcode/Encoder;->encode(Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;Ljava/util/Map;Lcom/itextpdf/barcodes/qrcode/QRCode;)V

    .line 107
    invoke-static {v1, p2, p3}, Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;->renderResult(Lcom/itextpdf/barcodes/qrcode/QRCode;II)Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    move-result-object p1

    return-object p1

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Requested dimensions are too small: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 p4, 0x78

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
