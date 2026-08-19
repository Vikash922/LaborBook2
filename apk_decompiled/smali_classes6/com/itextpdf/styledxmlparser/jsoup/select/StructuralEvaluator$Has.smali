.class Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Has;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Has"
.end annotation


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Has;->evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 2

    .line 46
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->getAllElements()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eq v0, p2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Has;->evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    invoke-virtual {v1, p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;->matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Has;->evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":has({0})"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
