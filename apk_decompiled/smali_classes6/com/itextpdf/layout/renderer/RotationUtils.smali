.class final Lcom/itextpdf/layout/renderer/RotationUtils;
.super Ljava/lang/Object;
.source "RotationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countRotationMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;Lcom/itextpdf/layout/renderer/AbstractRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 9

    .line 73
    new-instance v0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;-><init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;)V

    const/16 v1, 0x37

    .line 74
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->storeFloatProperty(I)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 76
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 78
    invoke-virtual {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v3

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getEps()F

    move-result v4

    add-float/2addr v3, v4

    .line 79
    new-instance v4, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v5, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v6, Lcom/itextpdf/kernel/geom/Rectangle;

    const v7, 0x49742400    # 1000000.0f

    invoke-direct {v6, v3, v7}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v3, 0x1

    invoke-direct {v5, v3, v6}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v4, v5}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-virtual {p1, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 81
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 82
    invoke-virtual {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->isEqual(DD)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    float-to-double p0, v2

    .line 84
    invoke-static {v4, p0, p1}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->calculateRotatedWidth(Lcom/itextpdf/kernel/geom/Rectangle;D)D

    move-result-wide p0

    double-to-float p0, p0

    .line 85
    new-instance p1, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p0, v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(FFF)V

    return-object p1

    .line 87
    :cond_0
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    mul-float/2addr v5, v3

    float-to-double v5, v5

    float-to-double v2, v2

    .line 88
    invoke-static {v2, v3, v5, v6, p0}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->calculate(DDLcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;

    move-result-object v5

    .line 89
    invoke-virtual {v5}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->getMinWidthOrigin()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {p1, v6, v4, v2, v3}, Lcom/itextpdf/layout/renderer/RotationUtils;->getLayoutRotatedWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;FLcom/itextpdf/kernel/geom/Rectangle;D)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 91
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v5}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->getMaxWidth()F

    move-result v7

    cmpl-float p0, p0, v7

    if-lez p0, :cond_2

    .line 92
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v5, p0}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->setChildrenMinWidth(F)V

    .line 93
    invoke-virtual {v5}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->getMaxWidthOrigin()D

    move-result-wide v7

    double-to-float p0, v7

    invoke-static {p1, p0, v4, v2, v3}, Lcom/itextpdf/layout/renderer/RotationUtils;->getLayoutRotatedWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;FLcom/itextpdf/kernel/geom/Rectangle;D)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 94
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    .line 95
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v5, p0}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->setChildrenMaxWidth(F)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v5, p0}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->setChildrenMaxWidth(F)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v5, p0}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->setChildrenMinWidth(F)V

    .line 102
    :goto_0
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    return-object v5

    .line 107
    :cond_3
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    return-object p0
.end method

.method private static getLayoutRotatedWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;FLcom/itextpdf/kernel/geom/Rectangle;D)Ljava/lang/Float;
    .locals 4

    float-to-double v0, p1

    .line 164
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->isEqual(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {p2, p3, p4}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->calculateRotatedWidth(Lcom/itextpdf/kernel/geom/Rectangle;D)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 167
    :cond_0
    new-instance p2, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v0, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getEps()F

    move-result v2

    add-float/2addr p1, v2

    const v2, 0x49742400    # 1000000.0f

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 p1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {p2, v0}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p0

    invoke-static {p0, p3, p4}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->calculateRotatedWidth(Lcom/itextpdf/kernel/geom/Rectangle;D)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static retrieveRotatedLayoutWidth(FLcom/itextpdf/layout/renderer/AbstractRenderer;)Ljava/lang/Float;
    .locals 14

    .line 123
    new-instance v0, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;-><init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;)V

    const/16 v1, 0x37

    .line 124
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->storeFloatProperty(I)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0x4d

    .line 125
    invoke-virtual {p1, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 126
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/16 v3, 0x1b

    .line 127
    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->storeProperty(I)Ljava/lang/Object;

    const/16 v4, 0x55

    .line 128
    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->storeProperty(I)Ljava/lang/Object;

    const/16 v5, 0x54

    .line 129
    invoke-virtual {v0, v5}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->storeProperty(I)Ljava/lang/Object;

    const/16 v6, 0x1a

    .line 130
    invoke-virtual {v0, v6}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->storeBoolProperty(I)Ljava/lang/Boolean;

    .line 131
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v11

    .line 133
    invoke-virtual {v11}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v7

    invoke-virtual {v11}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getEps()F

    move-result v8

    add-float/2addr v7, v8

    .line 134
    new-instance v8, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v9, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v10, Lcom/itextpdf/kernel/geom/Rectangle;

    const v12, 0x49742400    # 1000000.0f

    invoke-direct {v10, v7, v12}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v7, 0x1

    invoke-direct {v9, v7, v10}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v8, v9}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-virtual {p1, v8}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v8

    .line 135
    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    .line 136
    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    .line 137
    invoke-virtual {v0, v5}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    .line 138
    invoke-virtual {v0, v6}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    .line 140
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    .line 141
    invoke-virtual {p1, v3, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 142
    invoke-virtual {p1, v3, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 143
    invoke-virtual {p1, v3, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 145
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 146
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-double v9, v4

    float-to-double v7, v2

    float-to-double v12, p0

    .line 147
    invoke-static/range {v7 .. v13}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->calculate(DDLcom/itextpdf/layout/minmaxwidth/MinMaxWidth;D)Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    .line 150
    invoke-virtual {v2}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->getMaxWidthHeight()D

    move-result-wide p0

    invoke-virtual {v2}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->getMinWidthHeight()D

    move-result-wide v0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    .line 151
    invoke-virtual {v2}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->getMinWidthOrigin()D

    move-result-wide p0

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    float-to-double v0, v0

    sub-double/2addr p0, v0

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getEps()F

    move-result v0

    float-to-double v0, v0

    add-double/2addr p0, v0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 153
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->getMaxWidthOrigin()D

    move-result-wide p0

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    float-to-double v0, v0

    sub-double/2addr p0, v0

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getEps()F

    move-result v0

    float-to-double v0, v0

    add-double/2addr p0, v0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 158
    :cond_1
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/RotationUtils$PropertiesBackup;->restoreProperty(I)V

    .line 159
    invoke-virtual {p1, p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
