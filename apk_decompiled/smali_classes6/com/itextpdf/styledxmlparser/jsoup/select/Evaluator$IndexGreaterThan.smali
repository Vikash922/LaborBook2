.class public final Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexGreaterThan;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEvaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexGreaterThan"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 387
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEvaluator;-><init>(I)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 0

    .line 392
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->elementSiblingIndex()I

    move-result p1

    iget p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexGreaterThan;->index:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 397
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexGreaterThan;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":gt({0})"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
