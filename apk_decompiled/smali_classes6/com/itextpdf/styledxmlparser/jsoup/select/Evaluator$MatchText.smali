.class public final Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$MatchText;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MatchText"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 792
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 5

    .line 796
    instance-of p1, p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/PseudoTextElement;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 799
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->textNodes()Ljava/util/List;

    move-result-object p1

    .line 800
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 801
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/PseudoTextElement;

    .line 802
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v2

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/PseudoTextElement;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 803
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->replaceWith(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 804
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/PseudoTextElement;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 811
    const-string v0, ":matchText"

    return-object v0
.end method
