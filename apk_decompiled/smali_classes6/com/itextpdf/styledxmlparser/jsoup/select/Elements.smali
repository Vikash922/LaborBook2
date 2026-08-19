.class public Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
.super Ljava/util/ArrayList;
.source "Elements.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 0

    .line 65
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private childNodesOfType(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 711
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    const/4 v3, 0x0

    .line 712
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodeSize()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 713
    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNode(I)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v4

    .line 714
    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 715
    invoke-virtual {p1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private siblings(Ljava/lang/String;ZZ)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 4

    .line 605
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>()V

    if-eqz p1, :cond_0

    .line 606
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 607
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    :cond_1
    if-eqz p2, :cond_2

    .line 610
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nextElementSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->previousElementSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    .line 613
    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 614
    :cond_4
    invoke-virtual {v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->is(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 615
    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    if-nez p3, :cond_1

    goto :goto_1

    :cond_6
    return-object v0
.end method


# virtual methods
.method public addClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 163
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->addClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public after(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 399
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 400
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->after(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public append(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 373
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 374
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->append(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 138
    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 94
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 97
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public before(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 387
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->before(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 75
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>(I)V

    .line 77
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 78
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public comments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;",
            ">;"
        }
    .end annotation

    .line 689
    const-class v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->childNodesOfType(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public dataNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;",
            ">;"
        }
    .end annotation

    .line 706
    const-class v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->childNodesOfType(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public eachAttr(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 124
    invoke-virtual {v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public eachText()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 275
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 276
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public empty()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 459
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 460
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->empty()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public eq(I)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 3

    .line 519
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>([Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>()V

    :goto_0
    return-object v0
.end method

.method public filter(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 0

    .line 667
    invoke-static {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->filter(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter;Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;)V

    return-object p0
.end method

.method public first()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 640
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    :goto_0
    return-object v0
.end method

.method public forms()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;",
            ">;"
        }
    .end annotation

    .line 677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 678
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 679
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    if-eqz v3, :cond_0

    .line 680
    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasAttr(Ljava/lang/String;)Z
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 108
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hasClass(Ljava/lang/String;)Z
    .locals 2

    .line 201
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 202
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasClass(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hasText()Z
    .locals 2

    .line 258
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 259
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public html(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 347
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 348
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->html(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public html()Ljava/lang/String;
    .locals 4

    .line 289
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 295
    :cond_1
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public is(Ljava/lang/String;)Z
    .locals 2

    .line 528
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object p1

    .line 529
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 530
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->is(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public last()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 648
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    :goto_0
    return-object v0
.end method

.method public next()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 541
    invoke-direct {p0, v2, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->siblings(Ljava/lang/String;ZZ)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 550
    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->siblings(Ljava/lang/String;ZZ)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public nextAll()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 558
    invoke-direct {p0, v0, v1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->siblings(Ljava/lang/String;ZZ)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public nextAll(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    const/4 v0, 0x1

    .line 567
    invoke-direct {p0, p1, v0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->siblings(Ljava/lang/String;ZZ)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public not(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 0

    .line 507
    invoke-static {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->select(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    .line 508
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->filterOut(Ljava/util/Collection;Ljava/util/Collection;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public outerHtml()Ljava/lang/String;
    .locals 4

    .line 305
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->outerHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 311
    :cond_1
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parents()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 3

    .line 627
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 628
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 629
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parents()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 631
    :cond_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public prepend(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 360
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 361
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->prepend(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public prev()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 575
    invoke-direct {p0, v0, v1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->siblings(Ljava/lang/String;ZZ)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public prev(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    const/4 v0, 0x0

    .line 584
    invoke-direct {p0, p1, v0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->siblings(Ljava/lang/String;ZZ)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public prevAll()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 592
    invoke-direct {p0, v2, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->siblings(Ljava/lang/String;ZZ)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public prevAll(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 601
    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->siblings(Ljava/lang/String;ZZ)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public remove()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 479
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 480
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->remove()V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public removeAttr(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 150
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public removeClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 176
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->removeClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 0

    .line 493
    invoke-static {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->select(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public tagName(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 334
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 335
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public text()Ljava/lang/String;
    .locals 4

    .line 242
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 248
    :cond_1
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public textNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;",
            ">;"
        }
    .end annotation

    .line 697
    const-class v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->childNodesOfType(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toggleClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 189
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->toggleClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public traverse(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 0

    .line 657
    invoke-static {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->traverse(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;)V

    return-object p0
.end method

.method public unwrap()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 440
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 441
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->unwrap()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public val(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 227
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 228
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->val(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public val()Ljava/lang/String;
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->first()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 218
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public wrap(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 416
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 418
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->wrap(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    goto :goto_0

    :cond_0
    return-object p0
.end method
