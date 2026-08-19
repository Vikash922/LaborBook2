.class public Lcom/itextpdf/barcodes/BarcodeEANSUPP;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "BarcodeEANSUPP.java"


# instance fields
.field protected ean:Lcom/itextpdf/barcodes/Barcode1D;

.field protected supp:Lcom/itextpdf/barcodes/Barcode1D;


# direct methods
.method public constructor <init>(Lcom/itextpdf/barcodes/Barcode1D;Lcom/itextpdf/barcodes/Barcode1D;)V
    .locals 1

    .line 71
    iget-object v0, p1, Lcom/itextpdf/barcodes/Barcode1D;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {p0, v0}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const/high16 v0, 0x41000000    # 8.0f

    .line 73
    iput v0, p0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->n:F

    .line 74
    iput-object p1, p0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->ean:Lcom/itextpdf/barcodes/Barcode1D;

    .line 75
    iput-object p2, p0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    return-void
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 0

    .line 161
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "The two barcodes must be composed externally."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->ean:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/Barcode1D;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v2}, Lcom/itextpdf/barcodes/Barcode1D;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->n:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    .line 131
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/Barcode1D;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/Barcode1D;->getSize()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 133
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    iget-object v3, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->ean:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v3}, Lcom/itextpdf/barcodes/Barcode1D;->getBarHeight()F

    move-result v3

    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v4}, Lcom/itextpdf/barcodes/Barcode1D;->getBaseline()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    .line 134
    invoke-virtual {v4}, Lcom/itextpdf/barcodes/Barcode1D;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/FontMetrics;->getCapHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    .line 133
    invoke-virtual {v2, v3}, Lcom/itextpdf/barcodes/Barcode1D;->setBarHeight(F)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->ean:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v2}, Lcom/itextpdf/barcodes/Barcode1D;->getBarHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/barcodes/Barcode1D;->setBarHeight(F)V

    .line 138
    :goto_0
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->ean:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/Barcode1D;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 140
    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->ean:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v2, v14, v15, v12}, Lcom/itextpdf/barcodes/Barcode1D;->placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 143
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    iget v3, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->n:F

    add-float/2addr v2, v3

    float-to-double v10, v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    iget-object v2, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->ean:Lcom/itextpdf/barcodes/Barcode1D;

    invoke-virtual {v2}, Lcom/itextpdf/barcodes/Barcode1D;->getBarHeight()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v8, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v1, p1

    move-wide/from16 v18, v8

    move-wide/from16 v8, v16

    move-wide/from16 v12, v18

    invoke-virtual/range {v1 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 144
    iget-object v1, v0, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->supp:Lcom/itextpdf/barcodes/Barcode1D;

    move-object/from16 v2, p3

    invoke-virtual {v1, v14, v15, v2}, Lcom/itextpdf/barcodes/Barcode1D;->placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/BarcodeEANSUPP;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    return-object v1
.end method
