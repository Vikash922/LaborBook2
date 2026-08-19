.class public Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "RectangleSvgNodeRenderer.java"


# instance fields
.field private height:F

.field private rx:F

.field private rxPresent:Z

.field private ry:F

.field private ryPresent:Z

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    .line 61
    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rxPresent:Z

    .line 65
    iput-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ryPresent:Z

    .line 66
    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    .line 67
    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    return-void
.end method

.method private arc(FFFFFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 17

    move/from16 v0, p1

    float-to-double v0, v0

    move/from16 v2, p2

    float-to-double v2, v2

    move/from16 v4, p3

    float-to-double v4, v4

    move/from16 v6, p4

    float-to-double v6, v6

    move/from16 v8, p5

    float-to-double v8, v8

    move/from16 v10, p6

    float-to-double v10, v10

    .line 151
    invoke-static/range {v0 .. v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bezierArc(DDDDDD)Ljava/util/List;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 154
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    const/4 v3, 0x2

    .line 156
    aget-wide v5, v2, v3

    const/4 v3, 0x3

    aget-wide v7, v2, v3

    const/4 v3, 0x4

    aget-wide v9, v2, v3

    const/4 v3, 0x5

    aget-wide v11, v2, v3

    const/4 v3, 0x6

    aget-wide v13, v2, v3

    const/4 v3, 0x7

    aget-wide v15, v2, v3

    move-object/from16 v4, p7

    invoke-virtual/range {v4 .. v16}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setParameters()V
    .locals 3

    .line 131
    const-string v0, "x"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    .line 134
    :cond_0
    const-string v0, "y"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    .line 137
    :cond_1
    const-string v0, "width"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    .line 138
    const-string v0, "height"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    .line 140
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "rx"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->checkRadius(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    .line 142
    iput-boolean v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rxPresent:Z

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "ry"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->checkRadius(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    .line 146
    iput-boolean v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ryPresent:Z

    :cond_3
    return-void
.end method


# virtual methods
.method checkRadius(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 195
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;-><init>()V

    .line 196
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 11

    .line 78
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 79
    const-string v0, "% rect\n"

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 80
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->setParameters()V

    .line 81
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rxPresent:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ryPresent:Z

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ryPresent:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 83
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ryPresent:Z

    if-nez v0, :cond_3

    .line 84
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    float-to-double v1, v0

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    float-to-double v3, v0

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    float-to-double v5, v0

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    float-to-double v7, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto/16 :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 86
    const-string v0, "% circle rounded rect\n"

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 88
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->findCircularRadius(FFFF)F

    move-result v0

    .line 89
    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    float-to-double v1, v1

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    float-to-double v3, v3

    iget v5, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    float-to-double v5, v5

    iget v7, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    float-to-double v7, v7

    float-to-double v9, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->roundRectangle(DDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto/16 :goto_1

    .line 91
    :cond_4
    const-string v0, "% ellipse rounded rect\n"

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 111
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    float-to-double v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 112
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    float-to-double v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 113
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    add-float v2, v0, v1

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v3, v8

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    add-float v4, v0, v1

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    mul-float/2addr v0, v8

    add-float v5, v3, v0

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->arc(FFFFFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 114
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 115
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    add-float v2, v0, v1

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    iget v4, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    add-float v5, v3, v4

    iget v6, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    mul-float/2addr v1, v8

    sub-float v6, v0, v1

    add-float/2addr v4, v3

    const/4 v7, 0x0

    const/high16 v9, 0x42b40000    # 90.0f

    move-object v0, p0

    move v1, v2

    move v2, v5

    move v3, v6

    move v5, v7

    move v6, v9

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->arc(FFFFFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 116
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 117
    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    mul-float/2addr v0, v8

    add-float v1, v3, v0

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    add-float v4, v0, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    mul-float/2addr v2, v8

    sub-float v5, v0, v2

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    move-object v0, p0

    move v2, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->arc(FFFFFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 118
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    float-to-double v0, v0

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 119
    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v4, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->ry:F

    mul-float/2addr v0, v8

    add-float v2, v4, v0

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->rx:F

    mul-float/2addr v0, v8

    add-float v3, v1, v0

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x42b40000    # 90.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->arc(FFFFFFLcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 120
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closePath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :goto_1
    return-void
.end method

.method findCircularRadius(FFFF)F
    .locals 0

    .line 188
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    .line 189
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 190
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4

    .line 126
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->setParameters()V

    .line 127
    new-instance p1, Lcom/itextpdf/kernel/geom/Rectangle;

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->x:F

    iget v1, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->y:F

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->width:F

    iget v3, p0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;->height:F

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object p1
.end method
