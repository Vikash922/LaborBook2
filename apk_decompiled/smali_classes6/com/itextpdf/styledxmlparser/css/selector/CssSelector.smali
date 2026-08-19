.class public Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;
.super Lcom/itextpdf/styledxmlparser/css/selector/AbstractCssSelector;
.source "CssSelector.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;->parseSelectorItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/AbstractCssSelector;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private matches(Lcom/itextpdf/styledxmlparser/node/INode;I)Z
    .locals 6

    .line 94
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-gez p2, :cond_1

    return v0

    .line 100
    :cond_1
    instance-of v2, p1, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;

    move v3, p2

    :goto_0
    if-ltz v3, :cond_10

    if-eqz v2, :cond_2

    .line 102
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->selectorItems:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;

    if-eqz v4, :cond_2

    if-ge v3, p2, :cond_2

    .line 106
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p1

    move v2, v1

    .line 109
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->selectorItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;

    .line 110
    instance-of v5, v4, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;

    if-eqz v5, :cond_e

    .line 111
    check-cast v4, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;->getSeparator()C

    move-result p2

    const/16 v2, 0x20

    if-eq p2, v2, :cond_b

    const/16 v2, 0x2b

    if-eq p2, v2, :cond_7

    const/16 v2, 0x3e

    if-eq p2, v2, :cond_6

    const/16 v2, 0x7e

    if-eq p2, v2, :cond_3

    return v1

    .line 128
    :cond_3
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 130
    invoke-interface {p2}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p1, v0

    :goto_1
    if-ltz p1, :cond_5

    .line 132
    invoke-interface {p2}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/node/INode;

    add-int/lit8 v4, v3, -0x1

    invoke-direct {p0, v2, v4}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->matches(Lcom/itextpdf/styledxmlparser/node/INode;I)Z

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    return v1

    .line 114
    :cond_6
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p1

    sub-int/2addr v3, v0

    invoke-direct {p0, p1, v3}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->matches(Lcom/itextpdf/styledxmlparser/node/INode;I)Z

    move-result p1

    return p1

    .line 140
    :cond_7
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 142
    invoke-interface {p2}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    :goto_2
    if-ltz v2, :cond_9

    .line 145
    invoke-interface {p2}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v4, :cond_8

    .line 146
    invoke-interface {p2}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/styledxmlparser/node/INode;

    goto :goto_3

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_9
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_a

    if-lez p1, :cond_a

    sub-int/2addr v3, v0

    .line 150
    invoke-direct {p0, p2, v3}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->matches(Lcom/itextpdf/styledxmlparser/node/INode;I)Z

    move-result p1

    if-eqz p1, :cond_a

    move v1, v0

    :cond_a
    return v1

    .line 116
    :cond_b
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_d

    add-int/lit8 p2, v3, -0x1

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->matches(Lcom/itextpdf/styledxmlparser/node/INode;I)Z

    move-result p2

    if-eqz p2, :cond_c

    return v0

    .line 122
    :cond_c
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p1

    goto :goto_4

    :cond_d
    return v1

    .line 158
    :cond_e
    invoke-interface {v4, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;->matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z

    move-result v4

    if-nez v4, :cond_f

    return v1

    :cond_f
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    :cond_10
    return v0
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->selectorItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->matches(Lcom/itextpdf/styledxmlparser/node/INode;I)Z

    move-result p1

    return p1
.end method
