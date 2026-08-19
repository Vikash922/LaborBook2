.class public Lcom/itextpdf/barcodes/BarcodeQRCode;
.super Lcom/itextpdf/barcodes/Barcode2D;
.source "BarcodeQRCode.java"


# instance fields
.field bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

.field code:Ljava/lang/String;

.field hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/barcodes/qrcode/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/itextpdf/barcodes/Barcode2D;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/barcodes/BarcodeQRCode;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/barcodes/qrcode/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/itextpdf/barcodes/Barcode2D;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->code:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->hints:Ljava/util/Map;

    .line 79
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodeQRCode;->regenerate()V

    return-void
.end method

.method private getBitMatrix()[B
    .locals 13

    .line 254
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v1

    add-int/lit8 v2, v0, 0x7

    .line 256
    div-int/lit8 v2, v2, 0x8

    mul-int v3, v2, v1

    .line 257
    new-array v3, v3, [B

    .line 258
    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v4}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_2

    .line 260
    aget-object v7, v4, v6

    move v8, v5

    :goto_1
    if-ge v8, v0, :cond_1

    .line 262
    aget-byte v9, v7, v8

    if-eqz v9, :cond_0

    mul-int v9, v2, v6

    .line 263
    div-int/lit8 v10, v8, 0x8

    add-int/2addr v9, v10

    .line 264
    aget-byte v10, v3, v9

    rem-int/lit8 v11, v8, 0x8

    const/16 v12, 0x80

    shr-int v11, v12, v11

    int-to-byte v11, v11

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 11

    .line 234
    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result p1

    .line 235
    invoke-virtual {p2}, Ljava/awt/Color;->getRGB()I

    move-result p2

    .line 236
    new-instance v0, Ljava/awt/Canvas;

    invoke-direct {v0}, Ljava/awt/Canvas;-><init>()V

    .line 238
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v7

    .line 239
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v4

    mul-int v1, v7, v4

    .line 240
    new-array v5, v1, [I

    .line 241
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    .line 243
    aget-object v6, v1, v3

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_1

    mul-int v9, v3, v7

    add-int/2addr v9, v8

    .line 245
    aget-byte v10, v6, v8

    if-nez v10, :cond_0

    move v10, p1

    goto :goto_2

    :cond_0
    move v10, p2

    :goto_2
    aput v10, v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_2
    new-instance p1, Ljava/awt/image/MemoryImageSource;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, v7

    invoke-direct/range {v2 .. v7}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v0, p1}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object p1

    return-object p1
.end method

.method public createFormXObject(Lcom/itextpdf/kernel/colors/Color;FLcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 3

    .line 219
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 220
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v1, v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/itextpdf/barcodes/BarcodeQRCode;->placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 221
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->setBBox(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    return-object v0
.end method

.method public createFormXObject(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 207
    invoke-virtual {p0, p1, v0, p2}, Lcom/itextpdf/barcodes/BarcodeQRCode;->createFormXObject(Lcom/itextpdf/kernel/colors/Color;FLcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object p1

    return-object p1
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4

    .line 150
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0
.end method

.method public getBarcodeSize(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 3

    .line 159
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    const/4 p1, 0x0

    invoke-direct {v0, p1, p1, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getHints()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/itextpdf/barcodes/qrcode/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->hints:Ljava/util/Map;

    return-object v0
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 164
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/barcodes/BarcodeQRCode;->placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 178
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v2}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getWidth()I

    move-result v2

    .line 179
    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v3}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getHeight()I

    move-result v3

    .line 180
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    invoke-virtual {v4}, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->getArray()[[B

    move-result-object v4

    if-eqz p2, :cond_0

    .line 183
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_0
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_3

    .line 187
    aget-object v7, v4, v6

    move v8, v5

    :goto_1
    if-ge v8, v2, :cond_2

    .line 189
    aget-byte v9, v7, v8

    if-nez v9, :cond_1

    int-to-float v9, v8

    mul-float/2addr v9, v1

    float-to-double v11, v9

    sub-int v9, v3, v6

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    mul-float/2addr v9, v1

    float-to-double v13, v9

    float-to-double v9, v1

    move-wide/from16 v17, v9

    move-object/from16 v10, p1

    move-wide/from16 v15, v17

    .line 190
    invoke-virtual/range {v10 .. v18}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 196
    invoke-virtual {v0, v1}, Lcom/itextpdf/barcodes/BarcodeQRCode;->getBarcodeSize(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    return-object v1
.end method

.method public regenerate()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->code:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->code:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->hints:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/itextpdf/barcodes/qrcode/QRCodeWriter;->encode(Ljava/lang/String;IILjava/util/Map;)Lcom/itextpdf/barcodes/qrcode/ByteMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->bm:Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
    :try_end_0
    .catch Lcom/itextpdf/barcodes/exceptions/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/exceptions/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/exceptions/WriterException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->code:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodeQRCode;->regenerate()V

    return-void
.end method

.method public setHints(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/itextpdf/barcodes/qrcode/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/itextpdf/barcodes/BarcodeQRCode;->hints:Ljava/util/Map;

    .line 128
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodeQRCode;->regenerate()V

    return-void
.end method
