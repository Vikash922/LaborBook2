.class public Lcom/itextpdf/kernel/pdf/canvas/parser/listener/SimpleTextExtractionStrategy;
.super Ljava/lang/Object;
.source "SimpleTextExtractionStrategy.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextExtractionStrategy;


# instance fields
.field private lastEnd:Lcom/itextpdf/kernel/geom/Vector;

.field private lastStart:Lcom/itextpdf/kernel/geom/Vector;

.field private final result:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/SimpleTextExtractionStrategy;->result:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected final appendTextChunk(Ljava/lang/CharSequence;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/SimpleTextExtractionStrategy;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V
    .locals 8

    .line 65
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 66
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;

    .line 67
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/SimpleTextExtractionStrategy;->result:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 70
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getBaseline()Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/LineSegment;->getStartPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v3

    .line 72
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/LineSegment;->getEndPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v2

    if-nez p2, :cond_1

    .line 75
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/SimpleTextExtractionStrategy;->lastStart:Lcom/itextpdf/kernel/geom/Vector;

    .line 76
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/SimpleTextExtractionStrategy;->lastEnd:Lcom/itextpdf/kernel/geom/Vector;

    .line 79
    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/geom/Vector;->subtract(Lcom/itextpdf/kernel/geom/Vector;)Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v6

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/geom/Vector;->subtract(Lcom/itextpdf/kernel/geom/Vector;)Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/geom/Vector;->cross(Lcom/itextpdf/kernel/geom/Vector;)Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Vector;->lengthSquared()F

    move-result v6

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/geom/Vector;->subtract(Lcom/itextpdf/kernel/geom/Vector;)Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Vector;->lengthSquared()F

    move-result v4

    div-float/2addr v6, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v6, v4

    if-lez v4, :cond_1

    .line 92
    const-string p2, "\n"

    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/SimpleTextExtractionStrategy;->appendTextChunk(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 95
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/SimpleTextExtractionStrategy;->result:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    const/16 v0, 0x20

    if-eq p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p2, v0, :cond_2

    .line 96
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/SimpleTextExtractionStrategy;->lastEnd:Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {p2, v3}, Lcom/itextpdf/kernel/geom/Vector;->subtract(Lcom/itextpdf/kernel/geom/Vector;)Lcom/itextpdf/kernel/geom/Vector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Vector;->length()F

    move-result p2

    .line 97
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getSingleSpaceWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    .line 98
    const-string p2, " "

    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/SimpleTextExtractionStrategy;->appendTextChunk(Ljava/lang/CharSequence;)V

    .line 107
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/SimpleTextExtractionStrategy;->appendTextChunk(Ljava/lang/CharSequence;)V

    .line 109
    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/SimpleTextExtractionStrategy;->lastStart:Lcom/itextpdf/kernel/geom/Vector;

    .line 110
    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/SimpleTextExtractionStrategy;->lastEnd:Lcom/itextpdf/kernel/geom/Vector;

    :cond_3
    return-void
.end method

.method public getResultantText()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/SimpleTextExtractionStrategy;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedEvents()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
