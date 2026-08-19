.class public Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;
.super Ljava/lang/Object;
.source "Cleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;,
        Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;
    }
.end annotation


# instance fields
.field private final safelist:Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 64
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->safelist:Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 75
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->safelist:Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->safelist:Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    return-object p0
.end method

.method static synthetic access$100(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->createSafeElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;

    move-result-object p0

    return-object p0
.end method

.method private copySafeNodes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I
    .locals 1

    .line 176
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 177
    invoke-static {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->traverse(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 178
    iget p1, v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    return p1
.end method

.method private createSafeElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;
    .locals 7

    .line 182
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;-><init>()V

    .line 184
    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 187
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v3

    .line 188
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 189
    iget-object v6, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->safelist:Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    invoke-virtual {v6, v0, p1, v5}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->isSafeAttribute(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 190
    invoke-virtual {v1, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->safelist:Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->getEnforcedAttributes(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object p1

    .line 195
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->addAll(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 197
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;

    invoke-direct {p1, v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;I)V

    return-object p1
.end method


# virtual methods
.method public clean(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 3

    .line 87
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->baseUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->copySafeNodes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I

    .line 91
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    return-object v0
.end method

.method public isValid(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;)Z
    .locals 2

    .line 108
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->baseUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->copySafeNodes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->head()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValidBodyHtml(Ljava/lang/String;)Z
    .locals 6

    .line 117
    const-string v0, ""

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v1

    .line 118
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v2

    const/4 v3, 0x1

    .line 119
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->tracking(I)Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object v4

    .line 120
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v5

    invoke-static {p1, v5, v0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)Ljava/util/List;

    move-result-object p1

    .line 121
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->insertChildren(ILjava/util/Collection;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 122
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->copySafeNodes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I

    move-result p1

    if-nez p1, :cond_0

    .line 123
    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    return v3
.end method
