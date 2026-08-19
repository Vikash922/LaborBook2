.class Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper;
.super Ljava/lang/Object;
.source "OrphansWidowsLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attemptLayout(Lcom/itextpdf/layout/renderer/ParagraphRenderer;Lcom/itextpdf/layout/layout/LayoutContext;Lcom/itextpdf/layout/layout/LayoutArea;)Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;
    .locals 4

    .line 124
    new-instance v0, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;-><init>(Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$1;)V

    .line 127
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getMarginsCollapseInfo()Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getMarginsCollapseInfo()Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->createDeepCopy(Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v1

    .line 130
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 131
    new-instance v3, Lcom/itextpdf/layout/layout/LayoutContext;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->isClippedHeight()Z

    move-result p1

    invoke-direct {v3, p2, v1, v2, p1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Ljava/util/List;Z)V

    .line 133
    iput-object v3, v0, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;->attemptContext:Lcom/itextpdf/layout/layout/LayoutContext;

    .line 134
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->directLayout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object p0

    iput-object p0, v0, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;->attemptResult:Lcom/itextpdf/layout/layout/LayoutResult;

    return-object v0
.end method

.method private static handleAttemptAsSuccessful(Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 2

    .line 139
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;->attemptContext:Lcom/itextpdf/layout/layout/LayoutContext;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getMarginsCollapseInfo()Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getMarginsCollapseInfo()Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;->attemptContext:Lcom/itextpdf/layout/layout/LayoutContext;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutContext;->getMarginsCollapseInfo()Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;->updateFromCopy(Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;->attemptResult:Lcom/itextpdf/layout/layout/LayoutResult;

    return-object p0
.end method

.method static orphansWidowsAwareLayout(Lcom/itextpdf/layout/renderer/ParagraphRenderer;Lcom/itextpdf/layout/layout/LayoutContext;Lcom/itextpdf/layout/properties/ParagraphOrphansControl;Lcom/itextpdf/layout/properties/ParagraphWidowsControl;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 10

    .line 41
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper;->attemptLayout(Lcom/itextpdf/layout/renderer/ParagraphRenderer;Lcom/itextpdf/layout/layout/LayoutContext;Lcom/itextpdf/layout/layout/LayoutArea;)Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->isClippedHeight()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isPositioned()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;->attemptResult:Lcom/itextpdf/layout/layout/LayoutResult;

    .line 44
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    iget-object v1, v0, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;->attemptResult:Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 48
    :cond_0
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;->attemptResult:Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getLines()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/ParagraphOrphansControl;->getMinOrphans()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isFirstOnRootArea()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 51
    :goto_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v5, 0x1a

    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 53
    const-string v5, "Ignored orphans constraint due to forced placement."

    invoke-virtual {p2, v1, v5}, Lcom/itextpdf/layout/properties/ParagraphOrphansControl;->handleViolatedOrphans(Lcom/itextpdf/layout/renderer/ParagraphRenderer;Ljava/lang/String;)V

    :cond_2
    const/4 v5, 0x0

    if-eqz v3, :cond_4

    if-nez v4, :cond_4

    :cond_3
    move-object v0, v5

    goto/16 :goto_2

    :cond_4
    if-eqz p3, :cond_9

    if-eqz v1, :cond_9

    .line 58
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;->attemptResult:Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 59
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;->attemptResult:Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    .line 66
    new-instance v6, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v7

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    const/16 v9, 0xdac

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    .line 74
    new-instance v7, Lcom/itextpdf/layout/layout/LayoutContext;

    invoke-direct {v7, v6}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    .line 76
    invoke-virtual {v3, v7}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->directLayout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v6

    .line 78
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v6

    if-ne v6, v2, :cond_9

    .line 86
    invoke-virtual {p3}, Lcom/itextpdf/layout/properties/ParagraphWidowsControl;->getMinWidows()I

    move-result v6

    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getLines()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    if-lez v6, :cond_9

    if-eqz p2, :cond_5

    .line 88
    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/ParagraphOrphansControl;->getMinOrphans()I

    move-result p2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_5
    move p2, v2

    .line 89
    :goto_1
    invoke-virtual {p3}, Lcom/itextpdf/layout/properties/ParagraphWidowsControl;->getMaxLinesToMove()I

    move-result v7

    if-gt v6, v7, :cond_6

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getLines()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    if-lt v7, p2, :cond_6

    .line 90
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getLines()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getLines()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 91
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getLines()Ljava/util/List;

    move-result-object p3

    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    sub-int/2addr v0, v2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 92
    invoke-virtual {p3}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p3

    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p2

    sub-float/2addr p3, p2

    const p2, 0x38d1b717    # 1.0E-4f

    sub-float/2addr p3, p2

    .line 94
    new-instance p2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 95
    invoke-virtual {p2, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 96
    invoke-virtual {p2, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 98
    new-instance p3, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v0

    invoke-direct {p3, v0, p2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    .line 100
    invoke-static {p0, p1, p3}, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper;->attemptLayout(Lcom/itextpdf/layout/renderer/ParagraphRenderer;Lcom/itextpdf/layout/layout/LayoutContext;Lcom/itextpdf/layout/layout/LayoutArea;)Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-nez v4, :cond_7

    .line 102
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isFirstOnRootArea()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p3}, Lcom/itextpdf/layout/properties/ParagraphWidowsControl;->isOverflowOnWidowsViolation()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_7
    if-eqz v4, :cond_8

    .line 104
    const-string p2, "forced placement"

    invoke-virtual {p3, v3, p2}, Lcom/itextpdf/layout/properties/ParagraphWidowsControl;->handleViolatedWidows(Lcom/itextpdf/layout/renderer/ParagraphRenderer;Ljava/lang/String;)V

    goto :goto_2

    .line 106
    :cond_8
    const-string p2, "inability to fix it"

    invoke-virtual {p3, v3, p2}, Lcom/itextpdf/layout/properties/ParagraphWidowsControl;->handleViolatedWidows(Lcom/itextpdf/layout/renderer/ParagraphRenderer;Ljava/lang/String;)V

    :cond_9
    :goto_2
    if-eqz v0, :cond_a

    .line 117
    invoke-static {v0, p1}, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper;->handleAttemptAsSuccessful(Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object p0

    return-object p0

    .line 119
    :cond_a
    new-instance p1, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 p2, 0x3

    invoke-direct {p1, p2, v5, v5, p0}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object p1

    .line 45
    :cond_b
    :goto_3
    invoke-static {v0, p1}, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper;->handleAttemptAsSuccessful(Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper$OrphansWidowsLayoutAttempt;Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object p0

    return-object p0
.end method
