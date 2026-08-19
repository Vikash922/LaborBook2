.class public abstract Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.super Ljava/lang/Object;
.source "AbstractSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;


# static fields
.field private static final MARKER_VERTEX_TYPES:[Lcom/itextpdf/svg/MarkerVertexType;


# instance fields
.field protected attributesAndStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field doFill:Z

.field doStroke:Z

.field private parent:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

.field partOfClipPath:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 81
    new-array v0, v0, [Lcom/itextpdf/svg/MarkerVertexType;

    const/4 v1, 0x0

    sget-object v2, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_START:Lcom/itextpdf/svg/MarkerVertexType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_END:Lcom/itextpdf/svg/MarkerVertexType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->MARKER_VERTEX_TYPES:[Lcom/itextpdf/svg/MarkerVertexType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doFill:Z

    .line 91
    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doStroke:Z

    return-void
.end method

.method private drawInClipPath(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Z
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "clip-path"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 479
    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->normalizeLocalUrlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getNamedObject(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    .line 481
    instance-of v1, v0, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;

    if-eqz v1, :cond_0

    .line 482
    invoke-interface {v0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;

    .line 484
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/itextpdf/svg/css/impl/SvgNodeRendererInheritanceResolver;->applyInheritanceToSubTree(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/css/SvgCssContext;)V

    .line 485
    invoke-virtual {v0, p0}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->setClippedRenderer(Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;)V

    .line 486
    invoke-virtual {v0, p1}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 487
    invoke-virtual {v0}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getColorFromAttributeValue(Lcom/itextpdf/svg/renderers/SvgDrawContext;Ljava/lang/String;FF)Lcom/itextpdf/layout/properties/TransparentColor;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 432
    :cond_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;

    invoke-direct {v1, p2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v0

    .line 437
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 438
    const-string v3, "url(#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_4

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 441
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 442
    invoke-virtual {p1, p2}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getNamedObject(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object p2

    .line 443
    instance-of v2, p2, Lcom/itextpdf/svg/renderers/ISvgPaintServer;

    if-eqz v2, :cond_2

    .line 444
    check-cast p2, Lcom/itextpdf/svg/renderers/ISvgPaintServer;

    .line 445
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 444
    invoke-interface {p2, p1, v2, p3, p4}, Lcom/itextpdf/svg/renderers/ISvgPaintServer;->createColor(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Rectangle;FF)Lcom/itextpdf/kernel/colors/Color;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 448
    new-instance p2, Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-direct {p2, p1, v4}, Lcom/itextpdf/layout/properties/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    return-object p2

    .line 450
    :cond_3
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_6

    .line 454
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 455
    const-string p2, "none"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 456
    new-instance p2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string p3, "color"

    invoke-direct {p2, p3, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 457
    new-instance p1, Lcom/itextpdf/layout/properties/TransparentColor;

    new-instance p2, Lcom/itextpdf/kernel/colors/DeviceRgb;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    invoke-direct {p1, p2, v4}, Lcom/itextpdf/layout/properties/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    return-object p1

    .line 459
    :cond_5
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseColor(Ljava/lang/String;)Lcom/itextpdf/layout/properties/TransparentColor;

    move-result-object p1

    .line 460
    new-instance p2, Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object p3

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/TransparentColor;->getOpacity()F

    move-result p1

    mul-float/2addr p1, p4

    invoke-direct {p2, p3, p1}, Lcom/itextpdf/layout/properties/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    return-object p2

    :cond_6
    return-object v0
.end method

.method private getOpacity()F
    .locals 3

    .line 500
    const-string v0, "opacity"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->parent:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    if-eqz v2, :cond_1

    .line 505
    check-cast v1, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    invoke-direct {v1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getOpacity()F

    move-result v1

    mul-float/2addr v0, v1

    :cond_1
    return v0
.end method

.method private getOpacityByAttributeName(Ljava/lang/String;F)F
    .locals 1

    .line 469
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 470
    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p2, p1

    :cond_0
    return p2
.end method

.method private normalizeLocalUrlName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 494
    const-string v0, "url(#"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method calculateViewPortTranslation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 4

    .line 244
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p1

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p1

    return-object p1
.end method

.method public canConstructViewPort()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canElementFill()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 2

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 224
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 225
    invoke-interface {p1, v0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setAttributesAndStyles(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected abstract doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
.end method

.method public final draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 4

    .line 156
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "id"

    if-eqz v1, :cond_1

    .line 159
    const-string v3, "transform"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 162
    invoke-static {v1}, Lcom/itextpdf/svg/utils/TransformUtils;->parseTransform(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addUsedId(Ljava/lang/String;)V

    .line 176
    :cond_1
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->drawInClipPath(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->preDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->postDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->removeUsedId(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAttributeMapCopy()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-nez v1, :cond_0

    return-object v0

    .line 144
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public getAttributeOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public getCurrentFontSize()F
    .locals 1

    .line 212
    const-string v0, "font-size"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->parent:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    return-object v0
.end method

.method protected parseAbsoluteLength(Ljava/lang/String;FFLcom/itextpdf/svg/renderers/SvgDrawContext;)F
    .locals 1

    .line 413
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isPercentageValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-static {p1, p2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result p1

    return p1

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getCurrentFontSize()F

    move-result p2

    .line 417
    invoke-virtual {p4}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object p4

    invoke-virtual {p4}, Lcom/itextpdf/svg/css/SvgCssContext;->getRootFontSize()F

    move-result p4

    .line 418
    invoke-static {p1, p2, p4}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseLengthValueToPt(Ljava/lang/String;FF)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 419
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 420
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p1

    return p1

    :cond_1
    return p3
.end method

.method postDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 7

    .line 258
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 259
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 262
    iget-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->partOfClipPath:Z

    const-string v2, "evenodd"

    if-eqz v1, :cond_1

    .line 263
    const-string v1, "clip-rule"

    .line 264
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->eoClip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 269
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 270
    :cond_1
    instance-of v1, p0, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    if-nez v1, :cond_7

    .line 271
    iget-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doFill:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->canElementFill()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 272
    const-string v1, "fill-rule"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    iget-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doStroke:Z

    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->eoFillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 278
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->eoFill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 281
    :cond_3
    iget-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doStroke:Z

    if-eqz v1, :cond_4

    .line 282
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 284
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 287
    :cond_5
    iget-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doStroke:Z

    if-eqz v1, :cond_6

    .line 288
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 290
    :cond_6
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 294
    :cond_7
    :goto_1
    instance-of v1, p0, Lcom/itextpdf/svg/renderers/IMarkerCapable;

    if-eqz v1, :cond_9

    .line 296
    sget-object v1, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->MARKER_VERTEX_TYPES:[Lcom/itextpdf/svg/MarkerVertexType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_9

    aget-object v4, v1, v3

    .line 297
    iget-object v5, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/itextpdf/svg/MarkerVertexType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 298
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 299
    move-object v5, p0

    check-cast v5, Lcom/itextpdf/svg/renderers/IMarkerCapable;

    invoke-interface {v5, p1, v4}, Lcom/itextpdf/svg/renderers/IMarkerCapable;->drawMarker(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/svg/MarkerVertexType;)V

    .line 300
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method preDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 13

    .line 318
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 319
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 321
    new-instance v1, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>()V

    .line 322
    iget-boolean v2, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->partOfClipPath:Z

    if-nez v2, :cond_9

    .line 323
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getOpacity()F

    move-result v2

    .line 326
    const-string v3, "fill"

    const-string v4, "black"

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttributeOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    const-string v4, "none"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    iput-boolean v6, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doFill:Z

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-nez v5, :cond_3

    .line 329
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->canElementFill()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 330
    const-string v5, "fill-opacity"

    invoke-direct {p0, v5, v2}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getOpacityByAttributeName(Ljava/lang/String;F)F

    move-result v5

    const/4 v8, 0x0

    .line 334
    invoke-direct {p0, p1, v3, v8, v5}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getColorFromAttributeValue(Lcom/itextpdf/svg/renderers/SvgDrawContext;Ljava/lang/String;FF)Lcom/itextpdf/layout/properties/TransparentColor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 337
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v5

    .line 338
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/TransparentColor;->getOpacity()F

    move-result v3

    move-object v12, v5

    move v5, v3

    move-object v3, v12

    goto :goto_0

    :cond_0
    move-object v3, v7

    .line 341
    :goto_0
    invoke-static {v5, v6}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v8

    if-nez v8, :cond_1

    .line 342
    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setFillOpacity(F)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    :cond_1
    if-nez v3, :cond_2

    .line 347
    sget-object v3, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    .line 349
    :cond_2
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 354
    :cond_3
    const-string v3, "stroke"

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttributeOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 358
    const-string v4, "stroke-width"

    invoke-virtual {p0, v4}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 364
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v4

    goto :goto_1

    :cond_4
    const/high16 v4, 0x3f400000    # 0.75f

    .line 367
    :goto_1
    const-string v5, "stroke-opacity"

    invoke-direct {p0, v5, v2}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getOpacityByAttributeName(Ljava/lang/String;F)F

    move-result v2

    float-to-double v8, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-float v5, v8

    .line 371
    invoke-direct {p0, p1, v3, v5, v2}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getColorFromAttributeValue(Lcom/itextpdf/svg/renderers/SvgDrawContext;Ljava/lang/String;FF)Lcom/itextpdf/layout/properties/TransparentColor;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 374
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v7

    .line 375
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/TransparentColor;->getOpacity()F

    move-result v2

    .line 378
    :cond_5
    invoke-static {v2, v6}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result p1

    if-nez p1, :cond_6

    .line 379
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setStrokeOpacity(F)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    :cond_6
    if-eqz v7, :cond_7

    .line 385
    invoke-virtual {v0, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 388
    :cond_7
    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 p1, 0x1

    .line 390
    iput-boolean p1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doStroke:Z

    .line 395
    :cond_8
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 396
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_9
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 107
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    return-void
.end method

.method public setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->parent:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    return-void
.end method

.method setPartOfClipPath(Z)V
    .locals 0

    .line 308
    iput-boolean p1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->partOfClipPath:Z

    return-void
.end method
