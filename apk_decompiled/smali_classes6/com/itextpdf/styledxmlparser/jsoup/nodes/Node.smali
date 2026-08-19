.class public abstract Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$OuterHtmlVisitor;
    }
.end annotation


# static fields
.field static final EmptyNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field static final EmptyString:Ljava/lang/String; = ""


# instance fields
.field parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

.field siblingIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->EmptyNodes:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addSiblingHtml(ILjava/lang/String;)V
    .locals 3

    .line 394
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 397
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 398
    :goto_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/NodeUtils;->parser(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseFragmentInput(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 399
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-void
.end method

.method private getDeepChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 472
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    .line 473
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 p1, 0x0

    .line 474
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->getDeepChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private partialClone()Ljava/lang/Object;
    .locals 2

    .line 814
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 816
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private reindexChildren(I)V
    .locals 2

    .line 578
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    .line 580
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 581
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->setSiblingIndex(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public absUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 221
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 223
    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method protected varargs addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 7

    .line 534
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 535
    array-length v0, p2

    if-nez v0, :cond_0

    return-void

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 541
    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 542
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodeSize()I

    move-result v3

    array-length v4, p2

    if-ne v3, v4, :cond_4

    .line 544
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v3

    .line 546
    array-length v4, p2

    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_2

    .line 548
    aget-object v4, p2, v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v4, v6, :cond_1

    goto :goto_2

    :cond_1
    move v4, v5

    goto :goto_0

    .line 554
    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->empty()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 555
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 556
    array-length v0, p2

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_3

    .line 558
    aget-object v0, p2, v1

    iput-object p0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move v0, v1

    goto :goto_1

    .line 560
    :cond_3
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->reindexChildren(I)V

    return-void

    .line 565
    :cond_4
    :goto_2
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->noNullElements([Ljava/lang/Object;)V

    .line 566
    array-length v2, p2

    :goto_3
    if-ge v1, v2, :cond_5

    aget-object v3, p2, v1

    .line 567
    invoke-virtual {p0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->reparentChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 569
    :cond_5
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 570
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->reindexChildren(I)V

    return-void
.end method

.method protected varargs addChildren([Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 5

    .line 524
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    .line 526
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 527
    invoke-virtual {p0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->reparentChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 528
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->setSiblingIndex(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public after(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 2

    .line 386
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 389
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    add-int/lit8 v1, v1, 0x1

    filled-new-array {p1}, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public after(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 374
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->addSiblingHtml(ILjava/lang/String;)V

    return-object p0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 122
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/NodeUtils;->parser(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->settings()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->normalizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->putIgnoreCase(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 94
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->hasAttributes()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    return-object v0

    .line 101
    :cond_1
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public abstract attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
.end method

.method public abstract baseUri()Ljava/lang/String;
.end method

.method public before(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 2

    .line 359
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    filled-new-array {p1}, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public before(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 347
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->addSiblingHtml(ILjava/lang/String;)V

    return-object p0
.end method

.method public childNode(I)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object p1
.end method

.method public abstract childNodeSize()I
.end method

.method public childNodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodeSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 248
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->EmptyNodes:Ljava/util/List;

    return-object v0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 252
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 253
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected childNodesAsArray()[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 2

    .line 279
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object v0
.end method

.method public childNodesCopy()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 266
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public clearAttributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 3

    .line 165
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 168
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    .line 767
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->doClone(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    .line 770
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 771
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 773
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 774
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 776
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodeSize()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 778
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v5

    .line 779
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v6, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->doClone(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v6

    .line 780
    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 781
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected doClone(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 804
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->partialClone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 806
    iput-object p1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 807
    :cond_0
    iget p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    :goto_0
    iput p1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    return-object v0
.end method

.method protected abstract doSetBaseUri(Ljava/lang/String;)V
.end method

.method public abstract empty()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
.end method

.method protected abstract ensureChildNodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public filter(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 0

    .line 669
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 670
    invoke-static {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->filter(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    return-object p0
.end method

.method public hasAttr(Ljava/lang/String;)Z
    .locals 2

    .line 134
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 138
    :cond_0
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected abstract hasAttributes()Z
.end method

.method public hasParent()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSameValue(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 750
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 752
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public html(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 0

    .line 708
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->outerHtml(Ljava/lang/Appendable;)V

    return-object p1
.end method

.method protected indent(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 723
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->indentAmount()I

    move-result p3

    mul-int/2addr p2, p3

    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->padding(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public nextSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 4

    .line 609
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 612
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    .line 613
    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    add-int/lit8 v2, v2, 0x1

    .line 614
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 615
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public abstract nodeName()Ljava/lang/String;
.end method

.method nodelistChanged()V
    .locals 0

    return-void
.end method

.method public outerHtml()Ljava/lang/String;
    .locals 1

    .line 682
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 683
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->outerHtml(Ljava/lang/Appendable;)V

    .line 684
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected outerHtml(Ljava/lang/Appendable;)V
    .locals 2

    .line 688
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$OuterHtmlVisitor;

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/NodeUtils;->outputSettings(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$OuterHtmlVisitor;-><init>(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->traverse(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-void
.end method

.method abstract outerHtmlHead(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract outerHtmlTail(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public ownerDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 2

    .line 327
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->root()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    .line 328
    instance-of v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object v0
.end method

.method public final parentNode()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object v0
.end method

.method public previousSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 3

    .line 626
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 629
    :cond_0
    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    if-lez v2, :cond_1

    .line 630
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public remove()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->removeChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-void
.end method

.method public removeAttr(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 153
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->removeIgnoreCase(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method protected removeChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 2

    .line 515
    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(Z)V

    .line 516
    iget v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    .line 517
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 518
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->reindexChildren(I)V

    const/4 v0, 0x0

    .line 519
    iput-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-void
.end method

.method protected reparentChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 0

    .line 574
    invoke-virtual {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->setParentNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-void
.end method

.method protected replaceChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 2

    .line 502
    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(Z)V

    .line 503
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 504
    iget-object v0, p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {v0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->removeChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 507
    :cond_1
    iget v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    .line 508
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 509
    iput-object p0, p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 510
    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->setSiblingIndex(I)V

    const/4 p2, 0x0

    .line 511
    iput-object p2, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-void
.end method

.method public replaceWith(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 1

    .line 489
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->replaceChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-void
.end method

.method public root()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 2

    move-object v0, p0

    .line 316
    :goto_0
    iget-object v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setBaseUri(Ljava/lang/String;)V
    .locals 0

    .line 196
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->doSetBaseUri(Ljava/lang/String;)V

    return-void
.end method

.method protected setParentNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 1

    .line 495
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 496
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->removeChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 498
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-void
.end method

.method protected setSiblingIndex(I)V
    .locals 0

    .line 647
    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    return-void
.end method

.method public shallowClone()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    const/4 v0, 0x0

    .line 796
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->doClone(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public siblingIndex()I
    .locals 1

    .line 643
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    return v0
.end method

.method public siblingNodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-nez v0, :cond_0

    .line 593
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 595
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    .line 596
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 597
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-eq v2, p0, :cond_1

    .line 599
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 719
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public traverse(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 0

    .line 657
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 658
    invoke-static {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->traverse(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public unwrap()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 4

    .line 462
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 463
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    .line 464
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 465
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodesAsArray()[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 466
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->remove()V

    return-object v0
.end method

.method public wrap(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 4

    .line 410
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 417
    :goto_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/NodeUtils;->parser(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseFragmentInput(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 418
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 419
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-nez v2, :cond_2

    return-object p0

    .line 422
    :cond_2
    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 423
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->getDeepChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    .line 424
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-eqz v3, :cond_3

    .line 425
    invoke-virtual {v3, p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->replaceChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 426
    :cond_3
    filled-new-array {p0}, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->addChildren([Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 429
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 431
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 432
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-ne v1, v2, :cond_4

    goto :goto_2

    .line 437
    :cond_4
    iget-object v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-eqz v3, :cond_5

    .line 438
    invoke-virtual {v3, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->removeChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 439
    :cond_5
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->after(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method
