.class public Lcom/itextpdf/layout/borders/DashedBorder;
.super Lcom/itextpdf/layout/borders/Border;
.source "DashedBorder.java"


# static fields
.field private static final DASH_MODIFIER:F = 5.0f

.field private static final GAP_MODIFIER:F = 3.5f


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/borders/Border;-><init>(F)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;FF)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 22

    move-object/from16 v0, p0

    .line 126
    iget v1, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    const/high16 v2, 0x40600000    # 3.5f

    mul-float/2addr v1, v2

    .line 127
    iget v2, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v8, v2, v3

    sub-float v2, p4, p2

    sub-float v3, p5, p3

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 130
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-float/2addr v1, v8

    .line 131
    invoke-super {v0, v2, v3, v1}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v1

    cmpl-float v2, v1, v8

    if-lez v2, :cond_0

    sub-float/2addr v1, v8

    :cond_0
    move v9, v1

    .line 135
    new-instance v1, Lcom/itextpdf/layout/borders/FixedDashedBorder;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/borders/DashedBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v5

    iget v6, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/borders/DashedBorder;->getOpacity()F

    move-result v7

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v9, v2

    add-float v10, v8, v2

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/itextpdf/layout/borders/FixedDashedBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFF)V

    move-object v9, v1

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    move-object/from16 v19, p10

    move/from16 v20, p11

    move/from16 v21, p12

    .line 136
    invoke-virtual/range {v9 .. v21}, Lcom/itextpdf/layout/borders/FixedDashedBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    return-void
.end method

.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 18

    move-object/from16 v0, p0

    .line 107
    iget v1, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    const/high16 v2, 0x40600000    # 3.5f

    mul-float/2addr v1, v2

    .line 108
    iget v2, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v8, v2, v3

    sub-float v2, p4, p2

    sub-float v3, p5, p3

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 111
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-float/2addr v1, v8

    .line 113
    invoke-super {v0, v2, v3, v1}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v1

    cmpl-float v2, v1, v8

    if-lez v2, :cond_0

    sub-float/2addr v1, v8

    :cond_0
    move v9, v1

    .line 118
    new-instance v1, Lcom/itextpdf/layout/borders/FixedDashedBorder;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/borders/DashedBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v5

    iget v6, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/borders/DashedBorder;->getOpacity()F

    move-result v7

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v9, v2

    add-float v10, v8, v2

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/itextpdf/layout/borders/FixedDashedBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFF)V

    move-object v9, v1

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    .line 119
    invoke-virtual/range {v9 .. v17}, Lcom/itextpdf/layout/borders/FixedDashedBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    return-void
.end method

.method public drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V
    .locals 16

    move-object/from16 v0, p0

    .line 145
    iget v1, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    const/high16 v2, 0x40600000    # 3.5f

    mul-float/2addr v1, v2

    .line 146
    iget v2, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v8, v2, v3

    sub-float v2, p4, p2

    sub-float v3, p5, p3

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 149
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-float/2addr v1, v8

    .line 151
    invoke-super {v0, v2, v3, v1}, Lcom/itextpdf/layout/borders/Border;->getDotsGap(DF)F

    move-result v1

    cmpl-float v2, v1, v8

    if-lez v2, :cond_0

    sub-float/2addr v1, v8

    :cond_0
    move v9, v1

    .line 156
    new-instance v1, Lcom/itextpdf/layout/borders/FixedDashedBorder;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/borders/DashedBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v5

    iget v6, v0, Lcom/itextpdf/layout/borders/DashedBorder;->width:F

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/borders/DashedBorder;->getOpacity()F

    move-result v7

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v9, v2

    add-float v10, v8, v2

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/itextpdf/layout/borders/FixedDashedBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFF)V

    move-object v9, v1

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    .line 157
    invoke-virtual/range {v9 .. v15}, Lcom/itextpdf/layout/borders/FixedDashedBorder;->drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V

    return-void
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
