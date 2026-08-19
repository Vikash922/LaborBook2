.class public abstract Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CssNthEvaluator"
.end annotation


# instance fields
.field protected final a:I

.field protected final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 467
    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 462
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;-><init>()V

    .line 463
    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    .line 464
    iput p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    return-void
.end method


# virtual methods
.method protected abstract calculatePosition(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I
.end method

.method protected abstract getPseudoClass()Ljava/lang/String;
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 4

    .line 472
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 473
    instance-of v0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->calculatePosition(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I

    move-result p1

    .line 476
    iget p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    const/4 v0, 0x1

    if-nez p2, :cond_2

    iget p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    if-ne p1, p2, :cond_1

    move v1, v0

    :cond_1
    return v1

    .line 478
    :cond_2
    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    sub-int v3, p1, v2

    mul-int/2addr v3, p2

    if-ltz v3, :cond_3

    sub-int/2addr p1, v2

    rem-int/2addr p1, p2

    if-nez p1, :cond_3

    move v1, v0

    :cond_3
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 483
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    if-nez v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->getPseudoClass()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":{0}({1})"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 485
    :cond_0
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    if-nez v0, :cond_1

    .line 486
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->getPseudoClass()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":{0}({1}n)"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 487
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->getPseudoClass()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":{0}({1}n{2})"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
