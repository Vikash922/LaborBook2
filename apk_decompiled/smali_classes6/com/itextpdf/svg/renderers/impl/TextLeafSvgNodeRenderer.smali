.class public Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "TextLeafSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method protected canElementFill()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public containsAbsolutePositionChange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public containsRelativeMove()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 66
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;-><init>()V

    .line 67
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 6

    .line 131
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "text_content"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 134
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getPreviousElementTextMove()[F

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getTextMove()[F

    move-result-object v2

    aget v2, v2, v4

    float-to-double v4, v2

    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getTextMove()[F

    move-result-object p1

    aget p1, p1, v3

    float-to-double v2, p1

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveText(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getPreviousElementTextMove()[F

    move-result-object v2

    aget v2, v2, v4

    float-to-double v4, v2

    .line 138
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getPreviousElementTextMove()[F

    move-result-object p1

    aget p1, p1, v3

    float-to-double v2, p1

    .line 137
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveText(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 140
    :goto_0
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_1
    return-void
.end method

.method public getAbsolutePositionChanges()[[F
    .locals 3

    const/4 v0, 0x1

    .line 101
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 102
    filled-new-array {v0, v0}, [[F

    move-result-object v0

    return-object v0
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRelativeTranslation()[F
    .locals 1

    const/4 v0, 0x2

    .line 86
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getTextContentLength(FLcom/itextpdf/kernel/font/PdfFont;)F
    .locals 2

    if-eqz p2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "text_content"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0, p1}, Lcom/itextpdf/svg/utils/SvgTextUtil;->resolveFontSize(Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;F)F

    move-result p1

    .line 78
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    invoke-virtual {p2, v0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getTextRectangle(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/svg/utils/TextRectangle;
    .locals 8

    .line 107
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object p1

    instance-of p1, p1, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getCurrentFontSize()F

    move-result p1

    .line 109
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->getTextContentLength(FLcom/itextpdf/kernel/font/PdfFont;)F

    move-result v4

    .line 111
    sget-object v1, Lcom/itextpdf/layout/properties/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/properties/RenderingMode;

    .line 112
    invoke-static {v0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->calculateAscenderDescender(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/layout/properties/RenderingMode;)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 113
    aget v1, v0, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    const/4 v3, 0x1

    .line 114
    aget v0, v0, v3

    div-float/2addr v0, v2

    mul-float/2addr v0, p1

    sub-float v5, v1, v0

    .line 117
    new-instance p1, Lcom/itextpdf/svg/utils/TextRectangle;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v6

    double-to-float v0, v6

    sub-float v3, v0, v1

    .line 118
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v0

    double-to-float v6, v0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/svg/utils/TextRectangle;-><init>(FFFFF)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
