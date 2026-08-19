.class Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthOfTypeSelectorItem;
.super Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;
.source "CssPseudoClassNthOfTypeSelectorItem.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 55
    const-string v0, "nth-of-type"

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 3

    .line 60
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthOfTypeSelectorItem;->getAllSiblingsOfNodeType(Lcom/itextpdf/styledxmlparser/node/INode;)Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthOfTypeSelectorItem;->resolveNth(Lcom/itextpdf/styledxmlparser/node/INode;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method
