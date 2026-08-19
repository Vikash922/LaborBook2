.class final Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$TextNodeVisitor;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextNodeVisitor"
.end annotation


# instance fields
.field private accum:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1730
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$TextNodeVisitor;->accum:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public head(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 0

    .line 1734
    instance-of p2, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-eqz p2, :cond_0

    .line 1735
    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 1736
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$TextNodeVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->access$000(Ljava/lang/StringBuilder;Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;)V

    goto :goto_0

    .line 1737
    :cond_0
    instance-of p2, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz p2, :cond_2

    .line 1738
    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1739
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$TextNodeVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 1740
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->isBlock()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->access$100(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "br"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$TextNodeVisitor;->accum:Ljava/lang/StringBuilder;

    .line 1741
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1742
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$TextNodeVisitor;->accum:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    return-void
.end method

.method public tail(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 0

    .line 1749
    instance-of p2, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz p2, :cond_0

    .line 1750
    move-object p2, p1

    check-cast p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1751
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->isBlock()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->nextSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    instance-of p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$TextNodeVisitor;->accum:Ljava/lang/StringBuilder;

    .line 1752
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1753
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$TextNodeVisitor;->accum:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
