.class public final Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;
.super Ljava/lang/Object;
.source "MinMaxWidthUtils.java"


# static fields
.field private static final eps:F = 0.01f

.field private static final max:F = 32760.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countDefaultMinMaxWidth(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 5

    .line 79
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v3

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfHeight()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance p0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-direct {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    .line 81
    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(FFF)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getBorderWidth(Lcom/itextpdf/layout/IPropertyContainer;)F
    .locals 5

    const/16 v0, 0x9

    .line 85
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/borders/Border;

    const/16 v1, 0xc

    .line 86
    invoke-interface {p0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/borders/Border;

    const/16 v3, 0xb

    .line 87
    invoke-interface {p0, v3}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    .line 89
    invoke-interface {p0, v1}, Lcom/itextpdf/layout/IPropertyContainer;->hasOwnProperty(I)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v2, v0

    .line 92
    :cond_0
    invoke-interface {p0, v3}, Lcom/itextpdf/layout/IPropertyContainer;->hasOwnProperty(I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v4

    :goto_0
    const/4 p0, 0x0

    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {v2}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    goto :goto_1

    :cond_2
    move v1, p0

    :goto_1
    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p0

    :cond_3
    add-float/2addr v1, p0

    return v1
.end method

.method public static getEps()F
    .locals 1

    const v0, 0x3c23d70a    # 0.01f

    return v0
.end method

.method private static getInfHeight()F
    .locals 1

    const v0, 0x49742400    # 1000000.0f

    return v0
.end method

.method public static getInfWidth()F
    .locals 1

    const v0, 0x46fff000    # 32760.0f

    return v0
.end method

.method public static getMarginsWidth(Lcom/itextpdf/layout/IPropertyContainer;)F
    .locals 5

    const/16 v0, 0x2d

    .line 102
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/UnitValue;

    .line 103
    const-string v2, "Property {0} in percents is not supported"

    const-class v3, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 105
    invoke-static {v2, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x2c

    .line 108
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz p0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 111
    invoke-static {v2, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz p0, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    :cond_3
    add-float/2addr v1, v0

    return v1
.end method

.method public static getPaddingWidth(Lcom/itextpdf/layout/IPropertyContainer;)F
    .locals 5

    const/16 v0, 0x31

    .line 122
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/UnitValue;

    .line 123
    const-string v2, "Property {0} in percents is not supported"

    const-class v3, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 125
    invoke-static {v2, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x30

    .line 128
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz p0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 130
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 131
    invoke-static {v2, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz p0, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    :cond_3
    add-float/2addr v1, v0

    return v1
.end method

.method public static isEqual(DD)Z
    .locals 0

    sub-double/2addr p0, p2

    .line 75
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3f847ae140000000L    # 0.009999999776482582

    cmpg-double p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
