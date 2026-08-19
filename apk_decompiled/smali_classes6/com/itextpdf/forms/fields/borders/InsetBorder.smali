.class Lcom/itextpdf/forms/fields/borders/InsetBorder;
.super Lcom/itextpdf/forms/fields/borders/AbstractFormBorder;
.source "InsetBorder.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/fields/borders/AbstractFormBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 20

    move-object/from16 v9, p6

    .line 63
    new-instance v0, Lcom/itextpdf/layout/borders/SolidBorder;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/borders/InsetBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    move-object/from16 v10, p0

    iget v2, v10, Lcom/itextpdf/forms/fields/borders/InsetBorder;->width:F

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 64
    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/forms/fields/borders/InsetBorder;->getWidth()F

    move-result v0

    add-float v16, v0, v0

    .line 68
    sget-object v1, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v1, v9}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v11, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v1, Lcom/itextpdf/kernel/colors/ColorConstants;->LIGHT_GRAY:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v11, v1, v0}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    sub-float v13, p2, v0

    .line 70
    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v12, p1

    move/from16 v14, v16

    move/from16 v15, v16

    move/from16 v18, v0

    move/from16 v19, v0

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto/16 :goto_0

    .line 72
    :cond_0
    sget-object v1, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v1, v9}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    new-instance v11, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v1, Lcom/itextpdf/kernel/colors/ColorConstants;->DARK_GRAY:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v11, v1, v0}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    sub-float v14, p3, v0

    sub-float v15, p4, v0

    sub-float v1, p5, v0

    .line 74
    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v12, p1

    move/from16 v13, v16

    move/from16 v16, v1

    move/from16 v18, v0

    move/from16 v19, v0

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_0

    .line 76
    :cond_1
    sget-object v1, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v1, v9}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    new-instance v11, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v1, Lcom/itextpdf/kernel/colors/ColorConstants;->DARK_GRAY:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v11, v1, v0}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    sub-float v1, p5, v0

    .line 78
    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v12, p1

    move/from16 v13, v16

    move/from16 v14, v16

    move/from16 v15, v16

    move/from16 v16, v1

    move/from16 v18, v0

    move/from16 v19, v0

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_0

    .line 80
    :cond_2
    sget-object v1, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v1, v9}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    new-instance v11, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v1, Lcom/itextpdf/kernel/colors/ColorConstants;->LIGHT_GRAY:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v11, v1, v0}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    sub-float v13, p2, v0

    sub-float v14, p3, v0

    sub-float v15, p4, v0

    .line 82
    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v12, p1

    move/from16 v18, v0

    move/from16 v19, v0

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    :cond_3
    :goto_0
    return-void
.end method

.method public drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V
    .locals 0

    .line 92
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x3eb

    return v0
.end method
