.class final Lcom/itextpdf/layout/renderer/FlexUtil;
.super Ljava/lang/Object;
.source "FlexUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EPSILON:F = 1.0E-4f

.field private static final FLEX_GROW_INITIAL_VALUE:F = 0.0f

.field private static final FLEX_SHRINK_INITIAL_VALUE:F = 1.0f

.field private static logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/itextpdf/layout/renderer/FlexUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/renderer/FlexUtil;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyAlignItemsAndAlignSelf(Ljava/util/List;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;>;",
            "Lcom/itextpdf/layout/renderer/FlexContainerRenderer;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x86

    .line 550
    sget-object v1, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->STRETCH:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    const/4 v0, 0x0

    .line 555
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 556
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 557
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 558
    iget-object v4, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/16 v5, 0x81

    .line 559
    invoke-virtual {v4, v5, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    .line 562
    iget v5, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    invoke-virtual {v3, v5}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterCrossSize(F)F

    move-result v5

    sub-float v5, v1, v5

    .line 564
    sget-object v6, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$properties$AlignmentPropertyValue:[I

    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->ordinal()I

    move-result v4

    aget v4, v6, v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    const/4 v6, 0x4

    if-eq v4, v6, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v5, v4

    .line 571
    iput v5, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->yShift:F

    goto :goto_1

    .line 568
    :cond_1
    iput v5, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->yShift:F

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static applyJustifyContent(Ljava/util/List;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;>;",
            "Lcom/itextpdf/layout/renderer/FlexContainerRenderer;",
            "F)V"
        }
    .end annotation

    const/16 v0, 0x85

    .line 588
    sget-object v1, Lcom/itextpdf/layout/properties/JustifyContent;->FLEX_START:Lcom/itextpdf/layout/properties/JustifyContent;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/properties/JustifyContent;

    .line 591
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 593
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 594
    iget v4, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterMainSize(F)F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_1

    :cond_0
    sub-float v1, p2, v2

    .line 598
    sget-object v2, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$properties$JustifyContent:[I

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/JustifyContent;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 606
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->xShift:F

    goto :goto_0

    .line 603
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    iput v1, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->xShift:F

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static calculateChildrenRectangles(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Lcom/itextpdf/layout/renderer/FlexContainerRenderer;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexItemInfo;",
            ">;>;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p0

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, p0, v0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 94
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p0

    .line 104
    invoke-virtual {p1, p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_0

    .line 106
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object p0

    .line 110
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->retrieveMinHeight()Ljava/lang/Float;

    move-result-object v2

    .line 111
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v3

    .line 114
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {p1, v4}, Lcom/itextpdf/layout/renderer/FlexUtil;->createFlexItemCalculationInfos(Lcom/itextpdf/layout/renderer/FlexContainerRenderer;F)Ljava/util/List;

    move-result-object v4

    .line 116
    invoke-static {v4}, Lcom/itextpdf/layout/renderer/FlexUtil;->determineFlexBasisAndHypotheticalMainSizeForFlexItems(Ljava/util/List;)V

    const/16 v5, 0x80

    .line 121
    invoke-virtual {p1, v5}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->hasProperty(I)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/itextpdf/layout/properties/FlexWrapPropertyValue;->NOWRAP:Lcom/itextpdf/layout/properties/FlexWrapPropertyValue;

    .line 122
    invoke-virtual {p1, v5}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 126
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v4, v5, v0}, Lcom/itextpdf/layout/renderer/FlexUtil;->collectFlexItemsIntoFlexLines(Ljava/util/List;FZ)Ljava/util/List;

    move-result-object v4

    .line 132
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v4, v5}, Lcom/itextpdf/layout/renderer/FlexUtil;->resolveFlexibleLengths(Ljava/util/List;F)V

    .line 138
    invoke-static {v4}, Lcom/itextpdf/layout/renderer/FlexUtil;->determineHypotheticalCrossSizeForFlexItems(Ljava/util/List;)V

    .line 142
    invoke-static {v4, v0, v2, p0, v3}, Lcom/itextpdf/layout/renderer/FlexUtil;->calculateCrossSizeOfEachFlexLine(Ljava/util/List;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v3, v5

    goto :goto_0

    .line 155
    :cond_3
    invoke-static {p1, p0, v3, v0}, Lcom/itextpdf/layout/renderer/FlexUtil;->handleAlignContentStretch(Lcom/itextpdf/layout/renderer/FlexContainerRenderer;Ljava/lang/Float;FLjava/util/List;)V

    .line 161
    invoke-static {v4, v0, p1}, Lcom/itextpdf/layout/renderer/FlexUtil;->determineUsedCrossSizeOfEachFlexItem(Ljava/util/List;Ljava/util/List;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;)V

    .line 165
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {v4, p1, p0}, Lcom/itextpdf/layout/renderer/FlexUtil;->applyJustifyContent(Ljava/util/List;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;F)V

    .line 173
    invoke-static {v4, p1, v0}, Lcom/itextpdf/layout/renderer/FlexUtil;->applyAlignItemsAndAlignSelf(Ljava/util/List;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;Ljava/util/List;)V

    .line 179
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 183
    new-instance v3, Lcom/itextpdf/layout/renderer/FlexItemInfo;

    iget-object v4, v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/itextpdf/layout/renderer/FlexItemInfo;-><init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 185
    :cond_4
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object p0
.end method

.method static calculateCrossSizeOfEachFlexLine(Ljava/util/List;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;>;Z",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 450
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 453
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 457
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 469
    iget v5, v4, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalCrossSize:F

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterCrossSize(F)F

    move-result v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_1

    .line 470
    iget v3, v4, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalCrossSize:F

    invoke-virtual {v4, v3}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterCrossSize(F)F

    move-result v3

    .line 472
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    .line 477
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    .line 479
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_3
    if-eqz p4, :cond_4

    .line 482
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 485
    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_2
    return-object v0
.end method

.method private static calculateFreeSpace(Ljava/util/List;F)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;F)F"
        }
    .end annotation

    .line 623
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 624
    iget-boolean v1, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-eqz v1, :cond_0

    .line 625
    iget v1, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterMainSize(F)F

    move-result v0

    goto :goto_1

    .line 627
    :cond_0
    iget v1, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterMainSize(F)F

    move-result v0

    :goto_1
    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    return p1
.end method

.method private static calculateMaxWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;F)F
    .locals 3

    .line 684
    instance-of v0, p0, Lcom/itextpdf/layout/renderer/TableRenderer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 687
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 688
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {v0, p1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    .line 687
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p0

    .line 688
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p0

    .line 687
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_1

    .line 691
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_1

    .line 693
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMaxWidth(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_3

    .line 696
    instance-of p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;

    if-eqz p1, :cond_2

    .line 698
    check-cast p0, Lcom/itextpdf/layout/renderer/ImageRenderer;

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getImageWidth()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_1

    .line 700
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 701
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v0

    invoke-direct {p1, v0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    .line 700
    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p0

    .line 701
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p0

    .line 700
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, p1

    .line 705
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method static collectFlexItemsIntoFlexLines(Ljava/util/List;FZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;FZ)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;>;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 256
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 259
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    move v2, p2

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 260
    iget v4, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterMainSize(F)F

    move-result v4

    add-float/2addr v2, v4

    const v4, 0x38d1b717    # 1.0E-4f

    add-float/2addr v4, p1

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .line 263
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 269
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget v2, v3, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    goto :goto_1

    .line 275
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 281
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 282
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method private static createFlexItemCalculationInfos(Lcom/itextpdf/layout/renderer/FlexContainerRenderer;F)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/FlexContainerRenderer;",
            "F)",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;"
        }
    .end annotation

    .line 648
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p0

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 650
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 651
    instance-of v2, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v2, :cond_0

    .line 652
    move-object v4, v1

    check-cast v4, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 655
    invoke-static {v4, p1}, Lcom/itextpdf/layout/renderer/FlexUtil;->calculateMaxWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;F)F

    move-result v2

    const/16 v3, 0x83

    .line 658
    invoke-interface {v1, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v3, 0x1

    move v9, v3

    goto :goto_1

    .line 662
    :cond_1
    invoke-virtual {v4, p1, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 663
    invoke-static {v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 664
    invoke-static {v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v3

    sub-float/2addr v2, v3

    :cond_2
    move v9, v5

    :goto_1
    const/4 v3, 0x0

    .line 667
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/16 v2, 0x84

    .line 669
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v2, 0x3f800000    # 1.0f

    .line 671
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0x7f

    invoke-interface {v1, v3, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 673
    new-instance v1, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    move-object v3, v1

    move v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;-><init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;FFFFZ)V

    .line 676
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static determineFlexBasisAndHypotheticalMainSizeForFlexItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;)V"
        }
    .end annotation

    .line 193
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 196
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 205
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object v2

    .line 206
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasAspectRatio()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBasisContent:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getAspectRatio()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 209
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v1

    iput v2, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    goto :goto_1

    .line 212
    :cond_0
    iget v1, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBasis:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    .line 237
    :goto_1
    iget v1, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->minContent:F

    iget v2, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    .line 240
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->maxContent:F

    .line 239
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    .line 237
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    .line 243
    iget v1, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static determineHypotheticalCrossSizeForFlexItem(Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;)V
    .locals 9

    .line 419
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;

    iget v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    .line 420
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getHypotheticalCrossSize(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;

    iget v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    .line 423
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getHypotheticalCrossSize(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalCrossSize:F

    goto/16 :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    iget v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    .line 426
    invoke-static {v1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    const/16 v2, 0x4d

    .line 425
    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->replaceOwnProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    .line 427
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/4 v3, 0x0

    const/16 v4, 0x50

    invoke-virtual {v1, v4, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->replaceOwnProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/UnitValue;

    .line 428
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    new-instance v5, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v6, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v7, Lcom/itextpdf/kernel/geom/Rectangle;

    const v8, 0x49742400    # 1000000.0f

    invoke-direct {v7, v8, v8}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v8, 0x0

    invoke-direct {v6, v8, v7}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v5, v6}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-virtual {v3, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v3

    .line 430
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v5, v4, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->returnBackOwnProperty(ILjava/lang/Object;)V

    .line 431
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->returnBackOwnProperty(ILjava/lang/Object;)V

    .line 433
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 434
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getInnerCrossSize(F)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalCrossSize:F

    .line 436
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;

    iget v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalCrossSize:F

    .line 438
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 437
    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->setHypotheticalCrossSize(Ljava/lang/Float;Ljava/lang/Float;)V

    goto :goto_0

    .line 441
    :cond_1
    sget-object v0, Lcom/itextpdf/layout/renderer/FlexUtil;->logger:Lorg/slf4j/Logger;

    const-string v1, "Flex item layout result isn\'t full, but it must be. The cross size of the flex item will be 0."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 442
    iput v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalCrossSize:F

    :cond_2
    :goto_0
    return-void
.end method

.method static determineHypotheticalCrossSizeForFlexItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 411
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 412
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 413
    invoke-static {v1}, Lcom/itextpdf/layout/renderer/FlexUtil;->determineHypotheticalCrossSizeForFlexItem(Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static determineUsedCrossSizeOfEachFlexItem(Ljava/util/List;Ljava/util/List;Lcom/itextpdf/layout/renderer/FlexContainerRenderer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/itextpdf/layout/renderer/FlexContainerRenderer;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x86

    .line 508
    sget-object v1, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->STRETCH:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    .line 509
    invoke-virtual {p2, v0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    const/4 v0, 0x0

    .line 514
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 515
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 525
    iget-object v3, v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/16 v4, 0x81

    .line 527
    invoke-virtual {v3, v4, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    .line 530
    sget-object v5, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->STRETCH:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->NORMAL:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    if-ne v4, v5, :cond_3

    :cond_1
    iget-object v4, v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/16 v5, 0x1b

    .line 531
    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 532
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getInnerCrossSize(F)F

    move-result v4

    iput v4, v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    .line 533
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 535
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    .line 537
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMinHeight()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 539
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget v4, v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    goto :goto_1

    .line 542
    :cond_3
    iget v3, v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalCrossSize:F

    iput v3, v2, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method static handleAlignContentStretch(Lcom/itextpdf/layout/renderer/FlexContainerRenderer;Ljava/lang/Float;FLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/FlexContainerRenderer;",
            "Ljava/lang/Float;",
            "F",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x82

    .line 493
    sget-object v1, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->STRETCH:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    .line 494
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/FlexContainerRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    if-eqz p1, :cond_0

    .line 496
    sget-object v0, Lcom/itextpdf/layout/properties/AlignmentPropertyValue;->STRETCH:Lcom/itextpdf/layout/properties/AlignmentPropertyValue;

    if-ne p0, v0, :cond_0

    .line 497
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const v0, 0x38d1b717    # 1.0E-4f

    sub-float/2addr p0, v0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    .line 498
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr p0, p2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    const/4 p1, 0x0

    .line 499
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 500
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    add-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static hasFlexibleItems(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;)Z"
        }
    .end annotation

    .line 634
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 635
    iget-boolean v0, v0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static isZero(F)Z
    .locals 1

    .line 643
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static resolveFlexibleLengths(Ljava/util/List;F)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;",
            ">;>;F)V"
        }
    .end annotation

    .line 289
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 293
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 294
    iget v5, v4, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterMainSize(F)F

    move-result v4

    add-float/2addr v3, v4

    goto :goto_0

    :cond_1
    cmpg-float v1, v3, p1

    const/4 v3, 0x1

    if-gez v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 301
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    if-eqz v1, :cond_5

    .line 303
    iget v6, v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexGrow:F

    invoke-static {v6}, Lcom/itextpdf/layout/renderer/FlexUtil;->isZero(F)Z

    move-result v6

    if-nez v6, :cond_4

    iget v6, v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    iget v7, v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 304
    :cond_4
    iget v6, v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    iput v6, v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    .line 305
    iput-boolean v3, v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    goto :goto_2

    .line 308
    :cond_5
    iget v6, v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexShrink:F

    invoke-static {v6}, Lcom/itextpdf/layout/renderer/FlexUtil;->isZero(F)Z

    move-result v6

    if-nez v6, :cond_6

    iget v6, v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    iget v7, v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 309
    :cond_6
    iget v6, v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->hypotheticalMainSize:F

    iput v6, v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    .line 310
    iput-boolean v3, v5, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    goto :goto_2

    .line 316
    :cond_7
    invoke-static {v0, p1}, Lcom/itextpdf/layout/renderer/FlexUtil;->calculateFreeSpace(Ljava/util/List;F)F

    move-result v4

    .line 320
    :cond_8
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/FlexUtil;->hasFlexibleItems(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 323
    invoke-static {v0, p1}, Lcom/itextpdf/layout/renderer/FlexUtil;->calculateFreeSpace(Ljava/util/List;F)F

    move-result v5

    .line 325
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 326
    iget-boolean v9, v8, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-nez v9, :cond_9

    if-eqz v1, :cond_a

    .line 327
    iget v8, v8, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexGrow:F

    goto :goto_4

    :cond_a
    iget v8, v8, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexShrink:F

    :goto_4
    add-float/2addr v7, v8

    goto :goto_3

    :cond_b
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v7, v6

    if-gez v6, :cond_c

    .line 334
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float v8, v4, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v6, v6, v9

    if-lez v6, :cond_c

    move v5, v8

    .line 339
    :cond_c
    invoke-static {v5}, Lcom/itextpdf/layout/renderer/FlexUtil;->isZero(F)Z

    move-result v6

    if-nez v6, :cond_11

    .line 341
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v8, v2

    :cond_d
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 342
    iget-boolean v10, v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-nez v10, :cond_d

    if-eqz v1, :cond_e

    .line 344
    iget v10, v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexGrow:F

    div-float/2addr v10, v7

    .line 345
    iget v11, v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    mul-float/2addr v10, v5

    add-float/2addr v11, v10

    iput v11, v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    goto :goto_5

    .line 347
    :cond_e
    iget v10, v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexShrink:F

    iget v11, v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    mul-float/2addr v10, v11

    iput v10, v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->scaledFlexShrinkFactor:F

    .line 348
    iget v9, v9, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->scaledFlexShrinkFactor:F

    add-float/2addr v8, v9

    goto :goto_5

    .line 353
    :cond_f
    invoke-static {v8}, Lcom/itextpdf/layout/renderer/FlexUtil;->isZero(F)Z

    move-result v6

    if-nez v6, :cond_13

    .line 354
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 355
    iget-boolean v9, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-nez v9, :cond_10

    if-nez v1, :cond_10

    .line 356
    iget v9, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->scaledFlexShrinkFactor:F

    div-float/2addr v9, v8

    .line 357
    iget v10, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    .line 358
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v11, v9

    sub-float/2addr v10, v11

    iput v10, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    goto :goto_6

    .line 364
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 365
    iget-boolean v7, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-nez v7, :cond_12

    .line 366
    iget v7, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBaseSize:F

    iput v7, v6, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    goto :goto_7

    .line 372
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v2

    :cond_14
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 373
    iget-boolean v8, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-nez v8, :cond_14

    .line 376
    iget v8, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    iget v9, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->minContent:F

    .line 377
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v9, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->maxContent:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 378
    iget v9, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    cmpl-float v9, v9, v8

    if-lez v9, :cond_15

    .line 379
    iput-boolean v3, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isMaxViolated:Z

    goto :goto_9

    .line 380
    :cond_15
    iget v9, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    cmpg-float v9, v9, v8

    if-gez v9, :cond_16

    .line 381
    iput-boolean v3, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isMinViolated:Z

    .line 383
    :cond_16
    :goto_9
    iget v9, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    sub-float v9, v8, v9

    add-float/2addr v6, v9

    .line 384
    iput v8, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    goto :goto_8

    .line 387
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_18
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;

    .line 388
    iget-boolean v8, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    if-nez v8, :cond_18

    .line 389
    invoke-static {v6}, Lcom/itextpdf/layout/renderer/FlexUtil;->isZero(F)Z

    move-result v8

    if-nez v8, :cond_1a

    cmpg-float v8, v2, v6

    if-gez v8, :cond_19

    iget-boolean v8, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isMinViolated:Z

    if-nez v8, :cond_1a

    :cond_19
    cmpl-float v8, v2, v6

    if-lez v8, :cond_18

    iget-boolean v8, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isMaxViolated:Z

    if-eqz v8, :cond_18

    .line 392
    :cond_1a
    iput-boolean v3, v7, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    goto :goto_a

    :cond_1b
    return-void
.end method
