.class public abstract Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
.source "AbstractContainerSvgNodeRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method calculateViewPort(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 5

    .line 52
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    .line 56
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    .line 58
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    .line 60
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    .line 63
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 64
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v4, "x"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    .line 67
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v4, "y"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v4, "width"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    .line 73
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v4, "height"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result p1

    .line 78
    :cond_3
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v3
.end method

.method public canConstructViewPort()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected canElementFill()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 1

    .line 41
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;->calculateViewPort(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addViewPort(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 42
    invoke-super {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    return-void
.end method
