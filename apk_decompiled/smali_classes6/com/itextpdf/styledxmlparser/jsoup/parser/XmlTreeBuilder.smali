.class public Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;
.source "XmlTreeBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;-><init>()V

    return-void
.end method

.method private insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-void
.end method

.method private popStackToClose(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    iget-object p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->tagName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 157
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 158
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 159
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    return-void

    .line 167
    :cond_2
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_4

    .line 168
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 169
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method defaultSettings()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;
    .locals 1

    .line 50
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->preserveCase:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    return-object v0
.end method

.method protected initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)V

    .line 56
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 58
    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->xhtml:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    .line 59
    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->escapeMode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint(Z)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    return-void
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 4

    .line 108
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->deduplicate(Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)I

    .line 112
    :cond_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    iget-object v3, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->normalizeAttributes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 113
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 114
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->isSelfClosing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isKnownTag()Z

    move-result p1

    if-nez p1, :cond_2

    .line 116
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->setSelfClosing()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    goto :goto_0

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v1
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;)V
    .locals 1

    .line 137
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->isCData()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/CDataNode;

    invoke-direct {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/CDataNode;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-direct {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-void
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;)V
    .locals 2

    .line 124
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;-><init>(Ljava/lang/String;)V

    .line 126
    iget-boolean p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->bogus:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->isXmlDeclaration()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->asXmlDeclaration()Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v0, p1

    .line 133
    :cond_0
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-void
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;)V
    .locals 4

    .line 142
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->getPublicIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->getSystemIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->getPubSysKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->setPubSysKey(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-void
.end method

.method newInstance()Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;
    .locals 1

    .line 73
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;-><init>()V

    return-object v0
.end method

.method parse(Ljava/io/Reader;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1

    .line 64
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method parse(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1

    .line 68
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    invoke-direct {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;)V

    invoke-virtual {p0, v0, p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1, p3, p4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->parseFragment(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method parseFragment(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)V

    .line 178
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->runParser()V

    .line 179
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->childNodes()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z
    .locals 2

    .line 79
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder$1;->$SwitchMap$com$itextpdf$styledxmlparser$jsoup$parser$Token$TokenType:[I

    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected token type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_0
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asDoctype()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;)V

    goto :goto_0

    .line 90
    :pswitch_1
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asCharacter()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;)V

    goto :goto_0

    .line 87
    :pswitch_2
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asComment()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;)V

    goto :goto_0

    .line 84
    :pswitch_3
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asEndTag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->popStackToClose(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;)V

    goto :goto_0

    .line 81
    :pswitch_4
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asStartTag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    :goto_0
    :pswitch_5
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
