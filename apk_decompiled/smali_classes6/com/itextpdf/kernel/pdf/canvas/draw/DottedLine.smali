.class public Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;
.super Ljava/lang/Object;
.source "DottedLine.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;


# instance fields
.field private color:Lcom/itextpdf/kernel/colors/Color;

.field protected gap:F

.field private lineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    .line 61
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->gap:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    .line 65
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->color:Lcom/itextpdf/kernel/colors/Color;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    .line 61
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->gap:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    .line 65
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 90
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    .line 61
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->gap:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    .line 65
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 80
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    .line 81
    iput p2, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->gap:F

    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 6

    .line 95
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    .line 96
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 97
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->gap:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    const/4 v3, 0x0

    .line 98
    invoke-virtual {p1, v3, v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineCapStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 100
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    iget v4, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    div-float/2addr v4, v1

    add-float/2addr v0, v4

    float-to-double v4, v0

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 101
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p2

    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    float-to-double v0, p2

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public getColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->color:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getGap()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->gap:F

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .line 130
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    return v0
.end method

.method public setColor(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->color:Lcom/itextpdf/kernel/colors/Color;

    return-void
.end method

.method public setGap(F)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->gap:F

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/DottedLine;->lineWidth:F

    return-void
.end method
