.class public Lcom/itextpdf/barcodes/BarcodeInter25;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "BarcodeInter25.java"


# static fields
.field private static final BARS:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x5

    .line 79
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v3, v0, [B

    fill-array-data v3, :array_2

    new-array v4, v0, [B

    fill-array-data v4, :array_3

    new-array v5, v0, [B

    fill-array-data v5, :array_4

    new-array v6, v0, [B

    fill-array-data v6, :array_5

    new-array v7, v0, [B

    fill-array-data v7, :array_6

    new-array v8, v0, [B

    fill-array-data v8, :array_7

    new-array v9, v0, [B

    fill-array-data v9, :array_8

    new-array v10, v0, [B

    fill-array-data v10, :array_9

    filled-new-array/range {v1 .. v10}, [[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeInter25;->BARS:[[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 101
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/barcodes/BarcodeInter25;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 112
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 113
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->n:F

    .line 114
    iput-object p2, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/high16 p1, 0x41000000    # 8.0f

    .line 115
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->size:F

    .line 116
    iget p1, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->size:F

    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->baseline:F

    .line 117
    iget p1, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->size:F

    const/high16 p2, 0x40400000    # 3.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->barHeight:F

    const/4 p1, 0x3

    .line 118
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->textAlignment:I

    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->generateChecksum:Z

    .line 120
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->checksumText:Z

    return-void
.end method

.method public static getBarsInter25(Ljava/lang/String;)[B
    .locals 13

    .line 164
    invoke-static {p0}, Lcom/itextpdf/barcodes/BarcodeInter25;->keepNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x7

    new-array v0, v0, [B

    const/4 v3, 0x0

    .line 170
    aput-byte v3, v0, v3

    .line 171
    aput-byte v3, v0, v1

    const/4 v4, 0x2

    .line 172
    aput-byte v3, v0, v4

    const/4 v5, 0x3

    .line 173
    aput-byte v3, v0, v5

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/2addr v5, v4

    const/4 v6, 0x4

    move v7, v3

    :goto_0
    if-ge v7, v5, :cond_1

    mul-int/lit8 v8, v7, 0x2

    .line 176
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    add-int/2addr v8, v1

    .line 177
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    .line 178
    sget-object v10, Lcom/itextpdf/barcodes/BarcodeInter25;->BARS:[[B

    aget-object v9, v10, v9

    .line 179
    aget-object v8, v10, v8

    move v10, v3

    :goto_1
    if-ge v10, v2, :cond_0

    add-int/lit8 v11, v6, 0x1

    .line 181
    aget-byte v12, v9, v10

    aput-byte v12, v0, v6

    add-int/lit8 v6, v6, 0x2

    .line 182
    aget-byte v12, v8, v10

    aput-byte v12, v0, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p0, v6, 0x1

    .line 185
    aput-byte v1, v0, v6

    add-int/2addr v6, v4

    .line 186
    aput-byte v3, v0, p0

    .line 187
    aput-byte v3, v0, v6

    return-object v0

    .line 166
    :cond_2
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "The text length must be even."

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getChecksum(Ljava/lang/String;)C
    .locals 4

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    xor-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 154
    :cond_0
    rem-int/lit8 v2, v2, 0xa

    rsub-int/lit8 p0, v2, 0xa

    rem-int/lit8 p0, p0, 0xa

    add-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    return p0
.end method

.method public static keepNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 131
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 132
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 18

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 345
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    :goto_0
    if-nez p2, :cond_1

    .line 346
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 347
    :goto_1
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 348
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeInter25;->keepNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 349
    iget-boolean v5, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->generateChecksum:Z

    if-eqz v5, :cond_2

    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeInter25;->getChecksum(Ljava/lang/String;)C

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 352
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 353
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->n:F

    float-to-int v6, v6

    mul-int/lit8 v7, v6, 0x2

    add-int/lit8 v7, v7, 0x3

    mul-int/2addr v5, v7

    add-int/lit8 v7, v6, 0x6

    add-int v13, v5, v7

    .line 355
    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeInter25;->getBarsInter25(Ljava/lang/String;)[B

    move-result-object v4

    .line 358
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->barHeight:F

    float-to-int v10, v5

    mul-int v5, v13, v10

    .line 359
    new-array v11, v5, [I

    const/4 v7, 0x0

    move v9, v7

    move v14, v9

    const/4 v12, 0x1

    .line 360
    :goto_2
    array-length v15, v4

    if-ge v9, v15, :cond_6

    .line 361
    aget-byte v15, v4, v9

    if-nez v15, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    move v15, v6

    :goto_3
    if-eqz v12, :cond_4

    move/from16 v16, v1

    goto :goto_4

    :cond_4
    move/from16 v16, v2

    :goto_4
    xor-int/lit8 v12, v12, 0x1

    move v8, v7

    :goto_5
    if-ge v8, v15, :cond_5

    add-int/lit8 v17, v14, 0x1

    .line 368
    aput v16, v11, v14

    add-int/lit8 v8, v8, 0x1

    move/from16 v14, v17

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    move v1, v13

    :goto_6
    if-ge v1, v5, :cond_7

    .line 372
    invoke-static {v11, v7, v11, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v13

    goto :goto_6

    .line 374
    :cond_7
    new-instance v1, Ljava/awt/image/MemoryImageSource;

    const/4 v12, 0x0

    move-object v8, v1

    move v9, v13

    invoke-direct/range {v8 .. v13}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v3, v1}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v1

    return-object v1
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 7

    .line 201
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 202
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->baseline:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 203
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->baseline:F

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodeInter25;->getDescender()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 205
    :cond_0
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->baseline:F

    neg-float v0, v0

    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->size:F

    add-float/2addr v0, v1

    :goto_0
    move v1, v0

    .line 207
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->code:Ljava/lang/String;

    .line 208
    iget-boolean v2, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->generateChecksum:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->checksumText:Z

    if-eqz v2, :cond_1

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/itextpdf/barcodes/BarcodeInter25;->getChecksum(Ljava/lang/String;)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->altText:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->altText:Ljava/lang/String;

    :cond_2
    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->size:F

    invoke-virtual {v2, v0, v3}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v0

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v1

    .line 213
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->code:Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/barcodes/BarcodeInter25;->keepNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 215
    iget-boolean v3, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->generateChecksum:Z

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    .line 218
    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    mul-float/2addr v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    mul-float/2addr v5, v3

    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->n:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    mul-float/2addr v2, v4

    const/high16 v3, 0x40c00000    # 6.0f

    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->n:F

    add-float/2addr v4, v3

    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 219
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 220
    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeInter25;->barHeight:F

    add-float/2addr v2, v0

    .line 221
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v0
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 265
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->code:Ljava/lang/String;

    .line 267
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 268
    iget-boolean v2, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->generateChecksum:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->checksumText:Z

    if-eqz v2, :cond_0

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeInter25;->getChecksum(Ljava/lang/String;)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    :cond_0
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->altText:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->altText:Ljava/lang/String;

    :cond_1
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->size:F

    invoke-virtual {v2, v1, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v2

    move-object v12, v1

    goto :goto_0

    :cond_2
    move-object v12, v1

    move v2, v3

    .line 272
    :goto_0
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeInter25;->keepNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    iget-boolean v4, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->generateChecksum:Z

    if-eqz v4, :cond_3

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeInter25;->getChecksum(Ljava/lang/String;)C

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    .line 276
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    mul-float/2addr v6, v5

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v5, v7

    iget v8, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->n:F

    mul-float/2addr v5, v8

    add-float/2addr v6, v5

    mul-float/2addr v4, v6

    const/high16 v5, 0x40c00000    # 6.0f

    iget v6, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->n:F

    add-float/2addr v6, v5

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    .line 279
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->textAlignment:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    const/4 v8, 0x2

    if-eq v5, v8, :cond_5

    cmpl-float v5, v2, v4

    if-lez v5, :cond_4

    sub-float/2addr v2, v4

    div-float/2addr v2, v7

    goto :goto_1

    :cond_4
    sub-float/2addr v4, v2

    div-float/2addr v4, v7

    goto :goto_2

    :cond_5
    cmpl-float v5, v2, v4

    if-lez v5, :cond_6

    sub-float/2addr v2, v4

    :goto_1
    move v13, v3

    goto :goto_3

    :cond_6
    sub-float/2addr v4, v2

    :goto_2
    move v2, v3

    move v13, v4

    goto :goto_3

    :cond_7
    move v2, v3

    move v13, v2

    .line 299
    :goto_3
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v4, :cond_9

    .line 300
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->baseline:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_8

    .line 301
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->barHeight:F

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->baseline:F

    sub-float/2addr v4, v5

    move v14, v3

    move v15, v4

    goto :goto_4

    .line 303
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeInter25;->getDescender()F

    move-result v3

    neg-float v3, v3

    .line 304
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->baseline:F

    add-float/2addr v4, v3

    move v15, v3

    move v14, v4

    goto :goto_4

    :cond_9
    move v14, v3

    move v15, v14

    .line 307
    :goto_4
    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeInter25;->getBarsInter25(Ljava/lang/String;)[B

    move-result-object v8

    if-eqz p2, :cond_a

    .line 310
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_a
    const/4 v1, 0x0

    move v9, v1

    move/from16 v16, v6

    move v6, v2

    .line 311
    :goto_5
    array-length v1, v8

    if-ge v9, v1, :cond_d

    .line 312
    aget-byte v1, v8, v9

    if-nez v1, :cond_b

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    goto :goto_6

    :cond_b
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->x:F

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->n:F

    mul-float/2addr v1, v2

    :goto_6
    move/from16 v17, v1

    if-eqz v16, :cond_c

    float-to-double v2, v6

    float-to-double v4, v14

    .line 314
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->inkSpreading:F

    sub-float v1, v17, v1

    move/from16 p2, v6

    float-to-double v6, v1

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->barHeight:F

    move-object/from16 v18, v8

    move/from16 v19, v9

    float-to-double v8, v1

    move-object/from16 v1, p1

    move/from16 v20, p2

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_7

    :cond_c
    move/from16 v20, v6

    move-object/from16 v18, v8

    move/from16 v19, v9

    :goto_7
    xor-int/lit8 v16, v16, 0x1

    add-float v6, v20, v17

    add-int/lit8 v9, v19, 0x1

    move-object/from16 v8, v18

    goto :goto_5

    .line 319
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 320
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_f

    if-eqz v11, :cond_e

    .line 322
    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 324
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 325
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeInter25;->size:F

    invoke-virtual {v10, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 326
    invoke-virtual {v10, v13, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 327
    invoke-virtual {v10, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 330
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeInter25;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    return-object v1
.end method
