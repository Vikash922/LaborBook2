.class public Lcom/itextpdf/layout/borders/DoubleBorder;
.super Lcom/itextpdf/layout/borders/Border;
.source "DoubleBorder.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/borders/Border;-><init>(F)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 0

    .line 75
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
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 106
    iget v0, v6, Lcom/itextpdf/layout/borders/DoubleBorder;->width:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float v12, v0, v1

    div-float v13, p7, v1

    div-float v14, p8, v1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    .line 110
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/borders/DoubleBorder;->getBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)Lcom/itextpdf/layout/borders/Border$Side;

    move-result-object v0

    .line 112
    sget-object v1, Lcom/itextpdf/layout/borders/DoubleBorder$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v15, v3

    goto :goto_1

    :cond_0
    sub-float v1, v10, v12

    add-float v15, v11, v14

    sub-float v16, v8, v12

    sub-float v17, v9, v13

    goto :goto_0

    :cond_1
    sub-float v1, v10, v14

    sub-float v15, v11, v12

    add-float v16, v8, v13

    sub-float v17, v9, v12

    goto :goto_0

    :cond_2
    add-float v1, v10, v12

    sub-float v15, v11, v14

    add-float v16, v8, v12

    add-float v17, v9, v13

    goto :goto_0

    :cond_3
    add-float v1, v10, v14

    add-float v15, v11, v12

    sub-float v16, v8, v13

    add-float v17, v9, v12

    :goto_0
    move/from16 v2, v16

    move/from16 v3, v17

    .line 139
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    iget-object v5, v6, Lcom/itextpdf/layout/borders/DoubleBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    .line 140
    invoke-virtual {v5}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 141
    iget-object v4, v6, Lcom/itextpdf/layout/borders/DoubleBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {v4, v7}, Lcom/itextpdf/layout/properties/TransparentColor;->applyFillTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    float-to-double v4, v8

    move/from16 v17, v13

    move/from16 v18, v14

    float-to-double v13, v9

    .line 143
    invoke-virtual {v7, v4, v5, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v6

    float-to-double v7, v10

    float-to-double v9, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v6

    float-to-double v7, v1

    float-to-double v9, v15

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v6

    float-to-double v7, v2

    float-to-double v9, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 145
    sget-object v4, Lcom/itextpdf/layout/borders/DoubleBorder$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    if-eq v0, v5, :cond_7

    const/4 v5, 0x2

    if-eq v0, v5, :cond_6

    const/4 v5, 0x3

    if-eq v0, v5, :cond_5

    const/4 v5, 0x4

    if-eq v0, v5, :cond_4

    move/from16 v4, p2

    move/from16 v6, p3

    move/from16 v0, p4

    move v5, v11

    goto :goto_2

    :cond_4
    mul-float/2addr v12, v4

    sub-float v0, p4, v12

    mul-float v14, v18, v4

    add-float v5, v11, v14

    sub-float/2addr v1, v12

    add-float/2addr v15, v14

    sub-float/2addr v2, v12

    mul-float v13, v17, v4

    sub-float/2addr v3, v13

    sub-float v4, p2, v12

    sub-float v6, p3, v13

    goto :goto_2

    :cond_5
    mul-float v14, v18, v4

    sub-float v0, p4, v14

    mul-float/2addr v12, v4

    sub-float v5, v11, v12

    sub-float/2addr v1, v14

    sub-float/2addr v15, v12

    mul-float v13, v17, v4

    add-float/2addr v2, v13

    sub-float/2addr v3, v12

    add-float v4, p2, v13

    sub-float v6, p3, v12

    goto :goto_2

    :cond_6
    mul-float/2addr v12, v4

    add-float v0, p4, v12

    mul-float v14, v18, v4

    sub-float v5, v11, v14

    add-float/2addr v1, v12

    sub-float/2addr v15, v14

    add-float/2addr v2, v12

    mul-float v13, v17, v4

    add-float/2addr v3, v13

    add-float v4, p2, v12

    add-float v6, p3, v13

    goto :goto_2

    :cond_7
    mul-float v14, v18, v4

    add-float v0, p4, v14

    mul-float/2addr v12, v4

    add-float v5, v11, v12

    add-float/2addr v1, v14

    add-float/2addr v15, v12

    mul-float v13, v17, v4

    sub-float/2addr v2, v13

    add-float/2addr v3, v12

    sub-float v4, p2, v13

    add-float v6, p3, v12

    :goto_2
    float-to-double v7, v4

    float-to-double v9, v6

    move-object/from16 v4, p1

    .line 188
    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    float-to-double v11, v0

    float-to-double v5, v5

    invoke-virtual {v4, v11, v12, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v4, v1

    float-to-double v11, v15

    invoke-virtual {v0, v4, v5, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, v2

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V
    .locals 8

    .line 197
    iget v0, p0, Lcom/itextpdf/layout/borders/DoubleBorder;->width:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 199
    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/layout/borders/DoubleBorder;->getBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)Lcom/itextpdf/layout/borders/Border$Side;

    move-result-object p6

    .line 201
    sget-object v1, Lcom/itextpdf/layout/borders/DoubleBorder$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {p6}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p2, v0

    sub-float/2addr p4, v0

    add-float/2addr p3, v0

    sub-float/2addr p5, v0

    goto :goto_0

    :cond_1
    sub-float/2addr p3, v0

    move p5, p3

    .line 219
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 220
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    iget-object v4, p0, Lcom/itextpdf/layout/borders/DoubleBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    .line 221
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 222
    iget-object v1, p0, Lcom/itextpdf/layout/borders/DoubleBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/properties/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    float-to-double v4, p2

    float-to-double v6, p3

    .line 224
    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    float-to-double v4, p4

    float-to-double v6, p5

    .line 225
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 229
    sget-object v1, Lcom/itextpdf/layout/borders/DoubleBorder$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {p6}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result p6

    aget p6, v1, p6

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p6, v3, :cond_5

    if-eq p6, v2, :cond_4

    const/4 v2, 0x3

    if-eq p6, v2, :cond_3

    const/4 v2, 0x4

    if-eq p6, v2, :cond_2

    goto :goto_2

    :cond_2
    mul-float/2addr v1, v0

    add-float/2addr p5, v1

    sub-float/2addr p2, v1

    goto :goto_1

    :cond_3
    mul-float/2addr v1, v0

    sub-float/2addr p4, v1

    sub-float/2addr p5, v1

    add-float/2addr p2, v1

    :goto_1
    sub-float/2addr p3, v1

    goto :goto_2

    :cond_4
    mul-float/2addr v1, v0

    add-float/2addr p4, v1

    add-float/2addr p2, v1

    goto :goto_2

    :cond_5
    mul-float/2addr v1, v0

    add-float/2addr p5, v1

    add-float/2addr p3, v1

    .line 254
    :goto_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p6

    .line 255
    invoke-virtual {p6, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p6

    iget-object v0, p0, Lcom/itextpdf/layout/borders/DoubleBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    .line 256
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 257
    iget-object p6, p0, Lcom/itextpdf/layout/borders/DoubleBorder;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {p6, p1}, Lcom/itextpdf/layout/properties/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    float-to-double v0, p2

    float-to-double p2, p3

    .line 259
    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    float-to-double p2, p4

    float-to-double p4, p5

    .line 260
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 262
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
