.class public Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;
.super Ljava/lang/Object;
.source "PdfRootSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;


# instance fields
.field subTreeRoot:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;


# direct methods
.method public constructor <init>(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;->subTreeRoot:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 71
    invoke-interface {p1, p0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    return-void
.end method


# virtual methods
.method calculateTransformation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 14

    .line 121
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    .line 123
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    add-float/2addr v1, p1

    const-wide/16 v2, 0x0

    .line 125
    invoke-static {v2, v3, v2, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p1

    float-to-double v2, v0

    float-to-double v0, v1

    .line 126
    invoke-static {v2, v3, v0, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 127
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    return-object p1
.end method

.method calculateViewPort(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4

    .line 138
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    .line 140
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v0

    const/4 v1, 0x1

    .line 147
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v1

    const/4 v2, 0x2

    .line 148
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    sub-float/2addr v2, v0

    const/4 v3, 0x3

    .line 149
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result p1

    sub-float/2addr p1, v1

    .line 151
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v3

    .line 141
    :cond_0
    new-instance p1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v0, "The root svg tag needs to have a bounding box defined."

    invoke-direct {p1, v0}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 2

    .line 156
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;

    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;->subTreeRoot:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    invoke-interface {v1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;-><init>(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    return-object v0
.end method

.method public draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;->calculateViewPort(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addViewPort(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 89
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 90
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;->calculateTransformation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 91
    const-string v1, "% svg root\n"

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 92
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;->subTreeRoot:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    invoke-interface {v0, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeMapCopy()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAttributesAndStyles(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 0

    return-void
.end method
