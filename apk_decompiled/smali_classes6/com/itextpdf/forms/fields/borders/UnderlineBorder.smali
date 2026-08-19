.class Lcom/itextpdf/forms/fields/borders/UnderlineBorder;
.super Lcom/itextpdf/forms/fields/borders/AbstractFormBorder;
.source "UnderlineBorder.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/fields/borders/AbstractFormBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 11

    move-object v0, p0

    .line 62
    sget-object v1, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v8, p6

    invoke-virtual {v1, v8}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    cmpg-float v1, p2, p4

    if-gez v1, :cond_0

    .line 64
    iget v1, v0, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;->width:F

    sub-float v1, p2, v1

    .line 65
    iget v2, v0, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;->width:F

    add-float/2addr v2, p4

    goto :goto_0

    .line 67
    :cond_0
    iget v1, v0, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;->width:F

    add-float/2addr v1, p2

    .line 68
    iget v2, v0, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;->width:F

    sub-float v2, p4, v2

    :goto_0
    move v4, v1

    move v6, v2

    .line 70
    new-instance v2, Lcom/itextpdf/layout/borders/SolidBorder;

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    iget v3, v0, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;->width:F

    invoke-direct {v2, v1, v3}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    .line 71
    invoke-virtual/range {v2 .. v10}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    :cond_1
    return-void
.end method

.method public drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V
    .locals 0

    .line 80
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x3e9

    return v0
.end method
