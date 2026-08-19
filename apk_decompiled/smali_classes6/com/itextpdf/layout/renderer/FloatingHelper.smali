.class Lcom/itextpdf/layout/renderer/FloatingHelper;
.super Ljava/lang/Object;
.source "FloatingHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustBlockAreaAccordingToFloatRenderers(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "FZ)V"
        }
    .end annotation

    .line 189
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    .line 191
    invoke-static {p1, p2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustBoxForFloatRight(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    :cond_0
    return-void

    .line 197
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 198
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_1
    if-eqz v4, :cond_5

    sub-float/2addr v2, v3

    cmpg-float v5, v2, p2

    if-gez v5, :cond_3

    goto :goto_2

    .line 227
    :cond_3
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 228
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    if-nez p3, :cond_4

    .line 231
    invoke-static {p1, p2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustBoxForFloatRight(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    :cond_4
    return-void

    :cond_5
    :goto_2
    const/4 v2, 0x0

    if-eqz v4, :cond_9

    if-eqz p3, :cond_7

    .line 209
    aget-object v0, v4, v2

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    aget-object v0, v4, v1

    :goto_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v0

    goto :goto_5

    .line 211
    :cond_7
    aget-object v0, v4, v1

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    aget-object v0, v4, v2

    :goto_4
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v0

    .line 214
    :cond_9
    :goto_5
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    sub-float v3, v0, v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 215
    invoke-static {p0, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->getBoxesAtYLevel(Ljava/util/List;F)Ljava/util/List;

    move-result-object v3

    .line 216
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez p3, :cond_a

    .line 218
    invoke-static {p1, p2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustBoxForFloatRight(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    :cond_a
    return-void

    .line 222
    :cond_b
    invoke-static {p1, v3}, Lcom/itextpdf/layout/renderer/FloatingHelper;->findLastLeftAndRightBoxes(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;)[Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 223
    aget-object v2, v4, v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    :goto_6
    move v3, v2

    .line 224
    aget-object v2, v4, v1

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    goto :goto_1

    :cond_d
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    goto :goto_1
.end method

.method private static adjustBoxForFloatRight(Lcom/itextpdf/kernel/geom/Rectangle;F)V
    .locals 1

    .line 394
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 395
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method

.method static adjustFloatedBlockLayoutBox(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/util/List;Lcom/itextpdf/layout/properties/FloatPropertyValue;Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/AbstractRenderer;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Ljava/lang/Float;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/layout/properties/FloatPropertyValue;",
            "Lcom/itextpdf/layout/properties/OverflowPropertyValue;",
            ")",
            "Ljava/lang/Float;"
        }
    .end annotation

    const/16 v0, 0x1c

    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 163
    invoke-static {p5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result p5

    if-eqz p2, :cond_0

    .line 165
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculateAdditionalWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result p0

    add-float/2addr v0, p0

    if-eqz p5, :cond_3

    .line 166
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_3

    .line 167
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {p0, p4}, Lcom/itextpdf/layout/renderer/FloatingHelper;->calculateMinMaxWidthForFloat(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/properties/FloatPropertyValue;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result p2

    .line 173
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 174
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p2

    :cond_1
    if-nez p5, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result p5

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    cmpl-float p5, p5, v0

    if-lez p5, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result p2

    :cond_2
    const p5, 0x38d1b717    # 1.0E-4f

    add-float v0, p2, p5

    .line 180
    invoke-virtual {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getAdditionalWidth()F

    move-result p0

    sub-float/2addr p2, p0

    add-float/2addr p2, p5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 183
    :cond_3
    :goto_0
    sget-object p0, Lcom/itextpdf/layout/properties/FloatPropertyValue;->LEFT:Lcom/itextpdf/layout/properties/FloatPropertyValue;

    invoke-virtual {p0, p4}, Lcom/itextpdf/layout/properties/FloatPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p3, p1, v0, p0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustBlockAreaAccordingToFloatRenderers(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)V

    return-object p2
.end method

.method static adjustFloatedTableLayoutBox(Lcom/itextpdf/layout/renderer/TableRenderer;Lcom/itextpdf/kernel/geom/Rectangle;FLjava/util/List;Lcom/itextpdf/layout/properties/FloatPropertyValue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/TableRenderer;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "F",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/layout/properties/FloatPropertyValue;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x1c

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;->setProperty(ILjava/lang/Object;)V

    .line 145
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableRenderer;->getMargins()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p0

    const/4 v0, 0x1

    .line 146
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v1

    const-string v2, "Property {0} in percents is not supported"

    const-class v3, Lcom/itextpdf/layout/renderer/FloatingHelper;

    if-nez v1, :cond_0

    .line 147
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    const/16 v4, 0x2d

    .line 149
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 148
    invoke-static {v2, v4}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x3

    .line 151
    aget-object v4, p0, v1

    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 152
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    const/16 v4, 0x2c

    .line 154
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 153
    invoke-static {v2, v4}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 156
    :cond_1
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    add-float/2addr p2, v0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    add-float/2addr p2, p0

    sget-object p0, Lcom/itextpdf/layout/properties/FloatPropertyValue;->LEFT:Lcom/itextpdf/layout/properties/FloatPropertyValue;

    invoke-virtual {p0, p4}, Lcom/itextpdf/layout/properties/FloatPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p3, p1, p2, p0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustBlockAreaAccordingToFloatRenderers(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)V

    return-void
.end method

.method static adjustLayoutBoxAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;FLcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;)F
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Ljava/lang/Float;",
            "F",
            "Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;",
            ")F"
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 83
    aget-object p3, v0, v3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p3

    goto :goto_0

    :cond_1
    move p3, v2

    .line 84
    :goto_0
    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 85
    :goto_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    sub-float/2addr p3, v0

    .line 86
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    sub-float/2addr v0, p3

    move p3, v0

    .line 88
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    sub-float/2addr v0, p3

    invoke-static {p0, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->getBoxesAtYLevel(Ljava/util/List;F)Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 90
    invoke-static {p1, p4, p3, v3}, Lcom/itextpdf/layout/renderer/FloatingHelper;->applyClearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;FZ)V

    return p3

    .line 94
    :cond_4
    invoke-static {p1, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->findLastLeftAndRightBoxes(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;)[Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 95
    aget-object v4, v0, v3

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v4

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    .line 96
    :goto_2
    aget-object v1, v0, v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    :cond_6
    cmpl-float v1, v4, v2

    if-gtz v1, :cond_9

    .line 98
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v1

    cmpl-float v1, v4, v1

    if-gtz v1, :cond_9

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_7

    goto :goto_3

    .line 102
    :cond_7
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_8

    .line 103
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    .line 105
    :cond_8
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v1

    cmpg-float v1, v4, v1

    if-gez v1, :cond_a

    .line 106
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v4

    goto :goto_4

    .line 99
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v4

    move v2, v4

    :cond_a
    :goto_4
    if-eqz p2, :cond_b

    .line 109
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v5, v2, v4

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_0

    .line 111
    :cond_b
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p0

    sub-float/2addr v2, v4

    cmpl-float p0, p0, v2

    if-lez p0, :cond_c

    .line 112
    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 115
    :cond_c
    invoke-static {p1, p4, p3, v3}, Lcom/itextpdf/layout/renderer/FloatingHelper;->applyClearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;FZ)V

    return p3
.end method

.method static adjustLineAreaAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-static {p0, p1, v0, v1, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustLayoutBoxAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;FLcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;)F

    return-void
.end method

.method static adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "FZ)",
            "Lcom/itextpdf/layout/layout/LayoutArea;"
        }
    .end annotation

    .line 248
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    .line 250
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 251
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p0

    .line 252
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p3

    cmpl-float p3, p3, v1

    if-lez p3, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 256
    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-object v0, p0

    goto :goto_0

    :cond_1
    cmpl-float p0, p3, v1

    if-lez p0, :cond_2

    if-nez p4, :cond_2

    .line 258
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_2
    :goto_0
    return-object v0
.end method

.method static applyClearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;FZ)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applyClearance(F)V

    goto :goto_1

    .line 339
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :goto_1
    return-void
.end method

.method static calculateClearHeightCorrection(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)F
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ")F"
        }
    .end annotation

    const/16 v0, 0x64

    .line 295
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/ClearPropertyValue;

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    .line 297
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 302
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 303
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v1

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v1

    .line 308
    :goto_0
    invoke-static {p1, v1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->getBoxesAtYLevel(Ljava/util/List;F)Ljava/util/List;

    move-result-object v1

    .line 309
    invoke-static {p2, v1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->findLastLeftAndRightBoxes(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;)[Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 311
    sget-object v3, Lcom/itextpdf/layout/properties/ClearPropertyValue;->BOTH:Lcom/itextpdf/layout/properties/ClearPropertyValue;

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/properties/ClearPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 312
    sget-object v4, Lcom/itextpdf/layout/properties/ClearPropertyValue;->LEFT:Lcom/itextpdf/layout/properties/ClearPropertyValue;

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/properties/ClearPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v4, :cond_2

    if-eqz v3, :cond_4

    :cond_2
    const/4 v4, 0x0

    aget-object v6, v1, v4

    if-eqz v6, :cond_4

    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v5

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 314
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v9

    cmpg-float v9, v9, v7

    if-gez v9, :cond_3

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v9

    aget-object v10, v1, v4

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_3

    .line 315
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v7

    goto :goto_1

    :cond_4
    move v7, v5

    .line 319
    :cond_5
    sget-object v4, Lcom/itextpdf/layout/properties/ClearPropertyValue;->RIGHT:Lcom/itextpdf/layout/properties/ClearPropertyValue;

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/properties/ClearPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    if-eqz v3, :cond_8

    :cond_6
    aget-object p0, v1, v2

    if-eqz p0, :cond_8

    .line 320
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 321
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v3

    cmpg-float v3, v3, v7

    if-gez v3, :cond_7

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_7

    .line 322
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v7

    goto :goto_2

    :cond_8
    cmpg-float p0, v7, v5

    if-gez p0, :cond_9

    .line 327
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result p0

    sub-float/2addr p0, v7

    const p1, 0x38d1b717    # 1.0E-4f

    add-float v0, p0, p1

    :cond_9
    :goto_3
    return v0
.end method

.method static calculateLineShiftUnderFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/lang/Float;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ")",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    invoke-static {p0, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->getBoxesAtYLevel(Ljava/util/List;F)Ljava/util/List;

    move-result-object p0

    .line 121
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 125
    :cond_0
    invoke-static {p1, p0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->findLastLeftAndRightBoxes(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;)[Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p0

    const/4 v0, 0x0

    .line 126
    aget-object v2, p0, v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    :goto_0
    const/4 v3, 0x1

    .line 127
    aget-object v4, p0, v3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v4

    .line 128
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v5

    cmpg-float v2, v5, v2

    if-ltz v2, :cond_4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v1

    .line 130
    :cond_4
    :goto_2
    aget-object v0, p0, v0

    if-eqz v0, :cond_5

    aget-object v1, p0, v3

    if-eqz v1, :cond_5

    .line 131
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v0

    aget-object p0, p0, v3

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 133
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p0

    goto :goto_3

    .line 135
    :cond_6
    aget-object p0, p0, v3

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p0

    .line 138
    :goto_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result p1

    sub-float/2addr p1, p0

    const p0, 0x38d1b717    # 1.0E-4f

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method static calculateMinMaxWidthForFloat(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/properties/FloatPropertyValue;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 3

    const/16 v0, 0x63

    .line 283
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnProperty(I)Z

    move-result v1

    .line 284
    sget-object v2, Lcom/itextpdf/layout/properties/FloatPropertyValue;->NONE:Lcom/itextpdf/layout/properties/FloatPropertyValue;

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 285
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->deleteOwnProperty(I)V

    :goto_0
    return-object v2
.end method

.method private static findLastLeftAndRightBoxes(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;)[Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;)[",
            "Lcom/itextpdf/kernel/geom/Rectangle;"
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result p0

    .line 402
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 403
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    cmpg-float v2, v2, p0

    if-gez v2, :cond_0

    .line 404
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result p0

    goto :goto_0

    .line 407
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 408
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v3

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v3

    cmpg-float v3, p0, v3

    if-gez v3, :cond_2

    .line 410
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result p0

    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    const/4 p0, 0x2

    .line 416
    new-array p0, p0, [Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    const/4 p1, 0x1

    aput-object v1, p0, p1

    return-object p0
.end method

.method private static getBoxesAtYLevel(Ljava/util/List;F)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;F)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;"
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 422
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v2

    const v3, 0x38d1b717    # 1.0E-4f

    add-float/2addr v2, v3

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v2

    add-float/2addr v2, v3

    cmpl-float v2, v2, p1

    if-ltz v2, :cond_0

    .line 423
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/Set;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/Rectangle;"
        }
    .end annotation

    .line 271
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 272
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 277
    new-array v1, v1, [Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    invoke-static {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method static includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;)V"
        }
    .end annotation

    .line 266
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/Set;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p0

    .line 267
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/itextpdf/layout/layout/LayoutArea;->setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V

    return-void
.end method

.method static isClearanceApplied(Ljava/util/List;Lcom/itextpdf/layout/properties/ClearPropertyValue;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;",
            "Lcom/itextpdf/layout/properties/ClearPropertyValue;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 356
    sget-object v1, Lcom/itextpdf/layout/properties/ClearPropertyValue;->NONE:Lcom/itextpdf/layout/properties/ClearPropertyValue;

    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/properties/ClearPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x63

    .line 360
    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/FloatPropertyValue;

    .line 362
    sget-object v2, Lcom/itextpdf/layout/properties/ClearPropertyValue;->BOTH:Lcom/itextpdf/layout/properties/ClearPropertyValue;

    invoke-virtual {p1, v2}, Lcom/itextpdf/layout/properties/ClearPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/itextpdf/layout/properties/FloatPropertyValue;->LEFT:Lcom/itextpdf/layout/properties/FloatPropertyValue;

    .line 363
    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/properties/FloatPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/itextpdf/layout/properties/ClearPropertyValue;->LEFT:Lcom/itextpdf/layout/properties/ClearPropertyValue;

    invoke-virtual {p1, v2}, Lcom/itextpdf/layout/properties/ClearPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    sget-object v2, Lcom/itextpdf/layout/properties/FloatPropertyValue;->RIGHT:Lcom/itextpdf/layout/properties/FloatPropertyValue;

    .line 364
    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/properties/FloatPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/itextpdf/layout/properties/ClearPropertyValue;->RIGHT:Lcom/itextpdf/layout/properties/ClearPropertyValue;

    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/properties/ClearPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method static isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1

    const/16 v0, 0x63

    .line 346
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/FloatPropertyValue;

    invoke-static {p0, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/properties/FloatPropertyValue;)Z

    move-result p0

    return p0
.end method

.method static isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/properties/FloatPropertyValue;)Z
    .locals 1

    const/16 v0, 0x34

    .line 350
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 351
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 352
    sget-object p0, Lcom/itextpdf/layout/properties/FloatPropertyValue;->NONE:Lcom/itextpdf/layout/properties/FloatPropertyValue;

    invoke-virtual {p1, p0}, Lcom/itextpdf/layout/properties/FloatPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static removeFloatsAboveRendererBottom(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ")V"
        }
    .end annotation

    .line 236
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p1

    .line 238
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 239
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v1

    cmpl-float v1, v1, p1

    if-ltz v1, :cond_0

    .line 240
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static removeParentArtifactsOnPageSplitIfOnlyFloatsOverflow(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 5

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 372
    invoke-interface {p0, v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v0, 0x5a

    .line 373
    invoke-interface {p0, v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v0, 0x6a

    .line 374
    invoke-interface {p0, v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 376
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorders(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    const/16 v2, 0xd

    .line 377
    invoke-interface {p0, v2, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v2, 0xa

    .line 378
    invoke-interface {p0, v2, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 379
    aget-object v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 380
    new-instance v2, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v4, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    invoke-direct {v2, v4, v1, v3}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    const/16 v1, 0xc

    invoke-interface {p0, v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_0
    const/4 v1, 0x3

    .line 382
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 383
    new-instance v2, Lcom/itextpdf/layout/borders/SolidBorder;

    sget-object v4, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    invoke-direct {v2, v4, v0, v3}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FF)V

    const/16 v0, 0xb

    invoke-interface {p0, v0, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_1
    const/16 v0, 0x2e

    .line 386
    invoke-static {v3}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v0, 0x2b

    .line 387
    invoke-static {v3}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v0, 0x32

    .line 388
    invoke-static {v3}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v0, 0x2f

    .line 389
    invoke-static {v3}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    return-void
.end method
