.class Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;
.super Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassChildSelectorItem;
.source "CssPseudoClassNthSelectorItem.java"


# instance fields
.field private nthA:I

.field private nthB:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassChildSelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->getNthArguments()V

    return-void
.end method


# virtual methods
.method protected getNthArguments()V
    .locals 6

    .line 80
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->arguments:Ljava/lang/String;

    const-string v1, "((-|\\+)?[0-9]*n(\\s*(-|\\+)\\s*[0-9]+)?|(-|\\+)?[0-9]+|odd|even)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 81
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->arguments:Ljava/lang/String;

    const-string v2, "odd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 82
    iput v2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthA:I

    .line 83
    iput v3, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthB:I

    goto/16 :goto_1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->arguments:Ljava/lang/String;

    const-string v4, "even"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iput v2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthA:I

    .line 86
    iput v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthB:I

    goto/16 :goto_1

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->arguments:Ljava/lang/String;

    const/16 v2, 0x6e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 90
    iput v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthA:I

    .line 91
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->arguments:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthB:I

    goto/16 :goto_1

    .line 93
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->arguments:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 95
    iput v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthA:I

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v3, :cond_5

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 97
    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    :cond_4
    iput v2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthA:I

    goto :goto_0

    .line 99
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthA:I

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->arguments:Ljava/lang/String;

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthB:I

    goto :goto_1

    .line 104
    :cond_6
    iput v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthB:I

    goto :goto_1

    .line 108
    :cond_7
    iput v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthA:I

    .line 109
    iput v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthB:I

    :goto_1
    return-void
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 3

    .line 69
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->getAllSiblings(Lcom/itextpdf/styledxmlparser/node/INode;)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->resolveNth(Lcom/itextpdf/styledxmlparser/node/INode;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method protected resolveNth(Lcom/itextpdf/styledxmlparser/node/INode;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            ">;)Z"
        }
    .end annotation

    .line 121
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 123
    :cond_0
    iget v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthA:I

    const/4 v2, 0x1

    if-lez v0, :cond_2

    .line 124
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v2

    iget p2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthB:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_1

    .line 125
    iget p2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthA:I

    rem-int/2addr p1, p2

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    if-gez v0, :cond_4

    .line 127
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v2

    iget p2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthB:I

    sub-int/2addr p1, p2

    if-gtz p1, :cond_3

    .line 128
    iget p2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthA:I

    rem-int/2addr p1, p2

    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 130
    :cond_4
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v2

    iget p2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;->nthB:I

    sub-int/2addr p1, p2

    if-nez p1, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method
