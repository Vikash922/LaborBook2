.class final Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;
.super Ljava/lang/Object;
.source "BackgroundSizeCalculationUtil.java"


# static fields
.field private static final PERCENT_100:I = 0x64

.field private static final PERCENT_VALUE_100:Lcom/itextpdf/layout/properties/UnitValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    .line 56
    invoke-static {v0}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->PERCENT_VALUE_100:Lcom/itextpdf/layout/properties/UnitValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateBackgroundHeight(Lcom/itextpdf/layout/properties/UnitValue;FZLcom/itextpdf/layout/properties/BackgroundImage;[Ljava/lang/Float;)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz p2, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    mul-float/2addr p1, p0

    div-float/2addr p1, v0

    invoke-static {p1, p3, p4}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->scaleHeight(FLcom/itextpdf/layout/properties/BackgroundImage;[Ljava/lang/Float;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    invoke-static {p0, p3, p4}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->scaleHeight(FLcom/itextpdf/layout/properties/BackgroundImage;[Ljava/lang/Float;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    mul-float/2addr p1, p0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p4, p3

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p4, p3

    :goto_0
    return-void
.end method

.method public static calculateBackgroundImageSize(Lcom/itextpdf/layout/properties/BackgroundImage;FF)[F
    .locals 9

    .line 73
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/BackgroundImage;->getLinearGradientBuilder()Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/BackgroundImage;->getBackgroundSize()Lcom/itextpdf/layout/properties/BackgroundSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/BackgroundSize;->isSpecificSize()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-static {p0, p1, p2}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->calculateBackgroundSizeForArea(Lcom/itextpdf/layout/properties/BackgroundImage;FF)Lcom/itextpdf/layout/properties/BackgroundSize;

    move-result-object v3

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/BackgroundImage;->getBackgroundSize()Lcom/itextpdf/layout/properties/BackgroundSize;

    move-result-object v3

    .line 81
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/BackgroundSize;->getBackgroundWidthSize()Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v4

    .line 82
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/BackgroundSize;->getBackgroundHeightSize()Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v3

    const/4 v5, 0x2

    .line 84
    new-array v6, v5, [Ljava/lang/Float;

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 86
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v8

    cmpl-float v8, v8, v7

    if-ltz v8, :cond_3

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move v8, v2

    .line 88
    :goto_2
    invoke-static {v4, p1, v8, p0, v6}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->calculateBackgroundWidth(Lcom/itextpdf/layout/properties/UnitValue;FZLcom/itextpdf/layout/properties/BackgroundImage;[Ljava/lang/Float;)V

    :cond_3
    if-eqz v3, :cond_5

    .line 90
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v8

    cmpl-float v7, v8, v7

    if-ltz v7, :cond_5

    if-nez v0, :cond_4

    if-nez v4, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v2

    .line 92
    :goto_3
    invoke-static {v3, p2, v4, p0, v6}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->calculateBackgroundHeight(Lcom/itextpdf/layout/properties/UnitValue;FZLcom/itextpdf/layout/properties/BackgroundImage;[Ljava/lang/Float;)V

    .line 94
    :cond_5
    invoke-static {v6, p1, p2, p0, v0}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->setDefaultSizeIfNull([Ljava/lang/Float;FFLcom/itextpdf/layout/properties/BackgroundImage;Z)V

    .line 95
    aget-object p0, v6, v2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    aget-object p1, v6, v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    new-array p2, v5, [F

    aput p0, p2, v2

    aput p1, p2, v1

    return-object p2
.end method

.method private static calculateBackgroundSizeForArea(Lcom/itextpdf/layout/properties/BackgroundImage;FF)Lcom/itextpdf/layout/properties/BackgroundSize;
    .locals 5

    .line 100
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/BackgroundImage;->getImageWidth()F

    move-result v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 101
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/BackgroundImage;->getImageHeight()F

    move-result p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    .line 102
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/BackgroundImage;->getBackgroundSize()Lcom/itextpdf/layout/properties/BackgroundSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/BackgroundSize;->isCover()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    cmpl-double p0, v0, p1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    .line 103
    :goto_0
    invoke-static {v3}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->createSizeWithMaxValueSide(Z)Lcom/itextpdf/layout/properties/BackgroundSize;

    move-result-object p0

    return-object p0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/BackgroundImage;->getBackgroundSize()Lcom/itextpdf/layout/properties/BackgroundSize;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/BackgroundSize;->isContain()Z

    move-result p0

    if-eqz p0, :cond_3

    cmpg-double p0, v0, p1

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 105
    :goto_1
    invoke-static {v3}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->createSizeWithMaxValueSide(Z)Lcom/itextpdf/layout/properties/BackgroundSize;

    move-result-object p0

    return-object p0

    .line 107
    :cond_3
    new-instance p0, Lcom/itextpdf/layout/properties/BackgroundSize;

    invoke-direct {p0}, Lcom/itextpdf/layout/properties/BackgroundSize;-><init>()V

    return-object p0
.end method

.method private static calculateBackgroundWidth(Lcom/itextpdf/layout/properties/UnitValue;FZLcom/itextpdf/layout/properties/BackgroundImage;[Ljava/lang/Float;)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz p2, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    mul-float/2addr p1, p0

    div-float/2addr p1, v0

    invoke-static {p1, p3, p4}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->scaleWidth(FLcom/itextpdf/layout/properties/BackgroundImage;[Ljava/lang/Float;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    invoke-static {p0, p3, p4}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->scaleWidth(FLcom/itextpdf/layout/properties/BackgroundImage;[Ljava/lang/Float;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    mul-float/2addr p1, p0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p4, p3

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p4, p3

    :goto_0
    return-void
.end method

.method private static createSizeWithMaxValueSide(Z)Lcom/itextpdf/layout/properties/BackgroundSize;
    .locals 2

    .line 112
    new-instance v0, Lcom/itextpdf/layout/properties/BackgroundSize;

    invoke-direct {v0}, Lcom/itextpdf/layout/properties/BackgroundSize;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 114
    sget-object p0, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->PERCENT_VALUE_100:Lcom/itextpdf/layout/properties/UnitValue;

    invoke-virtual {v0, p0, v1}, Lcom/itextpdf/layout/properties/BackgroundSize;->setBackgroundSizeToValues(Lcom/itextpdf/layout/properties/UnitValue;Lcom/itextpdf/layout/properties/UnitValue;)V

    goto :goto_0

    .line 116
    :cond_0
    sget-object p0, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->PERCENT_VALUE_100:Lcom/itextpdf/layout/properties/UnitValue;

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/layout/properties/BackgroundSize;->setBackgroundSizeToValues(Lcom/itextpdf/layout/properties/UnitValue;Lcom/itextpdf/layout/properties/UnitValue;)V

    :goto_0
    return-object v0
.end method

.method private static scaleHeight(FLcom/itextpdf/layout/properties/BackgroundImage;[Ljava/lang/Float;)V
    .locals 2

    .line 162
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getImageHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getImageHeight()F

    move-result v0

    div-float v0, p0, v0

    .line 163
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getImageWidth()F

    move-result p1

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x1

    .line 164
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p2, p1

    return-void
.end method

.method private static scaleWidth(FLcom/itextpdf/layout/properties/BackgroundImage;[Ljava/lang/Float;)V
    .locals 2

    .line 156
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getImageWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getImageWidth()F

    move-result v0

    div-float v0, p0, v0

    :goto_0
    const/4 v1, 0x0

    .line 157
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p2, v1

    .line 158
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getImageHeight()F

    move-result p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    return-void
.end method

.method private static setDefaultSizeIfNull([Ljava/lang/Float;FFLcom/itextpdf/layout/properties/BackgroundImage;Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    .line 170
    aget-object p3, p0, v1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p0, v1

    .line 171
    aget-object p1, p0, v0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :goto_1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p0, v0

    goto :goto_4

    .line 173
    :cond_2
    aget-object p1, p0, v1

    if-nez p1, :cond_3

    invoke-virtual {p3}, Lcom/itextpdf/layout/properties/BackgroundImage;->getImageWidth()F

    move-result p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p0, v1

    .line 174
    aget-object p1, p0, v0

    if-nez p1, :cond_4

    invoke-virtual {p3}, Lcom/itextpdf/layout/properties/BackgroundImage;->getImageHeight()F

    move-result p1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p0, v0

    :goto_4
    return-void
.end method
