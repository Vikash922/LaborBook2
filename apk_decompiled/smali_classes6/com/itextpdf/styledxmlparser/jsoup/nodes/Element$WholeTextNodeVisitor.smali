.class final Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$WholeTextNodeVisitor;
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
    name = "WholeTextNodeVisitor"
.end annotation


# instance fields
.field private accum:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1763
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$WholeTextNodeVisitor;->accum:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public head(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 0

    .line 1767
    instance-of p2, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-eqz p2, :cond_0

    .line 1768
    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 1769
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$WholeTextNodeVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public tail(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 0

    return-void
.end method
