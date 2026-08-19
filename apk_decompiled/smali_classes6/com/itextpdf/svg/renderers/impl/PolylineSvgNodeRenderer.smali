.class public Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "PolylineSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/IMarkerCapable;


# instance fields
.field protected points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 162
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;-><init>()V

    .line 163
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 6

    .line 144
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "points"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 145
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->setPoints(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 149
    const-string v0, "% polyline\n"

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 150
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    .line 152
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 153
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    .line 155
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public drawMarker(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/svg/MarkerVertexType;)V
    .locals 4

    .line 170
    sget-object v0, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_START:Lcom/itextpdf/svg/MarkerVertexType;

    invoke-virtual {v0, p2}, Lcom/itextpdf/svg/MarkerVertexType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    goto :goto_0

    .line 172
    :cond_0
    sget-object v0, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_END:Lcom/itextpdf/svg/MarkerVertexType;

    invoke-virtual {v0, p2}, Lcom/itextpdf/svg/MarkerVertexType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 176
    iget-wide v1, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    invoke-static {v1, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPtsToPx(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertDoubleToString(D)Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-wide v2, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-static {v2, v3}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPtsToPx(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertDoubleToString(D)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {p1, v1, v0, p2, p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->drawMarker(Lcom/itextpdf/svg/renderers/SvgDrawContext;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/svg/MarkerVertexType;Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;)V

    :cond_2
    return-void
.end method

.method public getAutoOrientAngle(Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;Z)D
    .locals 9

    .line 184
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 185
    new-instance v0, Lcom/itextpdf/kernel/geom/Vector;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 186
    iget-object v3, p1, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v4, "marker"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "marker-end"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/geom/Point;

    .line 188
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    .line 189
    new-instance v3, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v4, v4

    .line 190
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v7

    sub-double/2addr v5, v7

    double-to-float p1, v5

    invoke-direct {v3, v4, p1, v2}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    :goto_0
    move-object v0, v3

    goto :goto_1

    .line 191
    :cond_0
    iget-object p1, p1, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 192
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "marker-start"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/geom/Point;

    .line 194
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    .line 195
    new-instance v3, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v4, v4

    .line 196
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v7

    sub-double/2addr v5, v7

    double-to-float p1, v5

    invoke-direct {v3, v4, p1, v2}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    goto :goto_0

    .line 198
    :cond_1
    :goto_1
    new-instance p1, Lcom/itextpdf/kernel/geom/Vector;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v3, v2, v2}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 199
    invoke-static {p1, v0}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->calculateAngleBetweenTwoVectors(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)D

    move-result-wide v3

    .line 200
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result p1

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    mul-double/2addr v3, p1

    :goto_2
    return-wide v3

    :cond_3
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 11

    .line 108
    const-string p1, "points"

    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->setPoints(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 110
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/geom/Point;

    .line 111
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    .line 112
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    move-wide v5, v3

    move-wide v7, v5

    move-wide v3, v1

    .line 116
    :goto_0
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/geom/Point;

    .line 119
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v9

    .line 120
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 121
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 123
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v9

    .line 124
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 125
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-double/2addr v1, v3

    sub-double/2addr v5, v7

    .line 131
    new-instance p1, Lcom/itextpdf/kernel/geom/Rectangle;

    double-to-float v0, v3

    double-to-float v3, v7

    double-to-float v1, v1

    double-to-float v2, v5

    invoke-direct {p1, v0, v3, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    return-object v0
.end method

.method protected setPoints(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 99
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 100
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    add-int/lit8 v2, p1, 0x1

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    .line 102
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->points:Ljava/util/List;

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v5, v1

    float-to-double v1, v2

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    return-void

    .line 93
    :cond_2
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "Points attribute {0} on polyline tag does not contain a valid set of points"

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 94
    invoke-virtual {v0, p1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1
.end method
