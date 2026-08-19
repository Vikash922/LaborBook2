.class public Lcom/itextpdf/kernel/colors/Color;
.super Ljava/lang/Object;
.source "Color.java"


# instance fields
.field protected colorSpace:Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

.field protected colorValue:[F


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/itextpdf/kernel/colors/Color;->colorSpace:Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    if-nez p2, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getNumberOfComponents()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    goto :goto_0

    .line 83
    :cond_0
    iput-object p2, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    :goto_0
    return-void
.end method

.method public static convertCmykToRgb(Lcom/itextpdf/kernel/colors/DeviceCmyk;)Lcom/itextpdf/kernel/colors/DeviceRgb;
    .locals 5

    .line 166
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->getColorValue()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 167
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->getColorValue()[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-float v2, v1, v2

    .line 168
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->getColorValue()[F

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-float v3, v1, v3

    .line 169
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->getColorValue()[F

    move-result-object p0

    const/4 v4, 0x3

    aget p0, p0, v4

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    mul-float/2addr v2, v1

    mul-float/2addr v3, v1

    .line 174
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {p0, v0, v2, v3}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-object p0
.end method

.method public static convertRgbToCmyk(Lcom/itextpdf/kernel/colors/DeviceRgb;)Lcom/itextpdf/kernel/colors/DeviceCmyk;
    .locals 5

    .line 185
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 186
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 187
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object p0

    const/4 v2, 0x2

    aget p0, p0, v2

    .line 189
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    sub-float v0, v3, v0

    sub-float/2addr v0, v2

    sub-float v4, v3, v2

    div-float/2addr v0, v4

    sub-float v1, v3, v1

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    sub-float/2addr v3, p0

    sub-float/2addr v3, v2

    div-float/2addr v3, v4

    .line 193
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    return-object p0
.end method

.method public static makeColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-static {p0, v0}, Lcom/itextpdf/kernel/colors/Color;->makeColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)Lcom/itextpdf/kernel/colors/Color;

    move-result-object p0

    return-object p0
.end method

.method public static makeColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)Lcom/itextpdf/kernel/colors/Color;
    .locals 5

    .line 108
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 109
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    if-eqz v0, :cond_1

    .line 110
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceGray;

    if-eqz p1, :cond_0

    aget p1, p1, v3

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>()V

    :goto_0
    move-object v2, p0

    goto/16 :goto_3

    .line 111
    :cond_1
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    .line 112
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz p1, :cond_2

    aget v0, p1, v3

    aget v1, p1, v1

    aget p1, p1, v4

    invoke-direct {p0, v0, v1, p1}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>()V

    goto :goto_0

    .line 113
    :cond_3
    instance-of p0, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    if-eqz p0, :cond_14

    .line 114
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    if-eqz p1, :cond_4

    aget v0, p1, v3

    aget v1, p1, v1

    aget v2, p1, v4

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>()V

    goto :goto_0

    .line 118
    :cond_5
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs;

    if-eqz v0, :cond_d

    .line 119
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalGray;

    if-eqz v0, :cond_7

    .line 120
    check-cast p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalGray;

    if-eqz p1, :cond_6

    .line 121
    new-instance v0, Lcom/itextpdf/kernel/colors/CalGray;

    aget p1, p1, v3

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/kernel/colors/CalGray;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalGray;F)V

    :goto_1
    move-object v2, v0

    goto/16 :goto_3

    :cond_6
    new-instance p1, Lcom/itextpdf/kernel/colors/CalGray;

    invoke-direct {p1, p0}, Lcom/itextpdf/kernel/colors/CalGray;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalGray;)V

    :goto_2
    move-object v2, p1

    goto/16 :goto_3

    .line 122
    :cond_7
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalRgb;

    if-eqz v0, :cond_9

    .line 123
    check-cast p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalRgb;

    if-eqz p1, :cond_8

    .line 124
    new-instance v0, Lcom/itextpdf/kernel/colors/CalRgb;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/kernel/colors/CalRgb;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalRgb;[F)V

    goto :goto_1

    :cond_8
    new-instance p1, Lcom/itextpdf/kernel/colors/CalRgb;

    invoke-direct {p1, p0}, Lcom/itextpdf/kernel/colors/CalRgb;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalRgb;)V

    goto :goto_2

    .line 125
    :cond_9
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;

    if-eqz v0, :cond_b

    .line 126
    check-cast p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;

    if-eqz p1, :cond_a

    .line 127
    new-instance v0, Lcom/itextpdf/kernel/colors/IccBased;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/kernel/colors/IccBased;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;[F)V

    goto :goto_1

    :cond_a
    new-instance p1, Lcom/itextpdf/kernel/colors/IccBased;

    invoke-direct {p1, p0}, Lcom/itextpdf/kernel/colors/IccBased;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;)V

    goto :goto_2

    .line 128
    :cond_b
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$Lab;

    if-eqz v0, :cond_14

    .line 129
    check-cast p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$Lab;

    if-eqz p1, :cond_c

    .line 130
    new-instance v0, Lcom/itextpdf/kernel/colors/Lab;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/kernel/colors/Lab;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$Lab;[F)V

    goto :goto_1

    :cond_c
    new-instance p1, Lcom/itextpdf/kernel/colors/Lab;

    invoke-direct {p1, p0}, Lcom/itextpdf/kernel/colors/Lab;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$Lab;)V

    goto :goto_2

    .line 134
    :cond_d
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs;

    if-eqz v0, :cond_13

    .line 135
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;

    if-eqz v0, :cond_f

    .line 136
    check-cast p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;

    if-eqz p1, :cond_e

    .line 137
    new-instance v0, Lcom/itextpdf/kernel/colors/Separation;

    aget p1, p1, v3

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/kernel/colors/Separation;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;F)V

    goto :goto_1

    :cond_e
    new-instance p1, Lcom/itextpdf/kernel/colors/Separation;

    invoke-direct {p1, p0}, Lcom/itextpdf/kernel/colors/Separation;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;)V

    goto :goto_2

    .line 138
    :cond_f
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;

    if-eqz v0, :cond_11

    .line 140
    check-cast p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;

    if-eqz p1, :cond_10

    .line 141
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceN;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/kernel/colors/DeviceN;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;[F)V

    goto :goto_1

    :cond_10
    new-instance p1, Lcom/itextpdf/kernel/colors/DeviceN;

    invoke-direct {p1, p0}, Lcom/itextpdf/kernel/colors/DeviceN;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;)V

    goto :goto_2

    .line 142
    :cond_11
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Indexed;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_12

    .line 143
    new-instance v0, Lcom/itextpdf/kernel/colors/Indexed;

    aget p1, p1, v3

    float-to-int p1, p1

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/kernel/colors/Indexed;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;I)V

    goto/16 :goto_1

    :cond_12
    new-instance p1, Lcom/itextpdf/kernel/colors/Indexed;

    invoke-direct {p1, p0}, Lcom/itextpdf/kernel/colors/Indexed;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V

    goto/16 :goto_2

    .line 147
    :cond_13
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    if-eqz v0, :cond_14

    .line 148
    new-instance v2, Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v2, p0, p1}, Lcom/itextpdf/kernel/colors/Color;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    :goto_3
    move v1, v3

    :cond_14
    if-nez v1, :cond_15

    return-object v2

    .line 153
    :cond_15
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Unknown color space."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 248
    :cond_1
    check-cast p1, Lcom/itextpdf/kernel/colors/Color;

    .line 249
    iget-object v2, p0, Lcom/itextpdf/kernel/colors/Color;->colorSpace:Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    iget-object v3, p1, Lcom/itextpdf/kernel/colors/Color;->colorSpace:Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/itextpdf/kernel/colors/Color;->colorSpace:Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    if-nez v2, :cond_3

    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    iget-object p1, p1, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    .line 250
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public getColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/Color;->colorSpace:Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    return-object v0
.end method

.method public getColorValue()[F
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    return-object v0
.end method

.method public getNumberOfComponents()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/Color;->colorSpace:Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 259
    iget-object v2, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setColorValue([F)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    array-length v0, v0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 233
    iput-object p1, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    return-void

    .line 231
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Incorrect number of components."

    invoke-direct {p1, v0, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method
