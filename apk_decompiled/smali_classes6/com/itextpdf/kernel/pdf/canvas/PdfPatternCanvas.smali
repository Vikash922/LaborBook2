.class public Lcom/itextpdf/kernel/pdf/canvas/PdfPatternCanvas;
.super Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
.source "PdfPatternCanvas.java"


# instance fields
.field private final tilingPattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 70
    new-instance p2, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfPatternCanvas;->tilingPattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2

    .line 79
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 80
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfPatternCanvas;->tilingPattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    return-void
.end method

.method private checkNoColor()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfPatternCanvas;->tilingPattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;->isColored()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Content stream must not invoke operators that specify colors or other color related parameters in the graphics state."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfPatternCanvas;->checkNoColor()V

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method
