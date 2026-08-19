.class public Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "LineSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/IMarkerCapable;


# instance fields
.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->x1:F

    .line 64
    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->y1:F

    .line 65
    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->x2:F

    .line 66
    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->y2:F

    return-void
.end method

.method private setParameterss()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "x1"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->getAttribute(Ljava/util/Map;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->x1:F

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "y1"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->getAttribute(Ljava/util/Map;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->y1:F

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "x2"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->getAttribute(Ljava/util/Map;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->x2:F

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "y2"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->getAttribute(Ljava/util/Map;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->y2:F

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected canElementFill()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 108
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;-><init>()V

    .line 109
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    return-object v0
.end method

.method public doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 4

    .line 70
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 71
    const-string v0, "% line\n"

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 73
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->setParameterss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->x1:F

    float-to-double v0, v0

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->y1:F

    float-to-double v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->x2:F

    float-to-double v0, v0

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->y2:F

    float-to-double v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_0
    return-void
.end method

.method public drawMarker(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/svg/MarkerVertexType;)V
    .locals 3

    .line 117
    sget-object v0, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_START:Lcom/itextpdf/svg/MarkerVertexType;

    invoke-virtual {v0, p2}, Lcom/itextpdf/svg/MarkerVertexType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "x1"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "y1"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_0
    sget-object v0, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_END:Lcom/itextpdf/svg/MarkerVertexType;

    invoke-virtual {v0, p2}, Lcom/itextpdf/svg/MarkerVertexType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "x2"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "y2"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 125
    invoke-static {p1, v0, v1, p2, p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->drawMarker(Lcom/itextpdf/svg/renderers/SvgDrawContext;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/svg/MarkerVertexType;Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;)V

    :cond_2
    return-void
.end method

.method getAttribute(Ljava/util/Map;Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")F"
        }
    .end annotation

    .line 99
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAutoOrientAngle(Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;Z)D
    .locals 4

    .line 131
    new-instance p1, Lcom/itextpdf/kernel/geom/Vector;

    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "x2"

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->getAttribute(Ljava/util/Map;Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "x1"

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->getAttribute(Ljava/util/Map;Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "y2"

    .line 133
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->getAttribute(Ljava/util/Map;Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v3, "y1"

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->getAttribute(Ljava/util/Map;Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 135
    new-instance v0, Lcom/itextpdf/kernel/geom/Vector;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 136
    invoke-static {v0, p1}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->calculateAngleBetweenTwoVectors(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)D

    move-result-wide v0

    const/4 v3, 0x1

    .line 137
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result p1

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, p1

    :goto_0
    return-wide v0
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4

    .line 80
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->setParameterss()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget p1, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->x1:F

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->x2:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 82
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->y1:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->y2:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 84
    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->x1:F

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->x2:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 85
    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->y1:F

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;->y2:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 87
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v3

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
