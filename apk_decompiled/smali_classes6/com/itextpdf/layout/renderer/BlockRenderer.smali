.class public abstract Lcom/itextpdf/layout/renderer/BlockRenderer;
.super Lcom/itextpdf/layout/renderer/AbstractRenderer;
.source "BlockRenderer.java"


# direct methods
.method protected constructor <init>(Lcom/itextpdf/layout/element/IElement;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    return-void
.end method

.method private checkPointSide(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)I
    .locals 8

    .line 1146
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 1147
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 1149
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 1150
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v6

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide p1

    sub-double/2addr v6, p1

    mul-double/2addr v0, v2

    mul-double/2addr v4, v6

    sub-double/2addr v0, v4

    .line 1154
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double p1, p1, v2

    const/4 p2, 0x0

    if-gez p1, :cond_0

    return p2

    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    cmpg-double p1, v0, v2

    if-gez p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    return p2
.end method

.method private clipPolygon(Ljava/util/List;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;",
            "Lcom/itextpdf/kernel/geom/Point;",
            "Lcom/itextpdf/kernel/geom/Point;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    .line 1116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1119
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/Point;

    .line 1120
    invoke-direct {p0, v2, p2, p3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->checkPointSide(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    .line 1121
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    :cond_0
    move v3, v4

    .line 1126
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v4

    if-ge v3, v5, :cond_4

    .line 1127
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    rem-int v5, v3, v5

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/geom/Point;

    .line 1128
    invoke-direct {p0, v5, p2, p3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->checkPointSide(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)I

    move-result v6

    if-ltz v6, :cond_2

    if-nez v1, :cond_1

    .line 1130
    invoke-direct {p0, v2, v5, p2, p3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 1135
    invoke-direct {p0, v2, v5, p2, p3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v5

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;
    .locals 16

    .line 1162
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 1163
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    .line 1164
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    .line 1165
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v10

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v12

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double v12, v4, v2

    mul-double v14, v6, v0

    sub-double/2addr v12, v14

    .line 1169
    new-instance v14, Lcom/itextpdf/kernel/geom/Point;

    mul-double/2addr v6, v8

    mul-double/2addr v4, v10

    sub-double/2addr v6, v4

    div-double/2addr v6, v12

    mul-double/2addr v10, v0

    mul-double/2addr v8, v2

    sub-double/2addr v10, v8

    div-double/2addr v10, v12

    invoke-direct {v14, v6, v7, v10, v11}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    return-object v14
.end method

.method private replaceSplitRendererKidFloats(Ljava/util/Map;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ")V"
        }
    .end annotation

    .line 1101
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

    .line 1102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1103
    invoke-interface {p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1105
    :cond_0
    invoke-interface {p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1108
    :cond_1
    invoke-interface {p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    .line 1109
    invoke-interface {p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1110
    invoke-interface {p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method applyMaxHeight(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;ZZLcom/itextpdf/layout/properties/OverflowPropertyValue;)Z
    .locals 2

    const/4 p5, 0x0

    if-eqz p2, :cond_3

    .line 965
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-static {p6}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result p6

    if-eqz p6, :cond_0

    goto :goto_0

    .line 969
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p6

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    cmpg-float p6, p6, v0

    if-gtz p6, :cond_1

    const/4 p5, 0x1

    .line 972
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p6

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr p6, v0

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    .line 974
    invoke-virtual {p3, p6}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processFixedHeightAdjustment(F)V

    .line 976
    :cond_2
    invoke-virtual {p1, p6}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_3
    :goto_0
    return p5
.end method

.method applyMinHeight(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 4

    .line 982
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->retrieveMinHeight()Ljava/lang/Float;

    move-result-object v0

    .line 983
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 984
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 985
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isFixedLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 986
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto/16 :goto_0

    .line 991
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x38d1b717    # 1.0E-4f

    add-float/2addr p1, v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    .line 992
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v1

    sub-float/2addr p1, v1

    .line 993
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 994
    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 995
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 997
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 998
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_1
    const/4 p1, 0x0

    .line 1001
    iput-boolean p1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->isLastRendererForModelElement:Z

    const/4 p1, 0x2

    .line 1002
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object p1

    .line 1003
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateMinHeight(Lcom/itextpdf/layout/properties/UnitValue;)V

    const/16 p2, 0x1b

    .line 1004
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->hasProperty(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1005
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateHeight(Lcom/itextpdf/layout/properties/UnitValue;)V

    goto :goto_1

    .line 1008
    :cond_2
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :cond_4
    :goto_1
    return-object p1
.end method

.method protected applyRotationLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 10

    const/16 p1, 0x37

    .line 733
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 735
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    .line 736
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    .line 737
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    .line 738
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    const/16 v4, 0x39

    .line 740
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v3, 0x38

    .line 741
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->setProperty(ILjava/lang/Object;)V

    .line 743
    new-instance v3, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v3}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 746
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isPositioned()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v2, 0x3a

    .line 747
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v2

    const/16 v4, 0x3b

    .line 748
    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v4

    if-eqz v2, :cond_0

    if-nez v4, :cond_1

    .line 752
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 753
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 758
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    float-to-double v5, p1

    .line 761
    invoke-virtual {v3, v5, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->rotate(D)V

    .line 764
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    neg-float p1, p1

    float-to-double v5, p1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result p1

    neg-float p1, p1

    float-to-double v7, p1

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 766
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->rectangleToPointsList(Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->transformPoints(Ljava/util/List;Lcom/itextpdf/kernel/geom/AffineTransform;)Ljava/util/List;

    move-result-object p1

    .line 767
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 770
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 771
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 772
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    sub-float/2addr v2, v0

    .line 773
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p1

    sub-float/2addr p1, v1

    .line 774
    invoke-virtual {p0, v2, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->move(FF)V

    goto :goto_1

    :cond_2
    float-to-double v3, p1

    .line 776
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p1

    .line 777
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->rectangleToPointsList(Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->transformPoints(Ljava/util/List;Lcom/itextpdf/kernel/geom/AffineTransform;)Ljava/util/List;

    move-result-object p1

    add-float/2addr v1, v2

    .line 778
    invoke-virtual {p0, v0, v1, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->calculateShiftToPositionBBoxOfPointsAt(FFLjava/util/List;)[F

    move-result-object v0

    .line 780
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/geom/Point;

    .line 781
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    const/4 v6, 0x0

    aget v6, v0, v6

    float-to-double v6, v6

    add-double/2addr v4, v6

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v6

    const/4 v8, 0x1

    aget v8, v0, v8

    float-to-double v8, v8

    add-double/2addr v6, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    goto :goto_0

    .line 784
    :cond_3
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 786
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 787
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 789
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    sub-float/2addr v2, p1

    const/4 p1, 0x0

    .line 790
    invoke-virtual {p0, p1, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->move(FF)V

    :goto_1
    return-void
.end method

.method protected applyVerticalAlignment()V
    .locals 7

    const/16 v0, 0x4b

    .line 680
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/VerticalAlignment;

    if-eqz v0, :cond_b

    .line 681
    sget-object v1, Lcom/itextpdf/layout/properties/VerticalAlignment;->TOP:Lcom/itextpdf/layout/properties/VerticalAlignment;

    if-eq v0, v1, :cond_b

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 686
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    const/4 v2, 0x1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v1, :cond_4

    instance-of v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 694
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 696
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 697
    invoke-static {v1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 698
    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v1

    goto :goto_3

    :cond_2
    move v1, v5

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_3

    .line 688
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 689
    invoke-interface {v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v6

    cmpg-float v6, v6, v4

    if-gez v6, :cond_5

    .line 690
    invoke-interface {v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v4

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_3
    cmpl-float v3, v1, v3

    if-nez v3, :cond_7

    return-void

    .line 708
    :cond_7
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getInnerAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-gez v4, :cond_8

    return-void

    .line 712
    :cond_8
    sget-object v4, Lcom/itextpdf/layout/renderer/BlockRenderer$1;->$SwitchMap$com$itextpdf$layout$properties$VerticalAlignment:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/VerticalAlignment;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v2, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    goto :goto_6

    .line 719
    :cond_9
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    neg-float v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 720
    invoke-interface {v2, v3, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_4

    .line 714
    :cond_a
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    neg-float v4, v1

    .line 715
    invoke-interface {v2, v3, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_5

    :cond_b
    :goto_6
    return-void
.end method

.method applyWidth(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Lcom/itextpdf/layout/properties/OverflowPropertyValue;)V
    .locals 3

    const/16 v0, 0x37

    .line 946
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 949
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 950
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isPositioned()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 952
    invoke-static {p3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 953
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_0

    .line 955
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->retrieveMinWidth(F)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 957
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_2

    .line 958
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_2
    :goto_0
    return-void
.end method

.method protected beginRotationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 2

    const/16 v0, 0x37

    .line 821
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x38

    .line 823
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->hasOwnProperty(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    const-class p1, Lcom/itextpdf/layout/renderer/BlockRenderer;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 827
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 826
    const-string v1, "Rotation was not correctly processed for {0}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 825
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createRotationTransformInsideOccupiedArea()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    .line 830
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_1
    :goto_0
    return-void
.end method

.method correctFixedLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 1

    .line 937
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isFixedLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    .line 938
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 939
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->move(FF)V

    :cond_0
    return-void
.end method

.method protected createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 626
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 627
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 628
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addAllProperties(Ljava/util/Map;)V

    return-object p1
.end method

.method protected createRotationTransformInsideOccupiedArea()Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 6

    const/16 v0, 0x37

    .line 802
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 803
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    .line 805
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 806
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->rectangleToPointsList(Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->transformPoints(Ljava/util/List;Lcom/itextpdf/kernel/geom/AffineTransform;)Ljava/util/List;

    move-result-object v1

    .line 809
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->calculateShiftToPositionBBoxOfPointsAt(FFLjava/util/List;)[F

    move-result-object v1

    const/4 v2, 0x0

    .line 810
    aget v2, v1, v2

    float-to-double v2, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->preConcatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    return-object v0
.end method

.method createSplitAndOverflowRenderers(IILcom/itextpdf/layout/layout/LayoutResult;Ljava/util/Map;Ljava/util/List;)[Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)[",
            "Lcom/itextpdf/layout/renderer/AbstractRenderer;"
        }
    .end annotation

    .line 649
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    .line 650
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    .line 651
    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 652
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_0
    invoke-direct {p0, p4, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->replaceSplitRendererKidFloats(Ljava/util/Map;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 656
    iget-object p4, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 657
    invoke-interface {v1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    goto :goto_0

    .line 660
    :cond_1
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object p2

    .line 661
    iget-object p4, p2, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {p4, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 662
    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 663
    iget-object p4, p2, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_2
    iget-object p4, p2, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    iget-object p5, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p5, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 667
    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result p1

    if-ne p1, v2, :cond_3

    const/16 p1, 0x1a

    .line 669
    invoke-virtual {p2, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->deleteOwnProperty(I)V

    .line 672
    :cond_3
    filled-new-array {v0, p2}, [Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object p1

    return-object p1
.end method

.method protected createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 1

    .line 608
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 609
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 610
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 611
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    iput-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v0, 0x0

    .line 612
    iput-boolean v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isLastRendererForModelElement:Z

    .line 613
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addAllProperties(Ljava/util/Map;)V

    return-object p1
.end method

.method decreaseLayoutBoxAfterChildPlacement(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 0

    .line 933
    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p3

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method

.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 12

    .line 486
    const-class v0, Lcom/itextpdf/layout/renderer/BlockRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    if-nez v1, :cond_0

    .line 488
    const-string p1, "Drawing won\'t be performed."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Occupied area has not been initialized. {0}"

    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 493
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/16 v3, 0x6c

    .line 496
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {v3, p0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->useAutoTaggingPointerAndRememberItsPosition(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v4

    .line 501
    invoke-virtual {v3, p0, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 502
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v5

    .line 503
    invoke-static {p0, v4}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->getListAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->addAttributes(ILcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v5

    .line 504
    invoke-static {p0, v4}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->getTableAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->addAttributes(ILcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v5

    .line 505
    invoke-static {p0, v4}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->getLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->addAttributes(ILcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 510
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->beginTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 511
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyDestinationsAndAnnotation(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 513
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isRelativePosition()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 515
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyRelativePositioningTranslation(Z)V

    .line 518
    :cond_4
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 519
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->beginRotationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 521
    sget-object v5, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->HIDDEN:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    const/16 v6, 0x67

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isOverflowProperty(Lcom/itextpdf/layout/properties/OverflowPropertyValue;I)Z

    move-result v5

    .line 522
    sget-object v6, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->HIDDEN:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    const/16 v7, 0x68

    invoke-virtual {p0, v6, v7}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isOverflowProperty(Lcom/itextpdf/layout/properties/OverflowPropertyValue;I)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v5, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    move v2, v7

    .line 525
    :cond_6
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 526
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V

    if-eqz v2, :cond_c

    .line 529
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 530
    iget-object v8, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v8

    const v9, 0x49742400    # 1000000.0f

    const v10, -0x370bdc00    # -500000.0f

    if-lt v8, v7, :cond_9

    .line 532
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v11

    if-le v8, v11, :cond_7

    goto :goto_1

    .line 535
    :cond_7
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v8

    .line 538
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 539
    const-string v8, "area clipping"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v11, "Page was flushed. {0} will not be performed."

    invoke-static {v11, v8}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 542
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v10, v10, v9, v9}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    goto :goto_2

    .line 544
    :cond_8
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPageSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    goto :goto_2

    .line 533
    :cond_9
    :goto_1
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v10, v10, v9, v9}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 547
    :goto_2
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getBorderAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    if-eqz v5, :cond_a

    .line 549
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v9

    invoke-virtual {v5, v9}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_a
    if-eqz v6, :cond_b

    .line 552
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 554
    :cond_b
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 557
    :cond_c
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->drawChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 558
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->drawPositionedChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V

    if-eqz v2, :cond_d

    .line 561
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 564
    :cond_d
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->endRotationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 565
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    if-eqz v4, :cond_e

    .line 568
    invoke-virtual {p0, v7}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyRelativePositioningTranslation(Z)V

    :cond_e
    if-eqz v1, :cond_10

    .line 572
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->isLastRendererForModelElement:Z

    if-eqz v0, :cond_f

    .line 573
    invoke-virtual {v3, p0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishTaggingHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 575
    :cond_f
    invoke-virtual {v3, p0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->restoreAutoTaggingPointerPosition(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 578
    :cond_10
    iput-boolean v7, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->flushed:Z

    .line 579
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->endTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    return-void
.end method

.method protected endRotationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1

    const/16 v0, 0x37

    .line 841
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x38

    .line 842
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->hasOwnProperty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_0
    return-void
.end method

.method fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 1

    .line 1016
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1020
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result p1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 1021
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_2
    return-void
.end method

.method fixOccupiedAreaIfOverflowedY(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 1

    .line 1026
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1029
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 1030
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p1

    iget-object p2, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p2

    sub-float/2addr p1, p2

    .line 1031
    iget-object p2, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_1
    return-void
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 14

    .line 1040
    new-instance v0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->calculateAdditionalWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(F)V

    .line 1041
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->setMinMaxWidthBasedOnFixedWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0x50

    .line 1042
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->hasAbsoluteUnitValue(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->retrieveMinWidth(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/16 v4, 0x4f

    .line 1043
    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->hasAbsoluteUnitValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->retrieveMaxWidth(F)Ljava/lang/Float;

    move-result-object v2

    :cond_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_8

    .line 1045
    :cond_2
    new-instance v4, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;

    invoke-direct {v4, v0}, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    .line 1049
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v9, v3

    move v7, v6

    move v8, v7

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1051
    invoke-interface {v10, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1052
    instance-of v11, v10, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v11, :cond_3

    .line 1053
    move-object v11, v10

    check-cast v11, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v11

    goto :goto_2

    .line 1055
    :cond_3
    invoke-static {v10}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->countDefaultMinMaxWidth(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v11

    .line 1057
    :goto_2
    invoke-virtual {v11}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v12

    invoke-static {v10}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v13, v9

    goto :goto_3

    :cond_4
    move v13, v3

    :goto_3
    add-float/2addr v12, v13

    invoke-virtual {v4, v12}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    .line 1058
    invoke-virtual {v11}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v12

    invoke-virtual {v4, v12}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 1059
    invoke-static {v10}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v11}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v11

    add-float/2addr v9, v11

    goto :goto_4

    :cond_5
    move v9, v3

    .line 1060
    :goto_4
    invoke-static {v10}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v10

    if-eqz v10, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1063
    :cond_6
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v8, v6

    goto :goto_1

    .line 1067
    :cond_7
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1068
    iget-object v5, v4, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    iget-object v6, v4, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-virtual {v6}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v6

    int-to-float v3, v3

    const v7, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v3, v7

    add-float/2addr v6, v3

    invoke-virtual {v5, v6}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    .line 1069
    iget-object v5, v4, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    iget-object v4, v4, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-virtual {v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v4

    add-float/2addr v4, v3

    invoke-virtual {v5, v4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    :cond_8
    if-eqz v1, :cond_9

    .line 1072
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    :cond_9
    if-eqz v2, :cond_a

    .line 1077
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    goto :goto_5

    .line 1079
    :cond_a
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    .line 1080
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    :cond_b
    :goto_5
    const/16 v1, 0x37

    .line 1085
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1086
    invoke-static {v0, p0}, Lcom/itextpdf/layout/renderer/RotationUtils;->countRotationMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;Lcom/itextpdf/layout/renderer/AbstractRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4

    .line 584
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/16 v1, 0x37

    .line 585
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_2

    const/16 v1, 0x39

    .line 587
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->hasOwnProperty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x38

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->hasOwnProperty(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 594
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_1

    .line 588
    :cond_1
    :goto_0
    const-class v1, Lcom/itextpdf/layout/renderer/BlockRenderer;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 591
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 590
    const-string v3, "Rotation was not correctly processed for {0}"

    invoke-static {v3, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method handleForcedPlacement(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x1a

    .line 1095
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->hasOwnProperty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->deleteOwnProperty(I)V

    :cond_0
    return-void
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 51

    move-object/from16 v15, p0

    const/4 v14, 0x1

    .line 104
    iput-boolean v14, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->isLastRendererForModelElement:Z

    .line 106
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 107
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->isClippedHeight()Z

    move-result v18

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v11

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isPositioned()Z

    move-result v19

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v3

    const/16 v0, 0x63

    .line 118
    invoke-virtual {v15, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/itextpdf/layout/properties/FloatPropertyValue;

    const/16 v0, 0x37

    .line 119
    invoke-virtual {v15, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v20

    const/16 v0, 0x67

    .line 121
    invoke-virtual {v15, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    .line 124
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x59

    invoke-virtual {v15, v1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 126
    new-instance v0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getMarginsCollapseInfo()Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;-><init>(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    move-object v6, v0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 128
    :goto_0
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {v15, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v0

    if-nez v20, :cond_1

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isFixedLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    :cond_1
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    const v2, 0x49742400    # 1000000.0f

    sub-float v1, v2, v1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_2
    if-eqz v20, :cond_3

    .line 132
    invoke-static {v15, v4}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/properties/FloatPropertyValue;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 133
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-static {v0, v15}, Lcom/itextpdf/layout/renderer/RotationUtils;->retrieveRotatedLayoutWidth(FLcom/itextpdf/layout/renderer/AbstractRenderer;)Ljava/lang/Float;

    move-result-object v0

    :cond_3
    move-object v2, v0

    .line 135
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockFormattingContextUtil;->isRendererCreateBfc(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v21

    .line 136
    invoke-static {v15, v3, v7}, Lcom/itextpdf/layout/renderer/FloatingHelper;->calculateClearHeightCorrection(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)F

    move-result v5

    .line 137
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    invoke-static {v7, v6, v5, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->applyClearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;FZ)V

    .line 138
    invoke-static {v15, v4}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/properties/FloatPropertyValue;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v22, v5

    move-object v5, v10

    .line 139
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustFloatedBlockLayoutBox(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/util/List;Lcom/itextpdf/layout/properties/FloatPropertyValue;Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Ljava/lang/Float;

    move-result-object v2

    .line 140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_4
    move/from16 v22, v5

    :goto_1
    move-object v5, v3

    .line 143
    instance-of v4, v15, Lcom/itextpdf/layout/renderer/CellRenderer;

    if-eqz v9, :cond_5

    .line 145
    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 148
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v3

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPaddings()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {v15, v7, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 152
    invoke-virtual {v15, v7, v3, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isFixedLayout()Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v14, 0x22

    .line 154
    invoke-virtual {v15, v14}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v7, v14}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 156
    :cond_6
    invoke-virtual {v15, v7, v1, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 158
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v23

    cmpl-float v17, v17, v23

    if-lez v17, :cond_8

    :cond_7
    if-nez v18, :cond_8

    sget-object v17, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    move-object/from16 v0, v17

    goto :goto_2

    :cond_8
    const/16 v0, 0x68

    .line 161
    invoke-virtual {v15, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    .line 162
    :goto_2
    invoke-virtual {v15, v7, v2, v10}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyWidth(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Lcom/itextpdf/layout/properties/OverflowPropertyValue;)V

    move-object/from16 v23, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v24, v1

    move-object v1, v7

    move v8, v2

    move-object v2, v14

    move-object/from16 v25, v3

    move-object v3, v6

    move/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v5, v18

    move-object/from16 v28, v6

    move-object/from16 v6, v23

    .line 163
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyMaxHeight(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;ZZLcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v6

    if-eqz v19, :cond_9

    .line 167
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 169
    :cond_9
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-direct {v0, v11, v7}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v15, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->initElementAreas(Lcom/itextpdf/layout/layout/LayoutArea;)Ljava/util/List;

    move-result-object v0

    :goto_3
    move-object v5, v0

    .line 172
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    const/4 v7, 0x0

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v0, v11, v1}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->shrinkOccupiedAreaForAbsolutePosition()V

    .line 175
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->addPageByID(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 179
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 182
    new-instance v7, Ljava/util/HashSet;

    move-object/from16 v4, v27

    invoke-direct {v7, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 189
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v3, 0x1a

    .line 190
    invoke-virtual {v15, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v27

    move-object v2, v0

    move v1, v8

    move/from16 v29, v1

    move/from16 v30, v29

    move/from16 v31, v30

    const/16 v37, 0x0

    .line 191
    :goto_4
    iget-object v0, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x3

    if-ge v1, v0, :cond_32

    .line 192
    iget-object v0, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 194
    invoke-interface {v0, v15}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v29, :cond_a

    .line 197
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v35

    if-eqz v35, :cond_a

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x0

    invoke-interface {v13, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v33, v1

    move-object/from16 v44, v4

    move-object v1, v5

    move/from16 v40, v6

    move-object/from16 v42, v7

    move v8, v9

    move-object v4, v10

    move/from16 v34, v11

    move-object/from16 v47, v12

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v38, v24

    move-object/from16 v9, v28

    const/4 v10, 0x1

    const/16 v24, 0x0

    :goto_5
    const/16 v32, 0x0

    move-object/from16 v28, v13

    goto/16 :goto_1e

    .line 203
    :cond_a
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_12

    const/16 v3, 0x64

    invoke-interface {v0, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/properties/ClearPropertyValue;

    invoke-static {v12, v3}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isClearanceApplied(Ljava/util/List;Lcom/itextpdf/layout/properties/ClearPropertyValue;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 204
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x0

    invoke-interface {v13, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v33, v1

    move-object/from16 v44, v4

    move-object v1, v5

    move/from16 v40, v6

    move-object/from16 v42, v7

    move v8, v9

    move-object v4, v10

    move/from16 v34, v11

    move-object/from16 v47, v12

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v38, v24

    move-object/from16 v9, v28

    const/4 v10, 0x1

    const/16 v24, 0x0

    const/16 v29, 0x1

    goto :goto_5

    :cond_b
    if-eqz v9, :cond_c

    if-nez v26, :cond_c

    move-object/from16 v3, v28

    .line 211
    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 214
    :cond_c
    invoke-static {v4, v15, v7}, Lcom/itextpdf/layout/renderer/FloatingHelper;->includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/Set;)V

    .line 215
    invoke-virtual {v15, v10, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 217
    new-instance v10, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v11, 0x0

    invoke-direct {v10, v8, v11, v11, v0}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 218
    invoke-virtual {v15, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isKeepTogether(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v14

    if-eqz v30, :cond_d

    if-nez v14, :cond_d

    const/4 v5, 0x2

    goto :goto_6

    :cond_d
    move v5, v8

    :goto_6
    move-object/from16 v0, p0

    move v2, v5

    const/16 v8, 0x1a

    move-object v3, v10

    move-object/from16 v42, v4

    move-object v4, v13

    move v13, v5

    move-object v5, v12

    .line 220
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createSplitAndOverflowRenderers(IILcom/itextpdf/layout/layout/LayoutResult;Ljava/util/Map;Ljava/util/List;)[Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    const/4 v1, 0x0

    .line 222
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 223
    aget-object v0, v0, v2

    if-eqz v14, :cond_e

    .line 227
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    move-object v1, v11

    .line 231
    :cond_e
    invoke-virtual {v15, v6, v1, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->updateHeightsOnSplit(ZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;)V

    .line 232
    iget-object v2, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    move-object/from16 v4, v24

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v4, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 233
    iget-object v2, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    move-object/from16 v4, v25

    invoke-virtual {v15, v2, v4, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 234
    iget-object v2, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v15, v2, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 236
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v15, v8}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    if-eqz v6, :cond_f

    goto :goto_7

    :cond_f
    const/4 v2, 0x3

    if-eq v13, v2, :cond_10

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    move/from16 v4, v22

    invoke-static {v15, v2, v3, v4, v9}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v38

    .line 242
    new-instance v2, Lcom/itextpdf/layout/layout/LayoutResult;

    const/16 v41, 0x0

    move-object/from16 v36, v2

    move/from16 v37, v13

    move-object/from16 v39, v1

    move-object/from16 v40, v0

    invoke-direct/range {v36 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-virtual {v10}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/itextpdf/layout/layout/LayoutResult;->setAreaBreak(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    return-object v0

    :cond_10
    move-object/from16 v1, v42

    .line 244
    invoke-interface {v1, v7}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 245
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutResult;

    const/16 v39, 0x0

    invoke-virtual {v10}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v41

    const/16 v38, 0x0

    move-object/from16 v36, v1

    move/from16 v37, v13

    move-object/from16 v40, v0

    invoke-direct/range {v36 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-virtual {v10}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/layout/LayoutResult;->setAreaBreak(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    return-object v0

    :cond_11
    :goto_7
    move/from16 v4, v22

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-static {v15, v0, v2, v4, v9}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v28

    .line 238
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutResult;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v27, 0x1

    move-object/from16 v26, v0

    move-object/from16 v29, v1

    invoke-direct/range {v26 .. v31}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v0

    :cond_12
    move-object v8, v4

    move-object/from16 v4, v24

    move-object/from16 v3, v28

    const/16 v24, 0x0

    if-eqz v9, :cond_13

    .line 251
    invoke-virtual {v15, v0, v2, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v28

    move-object/from16 v36, v7

    const/4 v7, 0x0

    move-object/from16 v50, v28

    move-object/from16 v28, v4

    move-object/from16 v4, v50

    goto :goto_8

    :cond_13
    move-object/from16 v28, v4

    move-object/from16 v36, v7

    move-object/from16 v4, v24

    const/4 v7, 0x0

    .line 254
    :goto_8
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v15, v2, v0, v7}, Lcom/itextpdf/layout/renderer/BlockRenderer;->recalculateLayoutBoxBeforeChildLayout(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    move-object/from16 v38, v5

    .line 255
    invoke-interface {v0, v15}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    move-object/from16 v39, v12

    new-instance v12, Lcom/itextpdf/layout/layout/LayoutContext;

    move-object/from16 v40, v13

    new-instance v13, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-direct {v13, v11, v7}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    if-nez v6, :cond_15

    if-eqz v18, :cond_14

    goto :goto_9

    :cond_14
    const/4 v7, 0x0

    goto :goto_a

    :cond_15
    :goto_9
    const/4 v7, 0x1

    :goto_a
    invoke-direct {v12, v13, v4, v8, v7}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Ljava/util/List;Z)V

    invoke-interface {v5, v12}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v41

    .line 260
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_29

    .line 262
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v5, 0x57

    invoke-virtual {v15, v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v5, 0x56

    .line 263
    invoke-virtual {v15, v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_b

    .line 265
    :cond_16
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_17

    .line 266
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v15, v4, v14}, Lcom/itextpdf/layout/renderer/BlockRenderer;->recalculateOccupiedAreaAfterChildLayout(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;)V

    .line 267
    invoke-virtual {v15, v10, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_17
    const/4 v12, 0x0

    const/16 v16, 0x1

    goto :goto_c

    .line 264
    :cond_18
    :goto_b
    iget-object v4, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v5, 0x2

    new-array v7, v5, [Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v5, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, v7, v12

    const/16 v16, 0x1

    aput-object v2, v7, v16

    invoke-static {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/layout/LayoutArea;->setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V

    :goto_c
    if-eqz v9, :cond_19

    .line 270
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1a

    .line 271
    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endChildMarginsHandling(Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_d

    :cond_19
    const/4 v5, 0x3

    .line 274
    :cond_1a
    :goto_d
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 278
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v4

    if-ne v4, v5, :cond_1b

    if-nez v30, :cond_1b

    .line 280
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isFirstOnRootArea()Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object/from16 v7, v39

    move-object/from16 v13, v40

    const/4 v5, 0x3

    goto :goto_10

    .line 283
    :cond_1b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1c

    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    goto :goto_e

    :cond_1c
    move-object/from16 v5, v24

    :goto_e
    move-object/from16 v13, v40

    invoke-interface {v13, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    move-object/from16 v7, v39

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1d

    move/from16 v4, v16

    goto :goto_f

    :cond_1d
    move v4, v12

    :goto_f
    move-object/from16 v35, v0

    move/from16 v33, v1

    move-object/from16 v43, v3

    move/from16 v40, v6

    move-object/from16 v47, v7

    move-object/from16 v44, v8

    move/from16 v45, v9

    move-object/from16 v46, v10

    move/from16 v34, v11

    move/from16 v32, v12

    move-object/from16 v49, v14

    move-object v6, v15

    move-object/from16 v42, v36

    move-object/from16 v1, v38

    move-object/from16 v0, v41

    move v14, v4

    move-object/from16 v38, v28

    goto/16 :goto_15

    :cond_1e
    move-object/from16 v7, v39

    move-object/from16 v13, v40

    :goto_10
    if-eqz v9, :cond_1f

    .line 291
    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_1f
    move-object/from16 v4, v36

    .line 295
    invoke-static {v8, v15, v4}, Lcom/itextpdf/layout/renderer/FloatingHelper;->includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/Set;)V

    .line 296
    invoke-virtual {v15, v10, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 298
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v17

    if-eqz v17, :cond_20

    .line 300
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    iget-object v12, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    invoke-virtual {v15, v5, v12}, Lcom/itextpdf/layout/renderer/BlockRenderer;->alignChildHorizontally(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_20
    if-nez v37, :cond_21

    .line 304
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 305
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v37

    :cond_21
    add-int/lit8 v12, v31, 0x1

    .line 309
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v5

    if-ge v12, v5, :cond_26

    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v5

    if-eqz v5, :cond_23

    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/element/AreaBreak;->getType()Lcom/itextpdf/layout/properties/AreaBreakType;

    move-result-object v5

    move-object/from16 v33, v0

    sget-object v0, Lcom/itextpdf/layout/properties/AreaBreakType;->NEXT_PAGE:Lcom/itextpdf/layout/properties/AreaBreakType;

    if-eq v5, v0, :cond_22

    goto :goto_11

    :cond_22
    move-object/from16 v35, v33

    move-object/from16 v5, v38

    goto/16 :goto_16

    :cond_23
    move-object/from16 v33, v0

    .line 310
    :goto_11
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_24

    .line 311
    iget-object v0, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_12
    move-object/from16 v5, v38

    goto :goto_14

    .line 314
    :cond_24
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 315
    iget-object v0, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 317
    :cond_25
    iget-object v0, v15, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_13
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 321
    :goto_14
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    move-object/from16 v43, v3

    move-object/from16 v42, v4

    move/from16 v40, v6

    move-object/from16 v47, v7

    move-object/from16 v44, v8

    move/from16 v45, v9

    move-object/from16 v46, v10

    move/from16 v34, v11

    move/from16 v31, v12

    move-object/from16 v49, v14

    move-object v6, v15

    move-object/from16 v38, v28

    move/from16 v14, v29

    move-object/from16 v35, v33

    move-object/from16 v0, v41

    const/16 v32, 0x0

    move/from16 v33, v1

    move-object v1, v5

    :goto_15
    move-object/from16 v28, v13

    goto/16 :goto_18

    :cond_26
    move-object/from16 v5, v38

    move-object/from16 v35, v0

    :goto_16
    move-object/from16 v0, p0

    move/from16 v33, v1

    move-object/from16 v1, p1

    move-object/from16 v36, v2

    move-object v2, v13

    move-object/from16 v43, v3

    move-object v3, v7

    move-object/from16 v38, v28

    move-object/from16 v28, v4

    move v4, v6

    move-object/from16 v39, v5

    const/16 v17, 0x3

    move-object v5, v8

    move/from16 v40, v6

    move v6, v9

    move-object/from16 v42, v28

    move-object/from16 v28, v7

    move/from16 v7, v22

    move-object/from16 v44, v8

    const/16 v32, 0x0

    move-object/from16 v8, v25

    move/from16 v45, v9

    move-object/from16 v9, v38

    move-object/from16 v46, v10

    move-object/from16 v10, v39

    move/from16 v34, v11

    move/from16 v11, v31

    move/from16 v48, v12

    move-object/from16 v47, v28

    move-object/from16 v12, v36

    move-object/from16 v28, v13

    move-object/from16 v13, v42

    move-object/from16 v49, v14

    move-object/from16 v14, v37

    move/from16 v15, v30

    move/from16 v16, v33

    move-object/from16 v17, v41

    .line 324
    invoke-virtual/range {v0 .. v17}, Lcom/itextpdf/layout/renderer/BlockRenderer;->processNotFullChildResult(Lcom/itextpdf/layout/layout/LayoutContext;Ljava/util/Map;Ljava/util/List;ZLjava/util/List;ZF[Lcom/itextpdf/layout/borders/Border;[Lcom/itextpdf/layout/properties/UnitValue;Ljava/util/List;ILcom/itextpdf/kernel/geom/Rectangle;Ljava/util/Set;Lcom/itextpdf/layout/renderer/IRenderer;ZILcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    if-nez v0, :cond_27

    move-object/from16 v1, v39

    move/from16 v2, v48

    .line 330
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v6, p0

    move/from16 v31, v2

    move/from16 v14, v29

    move-object v2, v0

    goto :goto_17

    :cond_27
    move-object/from16 v6, p0

    move-object/from16 v1, v39

    .line 333
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->stopLayoutingChildrenIfChildResultNotFull(Lcom/itextpdf/layout/layout/LayoutResult;)Z

    move-result v2

    if-eqz v2, :cond_28

    return-object v0

    :cond_28
    move/from16 v14, v29

    move-object/from16 v2, v36

    goto :goto_18

    :cond_29
    move-object/from16 v35, v0

    move/from16 v33, v1

    move-object/from16 v43, v3

    move-object/from16 v44, v8

    move/from16 v45, v9

    move-object/from16 v46, v10

    move/from16 v34, v11

    move-object/from16 v49, v14

    move-object/from16 v42, v36

    move-object/from16 v1, v38

    move-object/from16 v47, v39

    const/16 v32, 0x0

    move-object/from16 v36, v2

    move-object/from16 v38, v28

    move-object/from16 v28, v40

    move/from16 v40, v6

    move-object v6, v15

    move/from16 v14, v29

    :goto_17
    move-object/from16 v0, v41

    :goto_18
    if-nez v30, :cond_2b

    .line 340
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v3

    const/4 v7, 0x3

    if-eq v3, v7, :cond_2a

    goto :goto_19

    :cond_2a
    move/from16 v3, v32

    goto :goto_1a

    :cond_2b
    :goto_19
    const/4 v3, 0x1

    .line 341
    :goto_1a
    invoke-virtual {v6, v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->handleForcedPlacement(Z)V

    .line 344
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    if-eqz v4, :cond_2e

    invoke-static/range {v35 .. v35}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v4

    if-eqz v4, :cond_2d

    if-eqz v21, :cond_2c

    goto :goto_1b

    :cond_2c
    move/from16 v8, v45

    move-object/from16 v4, v46

    move-object/from16 v5, v49

    goto :goto_1d

    .line 345
    :cond_2d
    :goto_1b
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    move-object/from16 v5, v49

    invoke-virtual {v6, v4, v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->recalculateOccupiedAreaAfterChildLayout(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;)V

    move-object/from16 v4, v46

    .line 346
    invoke-virtual {v6, v4, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_1c

    :cond_2e
    move-object/from16 v4, v46

    move-object/from16 v5, v49

    :goto_1c
    move/from16 v8, v45

    :goto_1d
    move-object/from16 v9, v43

    if-eqz v8, :cond_2f

    .line 349
    invoke-virtual {v9, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endChildMarginsHandling(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 351
    :cond_2f
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_30

    move-object/from16 v7, v35

    .line 352
    invoke-virtual {v6, v2, v0, v7}, Lcom/itextpdf/layout/renderer/BlockRenderer;->decreaseLayoutBoxAfterChildPlacement(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 353
    invoke-interface {v7}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v11

    if-eqz v11, :cond_30

    .line 355
    iget-object v11, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Lcom/itextpdf/layout/renderer/BlockRenderer;->alignChildHorizontally(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_30
    if-nez v37, :cond_31

    .line 360
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v7

    if-eqz v7, :cond_31

    .line 361
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    move-object/from16 v37, v0

    :cond_31
    move/from16 v30, v3

    move/from16 v29, v14

    :goto_1e
    add-int/lit8 v0, v33, 0x1

    move-object v10, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v13, v28

    move/from16 v11, v34

    move-object/from16 v24, v38

    move/from16 v6, v40

    move-object/from16 v7, v42

    move-object/from16 v4, v44

    move-object/from16 v12, v47

    const/16 v3, 0x1a

    move-object v5, v1

    move-object/from16 v28, v9

    move v1, v0

    move v9, v8

    move/from16 v8, v32

    goto/16 :goto_4

    :cond_32
    move-object/from16 v36, v2

    move-object/from16 v44, v4

    move/from16 v40, v6

    move-object/from16 v42, v7

    move v7, v8

    move v8, v9

    move-object v4, v10

    move-object/from16 v47, v12

    move-object v6, v15

    move-object/from16 v38, v24

    move-object/from16 v9, v28

    const/4 v10, 0x1

    const/16 v24, 0x0

    const/16 v32, 0x0

    move-object/from16 v28, v13

    if-eqz v21, :cond_33

    move-object/from16 v11, v42

    move-object/from16 v12, v44

    .line 366
    invoke-static {v12, v6, v11}, Lcom/itextpdf/layout/renderer/FloatingHelper;->includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/Set;)V

    move-object/from16 v13, v36

    .line 367
    invoke-virtual {v6, v4, v13}, Lcom/itextpdf/layout/renderer/BlockRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_1f

    :cond_33
    move-object/from16 v13, v36

    move-object/from16 v11, v42

    move-object/from16 v12, v44

    :goto_1f
    move-object/from16 v0, v23

    if-eqz v40, :cond_34

    .line 370
    invoke-virtual {v6, v0, v13}, Lcom/itextpdf/layout/renderer/BlockRenderer;->fixOccupiedAreaIfOverflowedY(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_34
    if-eqz v8, :cond_35

    .line 373
    invoke-virtual {v9, v13}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 376
    :cond_35
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x56

    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 377
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    aput-object v2, v3, v32

    aput-object v13, v3, v10

    invoke-static {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/layout/LayoutArea;->setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 381
    :cond_36
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    if-nez v40, :cond_37

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x1a

    .line 382
    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    move v14, v10

    goto :goto_20

    :cond_37
    move/from16 v14, v32

    :goto_20
    if-eqz v21, :cond_39

    if-nez v14, :cond_38

    goto :goto_21

    :cond_38
    move-object/from16 v0, v24

    goto :goto_22

    .line 386
    :cond_39
    :goto_21
    invoke-virtual {v6, v0, v13}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyMinHeight(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    :goto_22
    if-eqz v0, :cond_3a

    move v1, v10

    goto :goto_23

    :cond_3a
    move/from16 v1, v32

    :goto_23
    if-eqz v1, :cond_3b

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isKeepTogether()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 391
    invoke-interface {v12, v11}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 392
    new-instance v7, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x3

    move-object v0, v7

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v7

    :cond_3b
    if-nez v0, :cond_3d

    if-eqz v14, :cond_3c

    goto :goto_24

    :cond_3c
    move v9, v10

    goto :goto_26

    :cond_3d
    :goto_24
    if-nez v30, :cond_3e

    .line 397
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    move v2, v7

    goto :goto_25

    :cond_3e
    const/4 v2, 0x2

    :goto_25
    move v9, v2

    :goto_26
    if-eqz v14, :cond_41

    if-eqz v0, :cond_3f

    if-ne v9, v7, :cond_40

    .line 408
    :cond_3f
    invoke-virtual {v6, v9}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    .line 410
    :cond_40
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    move-object/from16 v3, v47

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x2

    if-ne v9, v2, :cond_41

    if-nez v1, :cond_41

    if-nez v21, :cond_41

    .line 412
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->removeParentArtifactsOnPageSplitIfOnlyFloatsOverflow(Lcom/itextpdf/layout/renderer/IRenderer;)V

    :cond_41
    move-object v14, v0

    .line 416
    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_43

    if-eq v9, v7, :cond_43

    .line 417
    invoke-virtual {v6, v9}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v15

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v15, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    move-object/from16 v0, v28

    .line 419
    invoke-direct {v6, v0, v15}, Lcom/itextpdf/layout/renderer/BlockRenderer;->replaceSplitRendererKidFloats(Ljava/util/Map;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 421
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    if-nez v21, :cond_42

    const/4 v1, 0x2

    .line 423
    new-array v0, v1, [Lcom/itextpdf/kernel/geom/Rectangle;

    aput-object v13, v0, v32

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    :cond_42
    move v1, v0

    move-object/from16 v0, p0

    move/from16 v2, v40

    move-object v3, v15

    move-object v4, v14

    move/from16 v5, v21

    .line 427
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->updateHeightsOnSplit(FZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;Z)V

    move-object/from16 v35, v15

    goto :goto_27

    :cond_43
    move-object/from16 v35, v6

    .line 430
    :goto_27
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_44

    .line 431
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 432
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    const/high16 v3, 0x447a0000    # 1000.0f

    .line 436
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    add-float/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 437
    new-instance v3, Lcom/itextpdf/layout/layout/LayoutArea;

    iget-object v4, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v4

    iget-object v5, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    .line 438
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    move-object/from16 v5, v38

    invoke-virtual {v6, v4, v5, v10}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 440
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v6, v1, v2, v4}, Lcom/itextpdf/layout/renderer/BlockRenderer;->preparePositionedRendererAndAreaForLayout(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 441
    new-instance v4, Lcom/itextpdf/layout/layout/PositionedLayoutContext;

    new-instance v15, Lcom/itextpdf/layout/layout/LayoutArea;

    iget-object v7, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v7

    invoke-direct {v15, v7, v2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v4, v15, v3}, Lcom/itextpdf/layout/layout/PositionedLayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {v1, v4}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v7, 0x3

    goto :goto_28

    :cond_44
    move-object/from16 v5, v38

    if-eqz v19, :cond_45

    .line 446
    invoke-virtual {v6, v13}, Lcom/itextpdf/layout/renderer/BlockRenderer;->correctFixedLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 449
    :cond_45
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v6, v0, v5, v10}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 450
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1, v10}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 451
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v6, v0, v10}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 453
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyAbsolutePositionIfNeeded(Lcom/itextpdf/layout/layout/LayoutContext;)V

    if-eqz v20, :cond_47

    .line 456
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyRotationLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 457
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isNotFittingLayoutArea(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 458
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isNotFittingWidth(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isNotFittingHeight(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 459
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "It fits by height so it will be forced placed"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 460
    const-string v2, "Element does not fit current area. {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_29

    :cond_46
    if-nez v27, :cond_47

    .line 463
    invoke-interface {v12, v11}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 464
    new-instance v7, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x3

    move-object v0, v7

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v7

    .line 468
    :cond_47
    :goto_29
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyVerticalAlignment()V

    .line 470
    invoke-static {v12, v6}, Lcom/itextpdf/layout/renderer/FloatingHelper;->removeFloatsAboveRendererBottom(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;)V

    const/4 v0, 0x3

    if-eq v9, v0, :cond_48

    .line 473
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    move/from16 v2, v22

    invoke-static {v6, v0, v1, v2, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v34

    .line 474
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutResult;

    move-object/from16 v32, v0

    move/from16 v33, v9

    move-object/from16 v36, v14

    invoke-direct/range {v32 .. v37}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v0

    .line 476
    :cond_48
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_49

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->positionedRenderers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v14, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    .line 479
    :cond_49
    invoke-interface {v12, v11}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 480
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutResult;

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v33, 0x3

    move-object/from16 v32, v0

    move-object/from16 v36, v14

    invoke-direct/range {v32 .. v37}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v0
.end method

.method processNotFullChildResult(Lcom/itextpdf/layout/layout/LayoutContext;Ljava/util/Map;Ljava/util/List;ZLjava/util/List;ZF[Lcom/itextpdf/layout/borders/Border;[Lcom/itextpdf/layout/properties/UnitValue;Ljava/util/List;ILcom/itextpdf/kernel/geom/Rectangle;Ljava/util/Set;Lcom/itextpdf/layout/renderer/IRenderer;ZILcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/layout/LayoutContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;Z",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;ZF[",
            "Lcom/itextpdf/layout/borders/Border;",
            "[",
            "Lcom/itextpdf/layout/properties/UnitValue;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;I",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "ZI",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            ")",
            "Lcom/itextpdf/layout/layout/LayoutResult;"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p12

    move/from16 v1, p16

    .line 859
    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/16 v13, 0x1a

    const/4 v14, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    add-int/lit8 v0, p11, 0x1

    .line 860
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v2, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p16

    move-object/from16 v3, p17

    move-object/from16 v4, p2

    move v15, v5

    move-object/from16 v5, p3

    .line 861
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createSplitAndOverflowRenderers(IILcom/itextpdf/layout/layout/LayoutResult;Ljava/util/Map;Ljava/util/List;)[Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    .line 864
    aget-object v1, v0, v14

    .line 865
    aget-object v0, v0, v15

    .line 866
    invoke-virtual {v0, v13}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->deleteOwnProperty(I)V

    .line 868
    invoke-virtual {v6, v7, v1, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->updateHeightsOnSplit(ZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;)V

    .line 869
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v6, v2, v11, v15}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 870
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v6, v2, v10, v15}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 871
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v6, v2, v15}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 873
    invoke-virtual {v6, v12}, Lcom/itextpdf/layout/renderer/BlockRenderer;->correctFixedLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 875
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-static {v6, v2, v3, v9, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    if-eqz v7, :cond_0

    .line 877
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v3, 0x0

    invoke-direct {v0, v15, v2, v1, v3}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v0

    .line 879
    :cond_0
    new-instance v3, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v4, 0x2

    move-object/from16 p1, v3

    move/from16 p2, v4

    move-object/from16 p3, v2

    move-object/from16 p4, v1

    move-object/from16 p5, v0

    move-object/from16 p6, p14

    invoke-direct/range {p1 .. p6}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v3

    :cond_1
    move v15, v5

    .line 882
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 883
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    add-int/2addr v1, v15

    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    move v15, v5

    .line 886
    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_9

    move-object/from16 v0, p14

    .line 887
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isKeepTogether(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v17

    if-eqz p15, :cond_3

    if-nez v17, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p16

    move v2, v4

    move-object/from16 v3, p17

    move/from16 v18, v4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 890
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createSplitAndOverflowRenderers(IILcom/itextpdf/layout/layout/LayoutResult;Ljava/util/Map;Ljava/util/List;)[Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    .line 893
    aget-object v1, v0, v14

    .line 894
    aget-object v0, v0, v15

    .line 896
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->isRelativePosition()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 897
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->positionedRenderers:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    .line 900
    :cond_4
    invoke-virtual {v6, v7, v1, v0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->updateHeightsOnSplit(ZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;)V

    if-eqz v17, :cond_5

    .line 904
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 905
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->childRenderers:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    const/16 v16, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v16, v1

    .line 908
    :goto_1
    invoke-virtual {v6, v12}, Lcom/itextpdf/layout/renderer/BlockRenderer;->correctFixedLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 910
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v6, v1, v11, v15}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 911
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v6, v1, v10, v15}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 912
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v6, v1, v15}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 914
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyAbsolutePositionIfNeeded(Lcom/itextpdf/layout/layout/LayoutContext;)V

    .line 916
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v13}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move/from16 v2, v18

    const/4 v1, 0x3

    if-eq v2, v1, :cond_7

    .line 921
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-static {v6, v1, v3, v9, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    .line 922
    new-instance v3, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v4, 0x0

    move-object/from16 p1, v3

    move/from16 p2, v2

    move-object/from16 p3, v1

    move-object/from16 p4, v16

    move-object/from16 p5, v0

    move-object/from16 p6, v4

    invoke-direct/range {p1 .. p6}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/itextpdf/layout/layout/LayoutResult;->setAreaBreak(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    return-object v0

    :cond_7
    move-object/from16 v1, p5

    move-object/from16 v3, p13

    .line 924
    invoke-interface {v1, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 925
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v3, 0x0

    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 p1, v1

    move/from16 p2, v2

    move-object/from16 p3, v5

    move-object/from16 p4, v3

    move-object/from16 p5, v0

    move-object/from16 p6, v4

    invoke-direct/range {p1 .. p6}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/layout/LayoutResult;->setAreaBreak(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    return-object v0

    .line 917
    :cond_8
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-static {v6, v0, v1, v9, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    .line 918
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 p1, v1

    move/from16 p2, v4

    move-object/from16 p3, v0

    move-object/from16 p4, v16

    move-object/from16 p5, v2

    move-object/from16 p6, v3

    invoke-direct/range {p1 .. p6}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v1

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method recalculateLayoutBoxBeforeChildLayout(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    return-object p1
.end method

.method recalculateOccupiedAreaAfterChildLayout(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;)V
    .locals 3

    .line 633
    iget-object p2, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/layout/layout/LayoutArea;->setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V

    return-void
.end method

.method startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .locals 0

    .line 638
    invoke-virtual {p3, p1, p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object p1

    return-object p1
.end method

.method stopLayoutingChildrenIfChildResultNotFull(Lcom/itextpdf/layout/layout/LayoutResult;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
