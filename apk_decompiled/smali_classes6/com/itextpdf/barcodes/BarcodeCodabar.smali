.class public Lcom/itextpdf/barcodes/BarcodeCodabar;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "BarcodeCodabar.java"


# static fields
.field private static final BARS:[[B

.field private static final CHARS:Ljava/lang/String; = "0123456789-$:/.+ABCD"

.field private static final START_STOP_IDX:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const/4 v0, 0x7

    .line 65
    new-array v2, v0, [B

    move-object v1, v2

    fill-array-data v2, :array_0

    new-array v3, v0, [B

    move-object v2, v3

    fill-array-data v3, :array_1

    new-array v4, v0, [B

    move-object v3, v4

    fill-array-data v4, :array_2

    new-array v5, v0, [B

    move-object v4, v5

    fill-array-data v5, :array_3

    new-array v6, v0, [B

    move-object v5, v6

    fill-array-data v6, :array_4

    new-array v7, v0, [B

    move-object v6, v7

    fill-array-data v7, :array_5

    new-array v8, v0, [B

    move-object v7, v8

    fill-array-data v8, :array_6

    new-array v9, v0, [B

    move-object v8, v9

    fill-array-data v9, :array_7

    new-array v10, v0, [B

    move-object v9, v10

    fill-array-data v10, :array_8

    new-array v11, v0, [B

    move-object v10, v11

    fill-array-data v11, :array_9

    new-array v12, v0, [B

    move-object v11, v12

    fill-array-data v12, :array_a

    new-array v13, v0, [B

    move-object v12, v13

    fill-array-data v13, :array_b

    new-array v14, v0, [B

    move-object v13, v14

    fill-array-data v14, :array_c

    new-array v15, v0, [B

    move-object v14, v15

    fill-array-data v15, :array_d

    new-array v15, v0, [B

    move-object/from16 v16, v15

    fill-array-data v16, :array_e

    move-object/from16 v21, v1

    new-array v1, v0, [B

    move-object/from16 v16, v1

    fill-array-data v1, :array_f

    new-array v1, v0, [B

    move-object/from16 v17, v1

    fill-array-data v1, :array_10

    new-array v1, v0, [B

    move-object/from16 v18, v1

    fill-array-data v1, :array_11

    new-array v1, v0, [B

    move-object/from16 v19, v1

    fill-array-data v1, :array_12

    new-array v0, v0, [B

    move-object/from16 v20, v0

    fill-array-data v0, :array_13

    move-object/from16 v1, v21

    filled-new-array/range {v1 .. v20}, [[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->BARS:[[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_8
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_9
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_c
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_d
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_e
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_f
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_10
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_11
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_12
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_13
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 137
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/barcodes/BarcodeCodabar;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 148
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->x:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 149
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->n:F

    .line 150
    iput-object p2, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/high16 p1, 0x41000000    # 8.0f

    .line 151
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->size:F

    .line 152
    iget p1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->size:F

    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->baseline:F

    .line 153
    iget p1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->size:F

    const/high16 p2, 0x40400000    # 3.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->barHeight:F

    const/4 p1, 0x3

    .line 154
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->textAlignment:I

    const/4 p1, 0x0

    .line 155
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->generateChecksum:Z

    .line 156
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->checksumText:Z

    .line 157
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->startStopText:Z

    return-void
.end method

.method public static calculateChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-object p0

    .line 196
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 199
    :goto_0
    const-string v5, "0123456789-$:/.+ABCD"

    if-ge v3, v1, :cond_1

    .line 200
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v4, 0xf

    .line 202
    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    sub-int/2addr v0, v4

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBarsCodabar(Ljava/lang/String;)[B
    .locals 10

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, "0123456789-$:/.+ABCD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v4, 0x10

    if-lt v2, v4, :cond_4

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lt v5, v4, :cond_4

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [B

    move v6, v1

    :goto_0
    if-ge v6, v0, :cond_3

    .line 179
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lt v7, v4, :cond_1

    if-lez v6, :cond_1

    if-lt v6, v2, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "In Codabar, start/stop characters are only allowed at the extremes."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-ltz v7, :cond_2

    .line 188
    sget-object v8, Lcom/itextpdf/barcodes/BarcodeCodabar;->BARS:[[B

    aget-object v7, v8, v7

    mul-int/lit8 v8, v6, 0x8

    const/4 v9, 0x7

    invoke-static {v7, v1, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 185
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal character in Codabar Barcode."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v5

    .line 174
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Codabar must have one of \'ABCD\' as start/stop character."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 170
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Codabar must have at least start and stop character."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 17

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 371
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    :goto_0
    if-nez p2, :cond_1

    .line 372
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 373
    :goto_1
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 375
    iget-boolean v4, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->generateChecksum:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    :goto_2
    invoke-static {v4}, Lcom/itextpdf/barcodes/BarcodeCodabar;->getBarsCodabar(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    .line 377
    :goto_3
    array-length v8, v4

    if-ge v6, v8, :cond_3

    .line 378
    aget-byte v8, v4, v6

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 380
    :cond_3
    array-length v6, v4

    sub-int/2addr v6, v7

    .line 381
    iget v8, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->n:F

    float-to-int v8, v8

    mul-int/2addr v7, v8

    add-int v13, v6, v7

    .line 384
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->barHeight:F

    float-to-int v10, v6

    mul-int v6, v13, v10

    .line 385
    new-array v11, v6, [I

    move v8, v5

    move v12, v8

    const/4 v9, 0x1

    .line 386
    :goto_4
    array-length v14, v4

    if-ge v8, v14, :cond_7

    .line 387
    aget-byte v14, v4, v8

    if-nez v14, :cond_4

    const/4 v14, 0x1

    goto :goto_5

    :cond_4
    iget v14, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->n:F

    float-to-int v14, v14

    :goto_5
    if-eqz v9, :cond_5

    move v15, v1

    goto :goto_6

    :cond_5
    move v15, v2

    :goto_6
    xor-int/lit8 v9, v9, 0x1

    move v7, v5

    :goto_7
    if-ge v7, v14, :cond_6

    add-int/lit8 v16, v12, 0x1

    .line 394
    aput v15, v11, v12

    add-int/lit8 v7, v7, 0x1

    move/from16 v12, v16

    goto :goto_7

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    move v1, v13

    :goto_8
    if-ge v1, v6, :cond_8

    .line 398
    invoke-static {v11, v5, v11, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v13

    goto :goto_8

    .line 400
    :cond_8
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

    .line 215
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    .line 216
    iget-boolean v1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->generateChecksum:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->checksumText:Z

    if-eqz v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/barcodes/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_0
    iget-boolean v1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->startStopText:Z

    if-nez v1, :cond_1

    .line 220
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 223
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->baseline:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 224
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->baseline:F

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodeCodabar;->getDescender()F

    move-result v2

    sub-float/2addr v1, v2

    goto :goto_0

    .line 226
    :cond_2
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->baseline:F

    neg-float v1, v1

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->size:F

    add-float/2addr v1, v2

    :goto_0
    move v2, v1

    .line 228
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->altText:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->altText:Ljava/lang/String;

    :cond_3
    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->size:F

    invoke-virtual {v1, v0, v3}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v0

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_1

    :cond_4
    move v0, v2

    .line 230
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    .line 231
    iget-boolean v3, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->generateChecksum:Z

    if-eqz v3, :cond_5

    .line 232
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    :cond_5
    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeCodabar;->getBarsCodabar(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    .line 236
    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_6

    .line 237
    aget-byte v5, v1, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 239
    :cond_6
    array-length v1, v1

    sub-int/2addr v1, v4

    .line 240
    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->x:F

    int-to-float v1, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->n:F

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    mul-float/2addr v3, v1

    .line 241
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 242
    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeCodabar;->barHeight:F

    add-float/2addr v2, v0

    .line 243
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v0
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 286
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    .line 287
    iget-boolean v2, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->generateChecksum:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->checksumText:Z

    if-eqz v2, :cond_0

    .line 288
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    :cond_0
    iget-boolean v2, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->startStopText:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 291
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 294
    :cond_1
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 295
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v5, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->altText:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->altText:Ljava/lang/String;

    :cond_2
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->size:F

    invoke-virtual {v2, v1, v5}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v2

    move-object v12, v1

    goto :goto_0

    :cond_3
    move-object v12, v1

    move v2, v4

    .line 297
    :goto_0
    iget-boolean v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->generateChecksum:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeCodabar;->calculateChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->code:Ljava/lang/String;

    :goto_1
    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeCodabar;->getBarsCodabar(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v1, 0x0

    move v5, v1

    move v6, v5

    .line 299
    :goto_2
    array-length v7, v13

    if-ge v5, v7, :cond_5

    .line 300
    aget-byte v7, v13, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 302
    :cond_5
    array-length v5, v13

    sub-int/2addr v5, v6

    .line 303
    iget v7, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->x:F

    int-to-float v5, v5

    int-to-float v6, v6

    iget v8, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->n:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    mul-float/2addr v7, v5

    .line 306
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->textAlignment:I

    if-eq v5, v3, :cond_9

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    cmpl-float v5, v2, v7

    const/high16 v6, 0x40000000    # 2.0f

    if-lez v5, :cond_6

    sub-float/2addr v2, v7

    div-float/2addr v2, v6

    goto :goto_3

    :cond_6
    sub-float/2addr v7, v2

    div-float/2addr v7, v6

    goto :goto_4

    :cond_7
    cmpl-float v5, v2, v7

    if-lez v5, :cond_8

    sub-float/2addr v2, v7

    :goto_3
    move v14, v4

    goto :goto_5

    :cond_8
    sub-float/2addr v7, v2

    :goto_4
    move v2, v4

    move v14, v7

    goto :goto_5

    :cond_9
    move v2, v4

    move v14, v2

    .line 326
    :goto_5
    iget-object v5, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v5, :cond_b

    .line 327
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->baseline:F

    cmpg-float v5, v5, v4

    if-gtz v5, :cond_a

    .line 328
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->barHeight:F

    iget v6, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->baseline:F

    sub-float/2addr v5, v6

    move v15, v4

    move v8, v5

    goto :goto_6

    .line 330
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeCodabar;->getDescender()F

    move-result v4

    neg-float v4, v4

    .line 331
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->baseline:F

    add-float/2addr v5, v4

    move v8, v4

    move v15, v5

    goto :goto_6

    :cond_b
    move v8, v4

    move v15, v8

    :goto_6
    if-eqz p2, :cond_c

    .line 336
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_c
    move v9, v1

    move v6, v2

    move/from16 v16, v3

    .line 338
    :goto_7
    array-length v1, v13

    if-ge v9, v1, :cond_f

    .line 339
    aget-byte v1, v13, v9

    if-nez v1, :cond_d

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->x:F

    goto :goto_8

    :cond_d
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->x:F

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->n:F

    mul-float/2addr v1, v2

    :goto_8
    move/from16 v17, v1

    if-eqz v16, :cond_e

    float-to-double v2, v6

    float-to-double v4, v15

    .line 341
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->inkSpreading:F

    sub-float v1, v17, v1

    move/from16 p2, v6

    float-to-double v6, v1

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->barHeight:F

    move/from16 v18, v8

    move/from16 v19, v9

    float-to-double v8, v1

    move-object/from16 v1, p1

    move/from16 v20, p2

    move/from16 v21, v19

    move-object/from16 v19, v13

    move/from16 v13, v18

    move/from16 v18, v21

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_9

    :cond_e
    move/from16 v20, v6

    move/from16 v18, v9

    move-object/from16 v19, v13

    move v13, v8

    :goto_9
    xor-int/lit8 v16, v16, 0x1

    add-float v6, v20, v17

    add-int/lit8 v9, v18, 0x1

    move v8, v13

    move-object/from16 v13, v19

    goto :goto_7

    :cond_f
    move v13, v8

    .line 346
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 347
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_11

    if-eqz v11, :cond_10

    .line 349
    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 351
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 352
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeCodabar;->size:F

    invoke-virtual {v10, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 353
    invoke-virtual {v10, v14, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 354
    invoke-virtual {v10, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 355
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 357
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeCodabar;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    return-object v1
.end method
