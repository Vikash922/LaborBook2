.class public Lcom/itextpdf/layout/borders/DottedBorder;
.super Lcom/itextpdf/layout/borders/Border;
.source "DottedBorder.java"


# static fields
.field private static final GAP_MODIFIER:F = 1.5f


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/borders/Border;-><init>(F)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;FF)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 138
    iget v4, v0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    sub-float v5, p4, v2

    sub-float v6, p5, v3

    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    .line 141
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 142
    invoke-super {p0, v7, v8, v4}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v4

    .line 143
    iget v7, v0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    cmpl-float v7, v4, v7

    if-lez v7, :cond_0

    .line 144
    iget v7, v0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    sub-float/2addr v4, v7

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v7

    iget v8, v0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    .line 149
    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v7

    iget-object v8, v0, Lcom/itextpdf/layout/borders/DottedBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    .line 150
    invoke-virtual {v8}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 151
    iget-object v7, v0, Lcom/itextpdf/layout/borders/DottedBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {v7, p1}, Lcom/itextpdf/layout/properties/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 152
    iget v7, v0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    iget v8, v0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v4, v9

    add-float/2addr v8, v9

    invoke-virtual {p1, v7, v4, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 154
    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v4, p2, p3, v5, v6}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    const/4 v2, 0x2

    .line 155
    new-array v3, v2, [F

    const/4 v5, 0x0

    aput p6, v3, v5

    const/4 v6, 0x1

    aput p8, v3, v6

    .line 156
    new-array v2, v2, [F

    aput p7, v2, v5

    aput p9, v2, v6

    move-object p2, p0

    move-object p3, p1

    move-object p4, v4

    move-object p5, v3

    move-object/from16 p6, v2

    move-object/from16 p7, p10

    move/from16 p8, p11

    move/from16 p9, p12

    .line 158
    invoke-virtual/range {p2 .. p9}, Lcom/itextpdf/layout/borders/DottedBorder;->drawDiscontinuousBorders(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;[F[FLcom/itextpdf/layout/borders/Border$Side;FF)V

    return-void
.end method

.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 6

    .line 104
    iget p7, p0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    const/high16 p8, 0x3fc00000    # 1.5f

    mul-float/2addr p7, p8

    sub-float p8, p4, p2

    sub-float v0, p5, p3

    mul-float/2addr p8, p8

    mul-float/2addr v0, v0

    add-float/2addr p8, v0

    float-to-double v0, p8

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 109
    iget p8, p0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    add-float/2addr p7, p8

    invoke-super {p0, v0, v1, p7}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result p7

    .line 110
    iget p8, p0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    cmpl-float p8, p7, p8

    if-lez p8, :cond_0

    .line 111
    iget p8, p0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    sub-float/2addr p7, p8

    :cond_0
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 114
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/borders/DottedBorder;->getStartingPointsForBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)[F

    move-result-object p2

    const/4 p3, 0x0

    .line 115
    aget p3, p2, p3

    const/4 p4, 0x1

    .line 116
    aget p4, p2, p4

    const/4 p5, 0x2

    .line 117
    aget p5, p2, p5

    const/4 p6, 0x3

    .line 118
    aget p2, p2, p6

    .line 121
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p6

    iget p8, p0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    .line 122
    invoke-virtual {p6, p8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p6

    iget-object p8, p0, Lcom/itextpdf/layout/borders/DottedBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    .line 123
    invoke-virtual {p8}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object p8

    invoke-virtual {p6, p8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 124
    iget-object p6, p0, Lcom/itextpdf/layout/borders/DottedBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {p6, p1}, Lcom/itextpdf/layout/properties/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 125
    iget p6, p0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    iget p8, p0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p7, v0

    add-float/2addr p8, v0

    .line 126
    invoke-virtual {p1, p6, p7, p8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    float-to-double p6, p3

    float-to-double p3, p4

    .line 127
    invoke-virtual {p1, p6, p7, p3, p4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    float-to-double p3, p5

    float-to-double p5, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V
    .locals 3

    .line 166
    iget p6, p0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p6, v0

    sub-float v0, p4, p2

    sub-float v1, p5, p3

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 169
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 171
    iget v2, p0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    add-float/2addr p6, v2

    invoke-super {p0, v0, v1, p6}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result p6

    .line 172
    iget v0, p0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    cmpl-float v0, p6, v0

    if-lez v0, :cond_0

    .line 173
    iget v0, p0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    sub-float/2addr p6, v0

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    .line 178
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/borders/DottedBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    .line 179
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 180
    iget-object v0, p0, Lcom/itextpdf/layout/borders/DottedBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/properties/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 181
    iget v0, p0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    iget v1, p0, Lcom/itextpdf/layout/borders/DottedBorder;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p6, v2

    add-float/2addr v1, v2

    .line 182
    invoke-virtual {p1, v0, p6, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    float-to-double v0, p2

    float-to-double p2, p3

    .line 183
    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    float-to-double p2, p4

    float-to-double p4, p5

    .line 184
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
