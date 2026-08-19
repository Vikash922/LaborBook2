.class Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassChildSelectorItem;
.super Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;
.source "CssPseudoClassChildSelectorItem.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getAllSiblings(Lcom/itextpdf/styledxmlparser/node/INode;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 75
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object p1

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 78
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 83
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getAllSiblingsOfNodeType(Lcom/itextpdf/styledxmlparser/node/INode;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    invoke-interface {v0}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 98
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    invoke-interface {v3}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    invoke-interface {v4}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    .line 103
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
