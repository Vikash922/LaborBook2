.class public Lcom/itextpdf/layout/properties/TransparentColor;
.super Ljava/lang/Object;
.source "TransparentColor.java"


# instance fields
.field private color:Lcom/itextpdf/kernel/colors/Color;

.field private opacity:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/itextpdf/layout/properties/TransparentColor;->color:Lcom/itextpdf/kernel/colors/Color;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 65
    iput p1, p0, Lcom/itextpdf/layout/properties/TransparentColor;->opacity:F

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/itextpdf/layout/properties/TransparentColor;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 77
    iput p2, p0, Lcom/itextpdf/layout/properties/TransparentColor;->opacity:F

    return-void
.end method

.method private applyTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Z)V
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/itextpdf/layout/properties/TransparentColor;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>()V

    if-eqz p2, :cond_0

    .line 116
    iget p2, p0, Lcom/itextpdf/layout/properties/TransparentColor;->opacity:F

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setStrokeOpacity(F)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    goto :goto_0

    .line 118
    :cond_0
    iget p2, p0, Lcom/itextpdf/layout/properties/TransparentColor;->opacity:F

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setFillOpacity(F)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    .line 120
    :goto_0
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_1
    return-void
.end method

.method private isTransparent()Z
    .locals 2

    .line 125
    iget v0, p0, Lcom/itextpdf/layout/properties/TransparentColor;->opacity:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public applyFillTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/properties/TransparentColor;->applyTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Z)V

    return-void
.end method

.method public applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1

    const/4 v0, 0x1

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/properties/TransparentColor;->applyTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Z)V

    return-void
.end method

.method public getColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/itextpdf/layout/properties/TransparentColor;->color:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getOpacity()F
    .locals 1

    .line 93
    iget v0, p0, Lcom/itextpdf/layout/properties/TransparentColor;->opacity:F

    return v0
.end method
