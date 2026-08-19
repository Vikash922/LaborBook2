.class public final Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsOnlyChild;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsOnlyChild"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 626
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 0

    .line 629
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz p1, :cond_0

    .line 630
    instance-of p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->siblingElements()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 634
    const-string v0, ":only-child"

    return-object v0
.end method
