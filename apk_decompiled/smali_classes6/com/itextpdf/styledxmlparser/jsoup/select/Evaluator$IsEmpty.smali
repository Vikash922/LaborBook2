.class public final Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsEmpty;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsEmpty"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 657
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 1

    .line 660
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object p1

    .line 661
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 662
    instance-of v0, p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    if-nez v0, :cond_0

    instance-of p2, p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 668
    const-string v0, ":empty"

    return-object v0
.end method
