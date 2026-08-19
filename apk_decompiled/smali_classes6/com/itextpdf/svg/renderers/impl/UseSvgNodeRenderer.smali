.class public Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "UseSvgNodeRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    return-void
.end method

.method private isValidHref(Ljava/lang/String;)Z
    .locals 1

    .line 130
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 135
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;-><init>()V

    .line 136
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 7

    .line 67
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 68
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "xlink:href"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "href"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_7

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->isValidHref(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 75
    invoke-static {v0}, Lcom/itextpdf/svg/utils/SvgTextUtil;->filterReferenceValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->isIdUsedByUseTagBefore(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 77
    invoke-virtual {p1, v0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getNamedObject(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {v0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    .line 81
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/itextpdf/svg/css/impl/SvgNodeRendererInheritanceResolver;->applyInheritanceToSubTree(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/css/SvgCssContext;)V

    if-eqz v0, :cond_7

    .line 84
    instance-of v2, v0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    if-eqz v2, :cond_2

    .line 85
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    iget-boolean v3, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->partOfClipPath:Z

    invoke-virtual {v2, v3}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->setPartOfClipPath(Z)V

    .line 87
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v4, "x"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 93
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v5

    .line 96
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v6, "y"

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 97
    iget-object v4, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v4

    goto :goto_2

    :cond_4
    move v4, v5

    .line 100
    :goto_2
    invoke-static {v3, v5}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v4, v5}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    float-to-double v5, v3

    float-to-double v3, v4

    .line 101
    invoke-static {v5, v6, v3, v4}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v3

    .line 102
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 103
    iget-boolean v4, p0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;->partOfClipPath:Z

    if-eqz v4, :cond_6

    .line 105
    :try_start_0
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->createInverse()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v3
    :try_end_0
    .catch Lcom/itextpdf/kernel/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 107
    const-class v4, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;

    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    const-string v5, "Non-invertible transformation matrix was used in a clipping path context. Clipped elements may show undefined behavior."

    .line 108
    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    move-object v3, v1

    .line 114
    :goto_3
    invoke-interface {v0, p0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 115
    invoke-interface {v0, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 117
    invoke-interface {v0, v1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    if-eqz v3, :cond_7

    .line 119
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_7
    return-void
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method postDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 0

    return-void
.end method
