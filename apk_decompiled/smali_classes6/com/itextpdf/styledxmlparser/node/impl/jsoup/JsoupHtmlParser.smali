.class public Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupHtmlParser;
.super Ljava/lang/Object;
.source "JsoupHtmlParser.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/IXmlParser;


# static fields
.field private static logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupHtmlParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupHtmlParser;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private wrapJsoupHierarchy(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/node/INode;
    .locals 3

    .line 115
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDocumentNode;

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDocumentNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;)V

    goto :goto_1

    .line 117
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupTextNode;

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupTextNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;)V

    goto :goto_1

    .line 119
    :cond_1
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_2

    .line 120
    new-instance v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    goto :goto_1

    .line 121
    :cond_2
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    if-eqz v0, :cond_3

    .line 122
    new-instance v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDataNode;

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDataNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;)V

    goto :goto_1

    .line 123
    :cond_3
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;

    if-eqz v0, :cond_4

    .line 124
    new-instance v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDocumentTypeNode;

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDocumentTypeNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;)V

    goto :goto_1

    .line 125
    :cond_4
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 127
    :cond_5
    sget-object v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupHtmlParser;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Could not map node type: {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 130
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 131
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupHtmlParser;->wrapJsoupHierarchy(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 133
    invoke-interface {v0, v1}, Lcom/itextpdf/styledxmlparser/node/INode;->addChild(Lcom/itextpdf/styledxmlparser/node/INode;)V

    goto :goto_2

    :cond_7
    return-object v0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IDocumentNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const-string v0, ""

    .line 84
    invoke-static {p1, p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/Jsoup;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object p1

    .line 85
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupHtmlParser;->wrapJsoupHierarchy(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p1

    .line 86
    instance-of p2, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz p2, :cond_0

    .line 87
    check-cast p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    return-object p1

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IDocumentNode;
    .locals 1

    .line 98
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/Jsoup;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupHtmlParser;->wrapJsoupHierarchy(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p1

    .line 100
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    return-object p1

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
