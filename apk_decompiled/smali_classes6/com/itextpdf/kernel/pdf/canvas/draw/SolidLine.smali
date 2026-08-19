.class public Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;
.super Ljava/lang/Object;
.source "SolidLine.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;


# instance fields
.field private color:Lcom/itextpdf/kernel/colors/Color;

.field private lineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 57
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    .line 59
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->color:Lcom/itextpdf/kernel/colors/Color;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 57
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    .line 59
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 73
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 5

    .line 78
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->color:Lcom/itextpdf/kernel/colors/Color;

    .line 79
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    .line 80
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 81
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    iget v3, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 82
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p2

    iget v2, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    div-float/2addr v2, v4

    add-float/2addr p2, v2

    float-to-double v2, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public getColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->color:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    .line 94
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    return v0
.end method

.method public setColor(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->color:Lcom/itextpdf/kernel/colors/Color;

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/draw/SolidLine;->lineWidth:F

    return-void
.end method
