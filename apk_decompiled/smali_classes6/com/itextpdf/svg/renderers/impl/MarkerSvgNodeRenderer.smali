.class public Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
.source "MarkerSvgNodeRenderer.java"


# static fields
.field private static final DEFAULT_MARKER_HEIGHT:F = 2.25f

.field private static final DEFAULT_MARKER_WIDTH:F = 2.25f

.field private static final DEFAULT_REF_X:F

.field private static final DEFAULT_REF_Y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;-><init>()V

    return-void
.end method

.method private applyCoordinatesTranslation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 7

    .line 235
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getViewBoxValues()[F

    move-result-object v0

    .line 236
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 237
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    const/4 v2, 0x2

    aget v2, v0, v2

    div-float/2addr v1, v2

    .line 238
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    const/4 v3, 0x3

    aget v0, v0, v3

    div-float/2addr v2, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    move v2, v1

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v3, "refX"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getRootViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    invoke-virtual {p0, v0, v3, v4, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->parseAbsoluteLength(Ljava/lang/String;FFLcom/itextpdf/svg/renderers/SvgDrawContext;)F

    move-result v0

    :goto_1
    mul-float/2addr v1, v5

    mul-float/2addr v0, v1

    goto :goto_2

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getRootViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    invoke-virtual {p0, v0, v3, v4, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->parseAbsoluteLength(Ljava/lang/String;FFLcom/itextpdf/svg/renderers/SvgDrawContext;)F

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v4

    .line 254
    :goto_2
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v3, "refY"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getRootViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    invoke-virtual {p0, v1, v3, v4, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->parseAbsoluteLength(Ljava/lang/String;FFLcom/itextpdf/svg/renderers/SvgDrawContext;)F

    move-result v1

    :goto_3
    mul-float/2addr v2, v5

    mul-float v4, v1, v2

    goto :goto_4

    .line 258
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 260
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getRootViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    invoke-virtual {p0, v1, v3, v4, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->parseAbsoluteLength(Ljava/lang/String;FFLcom/itextpdf/svg/renderers/SvgDrawContext;)F

    move-result v1

    goto :goto_3

    :cond_4
    :goto_4
    float-to-double v0, v0

    float-to-double v2, v4

    .line 264
    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_5

    .line 266
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_5
    return-void
.end method

.method private applyRotation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 6

    .line 184
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "orient"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "auto-start-reverse"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "marker"

    const-string v5, "marker-start"

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 192
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 195
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/svg/renderers/IMarkerCapable;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/itextpdf/svg/renderers/IMarkerCapable;->getAutoOrientAngle(Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;Z)D

    move-result-wide v0

    goto :goto_2

    .line 197
    :cond_1
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isAngleValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_2

    .line 198
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAngle(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    goto :goto_2

    .line 193
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/svg/renderers/IMarkerCapable;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/itextpdf/svg/renderers/IMarkerCapable;->getAutoOrientAngle(Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;Z)D

    move-result-wide v0

    .line 200
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_5

    .line 201
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_5
    return-void
.end method

.method private applyUserSpaceScaling(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 7

    .line 207
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 208
    const-string v1, "markerUnits"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "strokeWidth"

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 210
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    .line 212
    :goto_1
    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 213
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 215
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 214
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v2, v4

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 217
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    const-string v1, "stroke-width"

    invoke-interface {v0, v1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 220
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getRootViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    float-to-double v1, v1

    .line 221
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getRootViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v1, v1

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    .line 223
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 222
    invoke-static {v1, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 225
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->parseAbsoluteLength(Ljava/lang/String;FFLcom/itextpdf/svg/renderers/SvgDrawContext;)F

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPtsToPx(F)F

    move-result v0

    .line 226
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    float-to-double v0, v0

    .line 227
    invoke-static {v0, v1, v0, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->getScaleInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_4
    return-void
.end method

.method static drawMarker(Lcom/itextpdf/svg/renderers/SvgDrawContext;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/svg/MarkerVertexType;Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;)V
    .locals 3

    .line 94
    iget-object v0, p4, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/itextpdf/svg/MarkerVertexType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    invoke-static {v0}, Lcom/itextpdf/svg/utils/SvgTextUtil;->filterReferenceValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getNamedObject(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 98
    :cond_0
    invoke-interface {v0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    .line 99
    :goto_0
    instance-of v2, v0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    .line 101
    invoke-static {v2}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->markerWidthHeightAreCorrect(Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-interface {v0, p4}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 104
    const-string p4, "marker"

    invoke-virtual {p3}, Lcom/itextpdf/svg/MarkerVertexType;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p4, p3}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string p3, "x"

    invoke-interface {v0, p3, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string p1, "y"

    invoke-interface {v0, p1, p2}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {v0, p0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 109
    invoke-interface {v0, v1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    :cond_1
    return-void
.end method

.method private getMarkerWidthHeightValues()[F
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "markerWidth"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v2, 0x40100000    # 2.25f

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v3, "markerHeight"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    goto :goto_1

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    :cond_3
    :goto_1
    const/4 v1, 0x2

    .line 144
    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v2, v1, v0

    return-object v1
.end method

.method private getViewBoxValues(FF)[F
    .locals 3

    .line 271
    invoke-super {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->getViewBoxValues()[F

    move-result-object v0

    .line 272
    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 274
    new-array v0, v2, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 p1, 0x3

    aput p2, v0, p1

    :cond_0
    return-object v0
.end method

.method private static markerWidthHeightAreCorrect(Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;)Z
    .locals 5

    .line 148
    const-class v0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 149
    const-string v1, "markerWidth"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 152
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    :cond_0
    const-string v1, "markerHeight"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 157
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const/4 p0, 0x0

    const/4 v1, 0x0

    if-eqz v2, :cond_3

    .line 161
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    cmpl-float v4, v2, v1

    if-nez v4, :cond_2

    .line 163
    const-string v2, "markerWidth has zero value. Marker will not be rendered."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    move v2, p0

    goto :goto_1

    :cond_2
    cmpg-float v2, v2, v1

    if-gez v2, :cond_3

    .line 166
    const-string v2, "markerWidth has negative value. Marker will not be rendered."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    :goto_1
    if-eqz v3, :cond_5

    .line 171
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v1

    if-nez v4, :cond_4

    .line 173
    const-string v1, "markerHeight has zero value. Marker will not be rendered."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    cmpg-float v1, v3, v1

    if-gez v1, :cond_5

    .line 176
    const-string v1, "markerHeight has negative value. Marker will not be rendered."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move p0, v2

    :goto_2
    return p0
.end method


# virtual methods
.method applyMarkerAttributes(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->applyRotation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->applyUserSpaceScaling(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->applyCoordinatesTranslation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    return-void
.end method

.method protected applyViewBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getMarkerWidthHeightValues()[F

    move-result-object v0

    const/4 v1, 0x0

    .line 117
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 118
    aget v0, v0, v2

    .line 119
    invoke-direct {p0, v1, v0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getViewBoxValues(FF)[F

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 121
    invoke-super {p0, p1, v0, v1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->calculateAndApplyViewBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;[FLcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_0
    return-void
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 61
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;-><init>()V

    .line 62
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;)V

    return-object v0
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method preDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 5

    .line 74
    invoke-super {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->preDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 75
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getMarkerWidthHeightValues()[F

    move-result-object v0

    const/4 v1, 0x0

    .line 76
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 77
    aget v0, v0, v2

    .line 78
    const-string v2, "x"

    invoke-virtual {p0, v2}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string v3, "y"

    invoke-virtual {p0, v3}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v4

    .line 82
    :goto_1
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v3, v2, v4, v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 83
    invoke-virtual {p1, v3}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addViewPort(Lcom/itextpdf/kernel/geom/Rectangle;)V

    return-void
.end method
