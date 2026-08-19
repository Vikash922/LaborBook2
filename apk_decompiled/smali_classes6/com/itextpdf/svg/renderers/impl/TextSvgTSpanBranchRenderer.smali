.class public Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;
.super Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;
.source "TextSvgTSpanBranchRenderer.java"


# static fields
.field private static final EPS:F = 1.0E-4f


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->performRootTransformations:Z

    return-void
.end method

.method private static floatsAreEqual(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 163
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x38d1b717    # 1.0E-4f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method applyGSDifference(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V
    .locals 3

    .line 132
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    move-result-object v0

    .line 133
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCharSpacing()F

    move-result v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCharSpacing()F

    move-result v2

    invoke-static {v1, v2}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->floatsAreEqual(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCharSpacing()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setCharacterSpacing(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 136
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 137
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 139
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFontSize()F

    move-result v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFontSize()F

    move-result v2

    invoke-static {v1, v2}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->floatsAreEqual(FF)Z

    move-result v1

    if-nez v1, :cond_3

    .line 140
    :cond_2
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFontSize()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 142
    :cond_3
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getLineWidth()F

    move-result v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getLineWidth()F

    move-result v2

    invoke-static {v1, v2}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->floatsAreEqual(FF)Z

    move-result v1

    if-nez v1, :cond_4

    .line 143
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getLineWidth()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 145
    :cond_4
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 146
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 148
    :cond_5
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTextRenderingMode()I

    move-result v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTextRenderingMode()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 149
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTextRenderingMode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextRenderingMode(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 153
    :cond_6
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillOpacity()F

    move-result v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillOpacity()F

    move-result v2

    invoke-static {v1, v2}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->floatsAreEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 154
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeOpacity()F

    move-result v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeOpacity()F

    move-result v0

    invoke-static {v1, v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->floatsAreEqual(FF)Z

    move-result v0

    if-nez v0, :cond_8

    .line 155
    :cond_7
    new-instance v0, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>()V

    .line 156
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillOpacity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setFillOpacity(F)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    .line 157
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeOpacity()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setStrokeOpacity(F)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    .line 158
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_8
    return-void
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 70
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;-><init>()V

    .line 71
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->fillCopy(Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;)V

    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 11

    .line 77
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 78
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 80
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    .line 82
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->applyTextRenderingMode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->resolveFont(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 84
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v3

    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->getCurrentFontSize()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 86
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->getCurrentFontSize()F

    move-result v3

    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->getTextContentLength(FLcom/itextpdf/kernel/font/PdfFont;)F

    move-result v3

    .line 87
    invoke-interface {v2}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->containsAbsolutePositionChange()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    invoke-interface {v2}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->getAbsolutePositionChanges()[[F

    move-result-object v4

    .line 90
    invoke-static {v4, p1}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->getTextTransform([[FLcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v4

    .line 92
    invoke-virtual {p1, v4}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setLastTextTransform(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 94
    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 96
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->resetTextMove()V

    const/4 v4, 0x0

    .line 97
    invoke-virtual {p1, v4}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setPreviousElementTextMove([F)V

    .line 101
    :cond_1
    invoke-virtual {p0, v3}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->getTextAnchorAlignmentCorrection(F)F

    move-result v4

    const/4 v5, 0x0

    .line 102
    invoke-static {v5, v4}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v6

    if-nez v6, :cond_2

    .line 103
    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addTextMove(FF)V

    .line 106
    :cond_2
    invoke-interface {v2}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->containsRelativeMove()Z

    move-result v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    .line 107
    invoke-interface {v2}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->getRelativeTranslation()[F

    move-result-object v4

    .line 110
    aget v9, v4, v8

    aget v10, v4, v7

    neg-float v10, v10

    invoke-virtual {p1, v9, v10}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addTextMove(FF)V

    .line 112
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getPreviousElementTextMove()[F

    move-result-object v9

    aget v9, v9, v8

    aget v10, v4, v8

    add-float/2addr v9, v10

    .line 113
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getPreviousElementTextMove()[F

    move-result-object v10

    aget v10, v10, v7

    aget v4, v4, v7

    sub-float/2addr v10, v4

    new-array v4, v6, [F

    aput v9, v4, v8

    aput v10, v4, v7

    .line 111
    invoke-virtual {p1, v4}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setPreviousElementTextMove([F)V

    .line 116
    :cond_3
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;-><init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V

    .line 117
    invoke-interface {v2, p1}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 118
    invoke-virtual {p0, v0, v4}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->applyGSDifference(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V

    .line 119
    invoke-virtual {p1, v3, v5}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addTextMove(FF)V

    .line 121
    invoke-static {v3, v5}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->floatsAreEqual(FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    new-array v2, v6, [F

    aput v3, v2, v8

    aput v5, v2, v7

    invoke-virtual {p1, v2}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setPreviousElementTextMove([F)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    return-object p1
.end method
