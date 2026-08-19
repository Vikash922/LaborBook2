.class Lcom/itextpdf/forms/fields/borders/BeveledBorder;
.super Lcom/itextpdf/forms/fields/borders/AbstractFormBorder;
.source "BeveledBorder.java"


# instance fields
.field private final backgroundColor:Lcom/itextpdf/kernel/colors/Color;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;FLcom/itextpdf/kernel/colors/Color;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/fields/borders/AbstractFormBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 60
    iput-object p3, p0, Lcom/itextpdf/forms/fields/borders/BeveledBorder;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    return-void
.end method

.method private getDarkerColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 110
    instance-of v0, p1, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz v0, :cond_0

    .line 111
    check-cast p1, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-static {p1}, Lcom/itextpdf/kernel/colors/DeviceRgb;->makeDarker(Lcom/itextpdf/kernel/colors/DeviceRgb;)Lcom/itextpdf/kernel/colors/DeviceRgb;

    move-result-object p1

    return-object p1

    .line 112
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    if-eqz v0, :cond_1

    .line 113
    check-cast p1, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    invoke-static {p1}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->makeDarker(Lcom/itextpdf/kernel/colors/DeviceCmyk;)Lcom/itextpdf/kernel/colors/DeviceCmyk;

    move-result-object p1

    return-object p1

    .line 114
    :cond_1
    instance-of v0, p1, Lcom/itextpdf/kernel/colors/DeviceGray;

    if-eqz v0, :cond_2

    .line 115
    check-cast p1, Lcom/itextpdf/kernel/colors/DeviceGray;

    invoke-static {p1}, Lcom/itextpdf/kernel/colors/DeviceGray;->makeDarker(Lcom/itextpdf/kernel/colors/DeviceGray;)Lcom/itextpdf/kernel/colors/DeviceGray;

    move-result-object p1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 13

    move-object v0, p0

    move-object/from16 v10, p6

    .line 69
    new-instance v1, Lcom/itextpdf/layout/borders/SolidBorder;

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/borders/BeveledBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    iget v3, v0, Lcom/itextpdf/forms/fields/borders/BeveledBorder;->width:F

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 70
    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 71
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/borders/BeveledBorder;->getWidth()F

    move-result v12

    add-float v9, v12, v12

    .line 73
    iget-object v1, v0, Lcom/itextpdf/forms/fields/borders/BeveledBorder;->backgroundColor:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/itextpdf/forms/fields/borders/BeveledBorder;->getDarkerColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/colors/ColorConstants;->LIGHT_GRAY:Lcom/itextpdf/kernel/colors/Color;

    .line 74
    :goto_0
    sget-object v2, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v2, v10}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    new-instance v4, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v1, Lcom/itextpdf/kernel/colors/ColorConstants;->WHITE:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v4, v1, v12}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    sub-float v7, p3, v12

    sub-float v8, p4, v12

    sub-float v1, p5, v12

    .line 76
    sget-object v10, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    move-object v5, p1

    move v6, v9

    move v9, v1

    move v11, v12

    invoke-virtual/range {v4 .. v12}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_1

    .line 78
    :cond_1
    sget-object v2, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v2, v10}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    new-instance v4, Lcom/itextpdf/layout/borders/SolidBorder;

    invoke-direct {v4, v1, v12}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    sub-float v6, p2, v12

    .line 80
    sget-object v10, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    move-object v5, p1

    move v7, v9

    move v8, v9

    move v11, v12

    invoke-virtual/range {v4 .. v12}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_1

    .line 82
    :cond_2
    sget-object v2, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v2, v10}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    new-instance v4, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v1, Lcom/itextpdf/kernel/colors/ColorConstants;->WHITE:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v4, v1, v12}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    sub-float v1, p5, v12

    .line 84
    sget-object v10, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object v5, p1

    move v6, v9

    move v7, v9

    move v8, v9

    move v9, v1

    move v11, v12

    invoke-virtual/range {v4 .. v12}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_1

    .line 86
    :cond_3
    sget-object v2, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    invoke-virtual {v2, v10}, Lcom/itextpdf/layout/borders/Border$Side;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    new-instance v4, Lcom/itextpdf/layout/borders/SolidBorder;

    invoke-direct {v4, v1, v12}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    sub-float v6, p2, v12

    sub-float v7, p3, v12

    sub-float v8, p4, v12

    .line 88
    sget-object v10, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object v5, p1

    move v11, v12

    invoke-virtual/range {v4 .. v12}, Lcom/itextpdf/layout/borders/SolidBorder;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    :cond_4
    :goto_1
    return-void
.end method

.method public drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V
    .locals 0

    .line 98
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x3ea

    return v0
.end method
