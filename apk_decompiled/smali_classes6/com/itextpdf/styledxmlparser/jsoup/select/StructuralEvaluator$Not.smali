.class Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Not;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Not"
.end annotation


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Not;->evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Not;->evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;->matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Not;->evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":not({0})"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
