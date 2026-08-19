.class Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmediatePreviousSibling"
.end annotation


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;->evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 154
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->previousElementSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 155
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;->evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;->matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;->evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{0} + "

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
