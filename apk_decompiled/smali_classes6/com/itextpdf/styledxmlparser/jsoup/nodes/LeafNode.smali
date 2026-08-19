.class public abstract Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
.source "LeafNode.java"


# instance fields
.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;-><init>()V

    return-void
.end method

.method private ensureAttributes()V
    .locals 3

    .line 43
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    .line 45
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->nodeName()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    :cond_0
    return-void
.end method


# virtual methods
.method public absUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->ensureAttributes()V

    .line 95
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->ensureAttributes()V

    .line 75
    invoke-super {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    :goto_0
    return-object p0
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 62
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    .line 66
    :cond_1
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->ensureAttributes()V

    .line 39
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    return-object v0
.end method

.method public baseUri()Ljava/lang/String;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public childNodeSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method coreValue()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method coreValue(Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-void
.end method

.method protected doClone(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 125
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->doClone(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;

    .line 128
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method protected doSetBaseUri(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public empty()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 0

    return-object p0
.end method

.method protected ensureChildNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->EmptyNodes:Ljava/util/List;

    return-object v0
.end method

.method public hasAttr(Ljava/lang/String;)Z
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->ensureAttributes()V

    .line 83
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final hasAttributes()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    return v0
.end method

.method public removeAttr(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->ensureAttributes()V

    .line 89
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->removeAttr(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    return-object p1
.end method
