.class final Lcom/itextpdf/styledxmlparser/jsoup/nodes/NodeUtils;
.super Ljava/lang/Object;
.source "NodeUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static outputSettings(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ownerDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object p0

    return-object p0
.end method

.method static parser(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ownerDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->parser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->parser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;)V

    :goto_0
    return-object p0
.end method
