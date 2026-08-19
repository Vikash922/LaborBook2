.class public Lcom/itextpdf/layout/borders/RoundDotsBorder;
.super Lcom/itextpdf/layout/borders/Border;
.source "RoundDotsBorder.java"


# static fields
.field private static final GAP_MODIFIER:F = 2.5f


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
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 162
    iget v4, v0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->width:F

    const/high16 v5, 0x40200000    # 2.5f

    mul-float/2addr v4, v5

    sub-float v5, p4, v2

    sub-float v6, p5, v3

    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    .line 165
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 166
    invoke-super {p0, v7, v8, v4}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v4

    .line 169
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v7

    iget-object v8, v0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    .line 170
    invoke-virtual {v8}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 171
    iget-object v7, v0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {v7, p1}, Lcom/itextpdf/layout/properties/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 172
    iget v7, v0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->width:F

    .line 173
    invoke-virtual {p1, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v7

    const/4 v8, 0x1

    .line 174
    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineCapStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v4, v9

    const/4 v10, 0x0

    .line 175
    invoke-virtual {v7, v10, v4, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 177
    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v4, p2, p3, v5, v6}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    const/4 v2, 0x2

    .line 178
    new-array v3, v2, [F

    const/4 v5, 0x0

    aput p6, v3, v5

    aput p8, v3, v8

    .line 179
    new-array v2, v2, [F

    aput p7, v2, v5

    aput p9, v2, v8

    move-object p2, p0

    move-object p3, p1

    move-object p4, v4

    move-object/from16 p5, v3

    move-object/from16 p6, v2

    move-object/from16 p7, p10

    move/from16 p8, p11

    move/from16 p9, p12

    .line 181
    invoke-virtual/range {p2 .. p9}, Lcom/itextpdf/layout/borders/RoundDotsBorder;->drawDiscontinuousBorders(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;[F[FLcom/itextpdf/layout/borders/Border$Side;FF)V

    return-void
.end method

.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 6

    .line 104
    iget p7, p0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->width:F

    const/high16 p8, 0x40200000    # 2.5f

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

    .line 108
    invoke-super {p0, v0, v1, p7}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result p7

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 110
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/borders/RoundDotsBorder;->getStartingPointsForBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)[F

    move-result-object p2

    const/4 p3, 0x0

    .line 111
    aget p3, p2, p3

    const/4 p4, 0x1

    .line 112
    aget p5, p2, p4

    const/4 p6, 0x2

    .line 113
    aget p6, p2, p6

    const/4 p8, 0x3

    .line 114
    aget p2, p2, p8

    .line 116
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p8

    iget-object v0, p0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    .line 117
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    invoke-virtual {p8, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p8

    iget v0, p0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->width:F

    .line 118
    invoke-virtual {p8, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p8

    .line 119
    invoke-virtual {p8, p4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineCapStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 120
    iget-object p4, p0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {p4, p1}, Lcom/itextpdf/layout/properties/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    const/high16 p4, 0x40000000    # 2.0f

    div-float p4, p7, p4

    const/4 p8, 0x0

    .line 121
    invoke-virtual {p1, p8, p7, p4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    float-to-double p3, p3

    float-to-double p7, p5

    .line 122
    invoke-virtual {p1, p3, p4, p7, p8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    float-to-double p3, p6

    float-to-double p5, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V
    .locals 4

    .line 132
    iget p6, p0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->width:F

    const/high16 v0, 0x40200000    # 2.5f

    mul-float/2addr p6, v0

    sub-float v0, p4, p2

    sub-float v1, p5, p3

    mul-float/2addr v0, v0

    mul-float v2, v1, v1

    add-float/2addr v0, v2

    float-to-double v2, v0

    .line 135
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 136
    invoke-super {p0, v2, v3, p6}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result p6

    .line 138
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a03126f    # 5.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 143
    iget v0, p0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->width:F

    sub-float/2addr p4, v0

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 146
    iget-object v0, p0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 147
    iget-object v0, p0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/properties/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 148
    iget v0, p0, Lcom/itextpdf/layout/borders/RoundDotsBorder;->width:F

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineCapStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p6, v0

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p1, v1, p6, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p6

    float-to-double v0, p2

    float-to-double p2, p3

    .line 152
    invoke-virtual {p6, v0, v1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p2

    float-to-double p3, p4

    float-to-double p5, p5

    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p2

    .line 153
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 154
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
