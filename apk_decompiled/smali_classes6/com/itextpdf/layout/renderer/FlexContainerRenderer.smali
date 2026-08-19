.class public Lcom/itextpdf/layout/renderer/FlexContainerRenderer;
.super Lcom/itextpdf/layout/renderer/DivRenderer;
.source "FlexContainerRenderer.java"


# instance fields
.field private final hypotheticalCrossSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexItemInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/Div;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;-><init>(Lcom/itextpdf/layout/element/Div;)V

    .line 73
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->hypotheticalCrossSizes:Ljava/util/Map;

    return-void
.end method

.method private static addSimulateDiv(Lcom/itextpdf/layout/renderer/AbstractRenderer;F)V
    .locals 2

    .line 468
    new-instance v0, Lcom/itextpdf/layout/renderer/DivRenderer;

    new-instance v1, Lcom/itextpdf/layout/element/Div;

    invoke-direct {v1}, Lcom/itextpdf/layout/element/Div;-><init>()V

    .line 469
    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/element/Div;->setMinWidth(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Div;

    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/element/Div;->setMaxWidth(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Div;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;-><init>(Lcom/itextpdf/layout/element/Div;)V

    .line 470
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-void
.end method

.method private fillSplitOverflowRenderersForPartialResult(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/layout/LayoutResult;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/AbstractRenderer;",
            "Lcom/itextpdf/layout/renderer/AbstractRenderer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexItemInfo;",
            ">;",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x86

    const/4 v1, 0x0

    .line 392
    invoke-virtual {p2, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 396
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/FlexItemInfo;

    .line 398
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v3, p4, :cond_2

    .line 400
    invoke-virtual {p5}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {p5}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 404
    :cond_0
    invoke-virtual {p5}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 405
    invoke-virtual {p5}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    :cond_1
    move v1, v4

    goto/16 :goto_2

    :cond_2
    if-eqz v1, :cond_6

    .line 410
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    .line 412
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v5

    add-float/2addr v5, v0

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 413
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 416
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 418
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v5

    new-instance v6, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v7, Lcom/itextpdf/layout/layout/LayoutArea;

    .line 419
    invoke-virtual {p5}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v8

    invoke-direct {v7, v8, v3}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v6, v7}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    .line 418
    invoke-virtual {v5, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v3

    .line 421
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 422
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 423
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_1

    .line 424
    :cond_3
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 425
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 430
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 431
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_2

    .line 434
    :cond_5
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    invoke-static {p2, v3}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->addSimulateDiv(Lcom/itextpdf/layout/renderer/AbstractRenderer;F)V

    goto :goto_2

    .line 439
    :cond_6
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 442
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    invoke-static {p2, v3}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->addSimulateDiv(Lcom/itextpdf/layout/renderer/AbstractRenderer;F)V

    .line 446
    :goto_2
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    add-float/2addr v3, v2

    add-float/2addr v0, v3

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private findFlexItemInfo(Lcom/itextpdf/layout/renderer/AbstractRenderer;)Lcom/itextpdf/layout/renderer/FlexItemInfo;
    .locals 4

    .line 357
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 358
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/FlexItemInfo;

    .line 359
    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private findMinMaxWidthIfCorrespondingPropertiesAreNotSet(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;Lcom/itextpdf/layout/renderer/AbstractWidthHandler;)V
    .locals 4

    .line 453
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->setThisAsParent(Ljava/util/Collection;)V

    .line 454
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 456
    invoke-interface {v1, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 457
    instance-of v2, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v2, :cond_0

    .line 458
    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v1

    goto :goto_1

    .line 460
    :cond_0
    invoke-static {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->countDefaultMinMaxWidth(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v1

    .line 462
    :goto_1
    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    .line 463
    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$createSplitAndOverflowRenderers$0(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/FlexItemInfo;)Z
    .locals 0

    .line 204
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 2

    const/16 v0, 0x67

    .line 381
    sget-object v1, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->VISIBLE:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-interface {p1, v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 382
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-void
.end method

.method createSplitAndOverflowRenderers(IILcom/itextpdf/layout/layout/LayoutResult;Ljava/util/Map;Ljava/util/List;)[Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 16
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

    move-object/from16 v6, p0

    move/from16 v7, p2

    .line 197
    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v8

    .line 198
    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v9

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 201
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v11, 0x1a

    invoke-virtual {v6, v11}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 203
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    move v0, v14

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    .line 204
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v5, Lcom/itextpdf/layout/renderer/FlexContainerRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v5, v10}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-interface {v1, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v15, v14

    goto :goto_2

    :cond_1
    :goto_1
    move v15, v2

    :goto_2
    if-eqz v1, :cond_2

    if-nez v12, :cond_2

    if-ne v7, v3, :cond_2

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v4

    move-object v4, v10

    move-object/from16 v5, p3

    .line 209
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->fillSplitOverflowRenderersForPartialResult(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/layout/LayoutResult;)V

    goto :goto_4

    .line 212
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/FlexItemInfo;

    if-eqz v15, :cond_3

    if-nez v12, :cond_3

    .line 214
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_3

    .line 216
    :cond_3
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_3

    :cond_4
    :goto_4
    move v0, v15

    goto :goto_0

    .line 222
    :cond_5
    invoke-virtual {v9, v11}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->deleteOwnProperty(I)V

    .line 224
    new-array v0, v3, [Lcom/itextpdf/layout/renderer/AbstractRenderer;

    aput-object v8, v0, v14

    aput-object v9, v0, v2

    return-object v0
.end method

.method decreaseLayoutBoxAfterChildPlacement(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 1

    .line 322
    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result p3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v0

    sub-float/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 323
    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method

.method fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0

    return-void
.end method

.method getHypotheticalCrossSize(Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->hypotheticalCrossSizes:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 6

    .line 162
    new-instance v0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->calculateAdditionalWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(F)V

    .line 163
    new-instance v1, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;

    invoke-direct {v1, v0}, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->setMinMaxWidthBasedOnFixedWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x50

    .line 165
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->hasAbsoluteUnitValue(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->retrieveMinWidth(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const/16 v5, 0x4f

    .line 166
    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->hasAbsoluteUnitValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->retrieveMaxWidth(F)Ljava/lang/Float;

    move-result-object v4

    :cond_1
    if-eqz v2, :cond_2

    if-nez v4, :cond_3

    .line 168
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->findMinMaxWidthIfCorrespondingPropertiesAreNotSet(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;Lcom/itextpdf/layout/renderer/AbstractWidthHandler;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 171
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    :cond_4
    if-nez v4, :cond_5

    .line 175
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 176
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    goto :goto_1

    .line 179
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    :cond_6
    :goto_1
    const/16 v1, 0x37

    .line 183
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 184
    invoke-static {v0, p0}, Lcom/itextpdf/layout/renderer/RotationUtils;->countRotationMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;Lcom/itextpdf/layout/renderer/AbstractRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 98
    const-class v0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->logWarningIfGetNextRendererNotOverridden(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 99
    new-instance v0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/Div;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;-><init>(Lcom/itextpdf/layout/element/Div;)V

    return-object v0
.end method

.method getOccupiedAreaInCaseNothingWasWrappedWithFull(Lcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 1

    .line 283
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method handleForcedPlacement(Z)V
    .locals 0

    return-void
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 13

    .line 107
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->setThisAsParent(Ljava/util/Collection;)V

    .line 109
    invoke-static {v0, p0}, Lcom/itextpdf/layout/renderer/FlexUtil;->calculateChildrenRectangles(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->lines:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->lines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x55

    const/16 v6, 0x1b

    const/16 v7, 0x4d

    const/4 v8, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 114
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/FlexItemInfo;

    .line 116
    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 118
    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v10

    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v10

    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    .line 124
    :goto_1
    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v11

    .line 129
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v12

    invoke-static {v12}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v12

    .line 128
    invoke-virtual {v11, v7, v12}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 130
    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v11

    .line 131
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v12

    invoke-static {v12}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v12

    .line 130
    invoke-virtual {v11, v6, v12}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 135
    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v9

    .line 136
    invoke-virtual {v10}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v10

    invoke-static {v10}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v10

    .line 135
    invoke-virtual {v9, v5, v10}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 140
    :cond_2
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object p1

    .line 146
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->lines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 147
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/FlexItemInfo;

    .line 148
    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v10

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 149
    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v10

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 150
    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRenderer()Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v9

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method processNotFullChildResult(Lcom/itextpdf/layout/layout/LayoutContext;Ljava/util/Map;Ljava/util/List;ZLjava/util/List;ZF[Lcom/itextpdf/layout/borders/Border;[Lcom/itextpdf/layout/properties/UnitValue;Ljava/util/List;ILcom/itextpdf/kernel/geom/Rectangle;Ljava/util/Set;Lcom/itextpdf/layout/renderer/IRenderer;ZILcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 11
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

    move-object v6, p0

    move v7, p4

    move-object/from16 v0, p14

    .line 236
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->isKeepTogether(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v8

    .line 237
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v9, 0x1a

    invoke-virtual {p0, v9}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_5

    if-eqz v7, :cond_0

    goto/16 :goto_2

    .line 248
    :cond_0
    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v2

    move-object v0, p0

    move/from16 v1, p16

    move-object/from16 v3, p17

    move-object v4, p2

    move-object v5, p3

    .line 247
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->createSplitAndOverflowRenderers(IILcom/itextpdf/layout/layout/LayoutResult;Ljava/util/Map;Ljava/util/List;)[Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    const/4 v1, 0x0

    .line 250
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 251
    aget-object v0, v0, v2

    .line 252
    invoke-virtual {v0, v9}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->deleteOwnProperty(I)V

    .line 253
    invoke-virtual {p0, p4, v1, v0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->updateHeightsOnSplit(ZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;)V

    .line 255
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->isRelativePosition()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v6, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 256
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v6, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->positionedRenderers:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    :cond_1
    if-eqz v8, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setChildRenderers(Ljava/util/List;)V

    move-object/from16 v3, p12

    move-object v1, v10

    goto :goto_0

    :cond_2
    move-object/from16 v3, p12

    .line 265
    :goto_0
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->correctFixedLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 267
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->applyAbsolutePositionIfNeeded(Lcom/itextpdf/layout/layout/LayoutContext;)V

    .line 269
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    move-object/from16 v4, p9

    invoke-virtual {p0, v3, v4, v2}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 270
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    move-object/from16 v4, p8

    invoke-virtual {p0, v3, v4, v2}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 271
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    if-eqz v1, :cond_4

    .line 272
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 276
    :cond_3
    new-instance v2, Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object p1, v2

    move p2, v5

    move-object p3, v3

    move-object p4, v1

    move-object/from16 p5, v0

    move-object/from16 p6, v4

    invoke-direct/range {p1 .. p6}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 277
    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/itextpdf/layout/layout/LayoutResult;->setAreaBreak(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    return-object v0

    .line 273
    :cond_4
    :goto_1
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v2, 0x0

    .line 274
    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object p1, v1

    move p2, v4

    move-object p3, v5

    move-object p4, v2

    move-object/from16 p5, v0

    move-object/from16 p6, v3

    invoke-direct/range {p1 .. p6}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/layout/LayoutResult;->setAreaBreak(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    goto :goto_3

    .line 238
    :cond_6
    invoke-virtual/range {p17 .. p17}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v10

    :goto_3
    if-eqz v10, :cond_7

    .line 240
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setChildRenderers(Ljava/util/List;)V

    .line 243
    :cond_7
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutResult;

    move-object/from16 v1, p17

    .line 244
    invoke-virtual {p0, v1, v10}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getOccupiedAreaInCaseNothingWasWrappedWithFull(Lcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object p1, v0

    move p2, v4

    move-object p3, v1

    move-object p4, v10

    move-object/from16 p5, v2

    move-object/from16 p6, v3

    invoke-direct/range {p1 .. p6}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v0
.end method

.method recalculateLayoutBoxBeforeChildLayout(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    .line 329
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 330
    instance-of p3, p2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz p3, :cond_0

    .line 331
    check-cast p2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-direct {p0, p2}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->findFlexItemInfo(Lcom/itextpdf/layout/renderer/AbstractRenderer;)Lcom/itextpdf/layout/renderer/FlexItemInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 333
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 334
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 336
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/FlexItemInfo;->getRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_0
    return-object p1
.end method

.method recalculateOccupiedAreaAfterChildLayout(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;)V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v1, 0x2

    .line 297
    new-array v1, v1, [Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 299
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 300
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 301
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result p1

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_0
    if-eqz p2, :cond_1

    .line 304
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 305
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 306
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 307
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 308
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_1
    return-void
.end method

.method setHypotheticalCrossSize(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->hypotheticalCrossSizes:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .locals 0

    const/4 p1, 0x0

    .line 315
    invoke-virtual {p3, p1, p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object p1

    return-object p1
.end method

.method stopLayoutingChildrenIfChildResultNotFull(Lcom/itextpdf/layout/layout/LayoutResult;)Z
    .locals 1

    .line 288
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
