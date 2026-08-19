.class public Lcom/itextpdf/layout/renderer/LineRenderer;
.super Lcom/itextpdf/layout/renderer/AbstractRenderer;
.source "LineRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;,
        Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;,
        Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;
    }
.end annotation


# static fields
.field private static final MIN_MAX_WIDTH_CORRECTION_EPS:F = 0.001f

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field protected levels:[B

.field protected maxAscent:F

.field private maxBlockAscent:F

.field private maxBlockDescent:F

.field protected maxDescent:F

.field maxTextAscent:F

.field maxTextDescent:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const-class v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>()V

    return-void
.end method

.method static adjustChildPositionsAfterReordering(Ljava/util/List;F)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;F)V"
        }
    .end annotation

    .line 1137
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1138
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1140
    instance-of v1, v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v1, :cond_5

    .line 1141
    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->calculateLineWidth()F

    move-result v1

    .line 1142
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getMargins()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v2

    const/4 v3, 0x1

    .line 1143
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v4

    const-string v5, "Property {0} in percents is not supported"

    if-nez v4, :cond_1

    sget-object v4, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1144
    const-string v6, "right margin"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x3

    .line 1147
    aget-object v6, v2, v4

    invoke-virtual {v6}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1148
    const-string v7, "left margin"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1151
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPaddings()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v6

    .line 1152
    aget-object v7, v6, v3

    invoke-virtual {v7}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1153
    const-string v8, "right padding"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1156
    :cond_3
    aget-object v7, v6, v4

    invoke-virtual {v7}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1157
    const-string v8, "left padding"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1160
    :cond_4
    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v5

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    add-float/2addr v5, v2

    aget-object v2, v6, v3

    .line 1161
    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    add-float/2addr v5, v2

    aget-object v2, v6, v4

    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    add-float/2addr v5, v2

    add-float/2addr v1, v5

    .line 1162
    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_1

    .line 1164
    :cond_5
    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    .line 1165
    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    sub-float v2, p1, v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    :goto_1
    add-float/2addr p1, v1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private adjustChildrenYLineDefaultMode()V
    .locals 6

    .line 1615
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    sub-float/2addr v0, v1

    .line 1617
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1618
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1621
    :cond_0
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1622
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;

    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;->getDescent()F

    move-result v3

    .line 1623
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v5

    sub-float v5, v0, v5

    add-float/2addr v5, v3

    invoke-interface {v2, v4, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_0

    .line 1625
    :cond_1
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->isInlineBlockChild(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1626
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getLastYLineRecursively()Ljava/lang/Float;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    .line 1628
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_2
    sub-float v3, v0, v3

    .line 1627
    invoke-interface {v2, v4, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private adjustLineOnFloatPlaced(Lcom/itextpdf/kernel/geom/Rectangle;ILcom/itextpdf/layout/properties/FloatPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 2

    .line 1184
    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_1

    .line 1188
    :cond_0
    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p4

    .line 1189
    sget-object v0, Lcom/itextpdf/layout/properties/FloatPropertyValue;->LEFT:Lcom/itextpdf/layout/properties/FloatPropertyValue;

    invoke-virtual {p3, v0}, Lcom/itextpdf/layout/properties/FloatPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1190
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p3

    sub-float/2addr p3, p4

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1191
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_3

    .line 1193
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1194
    invoke-static {p3}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1195
    invoke-interface {p3, p4, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1200
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p2

    sub-float/2addr p2, p4

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_3
    :goto_1
    return-void
.end method

.method private applyOtf()Lcom/itextpdf/layout/properties/BaseDirection;
    .locals 5

    const/4 v0, 0x7

    .line 1375
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/BaseDirection;

    .line 1376
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1377
    instance-of v4, v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v4, :cond_0

    .line 1378
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyOtf()V

    if-eqz v1, :cond_1

    .line 1379
    sget-object v4, Lcom/itextpdf/layout/properties/BaseDirection;->NO_BIDI:Lcom/itextpdf/layout/properties/BaseDirection;

    if-ne v1, v4, :cond_0

    .line 1380
    :cond_1
    invoke-interface {v3, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/BaseDirection;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private calculateTab(Lcom/itextpdf/kernel/geom/Rectangle;FLcom/itextpdf/layout/element/TabStop;Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;)F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "F",
            "Lcom/itextpdf/layout/element/TabStop;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ")F"
        }
    .end annotation

    .line 1280
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1281
    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_0

    .line 1284
    :cond_0
    sget-object v0, Lcom/itextpdf/layout/renderer/LineRenderer$1;->$SwitchMap$com$itextpdf$layout$properties$TabAlignment:[I

    invoke-virtual {p3}, Lcom/itextpdf/layout/element/TabStop;->getTabAlignment()Lcom/itextpdf/layout/properties/TabAlignment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/TabAlignment;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    move p3, v1

    goto :goto_3

    .line 1294
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/high16 v0, -0x40800000    # -1.0f

    move v4, v0

    move v3, v1

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1295
    move-object v5, v4

    check-cast v5, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->getTabAnchorCharacterPosition()F

    move-result v5

    cmpl-float v6, v0, v5

    if-eqz v6, :cond_2

    move v4, v5

    goto :goto_2

    .line 1299
    :cond_2
    invoke-interface {v4}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    move v4, v5

    goto :goto_1

    :cond_3
    :goto_2
    cmpl-float p4, v4, v0

    if-nez p4, :cond_4

    move v4, v1

    .line 1305
    :cond_4
    invoke-virtual {p3}, Lcom/itextpdf/layout/element/TabStop;->getTabPosition()F

    move-result p3

    sub-float/2addr p3, p2

    sub-float/2addr p3, v4

    sub-float/2addr p3, v3

    goto :goto_3

    .line 1289
    :cond_5
    invoke-virtual {p3}, Lcom/itextpdf/layout/element/TabStop;->getTabPosition()F

    move-result p3

    sub-float/2addr p3, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float p4, v2, p4

    sub-float/2addr p3, p4

    goto :goto_3

    .line 1286
    :cond_6
    invoke-virtual {p3}, Lcom/itextpdf/layout/element/TabStop;->getTabPosition()F

    move-result p3

    sub-float/2addr p3, p2

    sub-float/2addr p3, v2

    :goto_3
    cmpg-float p4, p3, v1

    if-gez p4, :cond_7

    goto :goto_4

    :cond_7
    move v1, p3

    :goto_4
    add-float p3, p2, v1

    add-float/2addr p3, v2

    .line 1311
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p4

    cmpl-float p3, p3, p4

    if-lez p3, :cond_8

    add-float/2addr p2, v2

    add-float/2addr p2, v1

    .line 1312
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    sub-float/2addr p2, p1

    sub-float/2addr v1, p2

    :cond_8
    const/16 p1, 0x4d

    .line 1315
    invoke-static {v1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p2

    invoke-interface {p5, p1, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1316
    iget p1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    iget p2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 p2, 0x55

    invoke-interface {p5, p2, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    return v1
.end method

.method private calculateTab(Lcom/itextpdf/layout/renderer/IRenderer;FF)Lcom/itextpdf/layout/element/TabStop;
    .locals 3

    .line 1255
    invoke-direct {p0, p2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getNextTabStop(F)Lcom/itextpdf/layout/element/TabStop;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1258
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/LineRenderer;->processDefaultTab(Lcom/itextpdf/layout/renderer/IRenderer;FF)V

    return-object v1

    :cond_0
    const/16 p3, 0x44

    .line 1262
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/TabStop;->getTabLeader()Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

    move-result-object v2

    invoke-interface {p1, p3, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1263
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/TabStop;->getTabPosition()F

    move-result p3

    sub-float/2addr p3, p2

    invoke-static {p3}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p2

    const/16 p3, 0x4d

    invoke-interface {p1, p3, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1264
    iget p2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    iget p3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    sub-float/2addr p2, p3

    invoke-static {p2}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p2

    const/16 p3, 0x55

    invoke-interface {p1, p3, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1266
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/TabStop;->getTabAlignment()Lcom/itextpdf/layout/properties/TabAlignment;

    move-result-object p1

    sget-object p2, Lcom/itextpdf/layout/properties/TabAlignment;->LEFT:Lcom/itextpdf/layout/properties/TabAlignment;

    if-ne p1, p2, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method private decreaseRelativeWidthByChildAdditionalWidth(Lcom/itextpdf/layout/renderer/IRenderer;F)F
    .locals 2

    .line 1602
    instance-of v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v0, :cond_1

    .line 1603
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    .line 1604
    move-object p2, p1

    check-cast p2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1605
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1606
    invoke-virtual {p2, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1607
    invoke-virtual {p2, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1609
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p2

    :cond_1
    return p2
.end method

.method private getLastNonFloatChildRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 3

    .line 1222
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1223
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1224
    invoke-static {v1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private getNextTabStop(F)Lcom/itextpdf/layout/element/TabStop;
    .locals 2

    const/16 v0, 0x45

    .line 1233
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1239
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 1242
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/layout/element/TabStop;

    :cond_1
    return-object v1
.end method

.method private hasInlineBlocksWithVerticalAlignment()Z
    .locals 4

    .line 1634
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x88

    .line 1635
    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->BASELINE:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    .line 1637
    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->getType()Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    move-result-object v1

    if-eq v3, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static isChildFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 2

    const/16 v0, 0x63

    .line 1388
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/FloatPropertyValue;

    .line 1389
    instance-of v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v1, :cond_0

    .line 1390
    invoke-static {p0, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/properties/FloatPropertyValue;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isInlineBlockChild(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1

    .line 1394
    instance-of v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private processDefaultTab(Lcom/itextpdf/layout/renderer/IRenderer;FF)V
    .locals 2

    const/16 v0, 0x43

    .line 1322
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    .line 1323
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    rem-float v0, p2, v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1324
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, p2

    cmpl-float v1, v1, p3

    if-lez v1, :cond_0

    sub-float/2addr p3, p2

    .line 1325
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1327
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p2

    const/16 p3, 0x4d

    invoke-interface {p1, p3, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1328
    iget p2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    iget p3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    sub-float/2addr p2, p3

    invoke-static {p2}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p2

    const/16 p3, 0x55

    invoke-interface {p1, p3, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method static reorder(Lcom/itextpdf/layout/renderer/LineRenderer;Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;[I)V
    .locals 13

    .line 1099
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->getStarterNonTextRenderers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->setChildRenderers(Ljava/util/List;)V

    .line 1101
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->getLineGlyphs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1103
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1104
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v3, v3, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->renderer:Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 1105
    new-instance v4, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-direct {v4, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/renderer/TextRenderer;)V

    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->removeReversedRanges()Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v4

    .line 1106
    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 1109
    invoke-virtual {p1, v3}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->getInsertAfterAndRemove(Lcom/itextpdf/layout/renderer/TextRenderer;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllChildRenderers(Ljava/util/List;)V

    .line 1111
    new-instance v5, Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v6, v4, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    iput-object v5, v4, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 1112
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v8, v1

    move v6, v2

    move v7, v6

    .line 1114
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v9, v9, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->renderer:Lcom/itextpdf/layout/renderer/TextRenderer;

    if-ne v9, v3, :cond_2

    .line 1115
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v9, v9, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v6, 0x1

    .line 1116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 1117
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v10, v10, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->renderer:Lcom/itextpdf/layout/renderer/TextRenderer;

    if-ne v10, v3, :cond_0

    aget v10, p2, v6

    aget v11, p2, v9

    const/4 v12, 0x1

    add-int/2addr v11, v12

    if-ne v10, v11, :cond_0

    .line 1119
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v10, v10, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-static {v10}, Lcom/itextpdf/io/util/TextUtil;->isSpaceOrWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1120
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    iget-object v10, v10, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-static {v10}, Lcom/itextpdf/io/util/TextUtil;->isSpaceOrWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v10

    if-nez v10, :cond_0

    move v8, v12

    goto :goto_2

    :cond_0
    if-eqz v8, :cond_1

    .line 1125
    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->initReversedRanges()Ljava/util/List;

    move-result-object v8

    sub-int/2addr v7, v2

    sub-int/2addr v6, v2

    filled-new-array {v7, v6}, [I

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v1

    :cond_1
    move v7, v9

    :goto_2
    move v6, v9

    goto :goto_1

    .line 1131
    :cond_2
    iget-object v2, v4, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v2, v5}, Lcom/itextpdf/io/font/otf/GlyphLine;->setGlyphs(Ljava/util/List;)V

    move v2, v7

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private replaceSplitRendererKidFloats(Ljava/util/Map;Lcom/itextpdf/layout/renderer/LineRenderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;",
            "Lcom/itextpdf/layout/renderer/LineRenderer;",
            ")V"
        }
    .end annotation

    .line 1206
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {p2, v1, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->setChildRenderer(ILcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    goto :goto_0

    .line 1210
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->setChildRenderer(ILcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    goto :goto_0

    .line 1213
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    .line 1214
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1215
    invoke-virtual {p2, p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->removeChildRenderer(I)Lcom/itextpdf/layout/renderer/IRenderer;

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private resolveChildrenFonts()V
    .locals 5

    .line 1581
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1583
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1584
    instance-of v4, v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v4, :cond_1

    .line 1585
    check-cast v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v3, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->resolveFonts(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 1589
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 1595
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->setChildRenderers(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method static splitLineIntoGlyphs(Lcom/itextpdf/layout/renderer/LineRenderer;)Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;
    .locals 7

    .line 1072
    new-instance v0, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;

    invoke-direct {v0}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;-><init>()V

    .line 1076
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v1, :cond_0

    goto :goto_3

    .line 1080
    :cond_0
    instance-of v4, v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v4, :cond_3

    .line 1081
    check-cast v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    iget-object v2, v3, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 1082
    iget v4, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    :goto_1
    iget v5, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v4, v5, :cond_2

    .line 1083
    invoke-virtual {v2, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/io/util/TextUtil;->isNewLine(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    .line 1087
    :cond_1
    new-instance v5, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;

    invoke-virtual {v2, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/layout/renderer/TextRenderer;)V

    invoke-virtual {v0, v5}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->addLineGlyph(Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    move-object v2, v3

    goto :goto_0

    .line 1091
    :cond_3
    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->addInsertAfter(Lcom/itextpdf/layout/renderer/TextRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_0

    :cond_4
    :goto_3
    return-object v0
.end method

.method private splitNotFittingFloat(ILcom/itextpdf/layout/layout/LayoutResult;)[Lcom/itextpdf/layout/renderer/LineRenderer;
    .locals 4

    .line 1173
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->split()[Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v0

    const/4 v1, 0x0

    .line 1174
    aget-object v2, v0, v1

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllChildRenderers(Ljava/util/List;)V

    .line 1175
    aget-object v1, v0, v1

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    const/4 v1, 0x1

    .line 1176
    aget-object v2, v0, v1

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 1177
    aget-object p2, v0, v1

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v2, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllChildRenderers(Ljava/util/List;)V

    return-object v0
.end method

.method private updateBidiLevels(ILcom/itextpdf/layout/properties/BaseDirection;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    if-eqz v0, :cond_0

    .line 1538
    array-length v1, v0

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    .line 1542
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    if-nez p1, :cond_9

    if-eqz p2, :cond_9

    sget-object p1, Lcom/itextpdf/layout/properties/BaseDirection;->NO_BIDI:Lcom/itextpdf/layout/properties/BaseDirection;

    if-eq p2, p1, :cond_9

    .line 1543
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1545
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v2, :cond_2

    goto :goto_3

    .line 1549
    :cond_2
    instance-of v4, v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v4, :cond_1

    .line 1550
    check-cast v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->getText()Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v3

    .line 1551
    iget v4, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    :goto_1
    iget v5, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v4, v5, :cond_1

    .line 1552
    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    .line 1553
    invoke-static {v5}, Lcom/itextpdf/io/util/TextUtil;->isNewLine(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 1559
    :cond_3
    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v5

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicodeChars()[C

    move-result-object v5

    aget-char v5, v5, v1

    .line 1560
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1564
    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_8

    .line 1565
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_4

    .line 1566
    :cond_6
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentIdWrapper()Lcom/itextpdf/commons/actions/sequence/SequenceId;

    move-result-object v0

    :goto_4
    const/16 v2, 0x87

    .line 1567
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/MetaInfoContainer;

    if-nez v2, :cond_7

    goto :goto_5

    .line 1568
    :cond_7
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/MetaInfoContainer;->getMetaInfo()Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    move-result-object v1

    .line 1569
    :goto_5
    invoke-static {p1}, Lcom/itextpdf/io/util/ArrayUtil;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-static {p2, p1, v0, v1}, Lcom/itextpdf/layout/renderer/TypographyUtils;->getBidiLevels(Lcom/itextpdf/layout/properties/BaseDirection;[ILcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    goto :goto_6

    .line 1572
    :cond_8
    iput-object v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    :cond_9
    :goto_6
    return-void
.end method

.method private updateChildrenParent()V
    .locals 2

    .line 1332
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1333
    invoke-interface {v1, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected adjustChildrenYLine()Lcom/itextpdf/layout/renderer/LineRenderer;
    .locals 2

    .line 956
    sget-object v0, Lcom/itextpdf/layout/properties/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/properties/RenderingMode;

    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 957
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->hasInlineBlocksWithVerticalAlignment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper;->adjustChildrenYLineHtmlMode(Lcom/itextpdf/layout/renderer/LineRenderer;)V

    goto :goto_0

    .line 960
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->adjustChildrenYLineDefaultMode()V

    :goto_0
    return-object p0
.end method

.method protected applyLeading(F)V
    .locals 3

    .line 967
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 968
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 969
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 970
    invoke-static {v1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 971
    invoke-interface {v1, v2, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected baseCharactersCount()I
    .locals 4

    .line 910
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 911
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 912
    check-cast v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->baseCharactersCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public containsImage()Z
    .locals 2

    .line 993
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 994
    instance-of v1, v1, Lcom/itextpdf/layout/renderer/ImageRenderer;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected createOverflowRenderer()Lcom/itextpdf/layout/renderer/LineRenderer;
    .locals 1

    .line 932
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    return-object v0
.end method

.method protected createSplitRenderer()Lcom/itextpdf/layout/renderer/LineRenderer;
    .locals 1

    .line 928
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    return-object v0
.end method

.method getAscentDescentOfLayoutedChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/properties/RenderingMode;Z)[F
    .locals 2

    .line 1440
    instance-of v0, p1, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 1441
    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1442
    sget-object p2, Lcom/itextpdf/layout/properties/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/properties/RenderingMode;

    if-ne p2, p3, :cond_0

    instance-of p2, p1, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz p2, :cond_0

    .line 1443
    check-cast p1, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-static {p1}, Lcom/itextpdf/layout/renderer/LineHeightHelper;->getActualAscenderDescender(Lcom/itextpdf/layout/renderer/AbstractRenderer;)[F

    move-result-object p1

    return-object p1

    .line 1445
    :cond_0
    check-cast p1, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;

    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;->getAscent()F

    move-result p2

    .line 1446
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;->getDescent()F

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    if-eqz p4, :cond_4

    .line 1448
    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result p2

    if-eq p2, v1, :cond_4

    .line 1449
    instance-of p2, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz p2, :cond_3

    .line 1450
    move-object p2, p1

    check-cast p2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getLastYLineRecursively()Ljava/lang/Float;

    move-result-object p2

    if-nez p2, :cond_2

    .line 1452
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    move p2, p1

    goto :goto_0

    .line 1454
    :cond_2
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result p3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p4

    sub-float/2addr p3, p4

    .line 1455
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p1

    sub-float/2addr p2, p1

    neg-float p1, p2

    move p2, p3

    goto :goto_1

    .line 1458
    :cond_3
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p2

    :goto_0
    move p1, p3

    goto :goto_1

    :cond_4
    move p1, p3

    move p2, p1

    :goto_1
    const/4 p3, 0x2

    .line 1462
    new-array p3, p3, [F

    const/4 p4, 0x0

    aput p2, p3, p4

    const/4 p2, 0x1

    aput p1, p3, p2

    return-object p3
.end method

.method getBottomLeadingIndent(Lcom/itextpdf/layout/properties/Leading;)F
    .locals 6

    .line 1045
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Leading;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 1050
    invoke-static {v0}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    const/16 v3, 0x18

    invoke-virtual {p0, v3, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/UnitValue;

    .line 1051
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1052
    sget-object v4, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    .line 1053
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1052
    const-string v5, "Property {0} in percents is not supported"

    invoke-static {v5, v3}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1060
    :cond_0
    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    cmpl-float v3, v3, v0

    if-nez v3, :cond_1

    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    cmpl-float v3, v3, v0

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->containsImage()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1061
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    .line 1062
    :goto_0
    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    cmpl-float v4, v4, v0

    if-nez v4, :cond_2

    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    cmpl-float v0, v4, v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->containsImage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1063
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    neg-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    :goto_1
    neg-float v1, v0

    sub-float/2addr v3, v0

    .line 1064
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Leading;->getValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float/2addr v3, p1

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iget p1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    neg-float p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    add-float/2addr p1, v0

    return p1

    .line 1067
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1047
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Leading;->getValue()F

    move-result p1

    iget v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 1048
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    sub-float/2addr p1, v0

    div-float/2addr p1, v2

    return p1
.end method

.method protected getFirstYLineRecursively()Ljava/lang/Float;
    .locals 1

    .line 820
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getYLine()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected getLastYLineRecursively()Ljava/lang/Float;
    .locals 1

    .line 825
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getYLine()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getLeadingValue(Lcom/itextpdf/layout/properties/Leading;)F
    .locals 2

    .line 803
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Leading;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 807
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->getTopLeadingIndent(Lcom/itextpdf/layout/properties/Leading;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->getBottomLeadingIndent(Lcom/itextpdf/layout/properties/Leading;)F

    move-result p1

    add-float/2addr v0, p1

    return v0

    .line 809
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 805
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Leading;->getValue()F

    move-result p1

    iget v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public getMaxAscent()F
    .locals 1

    .line 791
    iget v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    return v0
.end method

.method public getMaxDescent()F
    .locals 1

    .line 795
    iget v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    return v0
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 5

    .line 1003
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1004
    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v3

    const v4, 0x49742400    # 1000000.0f

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    .line 1003
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/layout/LineLayoutResult;

    .line 1005
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    return-object v0
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 815
    new-instance v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-direct {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;-><init>()V

    return-object v0
.end method

.method protected getNumberOfSpaces()I
    .locals 4

    .line 879
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 880
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 881
    check-cast v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getNumberOfSpaces()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method getTopLeadingIndent(Lcom/itextpdf/layout/properties/Leading;)F
    .locals 6

    .line 1018
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Leading;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 1023
    invoke-static {v0}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    const/16 v3, 0x18

    invoke-virtual {p0, v3, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/UnitValue;

    .line 1024
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1025
    sget-object v4, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    .line 1026
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1025
    const-string v5, "Property {0} in percents is not supported"

    invoke-static {v5, v3}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1033
    :cond_0
    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    cmpl-float v3, v3, v0

    if-nez v3, :cond_1

    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    cmpl-float v3, v3, v0

    if-nez v3, :cond_1

    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    .line 1034
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->containsImage()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    .line 1035
    :goto_0
    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    cmpl-float v4, v4, v0

    if-nez v4, :cond_2

    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    cmpl-float v4, v4, v0

    if-nez v4, :cond_2

    iget v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    .line 1036
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->containsImage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    neg-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    :goto_1
    sub-float v0, v3, v0

    .line 1037
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Leading;->getValue()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    iget p1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    sub-float/2addr p1, v0

    return p1

    .line 1040
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1020
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Leading;->getValue()F

    move-result p1

    iget v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 1021
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    sub-float/2addr p1, v0

    div-float/2addr p1, v2

    return p1
.end method

.method public getYLine()F
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    sub-float/2addr v0, v1

    return v0
.end method

.method hasChildRendererInHtmlMode()Z
    .locals 4

    .line 1009
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1010
    sget-object v2, Lcom/itextpdf/layout/properties/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/properties/RenderingMode;

    const/16 v3, 0x7b

    invoke-interface {v1, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/properties/RenderingMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isForceOverflowForTextRendererPartialResult(Lcom/itextpdf/layout/renderer/IRenderer;ZLcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/layout/layout/LayoutContext;Lcom/itextpdf/kernel/geom/Rectangle;Z)Z
    .locals 2

    const/16 v0, 0x67

    if-eqz p2, :cond_0

    .line 1415
    invoke-virtual {p0, v0, p3}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1417
    :cond_0
    new-instance p3, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    .line 1418
    invoke-virtual {p4}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p4

    invoke-virtual {p4}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result p4

    invoke-direct {v1, p4, p5}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {p3, v1, p6}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    .line 1417
    invoke-interface {p1, p3}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 1421
    sget-object p2, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1423
    :cond_1
    instance-of p2, p1, Lcom/itextpdf/layout/layout/TextLayoutResult;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 1424
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->isWordHasBeenSplit()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public justify(F)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x3d

    .line 829
    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 830
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getLastNonFloatChildRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 834
    :cond_0
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v4

    add-float/2addr v4, v1

    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    .line 835
    invoke-interface {v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    .line 836
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getNumberOfSpaces()I

    move-result v5

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->baseCharactersCount()I

    move-result v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v7, v2

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    .line 841
    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move v4, v6

    :cond_1
    mul-float/2addr v2, v4

    mul-float/2addr v8, v4

    .line 847
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v4

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 849
    invoke-static {v9}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    .line 852
    :cond_2
    invoke-interface {v9}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v10

    sub-float v10, v4, v10

    .line 853
    invoke-interface {v9, v10, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 855
    instance-of v10, v9, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v10, :cond_6

    .line 856
    move-object v10, v9

    check-cast v10, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/16 v11, 0x1d

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const/16 v12, 0xf

    .line 857
    invoke-virtual {v10, v12}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v13

    const/16 v14, 0x4e

    .line 858
    invoke-virtual {v10, v14}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v15

    if-nez v13, :cond_3

    move v13, v6

    goto :goto_1

    .line 860
    :cond_3
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    :goto_1
    div-float v16, v8, v11

    add-float v13, v13, v16

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    .line 859
    invoke-interface {v9, v12, v13}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    if-nez v15, :cond_4

    move v12, v6

    goto :goto_2

    .line 863
    :cond_4
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v12

    :goto_2
    div-float v11, v2, v11

    add-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 862
    invoke-interface {v9, v14, v11}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    if-ne v9, v3, :cond_5

    .line 865
    invoke-virtual {v10}, Lcom/itextpdf/layout/renderer/TextRenderer;->lineLength()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 866
    :cond_5
    invoke-virtual {v10}, Lcom/itextpdf/layout/renderer/TextRenderer;->lineLength()I

    move-result v11

    :goto_3
    int-to-float v11, v11

    mul-float/2addr v11, v8

    .line 867
    invoke-virtual {v10}, Lcom/itextpdf/layout/renderer/TextRenderer;->getNumberOfSpaces()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v2

    add-float/2addr v11, v10

    .line 868
    invoke-interface {v9}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    .line 869
    invoke-interface {v9}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v12

    add-float/2addr v12, v11

    invoke-virtual {v10, v12}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 871
    :cond_6
    invoke-interface {v9}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v9

    add-float/2addr v4, v9

    goto/16 :goto_0

    .line 874
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 59

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->isClippedHeight()Z

    move-result v11

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v12

    const/16 v13, 0x67

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v12, :cond_1

    .line 121
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    .line 122
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    .line 125
    invoke-static {v12, v10}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustLineAreaAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 126
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 128
    :cond_0
    invoke-virtual {v8, v13}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    .line 130
    sget-object v1, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-virtual {v8, v13, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    move v1, v14

    move/from16 v16, v1

    goto :goto_0

    :cond_1
    move v1, v15

    move/from16 v16, v1

    const/4 v0, 0x0

    .line 134
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v3, 0x76

    invoke-virtual {v8, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 136
    instance-of v2, v9, Lcom/itextpdf/layout/layout/LineLayoutContext;

    if-eqz v2, :cond_2

    move-object v2, v9

    check-cast v2, Lcom/itextpdf/layout/layout/LineLayoutContext;

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/itextpdf/layout/layout/LineLayoutContext;

    invoke-direct {v2, v9}, Lcom/itextpdf/layout/layout/LineLayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutContext;)V

    :goto_1
    move-object v6, v2

    .line 139
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LineLayoutContext;->getTextIndent()F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_3

    .line 141
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LineLayoutContext;->getTextIndent()F

    move-result v2

    invoke-virtual {v10, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 142
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LineLayoutContext;->getTextIndent()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 145
    :cond_3
    new-instance v2, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v3

    .line 146
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v2, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->updateChildrenParent()V

    .line 150
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->addPageByID(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 153
    sget-object v2, Lcom/itextpdf/layout/properties/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/properties/RenderingMode;

    const/16 v7, 0x7b

    invoke-virtual {v8, v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/properties/RenderingMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->hasChildRendererInHtmlMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineHeightHelper;->getActualAscenderDescender(Lcom/itextpdf/layout/renderer/AbstractRenderer;)[F

    move-result-object v2

    .line 156
    aget v3, v2, v15

    iput v3, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    .line 157
    aget v2, v2, v14

    iput v2, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    goto :goto_2

    .line 159
    :cond_4
    iput v5, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    .line 160
    iput v5, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    .line 162
    :goto_2
    iput v5, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    .line 163
    iput v5, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    const v2, -0x1f528714    # -1.0E20f

    .line 164
    iput v2, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    const v2, 0x60ad78ec    # 1.0E20f

    .line 165
    iput v2, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    .line 169
    new-instance v4, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-direct {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>()V

    if-eqz v24, :cond_5

    .line 172
    new-instance v2, Lcom/itextpdf/layout/renderer/SumSumWidthHandler;

    invoke-direct {v2, v4}, Lcom/itextpdf/layout/renderer/SumSumWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    goto :goto_3

    .line 174
    :cond_5
    new-instance v2, Lcom/itextpdf/layout/renderer/MaxSumWidthHandler;

    invoke-direct {v2, v4}, Lcom/itextpdf/layout/renderer/MaxSumWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    :goto_3
    move-object v3, v2

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->resolveChildrenFonts()V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->trimFirst()I

    move-result v2

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->applyOtf()Lcom/itextpdf/layout/properties/BaseDirection;

    move-result-object v15

    .line 183
    invoke-direct {v8, v2, v15}, Lcom/itextpdf/layout/renderer/LineRenderer;->updateBidiLevels(ILcom/itextpdf/layout/properties/BaseDirection;)V

    .line 190
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 191
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 192
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 195
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 196
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 198
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/16 v28, -0x1

    move-object/from16 v33, v9

    move-object/from16 v31, v15

    move/from16 v38, v28

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    .line 203
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v17

    move-object/from16 v39, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v0

    move-object/from16 v40, v4

    if-ge v15, v0, :cond_66

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 206
    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v17

    move/from16 v42, v9

    add-float v9, v17, v36

    move-object/from16 v43, v13

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v13

    .line 207
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v17

    move-object/from16 v44, v2

    sub-float v2, v17, v36

    move-object/from16 v45, v12

    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v12

    invoke-direct {v4, v9, v13, v2, v12}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    const/16 v9, 0x7b

    .line 209
    invoke-interface {v0, v9}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/itextpdf/layout/properties/RenderingMode;

    .line 211
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->isTextRendererAndRequiresSpecialScriptPreLayoutProcessing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 212
    invoke-static {}, Lcom/itextpdf/layout/renderer/TypographyUtils;->isPdfCalligraphAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 213
    invoke-static {v8, v15}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->processSpecialScriptPreLayout(Lcom/itextpdf/layout/renderer/LineRenderer;I)V

    :cond_6
    const/16 v18, 0x1

    move-object/from16 v17, v14

    move-object/from16 v19, v0

    move/from16 v20, v15

    move-object/from16 v21, v29

    move/from16 v22, v24

    move-object/from16 v23, v3

    .line 215
    invoke-static/range {v17 .. v23}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->resetTextSequenceIfItEnded(Ljava/util/Map;ZLcom/itextpdf/layout/renderer/IRenderer;ILcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;ZLcom/itextpdf/layout/renderer/AbstractWidthHandler;)V

    const/16 v18, 0x0

    move-object/from16 v17, v7

    .line 218
    invoke-static/range {v17 .. v23}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->resetTextSequenceIfItEnded(Ljava/util/Map;ZLcom/itextpdf/layout/renderer/IRenderer;ILcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;ZLcom/itextpdf/layout/renderer/AbstractWidthHandler;)V

    .line 222
    instance-of v2, v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v2, :cond_7

    const/16 v13, 0xf

    .line 224
    invoke-interface {v0, v13}, Lcom/itextpdf/layout/renderer/IRenderer;->deleteOwnProperty(I)V

    const/16 v13, 0x4e

    .line 225
    invoke-interface {v0, v13}, Lcom/itextpdf/layout/renderer/IRenderer;->deleteOwnProperty(I)V

    goto/16 :goto_7

    .line 226
    :cond_7
    instance-of v13, v0, Lcom/itextpdf/layout/renderer/TabRenderer;

    if-eqz v13, :cond_b

    if-eqz v30, :cond_8

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v13

    add-int/lit8 v9, v15, -0x1

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 229
    new-instance v13, Lcom/itextpdf/layout/layout/LayoutContext;

    move-object/from16 v23, v14

    new-instance v14, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v17

    move-object/from16 v46, v7

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v7

    invoke-direct {v14, v7, v4}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v13, v14, v11}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    invoke-interface {v9, v13}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    .line 231
    invoke-interface {v9}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    add-float v36, v36, v7

    .line 232
    invoke-interface {v9}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    invoke-virtual {v3, v7}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    goto :goto_5

    :cond_8
    move-object/from16 v46, v7

    move-object/from16 v23, v14

    :goto_5
    move/from16 v7, v36

    .line 234
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v9

    invoke-direct {v8, v0, v7, v9}, Lcom/itextpdf/layout/renderer/LineRenderer;->calculateTab(Lcom/itextpdf/layout/renderer/IRenderer;FF)Lcom/itextpdf/layout/element/TabStop;

    move-result-object v9

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    if-ne v15, v13, :cond_9

    const/16 v30, 0x0

    goto :goto_6

    :cond_9
    move-object/from16 v30, v9

    :goto_6
    if-eqz v30, :cond_a

    add-int/lit8 v0, v15, 0x1

    move/from16 v36, v7

    move/from16 v35, v15

    move-object/from16 v14, v23

    move-object/from16 v4, v40

    move/from16 v9, v42

    move-object/from16 v13, v43

    move-object/from16 v2, v44

    move-object/from16 v12, v45

    move-object/from16 v7, v46

    move v15, v0

    move-object/from16 v0, v39

    goto/16 :goto_4

    :cond_a
    move/from16 v36, v7

    goto :goto_8

    :cond_b
    :goto_7
    move-object/from16 v46, v7

    move-object/from16 v23, v14

    :goto_8
    if-eqz v30, :cond_c

    .line 245
    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/layout/element/TabStop;->getTabAlignment()Lcom/itextpdf/layout/properties/TabAlignment;

    move-result-object v7

    sget-object v9, Lcom/itextpdf/layout/properties/TabAlignment;->ANCHOR:Lcom/itextpdf/layout/properties/TabAlignment;

    if-ne v7, v9, :cond_c

    if-eqz v2, :cond_c

    const/16 v7, 0x42

    .line 247
    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/layout/element/TabStop;->getTabAnchor()Ljava/lang/Character;

    move-result-object v9

    invoke-interface {v0, v7, v9}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_c
    const/16 v7, 0x4d

    .line 251
    invoke-interface {v0, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v9

    .line 253
    invoke-interface {v0, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->hasOwnProperty(I)Z

    move-result v13

    .line 254
    instance-of v14, v9, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz v14, :cond_d

    move-object v14, v9

    check-cast v14, Lcom/itextpdf/layout/properties/UnitValue;

    invoke-virtual {v14}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 256
    invoke-virtual {v14}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v14

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v14, v14, v17

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v17

    mul-float v14, v14, v17

    .line 257
    invoke-direct {v8, v0, v14}, Lcom/itextpdf/layout/renderer/LineRenderer;->decreaseRelativeWidthByChildAdditionalWidth(Lcom/itextpdf/layout/renderer/IRenderer;F)F

    move-result v14

    const/16 v26, 0x0

    cmpl-float v17, v14, v26

    if-lez v17, :cond_e

    .line 260
    invoke-static {v14}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v14

    invoke-interface {v0, v7, v14}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    const/4 v14, 0x1

    goto :goto_9

    :cond_d
    const/16 v26, 0x0

    :cond_e
    const/4 v14, 0x0

    :goto_9
    const/16 v7, 0x63

    .line 265
    invoke-interface {v0, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/properties/FloatPropertyValue;

    move-object/from16 v48, v12

    .line 266
    instance-of v12, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v12, :cond_f

    .line 267
    invoke-static {v0, v7}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/properties/FloatPropertyValue;)Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v49, v10

    move/from16 v17, v12

    const/4 v12, 0x1

    goto :goto_a

    :cond_f
    move-object/from16 v49, v10

    move/from16 v17, v12

    const/4 v12, 0x0

    :goto_a
    if-eqz v12, :cond_1f

    .line 271
    move-object v12, v0

    check-cast v12, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v12, v7}, Lcom/itextpdf/layout/renderer/FloatingHelper;->calculateMinMaxWidthForFloat(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/properties/FloatPropertyValue;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v12

    .line 273
    invoke-virtual {v12}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v17

    if-nez v1, :cond_10

    if-lez v15, :cond_10

    const/16 v10, 0x67

    .line 280
    invoke-virtual {v8, v10}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    move-object/from16 v18, v1

    .line 282
    sget-object v1, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-virtual {v8, v10, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_b

    :cond_10
    move-object/from16 v18, v39

    .line 284
    :goto_b
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LineLayoutContext;->isFloatOverflowedToNextPageWithNothing()Z

    move-result v10

    if-nez v10, :cond_12

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_12

    if-eqz v32, :cond_11

    .line 285
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    cmpg-float v4, v17, v4

    if-gtz v4, :cond_12

    .line 286
    :cond_11
    new-instance v4, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v10, Lcom/itextpdf/layout/layout/LayoutArea;

    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v17

    move/from16 v19, v1

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v1

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v17

    move-object/from16 v20, v7

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-direct {v10, v1, v7}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    move-object/from16 v7, v45

    const/4 v1, 0x0

    invoke-direct {v4, v10, v1, v7, v11}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Ljava/util/List;Z)V

    .line 286
    invoke-interface {v0, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v1

    goto :goto_c

    :cond_12
    move/from16 v19, v1

    move-object/from16 v20, v7

    move-object/from16 v7, v45

    const/4 v1, 0x0

    :goto_c
    if-eqz v14, :cond_14

    if-eqz v13, :cond_13

    const/16 v4, 0x4d

    .line 294
    invoke-interface {v0, v4, v9}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_d

    :cond_13
    const/16 v4, 0x4d

    .line 296
    invoke-interface {v0, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->deleteOwnProperty(I)V

    .line 302
    :cond_14
    :goto_d
    instance-of v4, v1, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const v9, 0x38d1b717    # 1.0E-4f

    if-eqz v4, :cond_16

    if-nez v14, :cond_15

    .line 304
    move-object v4, v1

    check-cast v4, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v4

    goto :goto_e

    :cond_15
    move/from16 v4, v26

    .line 306
    :goto_e
    move-object v10, v1

    check-cast v10, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v10}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v10

    add-float/2addr v4, v9

    .line 307
    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    add-float/2addr v10, v9

    .line 308
    invoke-virtual {v3, v10}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    goto :goto_f

    .line 310
    :cond_16
    invoke-virtual {v12}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v4

    add-float/2addr v4, v9

    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 311
    invoke-virtual {v12}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v4

    add-float/2addr v4, v9

    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    :goto_f
    if-nez v1, :cond_17

    .line 314
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LineLayoutContext;->isFloatOverflowedToNextPageWithNothing()Z

    move-result v4

    if-nez v4, :cond_17

    .line 315
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v43

    move-object/from16 v4, v44

    move-object/from16 v12, v49

    const/4 v10, 0x2

    const/4 v13, 0x0

    goto/16 :goto_12

    .line 316
    :cond_17
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LineLayoutContext;->isFloatOverflowedToNextPageWithNothing()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 317
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v4

    const/4 v9, 0x3

    if-ne v4, v9, :cond_18

    goto/16 :goto_11

    .line 321
    :cond_18
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v4

    const/4 v10, 0x2

    if-ne v4, v10, :cond_1b

    if-eqz v2, :cond_1a

    .line 331
    invoke-direct {v8, v15, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->splitNotFittingFloat(ILcom/itextpdf/layout/layout/LayoutResult;)[Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v0

    .line 332
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    .line 333
    instance-of v2, v1, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v2, :cond_19

    .line 334
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->trimFirst()V

    .line 335
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->trimLast()F

    .line 338
    :cond_19
    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 339
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 340
    new-instance v1, Lcom/itextpdf/layout/layout/LineLayoutResult;

    iget-object v2, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v4, 0x0

    aget-object v36, v0, v4

    const/4 v4, 0x1

    aget-object v37, v0, v4

    const/16 v38, 0x0

    const/16 v34, 0x2

    move-object/from16 v33, v1

    move-object/from16 v35, v2

    invoke-direct/range {v33 .. v38}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object v7, v1

    move-object v2, v3

    move v9, v10

    move-object/from16 v11, v18

    move/from16 v6, v19

    move-object/from16 v12, v23

    move-object/from16 v55, v40

    move-object/from16 v0, v43

    move-object/from16 v4, v44

    move-object/from16 v45, v46

    const/4 v13, 0x0

    const/16 v34, 0x1

    goto/16 :goto_3b

    .line 343
    :cond_1a
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    move-object/from16 v4, v44

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    move-object/from16 v9, v43

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v13, v20

    move-object/from16 v12, v49

    .line 345
    invoke-direct {v8, v12, v15, v13, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->adjustLineOnFloatPlaced(Lcom/itextpdf/kernel/geom/Rectangle;ILcom/itextpdf/layout/properties/FloatPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_10

    :cond_1b
    move-object/from16 v13, v20

    move-object/from16 v9, v43

    move-object/from16 v4, v44

    move-object/from16 v12, v49

    if-eqz v2, :cond_1c

    .line 352
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->trimFirst()V

    .line 353
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->trimLast()F

    .line 357
    :cond_1c
    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 356
    invoke-direct {v8, v12, v15, v13, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->adjustLineOnFloatPlaced(Lcom/itextpdf/kernel/geom/Rectangle;ILcom/itextpdf/layout/properties/FloatPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    :goto_10
    const/4 v13, 0x0

    const/16 v34, 0x1

    goto :goto_12

    :cond_1d
    :goto_11
    move-object/from16 v9, v43

    move-object/from16 v4, v44

    move-object/from16 v12, v49

    const/4 v10, 0x2

    .line 318
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v13, 0x0

    invoke-interface {v4, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 320
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/layout/LineLayoutContext;->setFloatOverflowedToNextPageWithNothing(Z)Lcom/itextpdf/layout/layout/LineLayoutContext;

    :goto_12
    add-int/lit8 v15, v15, 0x1

    if-nez v32, :cond_1e

    if-eqz v1, :cond_1e

    .line 361
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e

    .line 362
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->isFirstOnRootArea()Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object v2, v3

    move-object v0, v9

    move v9, v10

    move-object v7, v13

    move-object/from16 v11, v18

    move/from16 v6, v19

    move-object/from16 v12, v23

    move-object/from16 v55, v40

    move-object/from16 v45, v46

    goto/16 :goto_3b

    :cond_1e
    move-object v2, v4

    move-object v13, v9

    move-object v10, v12

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v14, v23

    move-object/from16 v4, v40

    move/from16 v9, v42

    move-object v12, v7

    move-object/from16 v7, v46

    goto/16 :goto_4

    :cond_1f
    move-object/from16 v41, v44

    move-object/from16 v7, v45

    move-object/from16 v25, v49

    const/16 v44, 0x0

    .line 374
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->isInlineBlockChild(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v10

    move/from16 v49, v12

    .line 375
    const-string v12, "Inline block element does not fit into parent element and will be clipped"

    move-object/from16 v51, v7

    const v52, 0x3a83126f    # 0.001f

    if-eqz v10, :cond_25

    if-eqz v17, :cond_25

    .line 376
    move-object/from16 v17, v0

    check-cast v17, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v17

    if-nez v14, :cond_20

    move-object/from16 v7, v17

    goto :goto_13

    :cond_20
    move-object/from16 v7, v44

    .line 383
    :goto_13
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v17

    .line 384
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v18

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LineLayoutContext;->getTextIndent()F

    move-result v19

    move-object/from16 v53, v3

    sub-float v3, v18, v19

    if-nez v24, :cond_21

    .line 385
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v18

    add-float v18, v18, v52

    cmpl-float v18, v17, v18

    if-lez v18, :cond_21

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v18

    cmpl-float v18, v18, v3

    if-eqz v18, :cond_21

    .line 386
    new-instance v3, Lcom/itextpdf/layout/layout/LineLayoutResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x3

    move-object/from16 v17, v3

    move-object/from16 v21, v0

    move-object/from16 v22, v0

    invoke-direct/range {v17 .. v22}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object/from16 v18, v5

    move-object v5, v3

    const/16 v3, 0x1a

    goto :goto_15

    :cond_21
    move-object/from16 v18, v5

    if-eqz v7, :cond_24

    add-float v5, v17, v52

    .line 390
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/16 v5, 0x67

    .line 392
    invoke-virtual {v8, v5}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-static/range {v17 .. v17}, Lcom/itextpdf/layout/renderer/LineRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 393
    invoke-virtual {v7}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v5

    add-float v5, v5, v52

    .line 394
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 396
    :cond_22
    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 398
    invoke-virtual {v7}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v3

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_24

    .line 399
    sget-object v3, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 400
    invoke-interface {v3, v12}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_23
    const/4 v3, 0x1

    .line 402
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v3, 0x1a

    invoke-interface {v0, v3, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_14

    :cond_24
    const/16 v3, 0x1a

    :goto_14
    move-object/from16 v5, v44

    :goto_15
    if-eqz v7, :cond_26

    .line 409
    invoke-virtual {v7}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v17

    add-float v3, v17, v52

    .line 408
    invoke-virtual {v7, v3}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    .line 411
    invoke-virtual {v7}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v3

    add-float v3, v3, v52

    .line 410
    invoke-virtual {v7, v3}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    goto :goto_16

    :cond_25
    move-object/from16 v53, v3

    move-object/from16 v18, v5

    move-object/from16 v5, v44

    move-object v7, v5

    :cond_26
    :goto_16
    if-nez v5, :cond_2d

    if-eqz v2, :cond_27

    .line 418
    move-object v3, v0

    check-cast v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/4 v5, 0x1

    .line 419
    invoke-virtual {v3, v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v3

    if-eqz v3, :cond_28

    move v3, v5

    goto :goto_17

    :cond_27
    const/4 v5, 0x1

    :cond_28
    const/4 v3, 0x0

    .line 421
    :goto_17
    sget-object v5, Lcom/itextpdf/layout/properties/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/properties/RenderingMode;

    move-object/from16 v17, v12

    move-object/from16 v12, v48

    if-ne v5, v12, :cond_29

    if-eqz v2, :cond_29

    move-object v2, v0

    check-cast v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/4 v5, 0x1

    .line 423
    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v2

    if-nez v2, :cond_29

    const/4 v2, 0x1

    goto :goto_18

    :cond_29
    const/4 v2, 0x0

    :goto_18
    if-nez v1, :cond_2b

    if-gtz v15, :cond_2a

    if-nez v3, :cond_2a

    if-eqz v2, :cond_2b

    :cond_2a
    if-nez v42, :cond_2b

    const/16 v2, 0x67

    .line 429
    invoke-virtual {v8, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    .line 431
    sget-object v3, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-virtual {v8, v2, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    move-object v5, v1

    move/from16 v2, v42

    const/4 v3, 0x1

    goto :goto_19

    :cond_2b
    move v3, v1

    move-object/from16 v5, v39

    move/from16 v2, v42

    .line 434
    :goto_19
    invoke-static {v8, v2, v0, v3, v5}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->preprocessTextSequenceOverflowX(Lcom/itextpdf/layout/renderer/LineRenderer;ZLcom/itextpdf/layout/renderer/IRenderer;ZLcom/itextpdf/layout/properties/OverflowPropertyValue;)V

    .line 437
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutContext;

    move/from16 v19, v3

    new-instance v3, Lcom/itextpdf/layout/layout/LayoutArea;

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v20

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v5

    invoke-direct {v3, v5, v4}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v1, v3, v11}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    .line 437
    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v5

    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    move v1, v2

    move/from16 v42, v2

    move-object/from16 v3, v41

    move v2, v15

    move-object/from16 v54, v3

    const/16 v22, 0x1a

    move-object/from16 v3, v20

    move-object/from16 v56, v4

    move-object/from16 v55, v40

    move-object v4, v5

    move-object/from16 v57, v18

    move-object/from16 v39, v21

    move/from16 v18, v11

    move-object v11, v5

    move/from16 v5, v19

    .line 441
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->postprocessTextSequenceOverflowX(Lcom/itextpdf/layout/renderer/LineRenderer;ZILcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/layout/LayoutResult;Z)Z

    move-result v0

    move-object/from16 v4, v46

    const/4 v1, 0x0

    .line 445
    invoke-static {v4, v1, v3, v15, v11}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->updateTextSequenceLayoutResults(Ljava/util/Map;ZLcom/itextpdf/layout/renderer/IRenderer;ILcom/itextpdf/layout/layout/LayoutResult;)V

    move-object/from16 v2, v23

    const/4 v1, 0x1

    .line 447
    invoke-static {v2, v1, v3, v15, v11}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->updateTextSequenceLayoutResults(Ljava/util/Map;ZLcom/itextpdf/layout/renderer/IRenderer;ILcom/itextpdf/layout/layout/LayoutResult;)V

    .line 451
    instance-of v1, v11, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    if-eqz v1, :cond_2c

    if-eqz v7, :cond_2c

    .line 452
    move-object v5, v11

    check-cast v5, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v1

    .line 454
    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v5

    add-float v5, v5, v52

    .line 453
    invoke-virtual {v1, v5}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    .line 456
    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v5

    add-float v5, v5, v52

    .line 455
    invoke-virtual {v1, v5}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    :cond_2c
    move/from16 v20, v0

    move-object v5, v11

    move-object/from16 v11, v39

    goto :goto_1a

    :cond_2d
    move-object v3, v0

    move-object/from16 v56, v4

    move-object/from16 v17, v12

    move-object/from16 v57, v18

    move-object/from16 v2, v23

    move-object/from16 v55, v40

    move-object/from16 v54, v41

    move-object/from16 v4, v46

    move-object/from16 v12, v48

    const/16 v22, 0x1a

    move/from16 v18, v11

    move/from16 v19, v1

    move-object/from16 v11, v39

    const/16 v20, 0x0

    :goto_1a
    if-eqz v14, :cond_2f

    if-eqz v13, :cond_2e

    const/16 v0, 0x4d

    .line 463
    invoke-interface {v3, v0, v9}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_1b

    :cond_2e
    const/16 v0, 0x4d

    .line 465
    invoke-interface {v3, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->deleteOwnProperty(I)V

    .line 471
    :cond_2f
    :goto_1b
    instance-of v0, v5, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    if-eqz v0, :cond_31

    if-nez v14, :cond_30

    .line 473
    move-object v0, v5

    check-cast v0, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v0

    goto :goto_1c

    :cond_30
    const/4 v0, 0x0

    .line 475
    :goto_1c
    move-object v1, v5

    check-cast v1, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v1

    goto :goto_1d

    :cond_31
    if-eqz v7, :cond_32

    .line 477
    invoke-virtual {v7}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v0

    .line 478
    invoke-virtual {v7}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v1

    :goto_1d
    move v9, v0

    move v13, v1

    goto :goto_1e

    :cond_32
    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 481
    :goto_1e
    invoke-virtual {v8, v3, v5, v12, v10}, Lcom/itextpdf/layout/renderer/LineRenderer;->getAscentDescentOfLayoutedChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/properties/RenderingMode;Z)[F

    move-result-object v14

    move-object/from16 v7, v33

    move-object/from16 v0, v37

    .line 485
    invoke-static {v8, v7, v15, v14, v0}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->updateTextRendererSequenceAscentDescent(Lcom/itextpdf/layout/renderer/LineRenderer;Ljava/util/Map;I[FLcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;)Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;

    move-result-object v1

    .line 493
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LineLayoutContext;->getTextIndent()F

    move-result v21

    move-object/from16 v0, p0

    move/from16 v23, v9

    move-object v9, v1

    move-object/from16 v1, v53

    move-object/from16 v26, v2

    move v2, v15

    move/from16 v33, v13

    move-object v13, v3

    move-object/from16 v3, v29

    move-object/from16 v29, v4

    move/from16 v4, v32

    move-object/from16 v37, v14

    move-object v14, v5

    move-object/from16 v5, v29

    move-object/from16 v40, v6

    move-object/from16 v6, v26

    move/from16 v27, v10

    move-object/from16 v46, v29

    move-object/from16 v22, v51

    const/16 v41, 0x7b

    move-object v10, v7

    move/from16 v7, v21

    .line 490
    invoke-static/range {v0 .. v7}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->updateTextRendererSequenceMinMaxWidth(Lcom/itextpdf/layout/renderer/LineRenderer;Lcom/itextpdf/layout/renderer/AbstractWidthHandler;ILcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;ZLjava/util/Map;Ljava/util/Map;F)Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;

    move-result-object v29

    .line 495
    instance-of v0, v14, Lcom/itextpdf/layout/layout/TextLayoutResult;

    if-eqz v0, :cond_33

    move-object v5, v14

    check-cast v5, Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 496
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/TextLayoutResult;->isSplitForcedByNewline()Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v7, 0x1

    goto :goto_1f

    :cond_33
    const/4 v7, 0x0

    :goto_1f
    if-nez v20, :cond_36

    .line 498
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    if-eqz v7, :cond_34

    goto :goto_20

    :cond_34
    const/4 v1, 0x0

    goto :goto_21

    :cond_35
    :goto_20
    const/4 v1, 0x1

    :goto_21
    move/from16 v20, v1

    :cond_36
    if-eqz v20, :cond_37

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_22

    :cond_37
    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_48

    .line 506
    move-object v5, v14

    check-cast v5, Lcom/itextpdf/layout/layout/TextLayoutResult;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/TextLayoutResult;->isWordHasBeenSplit()Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/itextpdf/layout/properties/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/properties/RenderingMode;

    if-eq v0, v12, :cond_38

    move-object v0, v13

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/4 v1, 0x1

    .line 508
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v0

    if-nez v0, :cond_39

    move v0, v1

    goto :goto_23

    :cond_38
    const/4 v1, 0x1

    :cond_39
    const/4 v0, 0x0

    .line 509
    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 510
    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v2

    if-eqz v2, :cond_3a

    if-nez v42, :cond_3a

    if-nez v7, :cond_3a

    const/4 v1, 0x1

    goto :goto_24

    :cond_3a
    const/4 v1, 0x0

    .line 512
    :goto_24
    sget-object v2, Lcom/itextpdf/layout/properties/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/properties/RenderingMode;

    if-ne v2, v12, :cond_3b

    if-nez v7, :cond_3b

    if-nez v42, :cond_3b

    const/4 v2, 0x1

    goto :goto_25

    :cond_3b
    const/4 v2, 0x0

    :goto_25
    if-eqz v0, :cond_3c

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v19

    move-object v3, v11

    move-object/from16 v4, p1

    move-object/from16 v5, v25

    move/from16 v6, v18

    .line 516
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/renderer/LineRenderer;->isForceOverflowForTextRendererPartialResult(Lcom/itextpdf/layout/renderer/IRenderer;ZLcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/layout/layout/LayoutContext;Lcom/itextpdf/kernel/geom/Rectangle;Z)Z

    move-result v0

    move-object/from16 v12, v26

    move/from16 v4, v38

    move-object/from16 v5, v46

    move/from16 v18, v0

    move-object/from16 v0, v37

    goto/16 :goto_2c

    :cond_3c
    if-eqz v1, :cond_40

    if-eqz v19, :cond_3e

    .line 520
    sget-object v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    move/from16 v6, v18

    move-object/from16 v12, v26

    if-ne v11, v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_26

    :cond_3d
    const/4 v0, 0x0

    goto :goto_26

    :cond_3e
    const/16 v0, 0x67

    .line 522
    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-static {v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v0

    move/from16 v6, v18

    move-object/from16 v12, v26

    .line 524
    :goto_26
    invoke-static {v8, v15, v12, v6, v0}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->getIndexAndLayoutResultOfTheLastTextRendererContainingSpecialScripts(Lcom/itextpdf/layout/renderer/LineRenderer;ILjava/util/Map;ZZ)Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;

    move-result-object v0

    if-nez v0, :cond_3f

    move-object v5, v14

    move v2, v15

    move/from16 v1, v23

    move/from16 v0, v33

    const/16 v20, 0x0

    const/16 v42, 0x1

    goto :goto_27

    .line 534
    :cond_3f
    iget v1, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childIndex:I

    invoke-static {v15, v1, v12}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->getCurWidthRelayoutedTextSequenceDecrement(IILjava/util/Map;)F

    move-result v1

    sub-float v36, v36, v1

    .line 536
    iget v15, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childIndex:I

    .line 537
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    .line 538
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    move-object v0, v5

    check-cast v0, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v1

    .line 542
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v0

    move v2, v15

    move/from16 v15, v38

    :goto_27
    move/from16 v33, v0

    move/from16 v23, v1

    move-object v14, v5

    move v4, v15

    move-object/from16 v0, v37

    move-object/from16 v5, v46

    const/16 v18, 0x0

    move v15, v2

    goto/16 :goto_2c

    :cond_40
    move/from16 v6, v18

    move-object/from16 v12, v26

    if-eqz v2, :cond_49

    if-eqz v19, :cond_42

    .line 545
    sget-object v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    if-ne v11, v0, :cond_41

    const/4 v4, 0x1

    goto :goto_28

    :cond_41
    const/4 v4, 0x0

    goto :goto_28

    :cond_42
    const/16 v0, 0x67

    .line 547
    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-static {v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v0

    move v4, v0

    :goto_28
    if-nez v34, :cond_44

    if-eqz v16, :cond_43

    goto :goto_29

    :cond_43
    const/4 v5, 0x0

    goto :goto_2a

    :cond_44
    :goto_29
    const/4 v5, 0x1

    :goto_2a
    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v46

    move v3, v6

    .line 549
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->getIndexAndLayoutResultOfTheLastTextRendererWithNoSpecialScripts(Lcom/itextpdf/layout/renderer/LineRenderer;ILjava/util/Map;ZZZ)Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;

    move-result-object v0

    if-nez v0, :cond_45

    move v4, v15

    move-object/from16 v0, v37

    move-object/from16 v5, v46

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v42, 0x1

    goto :goto_2c

    .line 558
    :cond_45
    iget v1, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childIndex:I

    move-object/from16 v5, v46

    invoke-static {v15, v1, v5}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->getCurWidthRelayoutedTextSequenceDecrement(IILjava/util/Map;)F

    move-result v1

    sub-float v36, v36, v1

    .line 560
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    .line 562
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_46

    iget v1, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childIndex:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    goto :goto_2b

    :cond_46
    iget v1, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childIndex:I

    .line 561
    :goto_2b
    invoke-virtual {v8, v1, v9, v10}, Lcom/itextpdf/layout/renderer/LineRenderer;->updateAscentDescentAfterTextRendererSequenceProcessing(ILcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;Ljava/util/Map;)[F

    move-result-object v14

    .line 569
    iget v1, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childIndex:I

    .line 570
    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;->childLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    if-nez v1, :cond_47

    .line 571
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v3

    if-ne v2, v3, :cond_47

    const/16 v32, 0x0

    .line 574
    :cond_47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v2

    .line 577
    invoke-virtual {v2}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v3

    .line 578
    invoke-virtual {v2}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v2

    move v15, v1

    move/from16 v33, v2

    move/from16 v23, v3

    move/from16 v4, v38

    const/16 v18, 0x0

    move-object/from16 v58, v14

    move-object v14, v0

    move-object/from16 v0, v58

    goto :goto_2c

    :cond_48
    move/from16 v6, v18

    move-object/from16 v12, v26

    :cond_49
    move-object/from16 v5, v46

    move-object/from16 v0, v37

    move/from16 v4, v38

    const/16 v18, 0x0

    :goto_2c
    if-eq v15, v4, :cond_54

    if-nez v18, :cond_4a

    move/from16 v1, v49

    .line 585
    invoke-virtual {v8, v0, v13, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->updateAscentDescentAfterChildLayout([FLcom/itextpdf/layout/renderer/IRenderer;Z)V

    .line 587
    :cond_4a
    iget v0, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    iget v1, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    sub-float v3, v0, v1

    if-eqz v32, :cond_4b

    const/16 v21, 0x0

    goto :goto_2d

    .line 589
    :cond_4b
    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/layout/layout/LineLayoutContext;->getTextIndent()F

    move-result v0

    move/from16 v21, v0

    :goto_2d
    if-eqz v30, :cond_50

    .line 590
    sget-object v0, Lcom/itextpdf/layout/properties/TabAlignment;->LEFT:Lcom/itextpdf/layout/properties/TabAlignment;

    .line 591
    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/layout/element/TabStop;->getTabAlignment()Lcom/itextpdf/layout/properties/TabAlignment;

    move-result-object v1

    if-eq v0, v1, :cond_4c

    if-nez v20, :cond_4c

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-eq v0, v15, :cond_4c

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v15, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/TabRenderer;

    if-eqz v0, :cond_50

    .line 595
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    move/from16 v2, v35

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v26, v1

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    move/from16 v35, v3

    add-int/lit8 v3, v2, 0x1

    move/from16 v37, v2

    add-int/lit8 v2, v15, 0x1

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v3, v26

    move-object/from16 v1, v25

    move/from16 v26, v37

    move/from16 v2, v36

    move-object/from16 v37, v9

    move/from16 v9, v35

    move-object/from16 v35, v3

    move-object/from16 v3, v30

    move-object/from16 v44, v10

    move v10, v4

    move-object/from16 v4, v38

    move-object/from16 v45, v5

    move-object/from16 v5, v35

    .line 598
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/LineRenderer;->calculateTab(Lcom/itextpdf/kernel/geom/Rectangle;FLcom/itextpdf/layout/element/TabStop;Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;)F

    move-result v0

    .line 600
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v2, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v3

    move-object/from16 v4, v56

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v1, v2, v6}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    move-object/from16 v2, v35

    invoke-interface {v2, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    .line 603
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    add-float v3, v0, v5

    const/4 v4, 0x0

    .line 604
    invoke-interface {v2, v3, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 605
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    add-float/2addr v5, v2

    goto :goto_2e

    :cond_4d
    const/4 v4, 0x0

    .line 607
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 608
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    add-float/2addr v5, v0

    .line 609
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    .line 610
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    sub-float/2addr v5, v2

    .line 609
    invoke-interface {v1, v5, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    .line 612
    :cond_4e
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    add-float/2addr v1, v0

    .line 613
    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/layout/element/TabStop;->getTabAlignment()Lcom/itextpdf/layout/properties/TabAlignment;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/layout/properties/TabAlignment;->RIGHT:Lcom/itextpdf/layout/properties/TabAlignment;

    if-ne v2, v3, :cond_4f

    add-float v2, v36, v1

    .line 614
    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/layout/element/TabStop;->getTabPosition()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4f

    .line 615
    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/layout/element/TabStop;->getTabPosition()F

    move-result v1

    move/from16 v36, v1

    goto :goto_2f

    :cond_4f
    add-float v36, v36, v1

    :goto_2f
    add-float v1, v23, v21

    move-object/from16 v2, v53

    .line 619
    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    add-float v0, v0, v33

    add-float v0, v0, v21

    .line 620
    invoke-virtual {v2, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    move/from16 v0, v36

    const/16 v30, 0x0

    goto :goto_30

    :cond_50
    move-object/from16 v45, v5

    move-object/from16 v37, v9

    move-object/from16 v44, v10

    move/from16 v26, v35

    move-object/from16 v2, v53

    move v9, v3

    move v10, v4

    const/4 v4, 0x0

    if-nez v30, :cond_52

    .line 623
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 624
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    add-float v36, v36, v0

    :cond_51
    add-float v0, v23, v21

    .line 626
    invoke-virtual {v2, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    add-float v0, v33, v21

    .line 627
    invoke-virtual {v2, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    :cond_52
    move/from16 v0, v36

    :goto_30
    if-nez v18, :cond_53

    .line 630
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 631
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v5

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v21

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v23

    add-float v21, v21, v23

    sub-float v4, v21, v9

    invoke-direct {v3, v5, v4, v0, v9}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 630
    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/layout/LayoutArea;->setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_53
    move/from16 v36, v0

    goto :goto_31

    :cond_54
    move-object/from16 v45, v5

    move-object/from16 v37, v9

    move-object/from16 v44, v10

    move/from16 v26, v35

    move-object/from16 v2, v53

    move v10, v4

    :goto_31
    if-eqz v20, :cond_64

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->split()[Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v0

    const/4 v1, 0x0

    .line 638
    aget-object v3, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/renderer/LineRenderer;->setChildRenderers(Ljava/util/List;)V

    if-eqz v18, :cond_55

    const/4 v1, 0x1

    .line 641
    aget-object v3, v0, v1

    invoke-virtual {v3, v13}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    const/4 v1, 0x1

    const/4 v9, 0x2

    goto/16 :goto_34

    .line 643
    :cond_55
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v3, 0x1a

    invoke-virtual {v8, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v27, :cond_56

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->isFirstOnRootArea()Z

    move-result v3

    if-eqz v3, :cond_56

    const/4 v3, 0x1

    goto :goto_32

    :cond_56
    const/4 v3, 0x0

    .line 645
    :goto_32
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v4

    const/4 v9, 0x2

    if-ne v4, v9, :cond_57

    if-eqz v27, :cond_58

    if-nez v1, :cond_58

    if-nez v3, :cond_58

    .line 647
    :cond_57
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5a

    .line 648
    :cond_58
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    const/4 v5, 0x0

    .line 649
    aget-object v6, v0, v5

    invoke-virtual {v6, v4}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 652
    invoke-interface {v4}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v6

    aget-object v10, v0, v5

    if-eq v6, v10, :cond_59

    iget-object v6, v10, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 653
    aget-object v6, v0, v5

    invoke-interface {v4, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    :cond_59
    const/16 v32, 0x1

    .line 658
    :cond_5a
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    if-eqz v4, :cond_5d

    if-eqz v27, :cond_5b

    if-nez v1, :cond_5b

    if-nez v3, :cond_5b

    const/4 v1, 0x1

    .line 660
    aget-object v3, v0, v1

    invoke-virtual {v3, v13}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_33

    :cond_5b
    if-eqz v27, :cond_5c

    .line 662
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 663
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    if-ne v1, v9, :cond_5c

    .line 664
    sget-object v1, Lcom/itextpdf/layout/renderer/LineRenderer;->logger:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_5d

    move-object/from16 v3, v17

    .line 665
    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_33

    :cond_5c
    const/4 v1, 0x1

    .line 668
    aget-object v3, v0, v1

    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_34

    :cond_5d
    :goto_33
    const/4 v1, 0x1

    .line 672
    :goto_34
    aget-object v3, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v4, v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllChildRenderers(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 674
    aget-object v3, v0, v1

    move-object/from16 v4, v54

    invoke-direct {v8, v4, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->replaceSplitRendererKidFloats(Ljava/util/Map;Lcom/itextpdf/layout/renderer/LineRenderer;)V

    .line 675
    aget-object v3, v0, v1

    move-object/from16 v5, v57

    invoke-virtual {v3, v5}, Lcom/itextpdf/layout/renderer/LineRenderer;->removeAllChildRenderers(Ljava/util/Collection;)Z

    const/4 v3, 0x1

    .line 676
    aget-object v6, v0, v3

    invoke-virtual {v6, v1, v5}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllChildRenderers(ILjava/util/List;)V

    .line 679
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface/range {v43 .. v43}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5e

    const/4 v13, 0x0

    .line 680
    aput-object v13, v0, v3

    goto :goto_35

    :cond_5e
    const/4 v13, 0x0

    .line 683
    :goto_35
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5f

    .line 684
    invoke-virtual {v14}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    goto :goto_36

    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    :goto_36
    move-object/from16 v40, v1

    const/4 v1, 0x1

    .line 685
    aget-object v3, v0, v1

    if-nez v3, :cond_60

    .line 686
    new-instance v3, Lcom/itextpdf/layout/layout/LineLayoutResult;

    iget-object v6, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v10, 0x0

    aget-object v38, v0, v10

    aget-object v39, v0, v1

    const/16 v36, 0x1

    move-object/from16 v35, v3

    move-object/from16 v37, v6

    invoke-direct/range {v35 .. v40}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object v1, v3

    :goto_37
    move-object/from16 v0, v43

    goto :goto_39

    :cond_60
    if-nez v32, :cond_62

    if-eqz v34, :cond_61

    goto :goto_38

    .line 691
    :cond_61
    new-instance v1, Lcom/itextpdf/layout/layout/LineLayoutResult;

    const/4 v3, 0x1

    aget-object v50, v0, v3

    const/16 v51, 0x0

    const/16 v47, 0x3

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v46, v1

    invoke-direct/range {v46 .. v51}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_37

    .line 688
    :cond_62
    :goto_38
    new-instance v1, Lcom/itextpdf/layout/layout/LineLayoutResult;

    iget-object v3, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v6, 0x0

    aget-object v38, v0, v6

    const/4 v6, 0x1

    aget-object v39, v0, v6

    const/16 v36, 0x2

    move-object/from16 v35, v1

    move-object/from16 v37, v3

    invoke-direct/range {v35 .. v40}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_37

    .line 693
    :goto_39
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/layout/LineLayoutResult;->setFloatsOverflowedToNextPage(Ljava/util/List;)V

    if-eqz v7, :cond_63

    const/4 v3, 0x1

    .line 695
    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/layout/LineLayoutResult;->setSplitForcedByNewline(Z)Lcom/itextpdf/layout/layout/LineLayoutResult;

    :cond_63
    move-object v7, v1

    move/from16 v6, v19

    goto :goto_3b

    :cond_64
    move-object/from16 v0, v43

    move-object/from16 v4, v54

    move-object/from16 v5, v57

    const/4 v13, 0x0

    if-ne v15, v10, :cond_65

    move/from16 v38, v28

    goto :goto_3a

    :cond_65
    add-int/lit8 v15, v15, 0x1

    move/from16 v38, v10

    const/16 v32, 0x1

    :goto_3a
    move-object v13, v0

    move-object v3, v2

    move-object v2, v4

    move-object v0, v11

    move-object v14, v12

    move/from16 v1, v19

    move-object/from16 v12, v22

    move-object/from16 v10, v25

    move/from16 v35, v26

    move/from16 v9, v42

    move-object/from16 v33, v44

    move-object/from16 v7, v45

    move-object/from16 v4, v55

    move v11, v6

    move-object/from16 v6, v40

    goto/16 :goto_4

    :cond_66
    move-object v4, v2

    move-object v2, v3

    move-object/from16 v45, v7

    move-object v0, v13

    move-object v12, v14

    move-object/from16 v55, v40

    const/4 v9, 0x2

    const/4 v13, 0x0

    move v6, v1

    move-object v7, v13

    move-object/from16 v11, v39

    :goto_3b
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v17, v12

    move/from16 v20, v15

    move-object/from16 v21, v29

    move/from16 v22, v24

    move-object/from16 v23, v2

    .line 709
    invoke-static/range {v17 .. v23}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->resetTextSequenceIfItEnded(Ljava/util/Map;ZLcom/itextpdf/layout/renderer/IRenderer;ILcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;ZLcom/itextpdf/layout/renderer/AbstractWidthHandler;)V

    const/16 v18, 0x0

    move-object/from16 v17, v45

    .line 711
    invoke-static/range {v17 .. v23}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->resetTextSequenceIfItEnded(Ljava/util/Map;ZLcom/itextpdf/layout/renderer/IRenderer;ILcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;ZLcom/itextpdf/layout/renderer/AbstractWidthHandler;)V

    if-nez v7, :cond_70

    .line 716
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_67

    const/4 v1, 0x1

    goto :goto_3c

    :cond_67
    const/4 v1, 0x0

    :goto_3c
    if-nez v32, :cond_68

    if-eqz v34, :cond_69

    :cond_68
    if-nez v1, :cond_6f

    .line 717
    :cond_69
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6a

    goto/16 :goto_3f

    :cond_6a
    if-eqz v1, :cond_6b

    .line 723
    new-instance v7, Lcom/itextpdf/layout/layout/LineLayoutResult;

    iget-object v0, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v1, 0x1

    invoke-direct {v7, v1, v0, v13, v13}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto/16 :goto_41

    :cond_6b
    if-nez v32, :cond_6e

    if-eqz v34, :cond_6c

    goto :goto_3e

    .line 739
    :cond_6c
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    goto :goto_3d

    :cond_6d
    const/4 v1, 0x0

    .line 740
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    :goto_3d
    move-object v5, v0

    .line 741
    new-instance v7, Lcom/itextpdf/layout/layout/LineLayoutResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x3

    move-object v0, v7

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_40

    .line 725
    :cond_6e
    :goto_3e
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->split()[Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v1

    const/4 v2, 0x0

    .line 726
    aget-object v3, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllChildRenderers(Ljava/util/List;)V

    .line 727
    aget-object v3, v1, v2

    invoke-direct {v8, v4, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->replaceSplitRendererKidFloats(Ljava/util/Map;Lcom/itextpdf/layout/renderer/LineRenderer;)V

    .line 728
    aget-object v3, v1, v2

    invoke-virtual {v3, v5}, Lcom/itextpdf/layout/renderer/LineRenderer;->removeAllChildRenderers(Ljava/util/Collection;)Z

    const/4 v3, 0x1

    .line 734
    aget-object v4, v1, v3

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllChildRenderers(Ljava/util/List;)V

    .line 735
    new-instance v7, Lcom/itextpdf/layout/layout/LineLayoutResult;

    iget-object v4, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    aget-object v17, v1, v2

    aget-object v18, v1, v3

    const/16 v19, 0x0

    const/4 v15, 0x2

    move-object v14, v7

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v19}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 736
    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/layout/LineLayoutResult;->setFloatsOverflowedToNextPage(Ljava/util/List;)V

    goto :goto_40

    .line 718
    :cond_6f
    :goto_3f
    new-instance v7, Lcom/itextpdf/layout/layout/LineLayoutResult;

    iget-object v0, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v1, 0x1

    invoke-direct {v7, v1, v0, v13, v13}, Lcom/itextpdf/layout/layout/LineLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_41

    :cond_70
    :goto_40
    const/4 v1, 0x1

    .line 746
    :goto_41
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-nez v0, :cond_71

    .line 747
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getStatus()I

    move-result v2

    if-ne v2, v1, :cond_71

    move-object v0, v8

    :cond_71
    if-eqz v31, :cond_74

    .line 750
    sget-object v1, Lcom/itextpdf/layout/properties/BaseDirection;->NO_BIDI:Lcom/itextpdf/layout/properties/BaseDirection;

    move-object/from16 v2, v31

    if-eq v2, v1, :cond_74

    if-eqz v0, :cond_74

    .line 751
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->splitLineIntoGlyphs(Lcom/itextpdf/layout/renderer/LineRenderer;)Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;

    move-result-object v1

    .line 752
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->getLineGlyphs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [B

    .line 753
    iget-object v4, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    if-eqz v4, :cond_72

    .line 754
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->getLineGlyphs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v10, 0x0

    invoke-static {v4, v10, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 757
    :cond_72
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->getLineGlyphs()Ljava/util/List;

    move-result-object v4

    iget-object v5, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    invoke-static {v4, v3, v5}, Lcom/itextpdf/layout/renderer/TypographyUtils;->reorderLine(Ljava/util/List;[B[B)[I

    move-result-object v3

    if-eqz v3, :cond_73

    .line 759
    invoke-static {v0, v1, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->reorder(Lcom/itextpdf/layout/renderer/LineRenderer;Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;[I)V

    .line 760
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    iget-object v3, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v3

    invoke-static {v1, v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->adjustChildPositionsAfterReordering(Ljava/util/List;F)V

    .line 763
    :cond_73
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getStatus()I

    move-result v1

    if-ne v1, v9, :cond_74

    iget-object v1, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    if-eqz v1, :cond_74

    .line 764
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 765
    iget-object v3, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    new-array v3, v3, [B

    iput-object v3, v1, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    .line 766
    iget-object v4, v8, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    array-length v5, v3

    const/4 v9, 0x0

    invoke-static {v4, v2, v3, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    iget-object v2, v1, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    array-length v2, v2

    if-nez v2, :cond_74

    .line 768
    iput-object v13, v1, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    :cond_74
    if-nez v32, :cond_75

    if-eqz v34, :cond_76

    .line 774
    :cond_75
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->adjustChildrenYLine()Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->trimLast()Lcom/itextpdf/layout/renderer/LineRenderer;

    move-object/from16 v0, v55

    .line 775
    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/layout/LineLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    :cond_76
    if-eqz v6, :cond_78

    const/16 v0, 0x67

    .line 779
    invoke-virtual {v8, v0, v11}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    .line 780
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 781
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    invoke-interface {v1, v0, v11}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 783
    :cond_77
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    if-eqz v1, :cond_78

    .line 784
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    invoke-interface {v1, v0, v11}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_78
    return-object v7
.end method

.method protected length()I
    .locals 4

    .line 895
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 896
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 897
    check-cast v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->lineLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected split()[Lcom/itextpdf/layout/renderer/LineRenderer;
    .locals 3

    .line 936
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->createSplitRenderer()Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v0

    .line 937
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 938
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 939
    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    .line 940
    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    .line 941
    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    .line 942
    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    .line 943
    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    .line 944
    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    .line 945
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->levels:[B

    .line 946
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 948
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->createOverflowRenderer()Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v1

    .line 949
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v2, v1, Lcom/itextpdf/layout/renderer/LineRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 950
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 952
    filled-new-array {v0, v1}, [Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 921
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 922
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 924
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method trimFirst()I
    .locals 7

    .line 1344
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1345
    invoke-static {v3}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1349
    :cond_1
    instance-of v4, v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 1350
    check-cast v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 1351
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->getText()Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1353
    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 1354
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->trimFirst()V

    .line 1355
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->getText()Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v6

    iget v6, v6, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v6, v4

    add-int/2addr v2, v6

    .line 1358
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->length()I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move v5, v1

    :cond_4
    :goto_1
    if-eqz v5, :cond_0

    :cond_5
    return v2
.end method

.method protected trimLast()Lcom/itextpdf/layout/renderer/LineRenderer;
    .locals 3

    .line 977
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 980
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 981
    invoke-static {v1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 985
    :cond_1
    instance-of v2, v1, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v2, :cond_2

    if-ltz v0, :cond_2

    .line 986
    check-cast v1, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->trimLast()F

    move-result v0

    .line 987
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_2
    return-object p0
.end method

.method updateAscentDescentAfterChildLayout([FLcom/itextpdf/layout/renderer/IRenderer;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1520
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 1521
    aget p1, p1, v1

    .line 1522
    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    .line 1523
    instance-of p2, p2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz p2, :cond_0

    .line 1524
    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 1526
    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockAscent:F

    .line 1528
    :cond_1
    :goto_0
    iget v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    if-eqz p2, :cond_2

    .line 1530
    iget p2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    .line 1532
    iget p2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxBlockDescent:F

    :cond_3
    :goto_1
    return-void
.end method

.method updateAscentDescentAfterTextRendererSequenceProcessing(ILcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;Ljava/util/Map;)[F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[F>;)[F"
        }
    .end annotation

    .line 1487
    iget v0, p2, Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;->maxAscent:F

    .line 1488
    iget v1, p2, Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;->maxDescent:F

    .line 1489
    iget v2, p2, Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;->maxTextAscent:F

    .line 1490
    iget p2, p2, Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;->maxTextDescent:F

    .line 1491
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1492
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, p1, :cond_0

    .line 1493
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    aget v6, v6, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1494
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    aget v6, v6, v4

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1495
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    aget v5, v6, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1496
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    aget v3, v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    .line 1500
    :cond_1
    iput v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    .line 1501
    iput v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    .line 1502
    iput v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    .line 1503
    iput p2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    const/4 p1, 0x2

    .line 1505
    new-array p1, p1, [F

    aput v0, p1, v5

    aput v1, p1, v4

    return-object p1
.end method
