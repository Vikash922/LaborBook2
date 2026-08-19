.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;
.source "Comment.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->value:Ljava/lang/Object;

    return-void
.end method

.method private static isXmlDeclarationData(Ljava/lang/String;)Z
    .locals 2

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public asXmlDeclaration()Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;
    .locals 5

    .line 99
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->isXmlDeclarationData(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 107
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->htmlParser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v2

    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->preserveCase:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->settings(Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->baseUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 111
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->child(I)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    .line 112
    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/NodeUtils;->parser(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->settings()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    move-result-object v1

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "!"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v3, v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Z)V

    .line 113
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->addAll(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    :cond_1
    return-object v3
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->coreValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isXmlDeclaration()Z
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->isXmlDeclarationData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "#comment"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->siblingIndex()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    instance-of v0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->indent(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    .line 63
    :cond_2
    const-string p2, "<!--"

    .line 64
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, "-->"

    .line 66
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public setData(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->coreValue(Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
