.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/CDataNode;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
.source "CDataNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/CDataNode;

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "#cdata"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    const-string p2, "<![CDATA["

    .line 54
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 55
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/CDataNode;->getWholeText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    .line 61
    :try_start_0
    const-string p2, "]]>"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 63
    new-instance p2, Lcom/itextpdf/styledxmlparser/jsoup/UncheckedIOException;

    invoke-direct {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/CDataNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
