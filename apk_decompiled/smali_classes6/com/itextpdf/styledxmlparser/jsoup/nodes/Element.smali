.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$WholeTextNodeVisitor;,
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$TextNodeVisitor;,
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$NodeList;
    }
.end annotation


# static fields
.field private static final BaseUriKey:Ljava/lang/String;

.field private static final ClassSplit:Ljava/util/regex/Pattern;

.field private static final EmptyChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

.field childNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field private shadowChildrenRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;>;"
        }
    .end annotation
.end field

.field private tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->EmptyChildren:Ljava/util/List;

    .line 64
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->ClassSplit:Ljava/util/regex/Pattern;

    .line 65
    const-string v0, "baseUri"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->internalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->BaseUriKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->EmptyNodes:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    .line 91
    iput-object p3, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 92
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->setBaseUri(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 76
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/StringBuilder;Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;)V
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendNormalisedText(Ljava/lang/StringBuilder;Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    return-object p0
.end method

.method private static accumulateParents(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;)V
    .locals 2

    .line 296
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz p0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->accumulateParents(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;)V

    :cond_0
    return-void
.end method

.method private static appendNormalisedText(Ljava/lang/StringBuilder;Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;)V
    .locals 2

    .line 1309
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    .line 1311
    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->preserveWhitespace(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/CDataNode;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1314
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->appendNormalisedWhitespace(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1312
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method private static appendWhitespaceIfBr(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1318
    iget-object p0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1319
    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private static indexInList(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">(",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            "Ljava/util/List<",
            "TE;>;)I"
        }
    .end annotation

    .line 959
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 961
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isFormatAsBlock(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Z
    .locals 2

    .line 1713
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1714
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isInlineable(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Z
    .locals 2

    .line 1718
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1719
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isInline()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1720
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 1721
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->isBlock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1722
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->previousSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1723
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private nextElementSiblings(Z)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 914
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>()V

    .line 915
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-nez v1, :cond_0

    return-object v0

    .line 917
    :cond_0
    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 918
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->nextAll()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->prevAll()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private ownText(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1298
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 1299
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-eqz v2, :cond_1

    .line 1300
    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 1301
    invoke-static {p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendNormalisedText(Ljava/lang/StringBuilder;Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;)V

    goto :goto_0

    .line 1302
    :cond_1
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v2, :cond_0

    .line 1303
    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-static {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendWhitespaceIfBr(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static preserveWhitespace(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Z
    .locals 4

    .line 1324
    instance-of v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1325
    check-cast p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move v0, v1

    .line 1328
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->preserveWhitespace()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 1330
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    add-int/2addr v0, v3

    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    if-nez p0, :cond_0

    :cond_2
    return v1
.end method

.method private static searchUpForAttribute(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object p0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    .line 146
    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public addClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 1511
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1513
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v0

    .line 1514
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1515
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classNames(Ljava/util/Set;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p0
.end method

.method public after(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 0

    .line 776
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->after(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    return-object p1
.end method

.method public after(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 0

    .line 765
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->after(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 714
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 715
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/NodeUtils;->parser(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseFragmentInput(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 716
    new-array v0, v0, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->addChildren([Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 542
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 545
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->reparentChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 546
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->ensureChildNodes()Ljava/util/List;

    .line 547
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->setSiblingIndex(I)V

    return-object p0
.end method

.method public appendChildren(Ljava/util/Collection;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;)",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 560
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->insertChildren(ILjava/util/Collection;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p0
.end method

.method public appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 663
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/NodeUtils;->parser(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->settings()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v0
.end method

.method public appendText(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 688
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 689
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p0
.end method

.method public appendTo(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 0

    .line 571
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 572
    invoke-virtual {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p0
.end method

.method public attr(Ljava/lang/String;Z)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Z)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    return-object p0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 0

    .line 244
    invoke-super {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object p0
.end method

.method public attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    return-object v0
.end method

.method public baseUri()Ljava/lang/String;
    .locals 1

    .line 136
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->BaseUriKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->searchUpForAttribute(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public before(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 0

    .line 753
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->before(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    return-object p1
.end method

.method public before(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 0

    .line 742
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->before(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    return-object p1
.end method

.method public child(I)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p1
.end method

.method childElementsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodeSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->EmptyChildren:Ljava/util/List;

    return-object v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->shadowChildrenRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 358
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 359
    instance-of v4, v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v4, :cond_2

    .line 360
    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->shadowChildrenRef:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    :cond_4
    return-object v0
.end method

.method public childNodeSize()I
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 340
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public childrenSize()I
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public className()Ljava/lang/String;
    .locals 1

    .line 1419
    const-string v0, "class"

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public classNames(Ljava/util/Set;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;"
        }
    .end annotation

    .line 1443
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1444
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "class"

    if-eqz v0, :cond_0

    .line 1445
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 1447
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v0

    const-string v2, " "

    invoke-static {p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    :goto_0
    return-object p0
.end method

.method public classNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1429
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->ClassSplit:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 1430
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1431
    const-string v0, ""

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public clearAttributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 1671
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    .line 1672
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->clearAttributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    const/4 v0, 0x0

    .line 1673
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    :cond_0
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1649
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v0
.end method

.method public closest(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3

    .line 522
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 524
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->root()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-object v1, p0

    .line 526
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;->matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 528
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method public closest(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 0

    .line 511
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->closest(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public cssSelector()Ljava/lang/String;
    .locals 5

    .line 810
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->ownerDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 815
    invoke-virtual {v3, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v3

    .line 816
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {v3, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1

    :cond_0
    return-object v0

    .line 824
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3a

    const/16 v4, 0x7c

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v0

    const-string v4, "."

    invoke-static {v0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/16 v4, 0x2e

    .line 828
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 833
    :cond_3
    const-string v0, " > "

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 835
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 836
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->elementSiblingIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, ":nth-child({0})"

    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->cssSelector()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 831
    :cond_5
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public data()Ljava/lang/String;
    .locals 4

    .line 1390
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1392
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 1393
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    if-eqz v3, :cond_1

    .line 1394
    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    .line 1395
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1396
    :cond_1
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;

    if-eqz v3, :cond_2

    .line 1397
    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;

    .line 1398
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1399
    :cond_2
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v3, :cond_3

    .line 1400
    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1401
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->data()Ljava/lang/String;

    move-result-object v2

    .line 1402
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1403
    :cond_3
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/CDataNode;

    if-eqz v3, :cond_0

    .line 1406
    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/CDataNode;

    .line 1407
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/CDataNode;->getWholeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1410
    :cond_4
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dataNodes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 413
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    if-eqz v3, :cond_0

    .line 414
    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public dataset()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->dataset()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected doClone(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 2

    .line 1660
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->doClone(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1661
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    iput-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 1662
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$NodeList;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$NodeList;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;I)V

    iput-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    .line 1663
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method protected doSetBaseUri(Ljava/lang/String;)V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->BaseUriKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    return-void
.end method

.method public elementSiblingIndex()I
    .locals 1

    .line 940
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 942
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->indexInList(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public empty()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method protected ensureChildNodes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->EmptyNodes:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 117
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$NodeList;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$NodeList;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;I)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    return-object v0
.end method

.method public filter(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 0

    .line 1696
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->filter(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p1
.end method

.method public firstElementSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3

    .line 926
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_1

    .line 928
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    .line 929
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    return-object p0
.end method

.method public getAllElements()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1241
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AllElements;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AllElements;-><init>()V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 991
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 993
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Id;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    .line 994
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 995
    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getElementsByAttribute(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1024
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1027
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Attribute;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Attribute;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeStarting(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1037
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1040
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeStarting;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeStarting;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValue(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1051
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValue;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValueContaining(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1095
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueContaining;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueContaining;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValueEnding(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1084
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueEnding;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueEnding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 3

    .line 1121
    :try_start_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/util/regex/Pattern;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 1123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pattern syntax error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/util/regex/Pattern;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1105
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValueNot(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1062
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueNot;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValueStarting(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1073
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueStarting;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueStarting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1012
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 1014
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Class;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Class;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByIndexEquals(I)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1152
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEquals;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEquals;-><init>(I)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByIndexGreaterThan(I)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1143
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexGreaterThan;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexGreaterThan;-><init>(I)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByIndexLessThan(I)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1134
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexLessThan;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexLessThan;-><init>(I)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByTag(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 975
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 976
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 978
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Tag;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsContainingOwnText(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1174
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsOwnText;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsOwnText;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsContainingText(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1163
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsText;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsText;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsMatchingOwnText(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 4

    .line 1228
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->getElementsMatchingOwnText(Ljava/util/regex/Pattern;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    .line 1230
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pattern syntax error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getElementsMatchingOwnText(Ljava/util/regex/Pattern;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1213
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$MatchesOwn;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$MatchesOwn;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsMatchingText(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 4

    .line 1199
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->getElementsMatchingText(Ljava/util/regex/Pattern;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    .line 1201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pattern syntax error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getElementsMatchingText(Ljava/util/regex/Pattern;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 1184
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Matches;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Matches;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method protected hasAttributes()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasChildNodes()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->EmptyNodes:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClass(Ljava/lang/String;)Z
    .locals 13

    .line 1459
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1462
    :cond_0
    const-string v2, "class"

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1463
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1464
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v2, :cond_7

    if-ge v2, v9, :cond_1

    goto :goto_2

    :cond_1
    if-ne v2, v9, :cond_2

    .line 1472
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    move v3, v1

    move v10, v3

    move v11, v10

    :goto_0
    if-ge v11, v2, :cond_6

    .line 1479
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    const/4 v12, 0x1

    if-eqz v4, :cond_4

    if-eqz v3, :cond_5

    sub-int v3, v11, v10

    if-ne v3, v9, :cond_3

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v5, v10

    move-object v6, p1

    move v8, v9

    .line 1482
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    return v12

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    move v10, v11

    move v3, v12

    :cond_5
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    sub-int/2addr v2, v10

    if-ne v2, v9, :cond_7

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v5, v10

    move-object v6, p1

    move v8, v9

    .line 1498
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1

    :cond_7
    :goto_2
    return v1
.end method

.method public hasText()Z
    .locals 4

    .line 1366
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 1367
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1368
    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 1369
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->isBlank()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 1371
    :cond_1
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v2, :cond_0

    .line 1372
    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1373
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public html(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 0

    .line 1642
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->empty()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 1643
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->append(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p0
.end method

.method public html(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 3

    .line 1628
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1630
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->outerHtml(Ljava/lang/Appendable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public html()Ljava/lang/String;
    .locals 2

    .line 1620
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1621
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->html(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 1622
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1623
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/NodeUtils;->outputSettings(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public id(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 232
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 233
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object p0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public insertChild(ILcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 0

    .line 652
    filled-new-array {p2}, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->insertChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public insertChildren(ILjava/util/Collection;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;)",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;"
        }
    .end annotation

    .line 612
    const-string v0, "Children collection to be inserted must not be null."

    invoke-static {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodeSize()I

    move-result v0

    if-gez p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int/2addr p1, v1

    :cond_0
    const/4 v1, 0x0

    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 615
    :goto_0
    const-string v2, "Insert position out of bounds."

    invoke-static {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 618
    new-array p2, v1, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 619
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public varargs insertChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 633
    const-string v0, "Children collection to be inserted must not be null."

    invoke-static {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodeSize()I

    move-result v0

    if-gez p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int/2addr p1, v1

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 636
    :goto_0
    const-string v1, "Insert position out of bounds."

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 638
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public is(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)Z
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->root()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {p1, v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;->matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result p1

    return p1
.end method

.method public is(Ljava/lang/String;)Z
    .locals 0

    .line 491
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->is(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)Z

    move-result p1

    return p1
.end method

.method public isBlock()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isBlock()Z

    move-result v0

    return v0
.end method

.method public lastElementSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3

    .line 950
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_1

    .line 952
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    .line 953
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    return-object p0
.end method

.method public nextElementSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 4

    .line 869
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 870
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 871
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    .line 872
    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->indexInList(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/util/List;)I

    move-result v2

    .line 873
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    if-le v3, v2, :cond_1

    .line 874
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public nextElementSiblings()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    const/4 v0, 0x1

    .line 885
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nextElementSiblings(Z)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method nodelistChanged()V
    .locals 1

    .line 372
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->nodelistChanged()V

    const/4 v0, 0x0

    .line 373
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->shadowChildrenRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public normalName()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->normalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1580
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->isFormatAsBlock(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->isInlineable(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1581
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 1582
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1583
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->indent(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    goto :goto_0

    .line 1585
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->indent(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    :cond_1
    :goto_0
    const/16 p2, 0x3c

    .line 1588
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1589
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->html(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    .line 1592
    :cond_2
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/16 v0, 0x3e

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isSelfClosing()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1593
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object p2

    sget-object p3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1594
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 1596
    :cond_3
    const-string p2, " />"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1599
    :cond_4
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1603
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isSelfClosing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1604
    :cond_0
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    .line 1605
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-nez v0, :cond_2

    .line 1607
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->indent(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    .line 1608
    :cond_2
    const-string p2, "</"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_3
    return-void
.end method

.method public ownText()Ljava/lang/String;
    .locals 1

    .line 1292
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1293
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->ownText(Ljava/lang/StringBuilder;)V

    .line 1294
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object v0
.end method

.method public parents()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 290
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>()V

    .line 291
    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->accumulateParents(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;)V

    return-object v0
.end method

.method public prepend(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 727
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 728
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/NodeUtils;->parser(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseFragmentInput(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 729
    new-array v1, v0, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public prependChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 583
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 585
    filled-new-array {p1}, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public prependChildren(Ljava/util/Collection;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;)",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->insertChildren(ILjava/util/Collection;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p0
.end method

.method public prependElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 676
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/NodeUtils;->parser(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->settings()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->prependChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v0
.end method

.method public prependText(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 701
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 702
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->prependChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p0
.end method

.method public previousElementSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3

    .line 894
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 895
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 896
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    .line 897
    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->indexInList(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    .line 899
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public previousElementSiblings()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    const/4 v0, 0x0

    .line 910
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nextElementSiblings(Z)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public removeAttr(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 0

    .line 1681
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->removeAttr(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p1
.end method

.method public removeClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 1527
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1529
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v0

    .line 1530
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1531
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classNames(Ljava/util/Set;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p0
.end method

.method public root()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 1686
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->root()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v0
.end method

.method public select(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 0

    .line 453
    invoke-static {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->select(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 0

    .line 442
    invoke-static {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->select(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public selectFirst(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 0

    .line 480
    invoke-static {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->findFirst(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public selectFirst(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 0

    .line 468
    invoke-static {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->selectFirst(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public shallowClone()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 5

    .line 1655
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->clone()Ljava/lang/Object;

    move-result-object v3

    :goto_0
    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-object v4, v3

    check-cast v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    return-object v0
.end method

.method public siblingElements()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>(I)V

    return-object v0

    .line 850
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 851
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    .line 852
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>(I)V

    .line 853
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eq v2, p0, :cond_1

    .line 855
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    return-object v0
.end method

.method public tagName(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 193
    const-string v0, "Tag name must not be empty."

    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/NodeUtils;->parser(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->settings()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    return-object p0
.end method

.method public tagName()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 1347
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1348
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->empty()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 1350
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->ownerDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1352
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->parser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->isContentForTagData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    .line 1355
    :cond_0
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    :goto_0
    return-object p0
.end method

.method public text()Ljava/lang/String;
    .locals 2

    .line 1261
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1262
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$TextNodeVisitor;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$TextNodeVisitor;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->traverse(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 1263
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public textNodes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;",
            ">;"
        }
    .end annotation

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 395
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-eqz v3, :cond_0

    .line 396
    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toggleClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 1543
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1545
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v0

    .line 1546
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1547
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1549
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1550
    :goto_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classNames(Ljava/util/Set;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p0
.end method

.method public traverse(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 0

    .line 1691
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->traverse(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p1
.end method

.method public val(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 1572
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    .line 1575
    :cond_0
    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    :goto_0
    return-object p0
.end method

.method public val()Ljava/lang/String;
    .locals 2

    .line 1560
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1563
    :cond_0
    const-string v0, "value"

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wholeText()Ljava/lang/String;
    .locals 2

    .line 1274
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1275
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$WholeTextNodeVisitor;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$WholeTextNodeVisitor;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->traverse(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 1277
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wrap(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 0

    .line 797
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->wrap(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    return-object p1
.end method
