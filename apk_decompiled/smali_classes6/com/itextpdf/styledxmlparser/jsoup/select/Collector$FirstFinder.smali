.class Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$FirstFinder;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstFinder"
.end annotation


# instance fields
.field private final eval:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

.field match:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

.field private final root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;


# direct methods
.method constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$FirstFinder;->match:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 93
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$FirstFinder;->root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 94
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$FirstFinder;->eval:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    return-void
.end method


# virtual methods
.method public head(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;
    .locals 1

    .line 99
    instance-of p2, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz p2, :cond_0

    .line 100
    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 101
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$FirstFinder;->eval:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$FirstFinder;->root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {p2, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;->matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 102
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$FirstFinder;->match:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 103
    sget-object p1, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;->STOP:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    return-object p1

    .line 106
    :cond_0
    sget-object p1, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    return-object p1
.end method

.method public tail(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;
    .locals 0

    .line 111
    sget-object p1, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    return-object p1
.end method
