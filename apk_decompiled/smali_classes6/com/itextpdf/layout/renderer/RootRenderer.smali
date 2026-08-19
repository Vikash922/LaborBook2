.class public abstract Lcom/itextpdf/layout/renderer/RootRenderer;
.super Lcom/itextpdf/layout/renderer/AbstractRenderer;
.source "RootRenderer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

.field private floatOverflowedCompletely:Z

.field floatRendererAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field protected immediateFlush:Z

.field private initialCurrentArea:Lcom/itextpdf/layout/layout/LayoutArea;

.field private keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

.field private keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

.field private marginsCollapseHandler:Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

.field protected waitingDrawingElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private waitingNextPageRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>()V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->immediateFlush:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingDrawingElements:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatOverflowedCompletely:Z

    return-void
.end method

.method private addAllWaitingNextPageRenderers()V
    .locals 3

    .line 477
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x59

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/RootRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 478
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 480
    new-instance v2, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-direct {v2, p0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;-><init>(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    iput-object v2, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->marginsCollapseHandler:Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    .line 482
    :cond_0
    invoke-direct {p0, v1}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addWaitingNextPageRenderers()V
    .locals 2

    const/4 v0, 0x0

    .line 487
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatOverflowedCompletely:Z

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 489
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 490
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 491
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/RootRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)V"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->alignChildHorizontally(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 390
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->immediateFlush:Z

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/RootRenderer;->flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_0

    .line 393
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private processWaitingKeepWithNextElement(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 13

    .line 398
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_9

    .line 399
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 402
    invoke-interface {p1, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    new-instance v2, Lcom/itextpdf/layout/layout/LayoutContext;

    invoke-direct {v2, v0}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {p0, v0, v3, v4}, Lcom/itextpdf/layout/renderer/RootRenderer;->shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V

    move v4, v2

    goto/16 :goto_2

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    .line 408
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    :goto_0
    const/4 v5, 0x5

    if-gt v4, v5, :cond_1

    int-to-float v5, v4

    const/high16 v6, 0x420c0000    # 35.0f

    mul-float/2addr v6, v5

    sub-float v5, v0, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v0, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    .line 411
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v4, v0

    .line 413
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    if-nez v4, :cond_4

    .line 414
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 415
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 416
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    iget-object v8, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 417
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    sub-float/2addr v8, v5

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 418
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v5, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    new-instance v7, Lcom/itextpdf/layout/layout/LayoutContext;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {v5, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v5

    .line 419
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 420
    iget-object v7, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 421
    invoke-direct {p0, v5}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 422
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v8

    new-instance v9, Lcom/itextpdf/layout/layout/LayoutContext;

    iget-object v10, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v10}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {v8, v9}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v8

    .line 423
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v9

    if-ne v9, v2, :cond_2

    .line 424
    iget-object v9, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v9

    .line 425
    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v11

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 426
    invoke-interface {p1, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v10

    new-instance v11, Lcom/itextpdf/layout/layout/LayoutContext;

    invoke-direct {v11, v9}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {v10, v11}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v9

    .line 427
    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v9

    if-eq v9, v1, :cond_2

    .line 430
    iput-object v6, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 431
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4, v6, v5}, Lcom/itextpdf/layout/renderer/RootRenderer;->shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 432
    invoke-direct {p0, v5}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 433
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4, v5, v8}, Lcom/itextpdf/layout/renderer/RootRenderer;->shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V

    move v4, v2

    :cond_2
    if-nez v4, :cond_3

    .line 437
    iput-object v7, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    :goto_2
    const/4 v0, 0x0

    if-nez v4, :cond_7

    .line 442
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/RootLayoutArea;->isEmptyArea()Z

    move-result v3

    if-nez v3, :cond_7

    .line 443
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 444
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 445
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v5, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    new-instance v6, Lcom/itextpdf/layout/layout/LayoutContext;

    iget-object v7, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {v5, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v5

    .line 446
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v6

    if-ne v6, v2, :cond_5

    .line 447
    iget-object v6, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    .line 448
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    sub-float/2addr v8, v5

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 449
    invoke-interface {p1, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p1

    new-instance v5, Lcom/itextpdf/layout/layout/LayoutContext;

    invoke-direct {v5, v6}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {p1, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object p1

    .line 450
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result p1

    if-eq p1, v1, :cond_5

    .line 452
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {p0, p1, v1, v4}, Lcom/itextpdf/layout/renderer/RootRenderer;->shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V

    goto :goto_3

    :cond_5
    move v2, v4

    :goto_3
    if-nez v2, :cond_6

    .line 456
    iput-object v3, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    :cond_6
    move v4, v2

    :cond_7
    if-nez v4, :cond_8

    .line 460
    const-class p1, Lcom/itextpdf/layout/renderer/RootRenderer;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 461
    const-string v1, "The renderer was not able to process keep with next property properly"

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 462
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {p0, p1, v1, v2}, Lcom/itextpdf/layout/renderer/RootRenderer;->shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 464
    :cond_8
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 465
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    :cond_9
    return-void
.end method

.method private tryDisableKeepTogether(Lcom/itextpdf/layout/layout/LayoutResult;ZLcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;)Z
    .locals 3

    .line 513
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-eqz p1, :cond_1

    .line 515
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 518
    :cond_0
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    if-nez v0, :cond_2

    return p1

    .line 529
    :cond_2
    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/itextpdf/layout/IPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 530
    const-class p1, Lcom/itextpdf/layout/renderer/RootRenderer;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 531
    invoke-interface {p1}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    const-string v0, "KeepTogether property will be ignored."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Element does not fit current area. {0}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_3
    if-nez p2, :cond_4

    .line 537
    invoke-virtual {p3, p0}, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->attemptGoBackToStoredPreviousStateAndStoreNextState(Lcom/itextpdf/layout/renderer/RootRenderer;)Z

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V
    .locals 1

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatRendererAreas:Ljava/util/List;

    .line 471
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentArea(Lcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutArea;

    .line 472
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->initialCurrentArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 473
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/RootRenderer;->addWaitingNextPageRenderers()V

    return-void
.end method

.method private updateForcedPlacement(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 2

    .line 496
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x1a

    invoke-interface {p1, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 499
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 500
    const-class p2, Lcom/itextpdf/layout/renderer/RootRenderer;

    invoke-static {p2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p2

    .line 501
    invoke-interface {p2}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Element does not fit current area. {0}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_1
    return p1
.end method


# virtual methods
.method public addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x6c

    .line 88
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/RootRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    move-object/from16 v2, p1

    if-eqz v1, :cond_0

    .line 90
    invoke-static {v1, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addTreeHints(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 95
    :cond_0
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 96
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 97
    invoke-super/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    :goto_0
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v1, :cond_1

    .line 101
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v6, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 105
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 109
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v3, 0x59

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/RootRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 110
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    const/4 v6, 0x0

    if-nez v3, :cond_3

    .line 111
    invoke-direct {v0, v6}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V

    if-eqz v1, :cond_3

    .line 113
    new-instance v3, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-direct {v3, v0, v6}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;-><init>(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    iput-object v3, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->marginsCollapseHandler:Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    :cond_3
    const/4 v7, 0x0

    .line 118
    :goto_2
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-eqz v8, :cond_1d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1d

    .line 119
    new-instance v8, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;

    invoke-direct {v8}, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;-><init>()V

    .line 121
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 122
    invoke-static {v10}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v11

    .line 123
    iget-object v12, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    const/16 v13, 0x64

    invoke-interface {v10, v13}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/layout/properties/ClearPropertyValue;

    invoke-static {v12, v14}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isClearanceApplied(Ljava/util/List;Lcom/itextpdf/layout/properties/ClearPropertyValue;)Z

    move-result v12

    if-eqz v11, :cond_5

    .line 124
    iget-boolean v14, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatOverflowedCompletely:Z

    if-nez v14, :cond_4

    if-eqz v12, :cond_5

    .line 125
    :cond_4
    iget-object v8, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iput-boolean v4, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatOverflowedCompletely:Z

    goto/16 :goto_7

    .line 130
    :cond_5
    invoke-direct {v0, v10}, Lcom/itextpdf/layout/renderer/RootRenderer;->processWaitingKeepWithNextElement(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 132
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_6

    .line 136
    iget-object v15, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-eqz v15, :cond_6

    if-eqz v10, :cond_6

    .line 137
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->marginsCollapseHandler:Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    invoke-virtual {v3, v10, v15}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v3

    move-object v15, v6

    goto :goto_3

    :cond_6
    move-object v3, v6

    move-object v15, v3

    .line 139
    :goto_3
    const-class v16, Lcom/itextpdf/layout/renderer/RootRenderer;

    if-nez v12, :cond_7

    iget-object v13, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-eqz v13, :cond_11

    if-eqz v10, :cond_11

    .line 140
    invoke-interface {v10, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v13

    new-instance v15, Lcom/itextpdf/layout/layout/LayoutContext;

    iget-object v6, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 141
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    iget-object v9, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatRendererAreas:Ljava/util/List;

    invoke-direct {v15, v6, v3, v9}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Ljava/util/List;)V

    invoke-interface {v13, v15}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v6

    if-eq v6, v4, :cond_11

    :cond_7
    if-eqz v12, :cond_8

    .line 144
    new-instance v6, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v9, 0x3

    const/4 v13, 0x0

    invoke-direct {v6, v9, v13, v13, v10}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object v15, v6

    move v6, v4

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    .line 147
    :goto_4
    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v9

    const/4 v13, 0x2

    if-ne v9, v13, :cond_b

    if-eqz v11, :cond_9

    .line 149
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 152
    :cond_9
    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v9

    invoke-direct {v0, v9, v14}, Lcom/itextpdf/layout/renderer/RootRenderer;->processRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;)V

    .line 153
    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->attemptGoForwardToStoredNextState(Lcom/itextpdf/layout/renderer/RootRenderer;)Z

    move-result v9

    if-nez v9, :cond_17

    :cond_a
    move v6, v4

    goto/16 :goto_8

    .line 157
    :cond_b
    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v9

    const/4 v13, 0x3

    if-ne v9, v13, :cond_17

    if-nez v12, :cond_17

    .line 158
    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v9

    instance-of v9, v9, Lcom/itextpdf/layout/renderer/ImageRenderer;

    if-eqz v9, :cond_e

    .line 159
    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/ImageRenderer;

    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v9

    .line 160
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatRendererAreas:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_d

    iget-object v13, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 161
    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v13

    cmpg-float v9, v13, v9

    if-gez v9, :cond_c

    iget-object v9, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/RootLayoutArea;->isEmptyArea()Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_5

    .line 169
    :cond_c
    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/ImageRenderer;

    iget-object v10, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v9, v10}, Lcom/itextpdf/layout/renderer/ImageRenderer;->autoScale(Lcom/itextpdf/layout/layout/LayoutArea;)Lcom/itextpdf/layout/renderer/ImageRenderer;

    .line 170
    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/16 v13, 0x1a

    invoke-interface {v9, v13, v10}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 171
    invoke-static/range {v16 .. v16}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v9

    .line 172
    const-string v10, ""

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v13, "Element does not fit current area. {0}"

    invoke-static {v13, v10}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d
    :goto_5
    if-eqz v11, :cond_a

    .line 163
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iput-boolean v4, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatOverflowedCompletely:Z

    goto :goto_6

    .line 175
    :cond_e
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/RootLayoutArea;->isEmptyArea()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;

    move-result-object v9

    if-nez v9, :cond_10

    .line 176
    invoke-direct {v0, v15, v11, v8}, Lcom/itextpdf/layout/renderer/RootRenderer;->tryDisableKeepTogether(Lcom/itextpdf/layout/layout/LayoutResult;ZLcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;)Z

    move-result v9

    xor-int/lit8 v13, v9, 0x1

    if-nez v9, :cond_f

    .line 182
    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v9

    invoke-direct {v0, v10, v9}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateForcedPlacement(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v9

    xor-int/lit8 v13, v9, 0x1

    :cond_f
    if-eqz v13, :cond_17

    goto :goto_6

    .line 195
    :cond_10
    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->storePreviousState(Lcom/itextpdf/layout/renderer/RootRenderer;)Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;

    .line 196
    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/RootRendererAreaStateHandler;->attemptGoForwardToStoredNextState(Lcom/itextpdf/layout/renderer/RootRenderer;)Z

    move-result v9

    if-nez v9, :cond_17

    if-eqz v11, :cond_a

    .line 198
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iput-boolean v4, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->floatOverflowedCompletely:Z

    :cond_11
    :goto_6
    if-eqz v1, :cond_12

    .line 225
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->marginsCollapseHandler:Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    iget-object v6, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endChildMarginsHandling(Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_12
    if-eqz v15, :cond_13

    .line 228
    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 229
    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v10

    :cond_13
    if-eqz v10, :cond_16

    if-eqz v15, :cond_16

    .line 234
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v6, 0x51

    invoke-interface {v10, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 235
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v6, 0x1a

    invoke-interface {v10, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 236
    invoke-static/range {v16 .. v16}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 237
    const-string v6, "Element was placed in a forced way. Keep with next property will be ignored"

    invoke-interface {v3, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, v10, v14, v15}, Lcom/itextpdf/layout/renderer/RootRenderer;->shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V

    goto :goto_7

    .line 240
    :cond_14
    iput-object v10, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 241
    iput-object v15, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRendererLayoutResult:Lcom/itextpdf/layout/layout/LayoutResult;

    goto :goto_7

    .line 243
    :cond_15
    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_16

    .line 244
    invoke-virtual {v0, v10, v14, v15}, Lcom/itextpdf/layout/renderer/RootRenderer;->shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V

    :cond_16
    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    .line 208
    :cond_17
    :goto_8
    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v10

    if-eqz v1, :cond_18

    .line 211
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->marginsCollapseHandler:Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    iget-object v13, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v13}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endChildMarginsHandling(Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_18
    if-eqz v6, :cond_19

    .line 214
    invoke-direct {v0, v15}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V

    :cond_19
    if-eqz v1, :cond_1a

    .line 217
    new-instance v3, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    const/4 v6, 0x0

    invoke-direct {v3, v0, v6}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;-><init>(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    iput-object v3, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->marginsCollapseHandler:Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    .line 218
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    invoke-virtual {v3, v10, v9}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v3

    goto :goto_9

    :cond_1a
    const/4 v6, 0x0

    :goto_9
    if-eqz v12, :cond_1b

    .line 221
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingNextPageRenderers:Ljava/util/List;

    const/16 v12, 0x64

    .line 222
    invoke-interface {v10, v12}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/layout/properties/ClearPropertyValue;

    invoke-static {v9, v13}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isClearanceApplied(Ljava/util/List;Lcom/itextpdf/layout/properties/ClearPropertyValue;)Z

    move-result v9

    if-eqz v9, :cond_1c

    move v9, v4

    goto :goto_a

    :cond_1b
    const/16 v12, 0x64

    :cond_1c
    const/4 v9, 0x0

    :goto_a
    move v13, v12

    move v12, v9

    goto/16 :goto_3

    :cond_1d
    const/4 v3, 0x0

    .line 249
    :goto_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_21

    .line 250
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    iget-object v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x33

    .line 252
    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1e

    .line 254
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getPageNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1e
    const/4 v6, 0x3

    .line 261
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x34

    invoke-interface {v1, v8}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-static {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->noAbsolutePositionInfo(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 262
    new-instance v7, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v8, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_c

    .line 264
    :cond_1f
    new-instance v7, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v8, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->initialCurrentArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    .line 266
    :goto_c
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 267
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v0, v1, v2, v8}, Lcom/itextpdf/layout/renderer/RootRenderer;->preparePositionedRendererAndAreaForLayout(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 268
    new-instance v8, Lcom/itextpdf/layout/layout/PositionedLayoutContext;

    new-instance v9, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v10

    invoke-direct {v9, v10, v2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v8, v9, v7}, Lcom/itextpdf/layout/layout/PositionedLayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-interface {v1, v8}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    .line 270
    iget-boolean v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->immediateFlush:Z

    if-eqz v2, :cond_20

    .line 271
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/RootRenderer;->flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 272
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    iget-object v2, v0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_21
    return-void
.end method

.method public close()V
    .locals 3

    .line 299
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/RootRenderer;->addAllWaitingNextPageRenderers()V

    .line 300
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 301
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x51

    invoke-interface {v0, v2, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    const/4 v1, 0x0

    .line 303
    iput-object v1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->keepWithNextHangingRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 304
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 306
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->immediateFlush:Z

    if-nez v0, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/RootRenderer;->flush()V

    :cond_1
    const/4 v0, 0x1

    .line 309
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->flushWaitingDrawingElements(Z)V

    const/16 v0, 0x6c

    .line 310
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->releaseAllHints()V

    :cond_2
    return-void
.end method

.method public flush()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 284
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/RootRenderer;->flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 287
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/RootRenderer;->flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_1

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 290
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected abstract flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V
.end method

.method protected flushWaitingDrawingElements()V
    .locals 1

    const/4 v0, 0x1

    .line 351
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->flushWaitingDrawingElements(Z)V

    return-void
.end method

.method flushWaitingDrawingElements(Z)V
    .locals 5

    .line 355
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 356
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 358
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    if-nez p1, :cond_1

    .line 360
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getPageNumber()I

    move-result v4

    if-ge v3, v4, :cond_0

    goto :goto_1

    .line 363
    :cond_0
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    if-nez v3, :cond_2

    .line 364
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 361
    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/RootRenderer;->flushSingleRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 362
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_3
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getCurrentArea()Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->updateCurrentAndInitialArea(Lcom/itextpdf/layout/layout/LayoutResult;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 1

    .line 321
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Layout is not supported for root renderers."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final linkRenderToDocument(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 374
    :cond_0
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    .line 375
    instance-of v1, v0, Lcom/itextpdf/commons/actions/sequence/AbstractIdentifiableElement;

    if-eqz v1, :cond_1

    .line 376
    invoke-static {}, Lcom/itextpdf/commons/actions/EventManager;->getInstance()Lcom/itextpdf/commons/actions/EventManager;

    move-result-object v1

    new-instance v2, Lcom/itextpdf/kernel/actions/events/LinkDocumentIdEvent;

    check-cast v0, Lcom/itextpdf/commons/actions/sequence/AbstractIdentifiableElement;

    invoke-direct {v2, p2, v0}, Lcom/itextpdf/kernel/actions/events/LinkDocumentIdEvent;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/commons/actions/sequence/AbstractIdentifiableElement;)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/commons/actions/EventManager;->onEvent(Lcom/itextpdf/commons/actions/IEvent;)V

    .line 380
    :cond_1
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 382
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 383
    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/layout/renderer/RootRenderer;->linkRenderToDocument(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected shrinkCurrentAreaAndProcessRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/layout/layout/LayoutResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            ")V"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p3

    .line 338
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/RootLayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    sub-float/2addr v1, p3

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 339
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/RootLayoutArea;->isEmptyArea()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-gtz p3, :cond_0

    invoke-static {p1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 340
    :cond_0
    iget-object p3, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/itextpdf/layout/layout/RootLayoutArea;->setEmptyArea(Z)V

    .line 342
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/renderer/RootRenderer;->processRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;)V

    .line 345
    :cond_2
    iget-boolean p1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->immediateFlush:Z

    if-nez p1, :cond_3

    .line 346
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/RootRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method

.method protected abstract updateCurrentArea(Lcom/itextpdf/layout/layout/LayoutResult;)Lcom/itextpdf/layout/layout/LayoutArea;
.end method
