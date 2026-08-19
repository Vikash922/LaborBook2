.class public Lcom/itextpdf/layout/borders/InsetBorder;
.super Lcom/itextpdf/layout/borders/Border3D;
.source "InsetBorder.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/borders/Border3D;-><init>(F)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/DeviceCmyk;F)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border3D;-><init>(Lcom/itextpdf/kernel/colors/DeviceCmyk;F)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/DeviceCmyk;FF)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border3D;-><init>(Lcom/itextpdf/kernel/colors/DeviceCmyk;FF)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/DeviceGray;F)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border3D;-><init>(Lcom/itextpdf/kernel/colors/DeviceGray;F)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/DeviceGray;FF)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border3D;-><init>(Lcom/itextpdf/kernel/colors/DeviceGray;FF)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/DeviceRgb;F)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border3D;-><init>(Lcom/itextpdf/kernel/colors/DeviceRgb;F)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/DeviceRgb;FF)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border3D;-><init>(Lcom/itextpdf/kernel/colors/DeviceRgb;FF)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected setInnerHalfColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/borders/Border$Side;)V
    .locals 1

    .line 141
    sget-object v0, Lcom/itextpdf/layout/borders/InsetBorder$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {p2}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/InsetBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/InsetBorder;->getDarkerColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :goto_0
    return-void
.end method

.method protected setOuterHalfColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/borders/Border$Side;)V
    .locals 1

    .line 158
    sget-object v0, Lcom/itextpdf/layout/borders/InsetBorder$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {p2}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/InsetBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/InsetBorder;->getDarkerColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :goto_0
    return-void
.end method
