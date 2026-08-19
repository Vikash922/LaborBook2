.class public Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextMarginFinder;
.super Ljava/lang/Object;
.source "TextMarginFinder.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;


# instance fields
.field private textRectangle:Lcom/itextpdf/kernel/geom/Rectangle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextMarginFinder;->textRectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method


# virtual methods
.method public eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V
    .locals 4

    .line 65
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    if-ne p2, v0, :cond_1

    .line 66
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;

    .line 67
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextMarginFinder;->textRectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p2, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getDescentLine()Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/LineSegment;->getBoundingRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextMarginFinder;->textRectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_0

    .line 70
    :cond_0
    new-array v3, v2, [Lcom/itextpdf/kernel/geom/Rectangle;

    aput-object p2, v3, v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getDescentLine()Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/LineSegment;->getBoundingRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-static {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextMarginFinder;->textRectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 72
    :goto_0
    new-array p2, v2, [Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextMarginFinder;->textRectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    aput-object v2, p2, v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getAscentLine()Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/LineSegment;->getBoundingRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextMarginFinder;->textRectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    return-void

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Event type not supported: {0}"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 80
    new-instance v0, Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTextRectangle()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextMarginFinder;->textRectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method
