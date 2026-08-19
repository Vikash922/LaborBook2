.class public abstract Lcom/itextpdf/layout/borders/Border3D;
.super Lcom/itextpdf/layout/borders/Border;
.source "Border3D.java"


# static fields
.field private static final GRAY:Lcom/itextpdf/kernel/colors/DeviceRgb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 60
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    const/16 v1, 0xd0

    const/16 v2, 0xc8

    const/16 v3, 0xd4

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    sput-object v0, Lcom/itextpdf/layout/borders/Border3D;->GRAY:Lcom/itextpdf/kernel/colors/DeviceRgb;

    return-void
.end method

.method protected constructor <init>(F)V
    .locals 1

    .line 68
    sget-object v0, Lcom/itextpdf/layout/borders/Border3D;->GRAY:Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/layout/borders/Border3D;-><init>(Lcom/itextpdf/kernel/colors/DeviceRgb;F)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/DeviceCmyk;F)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/DeviceCmyk;FF)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/DeviceGray;F)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/DeviceGray;FF)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/DeviceRgb;F)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/DeviceRgb;FF)V
    .locals 0

    .line 109
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

    .line 141
    iget v0, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v12, v0, v1

    div-float v13, p7, v1

    div-float v14, p8, v1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    .line 145
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/borders/Border3D;->getBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)Lcom/itextpdf/layout/borders/Border$Side;

    move-result-object v0

    .line 146
    sget-object v1, Lcom/itextpdf/layout/borders/Border3D$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

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

    move v12, v1

    move v13, v12

    move v14, v13

    goto :goto_1

    :cond_0
    sub-float v1, v10, v12

    add-float/2addr v14, v11

    sub-float v12, v8, v12

    sub-float v13, v9, v13

    goto :goto_1

    :cond_1
    sub-float v1, v10, v14

    sub-float v14, v11, v12

    add-float/2addr v13, v8

    sub-float v12, v9, v12

    goto :goto_0

    :cond_2
    add-float v1, v10, v12

    sub-float v14, v11, v14

    add-float/2addr v12, v8

    add-float/2addr v13, v9

    goto :goto_1

    :cond_3
    add-float v1, v10, v14

    add-float v14, v11, v12

    sub-float v13, v8, v13

    add-float/2addr v12, v9

    :goto_0
    move/from16 v18, v13

    move v13, v12

    move/from16 v12, v18

    .line 173
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 174
    iget-object v15, v6, Lcom/itextpdf/layout/borders/Border3D;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {v15, v7}, Lcom/itextpdf/layout/properties/TransparentColor;->applyFillTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 175
    invoke-virtual {v6, v7, v0}, Lcom/itextpdf/layout/borders/Border3D;->setInnerHalfColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/borders/Border$Side;)V

    float-to-double v2, v8

    float-to-double v4, v9

    .line 176
    invoke-virtual {v7, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v15

    float-to-double v7, v10

    float-to-double v9, v11

    invoke-virtual {v15, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v7

    float-to-double v8, v1

    float-to-double v14, v14

    invoke-virtual {v7, v8, v9, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    move-wide/from16 v16, v8

    float-to-double v7, v12

    float-to-double v9, v13

    invoke-virtual {v1, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 178
    sget-object v1, Lcom/itextpdf/layout/borders/Border3D$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    move-object/from16 v5, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v1, p4

    move v2, v11

    goto :goto_3

    .line 198
    :cond_4
    iget v1, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    sub-float v1, p4, v1

    add-float v2, v11, p8

    .line 200
    iget v3, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    sub-float v3, p2, v3

    sub-float v4, p3, p7

    goto :goto_2

    :cond_5
    sub-float v1, p4, p8

    .line 193
    iget v2, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    sub-float v2, v11, v2

    add-float v3, p2, p7

    .line 195
    iget v4, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    sub-float v4, p3, v4

    goto :goto_2

    .line 186
    :cond_6
    iget v1, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    add-float v1, p4, v1

    sub-float v2, v11, p8

    .line 188
    iget v3, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    add-float v3, p2, v3

    add-float v4, p3, p7

    goto :goto_2

    :cond_7
    add-float v1, p4, p8

    .line 181
    iget v2, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    add-float/2addr v2, v11

    sub-float v3, p2, p7

    .line 183
    iget v4, v6, Lcom/itextpdf/layout/borders/Border3D;->width:F

    add-float v4, p3, v4

    :goto_2
    move-object/from16 v5, p1

    .line 205
    :goto_3
    invoke-virtual {v6, v5, v0}, Lcom/itextpdf/layout/borders/Border3D;->setOuterHalfColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/borders/Border$Side;)V

    float-to-double v11, v3

    float-to-double v3, v4

    .line 206
    invoke-virtual {v5, v11, v12, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v5, v1

    float-to-double v1, v2

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0, v11, v12, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V
    .locals 2

    .line 216
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p6

    iget-object v0, p0, Lcom/itextpdf/layout/borders/Border3D;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    .line 217
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 218
    iget-object p6, p0, Lcom/itextpdf/layout/borders/Border3D;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {p6, p1}, Lcom/itextpdf/layout/properties/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 219
    iget p6, p0, Lcom/itextpdf/layout/borders/Border3D;->width:F

    .line 220
    invoke-virtual {p1, p6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    float-to-double v0, p2

    float-to-double p2, p3

    .line 221
    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    float-to-double p2, p4

    float-to-double p4, p5

    .line 222
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method protected getDarkerColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/itextpdf/layout/borders/Border3D;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    .line 233
    instance-of v1, v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz v1, :cond_0

    .line 234
    check-cast v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-static {v0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->makeDarker(Lcom/itextpdf/kernel/colors/DeviceRgb;)Lcom/itextpdf/kernel/colors/DeviceRgb;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    instance-of v1, v0, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    if-eqz v1, :cond_1

    .line 236
    check-cast v0, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    invoke-static {v0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->makeDarker(Lcom/itextpdf/kernel/colors/DeviceCmyk;)Lcom/itextpdf/kernel/colors/DeviceCmyk;

    move-result-object v0

    return-object v0

    .line 237
    :cond_1
    instance-of v1, v0, Lcom/itextpdf/kernel/colors/DeviceGray;

    if-eqz v1, :cond_2

    .line 238
    check-cast v0, Lcom/itextpdf/kernel/colors/DeviceGray;

    invoke-static {v0}, Lcom/itextpdf/kernel/colors/DeviceGray;->makeDarker(Lcom/itextpdf/kernel/colors/DeviceGray;)Lcom/itextpdf/kernel/colors/DeviceGray;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method protected abstract setInnerHalfColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/borders/Border$Side;)V
.end method

.method protected abstract setOuterHalfColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/borders/Border$Side;)V
.end method
