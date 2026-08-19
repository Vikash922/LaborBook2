.class public Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;
.super Ljava/lang/Object;
.source "MarginsCollapseHandler.java"


# instance fields
.field private backupCollapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

.field private backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

.field private childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

.field private collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

.field private firstNotEmptyKidIndex:I

.field private lastKidCollapsedAfterHasClearanceApplied:Z

.field private prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

.field private processedChildrenNum:I

.field private renderer:Lcom/itextpdf/layout/renderer/IRenderer;

.field private rendererChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    .line 79
    iput v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processedChildrenNum:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->rendererChildren:Ljava/util/List;

    .line 90
    iput-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance p2, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-direct {p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    return-void
.end method

.method private addNotYetAppliedTopMargin(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    .line 447
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 451
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applyTopMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    return-void
.end method

.method private applyBottomMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result v0

    sub-float v0, p2, v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 380
    iget-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnBottom(F)V

    .line 381
    iget-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    neg-float p2, v0

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    goto :goto_0

    .line 383
    :cond_0
    iget-object p2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnBottom(F)V

    .line 384
    iget-object p2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {p2, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    .line 385
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p2

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 386
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p2

    sub-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :goto_0
    return-void
.end method

.method private applySelfCollapsedKidMarginWithClearance(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    .line 467
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 468
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 469
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 471
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method

.method private applyTopMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V
    .locals 5

    .line 358
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v0

    sub-float/2addr v0, p2

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v3, p2

    goto :goto_0

    .line 359
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v3

    .line 360
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4, v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnTop(F)V

    .line 361
    invoke-direct {p0, v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->subtractUsedTopBufferFromBottomBuffer(F)V

    if-ltz v2, :cond_1

    .line 364
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnTop(F)V

    .line 365
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_1

    .line 367
    :cond_1
    iget-object p2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 368
    iget-object p2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {p2, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnTop(F)V

    .line 369
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p2

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :goto_1
    return-void
.end method

.method private createMarginsInfoForBlockChild(I)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    .line 139
    iget v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    if-ne p1, v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 145
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v2

    if-eqz v1, :cond_1

    goto :goto_2

    .line 146
    :cond_1
    new-instance v2, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-direct {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;-><init>()V

    goto :goto_2

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    .line 149
    :cond_4
    new-instance v2, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-direct {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;-><init>()V

    .line 152
    :goto_2
    iget-object v3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->clone()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v3

    if-eqz v0, :cond_5

    goto :goto_3

    .line 153
    :cond_5
    new-instance v3, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-direct {v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;-><init>()V

    .line 154
    :goto_3
    new-instance v4, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-direct {v4, v1, v0, v2, v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;-><init>(ZZLcom/itextpdf/layout/margincollapse/MarginsCollapse;Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    if-eqz v1, :cond_6

    .line 155
    iget v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    if-ne p1, v1, :cond_6

    .line 156
    iget-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result p1

    invoke-virtual {v4, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnTop(F)V

    :cond_6
    if-eqz v0, :cond_7

    .line 159
    iget-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result p1

    invoke-virtual {v4, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    :cond_7
    return-object v4
.end method

.method private static defineBottomMarginValueForCollapse(Lcom/itextpdf/layout/renderer/IRenderer;)F
    .locals 1

    const/16 v0, 0x2b

    .line 583
    invoke-static {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->defineMarginValueForCollapse(Lcom/itextpdf/layout/renderer/IRenderer;I)F

    move-result p0

    return p0
.end method

.method private static defineMarginValueForCollapse(Lcom/itextpdf/layout/renderer/IRenderer;I)F
    .locals 3

    .line 595
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 597
    const-class v1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 599
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 598
    const-string v2, "Property {0} in percents is not supported"

    invoke-static {v2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 601
    instance-of p0, p0, Lcom/itextpdf/layout/renderer/CellRenderer;

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static defineTopMarginValueForCollapse(Lcom/itextpdf/layout/renderer/IRenderer;)F
    .locals 1

    const/16 v0, 0x2e

    .line 571
    invoke-static {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->defineMarginValueForCollapse(Lcom/itextpdf/layout/renderer/IRenderer;I)F

    move-result p0

    return p0
.end method

.method private static firstChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1

    .line 497
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/BlockFormattingContextUtil;->isRendererCreateBfc(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_0

    .line 499
    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasTopBorders(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasTopPadding(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private fixPrevChildOccupiedArea(I)V
    .locals 4

    add-int/lit8 v0, p1, -0x1

    .line 419
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->getRendererChild(I)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    .line 421
    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 423
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginBottom()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 424
    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginTop()Z

    move-result v2

    if-nez v2, :cond_1

    .line 427
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v2

    .line 428
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    sub-float/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 429
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 430
    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->ignoreModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 433
    :cond_1
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->getRendererChild(I)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->isBlockElement(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p1

    .line 434
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginTop()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez p1, :cond_4

    if-eqz v2, :cond_4

    .line 436
    iget-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result p1

    .line 437
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 438
    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 439
    invoke-static {v0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->overrideModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;F)V

    :cond_4
    return-void
.end method

.method private getRendererChild(I)Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->rendererChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/renderer/IRenderer;

    return-object p1
.end method

.method private getRidOfCollapseArtifactsAtopOccupiedArea()V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 484
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method

.method private static hasBorders(Lcom/itextpdf/layout/renderer/IRenderer;I)Z
    .locals 0

    .line 619
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p0

    .line 620
    invoke-interface {p0, p1}, Lcom/itextpdf/layout/IPropertyContainer;->hasProperty(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x9

    invoke-interface {p0, p1}, Lcom/itextpdf/layout/IPropertyContainer;->hasProperty(I)Z

    move-result p0

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

.method private static hasBottomBorders(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1

    const/16 v0, 0xa

    .line 559
    invoke-static {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasBorders(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result p0

    return p0
.end method

.method private static hasBottomPadding(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1

    const/16 v0, 0x2f

    .line 551
    invoke-static {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasPadding(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result p0

    return p0
.end method

.method private static hasHeightProp(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1

    .line 514
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p0

    const/16 v0, 0x1b

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/IPropertyContainer;->hasProperty(I)Z

    move-result p0

    return p0
.end method

.method private static hasPadding(Lcom/itextpdf/layout/renderer/IRenderer;I)Z
    .locals 2

    .line 609
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz p0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    const-class v0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 613
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 612
    const-string v1, "Property {0} in percents is not supported"

    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 615
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static hasPositiveHeight(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 3

    .line 534
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    const/16 v0, 0x1b

    .line 537
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    const/16 v2, 0x55

    .line 538
    invoke-interface {p0, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz p0, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    :goto_0
    move v0, p0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    cmpl-float p0, v0, v1

    if-lez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method private static hasTopBorders(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1

    const/16 v0, 0xd

    .line 555
    invoke-static {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasBorders(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result p0

    return p0
.end method

.method private static hasTopPadding(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1

    const/16 v0, 0x32

    .line 547
    invoke-static {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasPadding(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result p0

    return p0
.end method

.method private static ignoreModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 1

    const/4 v0, 0x0

    .line 587
    invoke-static {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->overrideModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;F)V

    return-void
.end method

.method private static ignoreModelTopMargin(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 1

    const/4 v0, 0x0

    .line 575
    invoke-static {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->overrideModelTopMargin(Lcom/itextpdf/layout/renderer/IRenderer;F)V

    return-void
.end method

.method private static isBlockElement(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1

    .line 509
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

.method private static lastChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1

    .line 503
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/BlockFormattingContextUtil;->isRendererCreateBfc(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_0

    .line 505
    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasBottomBorders(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasBottomPadding(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasHeightProp(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static marginsCouldBeSelfCollapsing(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1

    .line 488
    instance-of v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-nez v0, :cond_1

    .line 489
    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->rendererIsFloated(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasBottomBorders(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasTopBorders(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasBottomPadding(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasTopPadding(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->hasPositiveHeight(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    invoke-static {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->isBlockElement(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p0

    instance-of p0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static overrideModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;F)V
    .locals 1

    const/16 v0, 0x2b

    .line 591
    invoke-static {p0, v0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->overrideModelMargin(Lcom/itextpdf/layout/renderer/IRenderer;IF)V

    return-void
.end method

.method private static overrideModelMargin(Lcom/itextpdf/layout/renderer/IRenderer;IF)V
    .locals 0

    .line 605
    invoke-static {p2}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method private static overrideModelTopMargin(Lcom/itextpdf/layout/renderer/IRenderer;F)V
    .locals 1

    const/16 v0, 0x2e

    .line 579
    invoke-static {p0, v0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->overrideModelMargin(Lcom/itextpdf/layout/renderer/IRenderer;IF)V

    return-void
.end method

.method private prepareBoxForLayoutAttempt(Lcom/itextpdf/kernel/geom/Rectangle;IZ)V
    .locals 5

    .line 308
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 309
    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginBottom()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 310
    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginTop()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginTop()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez p3, :cond_6

    if-eqz v0, :cond_6

    .line 317
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 318
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v1

    .line 319
    :goto_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_3

    .line 321
    :cond_5
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    if-le p2, v0, :cond_6

    .line 322
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 325
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getUsedBufferSpaceOnBottom()F

    move-result v2

    sub-float/2addr v0, v2

    .line 326
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getUsedBufferSpaceOnBottom()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    .line 327
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnBottom(F)V

    .line 328
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 329
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_6
    :goto_3
    if-nez p3, :cond_8

    .line 335
    iget p3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    if-ne p2, p3, :cond_7

    iget-object p2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 336
    iget-object p2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result p2

    .line 337
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applyTopMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 341
    :cond_7
    iget-object p2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 342
    iget-object p2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result p2

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applyBottomMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    :cond_8
    return-void
.end method

.method private processUsedChildBufferSpaceOnTop(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getUsedBufferSpaceOnTop()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v0

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnTop(F)V

    .line 398
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setUsedBufferSpaceOnTop(F)V

    .line 401
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 403
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->subtractUsedTopBufferFromBottomBuffer(F)V

    :cond_1
    return-void
.end method

.method private removeRendererChild(I)Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->rendererChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/renderer/IRenderer;

    return-object p1
.end method

.method private static rendererIsFloated(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x63

    .line 566
    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/FloatPropertyValue;

    if-eqz p0, :cond_1

    .line 567
    sget-object v1, Lcom/itextpdf/layout/properties/FloatPropertyValue;->NONE:Lcom/itextpdf/layout/properties/FloatPropertyValue;

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/properties/FloatPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private restoreLayoutBoxAfterFailedLayoutAttempt(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 350
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 351
    iget-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupCollapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->copyTo(Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    const/4 p1, 0x0

    .line 353
    iput-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 354
    iput-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupCollapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    return-void
.end method

.method private subtractUsedTopBufferFromBottomBuffer(F)V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v0

    sub-float/2addr v0, p1

    .line 410
    iget-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    .line 411
    iget-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateCollapseBeforeIfPrevKidIsFirstAndSelfCollapsed(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginTop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyClearance(F)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setClearanceApplied(Z)V

    .line 132
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(F)V

    return-void
.end method

.method public endChildMarginsHandling(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 5

    .line 170
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processedChildrenNum:I

    add-int/lit8 v1, v0, -0x1

    .line 171
    invoke-direct {p0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->getRendererChild(I)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->rendererIsFloated(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 176
    iget v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    if-ne v4, v1, :cond_1

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iput v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setSelfCollapsing(Z)V

    .line 181
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isClearanceApplied()Z

    move-result v0

    if-eqz v0, :cond_3

    move v3, v4

    :cond_3
    iput-boolean v3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastKidCollapsedAfterHasClearanceApplied:Z

    goto :goto_1

    .line 183
    :cond_4
    iput-boolean v3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastKidCollapsedAfterHasClearanceApplied:Z

    .line 184
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setSelfCollapsing(Z)V

    .line 187
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    if-eqz v0, :cond_5

    .line 188
    invoke-direct {p0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->fixPrevChildOccupiedArea(I)V

    .line 190
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->updateCollapseBeforeIfPrevKidIsFirstAndSelfCollapsed(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 193
    :cond_5
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstNotEmptyKidIndex:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 194
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 195
    invoke-direct {p0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->getRidOfCollapseArtifactsAtopOccupiedArea()V

    .line 196
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    if-eqz v0, :cond_6

    .line 197
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processUsedChildBufferSpaceOnTop(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 202
    :cond_6
    iget-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    iput-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 205
    iput-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 206
    iput-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupCollapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    return-void
.end method

.method public endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 6

    .line 228
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->restoreLayoutBoxAfterFailedLayoutAttempt(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->updateCollapseBeforeIfPrevKidIsFirstAndSelfCollapsed(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->marginsCouldBeSelfCollapsing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastKidCollapsedAfterHasClearanceApplied:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 237
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v3}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v3

    .line 238
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    .line 240
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->addNotYetAppliedTopMargin(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 243
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v4}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setSelfCollapsing(Z)V

    if-nez v3, :cond_5

    .line 245
    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastKidCollapsedAfterHasClearanceApplied:Z

    if-eqz v0, :cond_5

    .line 246
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applySelfCollapsedKidMarginWithClearance(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginBottom()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastKidCollapsedAfterHasClearanceApplied:Z

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    if-eqz v1, :cond_7

    .line 252
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    goto :goto_3

    .line 254
    :cond_7
    new-instance v0, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    invoke-direct {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;-><init>()V

    .line 256
    :goto_3
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->defineBottomMarginValueForCollapse(Lcom/itextpdf/layout/renderer/IRenderer;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(F)V

    .line 257
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setOwnCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 259
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isSelfCollapsing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    if-eqz v0, :cond_8

    .line 261
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    goto :goto_4

    .line 263
    :cond_8
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 264
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getOwnCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 266
    :goto_4
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginBottom()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginTop()Z

    move-result v0

    if-nez v0, :cond_c

    .line 267
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    .line 268
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->overrideModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;F)V

    goto :goto_5

    .line 271
    :cond_9
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    .line 272
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginTop()Z

    move-result v2

    if-nez v2, :cond_a

    .line 273
    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    .line 274
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v2, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->overrideModelTopMargin(Lcom/itextpdf/layout/renderer/IRenderer;F)V

    :cond_a
    if-eqz v1, :cond_b

    .line 278
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setCollapseAfter(Lcom/itextpdf/layout/margincollapse/MarginsCollapse;)V

    .line 280
    :cond_b
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->isIgnoreOwnMarginBottom()Z

    move-result v0

    if-nez v0, :cond_c

    .line 281
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    .line 282
    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->overrideModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;F)V

    .line 286
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prevChildMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    if-nez v0, :cond_d

    if-eqz v3, :cond_e

    .line 288
    :cond_d
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    .line 295
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applyBottomMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    :cond_e
    return-void
.end method

.method public processFixedHeightAdjustment(F)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnTop()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnTop(F)V

    .line 96
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getBufferSpaceOnBottom()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->setBufferSpaceOnBottom(F)V

    return-void
.end method

.method public startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p2}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->restoreLayoutBoxAfterFailedLayoutAttempt(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 103
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processedChildrenNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processedChildrenNum:I

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->removeRendererChild(I)Lcom/itextpdf/layout/renderer/IRenderer;

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->rendererChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processedChildrenNum:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->processedChildrenNum:I

    .line 113
    invoke-static {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->rendererIsFloated(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->isBlockElement(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 115
    :goto_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupLayoutBox:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 116
    new-instance p1, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-direct {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->backupCollapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 117
    iget-object v2, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v2, p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->copyTo(Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    .line 119
    invoke-direct {p0, p2, v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->prepareBoxForLayoutAttempt(Lcom/itextpdf/kernel/geom/Rectangle;IZ)V

    if-eqz v1, :cond_2

    .line 122
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->createMarginsInfoForBlockChild(I)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->childMarginInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    return-object p1
.end method

.method public startMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->defineTopMarginValueForCollapse(Lcom/itextpdf/layout/renderer/IRenderer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(F)V

    .line 211
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->defineBottomMarginValueForCollapse(Lcom/itextpdf/layout/renderer/IRenderer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->joinMargin(F)V

    .line 213
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->firstChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseBefore()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applyTopMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->lastChildMarginAdjoinedToParent(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->collapseInfo:Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->getCollapseAfter()Lcom/itextpdf/layout/margincollapse/MarginsCollapse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapse;->getCollapsedMarginsSize()F

    move-result v0

    .line 219
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->applyBottomMargin(Lcom/itextpdf/kernel/geom/Rectangle;F)V

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->ignoreModelTopMargin(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 224
    iget-object p1, p0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->renderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {p1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->ignoreModelBottomMargin(Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-void
.end method
