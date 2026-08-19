.class public Lcom/itextpdf/styledxmlparser/css/selector/CssPageSelector;
.super Lcom/itextpdf/styledxmlparser/css/selector/AbstractCssSelector;
.source "CssPageSelector.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssPageSelectorParser;->parseSelectorItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/AbstractCssSelector;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 3

    .line 69
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssPageSelector;->selectorItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;

    .line 74
    invoke-interface {v2, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;->matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
