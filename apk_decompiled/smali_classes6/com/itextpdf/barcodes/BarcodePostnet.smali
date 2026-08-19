.class public Lcom/itextpdf/barcodes/BarcodePostnet;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "BarcodePostnet.java"


# static fields
.field private static final BARS:[[B

.field public static TYPE_PLANET:I = 0x2

.field public static TYPE_POSTNET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x5

    .line 62
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

    sput-object v0, Lcom/itextpdf/barcodes/BarcodePostnet;->BARS:[[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
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
        0x1t
        0x0t
        0x0t
        0x0t
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
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const p1, 0x4051745d

    .line 79
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->n:F

    const p1, 0x3fb851eb    # 1.4399999f

    .line 81
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->x:F

    const/high16 p1, 0x41100000    # 9.0f

    .line 83
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->barHeight:F

    const p1, 0x40666667    # 3.6000001f

    .line 85
    iput p1, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->size:F

    .line 87
    sget p1, Lcom/itextpdf/barcodes/BarcodePostnet;->TYPE_POSTNET:I

    iput p1, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->codeType:I

    return-void
.end method

.method public static getBarsPostnet(Ljava/lang/String;)[B
    .locals 7

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    rem-int/lit8 v3, v3, 0xa

    rsub-int/lit8 v0, v3, 0xa

    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x5

    mul-int/2addr v0, v3

    add-int/lit8 v4, v0, 0x2

    new-array v4, v4, [B

    .line 102
    aput-byte v1, v4, v2

    add-int/2addr v0, v1

    .line 103
    aput-byte v1, v4, v0

    move v0, v2

    .line 104
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    .line 106
    sget-object v6, Lcom/itextpdf/barcodes/BarcodePostnet;->BARS:[[B

    aget-object v5, v6, v5

    mul-int/lit8 v6, v0, 0x5

    add-int/2addr v6, v1

    invoke-static {v5, v2, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v4
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 19

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 147
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    :goto_0
    if-nez p2, :cond_1

    .line 148
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 149
    :goto_1
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 150
    iget v4, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->x:F

    float-to-int v4, v4

    const/4 v5, 0x1

    if-gtz v4, :cond_2

    move v4, v5

    .line 153
    :cond_2
    iget v6, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->n:F

    float-to-int v6, v6

    if-gt v6, v4, :cond_3

    add-int/lit8 v6, v4, 0x1

    .line 156
    :cond_3
    iget v7, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->size:F

    float-to-int v7, v7

    if-gtz v7, :cond_4

    move v7, v5

    .line 159
    :cond_4
    iget v8, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->barHeight:F

    float-to-int v8, v8

    if-gt v8, v7, :cond_5

    add-int/lit8 v8, v7, 0x1

    :cond_5
    move v11, v8

    .line 162
    iget-object v8, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->code:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    mul-int/lit8 v8, v8, 0x5

    add-int/2addr v8, v5

    mul-int/2addr v8, v6

    add-int v14, v8, v4

    mul-int v8, v14, v11

    .line 163
    new-array v12, v8, [I

    .line 164
    iget-object v9, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->code:Ljava/lang/String;

    invoke-static {v9}, Lcom/itextpdf/barcodes/BarcodePostnet;->getBarsPostnet(Ljava/lang/String;)[B

    move-result-object v9

    .line 166
    iget v10, v0, Lcom/itextpdf/barcodes/BarcodePostnet;->codeType:I

    sget v13, Lcom/itextpdf/barcodes/BarcodePostnet;->TYPE_PLANET:I

    const/4 v15, 0x0

    if-ne v10, v13, :cond_6

    .line 168
    aput-byte v15, v9, v15

    .line 169
    array-length v10, v9

    sub-int/2addr v10, v5

    aput-byte v15, v9, v10

    move v10, v15

    goto :goto_2

    :cond_6
    move v10, v5

    :goto_2
    move v13, v15

    move/from16 v16, v13

    .line 172
    :goto_3
    array-length v5, v9

    if-ge v13, v5, :cond_a

    .line 173
    aget-byte v5, v9, v13

    if-ne v5, v10, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    move v5, v15

    :goto_4
    if-ge v15, v6, :cond_9

    add-int v17, v16, v15

    if-eqz v5, :cond_8

    if-ge v15, v4, :cond_8

    move/from16 v18, v1

    goto :goto_5

    :cond_8
    move/from16 v18, v2

    .line 175
    :goto_5
    aput v18, v12, v17

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_9
    add-int v16, v16, v6

    add-int/lit8 v13, v13, 0x1

    const/4 v15, 0x0

    goto :goto_3

    :cond_a
    sub-int v5, v11, v7

    mul-int/2addr v5, v14

    move v7, v14

    :goto_6
    if-ge v7, v5, :cond_b

    const/4 v10, 0x0

    .line 181
    invoke-static {v12, v10, v12, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v14

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    move v13, v5

    move v7, v10

    .line 183
    :goto_7
    array-length v15, v9

    if-ge v7, v15, :cond_e

    move v15, v10

    :goto_8
    if-ge v15, v6, :cond_d

    add-int v16, v13, v15

    if-ge v15, v4, :cond_c

    move/from16 v17, v1

    goto :goto_9

    :cond_c
    move/from16 v17, v2

    .line 185
    :goto_9
    aput v17, v12, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_d
    add-int/2addr v13, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_e
    add-int v1, v5, v14

    :goto_a
    if-ge v1, v8, :cond_f

    .line 190
    invoke-static {v12, v5, v12, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v14

    goto :goto_a

    .line 191
    :cond_f
    new-instance v1, Ljava/awt/image/MemoryImageSource;

    const/4 v13, 0x0

    move-object v9, v1

    move v10, v14

    invoke-direct/range {v9 .. v14}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v3, v1}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v1

    return-object v1
.end method

.method public fitWidth(F)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->code:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/barcodes/BarcodePostnet;->getBarsPostnet(Ljava/lang/String;)[B

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodePostnet;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    .line 121
    iget v2, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->x:F

    div-float v1, p1, v1

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->x:F

    .line 122
    iget v1, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->x:F

    sub-float/2addr p1, v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->n:F

    return-void
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->n:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->x:F

    add-float/2addr v0, v1

    .line 114
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->barHeight:F

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v1
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 12

    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 129
    :cond_0
    iget-object p2, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->code:Ljava/lang/String;

    invoke-static {p2}, Lcom/itextpdf/barcodes/BarcodePostnet;->getBarsPostnet(Ljava/lang/String;)[B

    move-result-object p2

    .line 131
    iget p3, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->codeType:I

    sget v0, Lcom/itextpdf/barcodes/BarcodePostnet;->TYPE_PLANET:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_1

    .line 133
    aput-byte v2, p2, v2

    .line 134
    array-length p3, p2

    sub-int/2addr p3, v1

    aput-byte v2, p2, p3

    move v1, v2

    :cond_1
    const/4 p3, 0x0

    .line 137
    :goto_0
    array-length v0, p2

    if-ge v2, v0, :cond_3

    float-to-double v4, p3

    .line 138
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->x:F

    iget v3, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->inkSpreading:F

    sub-float/2addr v0, v3

    float-to-double v8, v0

    aget-byte v0, p2, v2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->barHeight:F

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->size:F

    :goto_1
    float-to-double v6, v0

    move-wide v10, v6

    const-wide/16 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 139
    iget v0, p0, Lcom/itextpdf/barcodes/BarcodePostnet;->n:F

    add-float/2addr p3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 142
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/BarcodePostnet;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    return-object p1
.end method
