.class Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;
.super Ljava/lang/Object;
.source "FlexUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/renderer/FlexUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlexItemCalculationInfo"
.end annotation


# instance fields
.field crossSize:F

.field flexBaseSize:F

.field flexBasis:F

.field flexBasisContent:Z

.field flexGrow:F

.field flexShrink:F

.field hypotheticalCrossSize:F

.field hypotheticalMainSize:F

.field isFrozen:Z

.field isMaxViolated:Z

.field isMinViolated:Z

.field mainSize:F

.field maxContent:F

.field minContent:F

.field renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

.field scaledFlexShrinkFactor:F

.field xShift:F

.field yShift:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;FFFFZ)V
    .locals 1

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 725
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isFrozen:Z

    .line 726
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isMinViolated:Z

    .line 727
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->isMaxViolated:Z

    .line 735
    iput-boolean p6, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBasisContent:Z

    .line 736
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 737
    iput p2, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexBasis:F

    const/4 p2, 0x0

    cmpg-float p6, p4, p2

    if-ltz p6, :cond_3

    .line 741
    iput p4, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexShrink:F

    cmpg-float p2, p3, p2

    if-ltz p2, :cond_2

    .line 745
    iput p3, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->flexGrow:F

    .line 746
    invoke-virtual {p1, p5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMinWidth(F)Ljava/lang/Float;

    move-result-object p1

    if-nez p1, :cond_0

    .line 749
    invoke-direct {p0, p5}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->calculateMinContentAuto(F)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    iput p1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->minContent:F

    .line 750
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {p1, p5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMaxWidth(F)Ljava/lang/Float;

    move-result-object p1

    if-nez p1, :cond_1

    const p1, 0x49742400    # 1000000.0f

    goto :goto_1

    .line 752
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_1
    iput p1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->maxContent:F

    return-void

    .line 743
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Flex grow cannot be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 739
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Flex shrink cannot be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private calculateContentSizeSuggestion(F)F
    .locals 6

    .line 844
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/16 v1, 0x4d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->replaceOwnProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    .line 845
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->replaceOwnProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/properties/UnitValue;

    .line 846
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v3

    .line 847
    invoke-virtual {v3}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getInnerMainSize(F)F

    move-result v3

    .line 848
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v5, v4, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->returnBackOwnProperty(ILjava/lang/Object;)V

    .line 849
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v2, v1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->returnBackOwnProperty(ILjava/lang/Object;)V

    .line 851
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    invoke-direct {p0, v3}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->clampValueByCrossSizesConvertedThroughAspectRatio(F)F

    move-result v3

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMaxWidth(F)Ljava/lang/Float;

    move-result-object p1

    if-nez p1, :cond_1

    const p1, 0x49742400    # 1000000.0f

    .line 856
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 859
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private calculateMinContentAuto(F)F
    .locals 2

    .line 777
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->calculateSpecifiedSizeSuggestion(F)Ljava/lang/Float;

    move-result-object v0

    .line 778
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->calculateContentSizeSuggestion(F)F

    move-result p1

    .line 779
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 783
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->calculateTransferredSizeSuggestion()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    .line 787
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_1
    if-nez v0, :cond_2

    return p1

    .line 796
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private calculateSpecifiedSizeSuggestion(F)Ljava/lang/Float;
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private calculateTransferredSizeSuggestion()Ljava/lang/Float;
    .locals 2

    .line 809
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object v0

    .line 810
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getAspectRatio()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 814
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->clampValueByCrossSizesConvertedThroughAspectRatio(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private clampValueByCrossSizesConvertedThroughAspectRatio(F)F
    .locals 4

    .line 863
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasProperty(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const v0, 0x49742400    # 1000000.0f

    .line 865
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 867
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMinHeight()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 868
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/16 v3, 0x55

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasProperty(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v1, 0x0

    .line 869
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 873
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getAspectRatio()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 874
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getAspectRatio()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    .line 872
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method


# virtual methods
.method getInnerCrossSize(F)F
    .locals 3

    .line 772
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    return p1
.end method

.method getInnerMainSize(F)F
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    return p1
.end method

.method getOuterCrossSize(F)F
    .locals 3

    .line 768
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    return p1
.end method

.method getOuterMainSize(F)F
    .locals 3

    .line 760
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->renderer:Lcom/itextpdf/layout/renderer/AbstractRenderer;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    return p1
.end method

.method public toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 5

    .line 756
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    iget v1, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->xShift:F

    iget v2, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->yShift:F

    iget v3, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->mainSize:F

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterMainSize(F)F

    move-result v3

    iget v4, p0, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->crossSize:F

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/FlexUtil$FlexItemCalculationInfo;->getOuterCrossSize(F)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0
.end method
