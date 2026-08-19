.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;
.source "DataNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;->value:Ljava/lang/Object;

    return-void
.end method

.method public static createFromEncoded(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    invoke-direct {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    return-object v0
.end method

.method public getWholeData()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "#data"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public setWholeData(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;->coreValue(Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
