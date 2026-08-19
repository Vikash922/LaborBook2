.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;,
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    }
.end annotation


# static fields
.field private static final titleEval:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;


# instance fields
.field private final location:Ljava/lang/String;

.field private outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

.field private parser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

.field private quirksMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

.field private updateMetaCharset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 159
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Tag;

    const-string v1, "title"

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->titleEval:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 57
    const-string v0, "#root"

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->htmlDefault:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 46
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;->noQuirks:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->quirksMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->updateMetaCharset:Z

    .line 58
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->location:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->htmlParser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->parser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    return-void
.end method

.method public static createShell(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 2

    .line 68
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 70
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->parser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object p0

    iput-object p0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->parser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    .line 72
    const-string p0, "html"

    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p0

    .line 73
    const-string v1, "head"

    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 74
    const-string v1, "body"

    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v0
.end method

.method private ensureMetaCharsetElement()V
    .locals 7

    .line 366
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->updateMetaCharset:Z

    if-eqz v0, :cond_4

    .line 367
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v0

    .line 369
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v0, v1, :cond_1

    .line 370
    const-string v0, "meta[charset]"

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    .line 371
    const-string v1, "charset"

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->head()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    const-string v2, "meta"

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 376
    :goto_0
    const-string v0, "meta[name=charset]"

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->remove()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    goto :goto_1

    .line 377
    :cond_1
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v0, v1, :cond_4

    .line 378
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 379
    instance-of v2, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    const-string v3, "encoding"

    const-string v4, "1.0"

    const-string v5, "xml"

    const-string v6, "version"

    if-eqz v2, :cond_3

    .line 380
    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    .line 381
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 383
    invoke-virtual {v0, v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->hasAttr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 384
    invoke-virtual {v0, v6, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    goto :goto_1

    .line 386
    :cond_2
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    invoke-direct {v0, v5, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Z)V

    .line 387
    invoke-virtual {v0, v6, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 388
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 389
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->prependChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_1

    .line 392
    :cond_3
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    invoke-direct {v0, v5, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Z)V

    .line 393
    invoke-virtual {v0, v6, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 394
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 395
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->prependChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    :cond_4
    :goto_1
    return-void
.end method

.method private htmlEl()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->childElementsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "html"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 109
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 112
    :cond_1
    invoke-virtual {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method private normaliseStructure(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 5

    .line 228
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->first()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    .line 230
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 233
    invoke-virtual {p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 234
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 239
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_1

    .line 242
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 243
    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    :cond_2
    return-void
.end method

.method private normaliseTextNodes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 6

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

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

    .line 211
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-eqz v3, :cond_0

    .line 212
    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 213
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->isBlank()Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 219
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 220
    invoke-virtual {p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->removeChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 221
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v3

    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    const-string v5, " "

    invoke-direct {v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->prependChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 222
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->prependChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 5

    .line 142
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->htmlEl()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "body"

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 144
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "frameset"

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    return-object v2

    .line 147
    :cond_2
    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public charset()Ljava/nio/charset/Charset;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public charset(Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x1

    .line 294
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->updateMetaCharsetElement(Z)V

    .line 295
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 296
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->ensureMetaCharsetElement()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 342
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    .line 343
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    iput-object v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 180
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->preserveCase:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    invoke-static {p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public documentType()Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 95
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;

    if-eqz v2, :cond_1

    .line 96
    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;

    return-object v1

    .line 97
    :cond_1
    instance-of v1, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public head()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 5

    .line 124
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->htmlEl()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "head"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 126
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 129
    :cond_1
    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->prependElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public location()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->location:Ljava/lang/String;

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 265
    const-string v0, "#document"

    return-object v0
.end method

.method public normalise()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 2

    .line 189
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->htmlEl()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->head()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    .line 191
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 195
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->normaliseTextNodes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 196
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->normaliseTextNodes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 197
    invoke-direct {p0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->normaliseTextNodes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 199
    const-string v1, "head"

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->normaliseStructure(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 200
    const-string v1, "body"

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->normaliseStructure(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 202
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->ensureMetaCharsetElement()V

    return-object p0
.end method

.method public outerHtml()Ljava/lang/String;
    .locals 1

    .line 249
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public outputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method

.method public outputSettings(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 0

    .line 599
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 600
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    return-object p0
.end method

.method public parser(Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->parser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    return-object p0
.end method

.method public parser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->parser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    return-object v0
.end method

.method public quirksMode()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->quirksMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

    return-object v0
.end method

.method public quirksMode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->quirksMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p0
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->head()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->titleEval:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->selectFirst(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public title(Ljava/lang/String;)V
    .locals 2

    .line 167
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->head()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->titleEval:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->selectFirst(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->head()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    .line 171
    :cond_0
    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-void
.end method

.method public updateMetaCharsetElement(Z)V
    .locals 0

    .line 325
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->updateMetaCharset:Z

    return-void
.end method

.method public updateMetaCharsetElement()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->updateMetaCharset:Z

    return v0
.end method
