.class public final Lcom/itextpdf/svg/css/impl/SvgNodeRendererInheritanceResolver;
.super Ljava/lang/Object;
.source "SvgNodeRendererInheritanceResolver.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyInheritanceToSubTree(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/css/SvgCssContext;)V
    .locals 1

    .line 72
    invoke-static {p0, p1, p2}, Lcom/itextpdf/svg/css/impl/SvgNodeRendererInheritanceResolver;->applyStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/css/SvgCssContext;)V

    .line 74
    instance-of p0, p1, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;

    if-eqz p0, :cond_0

    .line 75
    check-cast p1, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;

    .line 76
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 77
    invoke-static {p1, v0, p2}, Lcom/itextpdf/svg/css/impl/SvgNodeRendererInheritanceResolver;->applyInheritanceToSubTree(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/css/SvgCssContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static applyStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/css/SvgCssContext;)V
    .locals 5

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 84
    invoke-interface {p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttributeMapCopy()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    :cond_0
    invoke-interface {p0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttributeMapCopy()Ljava/util/Map;

    move-result-object v1

    .line 89
    const-string v2, "font-size"

    invoke-interface {p0, v2}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->INHERITANCE_RULES:Ljava/util/Set;

    .line 92
    invoke-static {v0, v3, v2, p0, v4}, Lcom/itextpdf/styledxmlparser/util/StyleUtil;->mergeParentStyleDeclaration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {v0, p2, p0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resolveFontSizeStyle(Ljava/util/Map;Lcom/itextpdf/svg/css/SvgCssContext;Ljava/lang/String;)V

    .line 98
    invoke-interface {p1, v0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setAttributesAndStyles(Ljava/util/Map;)V

    :cond_2
    return-void
.end method
