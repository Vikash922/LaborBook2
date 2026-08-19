.class public Lcom/itextpdf/barcodes/BarcodeMSI;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "BarcodeMSI.java"


# static fields
.field private static final BARS:[[B

.field private static final BARS_END:[B

.field private static final BARS_FOR_START:I = 0x3

.field private static final BARS_FOR_STOP:I = 0x4

.field private static final BARS_PER_CHARACTER:I = 0xc

.field private static final BARS_START:[B

.field private static final CHARS:Ljava/lang/String; = "0123456789"


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x3

    .line 67
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeMSI;->BARS_START:[B

    const/4 v0, 0x4

    .line 72
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeMSI;->BARS_END:[B

    const/16 v0, 0xc

    .line 77
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    new-array v2, v0, [B

    fill-array-data v2, :array_3

    new-array v3, v0, [B

    fill-array-data v3, :array_4

    new-array v4, v0, [B

    fill-array-data v4, :array_5

    new-array v5, v0, [B

    fill-array-data v5, :array_6

    new-array v6, v0, [B

    fill-array-data v6, :array_7

    new-array v7, v0, [B

    fill-array-data v7, :array_8

    new-array v8, v0, [B

    fill-array-data v8, :array_9

    new-array v9, v0, [B

    fill-array-data v9, :array_a

    new-array v10, v0, [B

    fill-array-data v10, :array_b

    filled-new-array/range {v1 .. v10}, [[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/barcodes/BarcodeMSI;->BARS:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_7
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_8
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_9
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_b
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 133
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/barcodes/BarcodeMSI;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 144
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->x:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 145
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->n:F

    .line 146
    iput-object p2, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/high16 p1, 0x41000000    # 8.0f

    .line 147
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->size:F

    .line 148
    iget p1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->size:F

    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->baseline:F

    .line 149
    iget p1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->size:F

    const/high16 p2, 0x40400000    # 3.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->barHeight:F

    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->generateChecksum:Z

    .line 151
    iput-boolean p1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->checksumText:Z

    return-void
.end method

.method public static getBarsMSI(Ljava/lang/String;)[B
    .locals 8

    if-eqz p0, :cond_2

    .line 343
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    mul-int/2addr v0, v1

    add-int/lit8 v2, v0, 0x7

    new-array v2, v2, [B

    .line 344
    sget-object v3, Lcom/itextpdf/barcodes/BarcodeMSI;->BARS_START:[B

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v4

    .line 345
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 346
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 347
    const-string v7, "0123456789"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_0

    .line 351
    sget-object v7, Lcom/itextpdf/barcodes/BarcodeMSI;->BARS:[[B

    aget-object v6, v7, v6

    mul-int/lit8 v7, v3, 0xc

    add-int/2addr v7, v5

    invoke-static {v6, v4, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The character "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is illegal in MSI bar codes."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_1
    sget-object p0, Lcom/itextpdf/barcodes/BarcodeMSI;->BARS_END:[B

    add-int/2addr v0, v5

    const/4 v1, 0x4

    invoke-static {p0, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 341
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Valid code required to generate MSI barcode."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getChecksum(Ljava/lang/String;)I
    .locals 6

    if-eqz p0, :cond_5

    .line 367
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    .line 368
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x9

    if-ge v3, v4, :cond_1

    .line 369
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    aput v4, v1, v3

    if-ltz v4, :cond_0

    if-gt v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The character "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is illegal in MSI bar codes."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move p0, v2

    :goto_1
    if-ge v2, v0, :cond_4

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    .line 377
    aget v3, v1, v3

    .line 378
    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_2

    mul-int/lit8 v3, v3, 0x2

    :cond_2
    if-le v3, v5, :cond_3

    add-int/lit8 v3, v3, -0x9

    :cond_3
    add-int/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    mul-int/2addr p0, v5

    .line 383
    rem-int/lit8 p0, p0, 0xa

    return p0

    .line 365
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Valid code required to generate checksum for MSI barcode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 10

    if-nez p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

    :cond_0
    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result p1

    if-nez p2, :cond_1

    .line 311
    iget-object p2, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

    :cond_1
    invoke-virtual {p2}, Ljava/awt/Color;->getRGB()I

    move-result p2

    .line 312
    new-instance v0, Ljava/awt/Canvas;

    invoke-direct {v0}, Ljava/awt/Canvas;-><init>()V

    .line 313
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->code:Ljava/lang/String;

    .line 314
    iget-boolean v2, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->generateChecksum:Z

    if-eqz v2, :cond_2

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->code:Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/barcodes/BarcodeMSI;->getChecksum(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    :cond_2
    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeMSI;->getBarsMSI(Ljava/lang/String;)[B

    move-result-object v1

    .line 319
    array-length v7, v1

    .line 320
    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->barHeight:F

    float-to-int v4, v2

    mul-int v2, v7, v4

    .line 321
    new-array v5, v2, [I

    const/4 v2, 0x0

    move v3, v2

    .line 323
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_5

    .line 324
    aget-byte v6, v1, v3

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    move v6, p1

    goto :goto_1

    :cond_3
    move v6, p2

    :goto_1
    move v8, v2

    :goto_2
    if-ge v8, v4, :cond_4

    mul-int v9, v8, v7

    add-int/2addr v9, v3

    .line 327
    aput v6, v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 330
    :cond_5
    new-instance p1, Ljava/awt/image/MemoryImageSource;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, v7

    invoke-direct/range {v2 .. v7}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v0, p1}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object p1

    return-object p1
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->code:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 166
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->baseline:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 167
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->baseline:F

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodeMSI;->getDescender()F

    move-result v2

    sub-float/2addr v1, v2

    goto :goto_0

    .line 169
    :cond_0
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->baseline:F

    neg-float v1, v1

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->size:F

    add-float/2addr v1, v2

    :goto_0
    move v2, v1

    .line 171
    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->code:Ljava/lang/String;

    .line 172
    iget-object v3, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->altText:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->altText:Ljava/lang/String;

    :cond_1
    iget v4, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->size:F

    invoke-virtual {v3, v1, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v1

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v2

    .line 175
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 176
    iget-boolean v3, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->generateChecksum:Z

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x7

    int-to-float v0, v0

    .line 180
    iget v3, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->x:F

    mul-float/2addr v0, v3

    .line 181
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 182
    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeMSI;->barHeight:F

    add-float/2addr v2, v1

    .line 183
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v1
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 228
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->code:Ljava/lang/String;

    .line 229
    iget-boolean v2, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->checksumText:Z

    if-eqz v2, :cond_0

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->code:Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/barcodes/BarcodeMSI;->getChecksum(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    :cond_0
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 234
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->altText:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->altText:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 235
    :goto_0
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->altText:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->altText:Ljava/lang/String;

    .line 236
    :cond_2
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->size:F

    invoke-virtual {v4, v2, v5}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v2

    move-object v12, v1

    goto :goto_1

    :cond_3
    move-object v12, v1

    move v2, v3

    .line 239
    :goto_1
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->code:Ljava/lang/String;

    .line 240
    iget-boolean v4, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->generateChecksum:Z

    if-eqz v4, :cond_4

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeMSI;->getChecksum(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x7

    int-to-float v4, v4

    .line 245
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->x:F

    mul-float/2addr v4, v5

    .line 248
    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->textAlignment:I

    const/4 v13, 0x1

    if-eq v5, v13, :cond_8

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    cmpl-float v5, v2, v4

    const/high16 v6, 0x40000000    # 2.0f

    if-lez v5, :cond_5

    sub-float/2addr v2, v4

    div-float/2addr v2, v6

    goto :goto_2

    :cond_5
    sub-float/2addr v4, v2

    div-float/2addr v4, v6

    goto :goto_3

    :cond_6
    cmpl-float v5, v2, v4

    if-lez v5, :cond_7

    sub-float/2addr v2, v4

    :goto_2
    move v14, v3

    goto :goto_4

    :cond_7
    sub-float/2addr v4, v2

    :goto_3
    move v2, v3

    move v14, v4

    goto :goto_4

    :cond_8
    move v2, v3

    move v14, v2

    .line 268
    :goto_4
    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v4, :cond_a

    .line 269
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->baseline:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_9

    .line 270
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->barHeight:F

    iget v5, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->baseline:F

    sub-float/2addr v4, v5

    move v15, v3

    move v8, v4

    goto :goto_5

    .line 272
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeMSI;->getDescender()F

    move-result v3

    neg-float v3, v3

    .line 273
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->baseline:F

    add-float/2addr v4, v3

    move v8, v3

    move v15, v4

    goto :goto_5

    :cond_a
    move v8, v3

    move v15, v8

    .line 276
    :goto_5
    invoke-static {v1}, Lcom/itextpdf/barcodes/BarcodeMSI;->getBarsMSI(Ljava/lang/String;)[B

    move-result-object v9

    if-eqz p2, :cond_b

    .line 278
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_b
    const/4 v1, 0x0

    move v6, v1

    move v7, v2

    .line 280
    :goto_6
    array-length v1, v9

    if-ge v6, v1, :cond_d

    .line 281
    aget-byte v1, v9, v6

    int-to-float v1, v1

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->x:F

    mul-float/2addr v1, v2

    .line 282
    aget-byte v2, v9, v6

    if-ne v2, v13, :cond_c

    float-to-double v2, v7

    float-to-double v4, v15

    .line 283
    iget v13, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->inkSpreading:F

    sub-float/2addr v1, v13

    move v13, v6

    move/from16 p2, v7

    float-to-double v6, v1

    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->barHeight:F

    move/from16 v16, v8

    move-object/from16 v17, v9

    float-to-double v8, v1

    move-object/from16 v1, p1

    move/from16 v18, p2

    move-object/from16 v19, v17

    move/from16 v17, v15

    move/from16 v15, v16

    move-object/from16 v16, v19

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_7

    :cond_c
    move v13, v6

    move/from16 v18, v7

    move-object/from16 v16, v9

    move/from16 v17, v15

    move v15, v8

    .line 284
    :goto_7
    iget v1, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->x:F

    add-float v7, v18, v1

    add-int/lit8 v6, v13, 0x1

    move v8, v15

    move-object/from16 v9, v16

    move/from16 v15, v17

    const/4 v13, 0x1

    goto :goto_6

    :cond_d
    move v15, v8

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 287
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_f

    if-eqz v11, :cond_e

    .line 289
    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 291
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 292
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v2, v0, Lcom/itextpdf/barcodes/BarcodeMSI;->size:F

    invoke-virtual {v10, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 293
    invoke-virtual {v10, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 294
    invoke-virtual {v10, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 297
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeMSI;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    return-object v1
.end method
