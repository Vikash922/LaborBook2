.class public Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthLastOfType;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsNthLastOfType"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 571
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected calculatePosition(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I
    .locals 4

    .line 577
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 580
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    .line 581
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->elementSiblingIndex()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 582
    invoke-virtual {p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v2

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected getPseudoClass()Ljava/lang/String;
    .locals 1

    .line 589
    const-string v0, "nth-last-of-type"

    return-object v0
.end method
