.class Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Accumulator"
.end annotation


# instance fields
.field private final elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

.field private final eval:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

.field private final root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;


# direct methods
.method constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;->root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 56
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;->elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    .line 57
    iput-object p3, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;->eval:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    return-void
.end method


# virtual methods
.method public head(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 1

    .line 61
    instance-of p2, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz p2, :cond_0

    .line 62
    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 63
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;->eval:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;->root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {p2, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;->matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 64
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;->elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public tail(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 0

    return-void
.end method
