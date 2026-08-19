.class public final Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthLastChild;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsNthLastChild"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 523
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected calculatePosition(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I
    .locals 0

    .line 528
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 531
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result p1

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->elementSiblingIndex()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method protected getPseudoClass()Ljava/lang/String;
    .locals 1

    .line 536
    const-string v0, "nth-last-child"

    return-object v0
.end method
