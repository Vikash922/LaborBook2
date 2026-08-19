.class public Lcom/itextpdf/kernel/pdf/canvas/parser/filter/TextRegionEventFilter;
.super Ljava/lang/Object;
.source "TextRegionEventFilter.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/parser/filter/IEventFilter;


# instance fields
.field private final filterRect:Lcom/itextpdf/kernel/geom/Rectangle;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/filter/TextRegionEventFilter;->filterRect:Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method


# virtual methods
.method public accept(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)Z
    .locals 5

    .line 71
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 72
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;

    .line 74
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getBaseline()Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/LineSegment;->getStartPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object p2

    .line 76
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/LineSegment;->getEndPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object p1

    .line 78
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v1

    const/4 v2, 0x1

    .line 79
    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result p2

    .line 80
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v3

    .line 81
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result p1

    .line 83
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/filter/TextRegionEventFilter;->filterRect:Lcom/itextpdf/kernel/geom/Rectangle;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1, p2, v3, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->intersectsLine(FFFF)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method
