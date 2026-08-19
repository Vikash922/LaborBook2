.class public Lcom/itextpdf/kernel/pdf/canvas/parser/listener/FilteredTextEventListener;
.super Lcom/itextpdf/kernel/pdf/canvas/parser/listener/FilteredEventListener;
.source "FilteredTextEventListener.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;


# direct methods
.method public varargs constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;[Lcom/itextpdf/kernel/pdf/canvas/parser/filter/IEventFilter;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/FilteredEventListener;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;[Lcom/itextpdf/kernel/pdf/canvas/parser/filter/IEventFilter;)V

    return-void
.end method


# virtual methods
.method public getResultantText()Ljava/lang/String;
    .locals 4

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/FilteredTextEventListener;->delegates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;

    .line 74
    instance-of v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;

    if-eqz v3, :cond_0

    .line 75
    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;

    invoke-interface {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;->getResultantText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
