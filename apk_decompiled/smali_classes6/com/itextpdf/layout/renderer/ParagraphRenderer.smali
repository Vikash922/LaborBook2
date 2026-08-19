.class public Lcom/itextpdf/layout/renderer/ParagraphRenderer;
.super Lcom/itextpdf/layout/renderer/BlockRenderer;
.source "ParagraphRenderer.java"


# instance fields
.field protected lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/LineRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/Paragraph;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    return-void
.end method

.method private alignStaticKids(Lcom/itextpdf/layout/renderer/LineRenderer;F)V
    .locals 2

    .line 725
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 726
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 727
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 730
    invoke-interface {v0, p2, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private applyTextAlignment(Lcom/itextpdf/layout/properties/TextAlignment;Lcom/itextpdf/layout/layout/LineLayoutResult;Lcom/itextpdf/layout/renderer/LineRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;ZF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/TextAlignment;",
            "Lcom/itextpdf/layout/layout/LineLayoutResult;",
            "Lcom/itextpdf/layout/renderer/LineRenderer;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;ZF)V"
        }
    .end annotation

    .line 736
    sget-object v0, Lcom/itextpdf/layout/properties/TextAlignment;->JUSTIFIED:Lcom/itextpdf/layout/properties/TextAlignment;

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/LineLayoutResult;->isSplitForcedByNewline()Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz p6, :cond_1

    :cond_0
    sget-object p2, Lcom/itextpdf/layout/properties/TextAlignment;->JUSTIFIED_ALL:Lcom/itextpdf/layout/properties/TextAlignment;

    if-ne p1, p2, :cond_2

    :cond_1
    if-eqz p3, :cond_6

    .line 739
    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 740
    invoke-static {p5, p1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustLineAreaAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 741
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    sub-float/2addr p1, p7

    invoke-virtual {p3, p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->justify(F)V

    goto :goto_0

    .line 743
    :cond_2
    sget-object p2, Lcom/itextpdf/layout/properties/TextAlignment;->LEFT:Lcom/itextpdf/layout/properties/TextAlignment;

    if-eq p1, p2, :cond_6

    if-eqz p3, :cond_6

    .line 744
    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    .line 745
    invoke-static {p5, p2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustLineAreaAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 746
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p2

    sub-float/2addr p2, p7

    invoke-virtual {p3}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p4

    invoke-virtual {p4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p4

    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p4

    sub-float/2addr p2, p4

    const/4 p4, 0x0

    invoke-static {p4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 747
    sget-object p4, Lcom/itextpdf/layout/renderer/ParagraphRenderer$1;->$SwitchMap$com$itextpdf$layout$properties$TextAlignment:[I

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/TextAlignment;->ordinal()I

    move-result p1

    aget p1, p4, p1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_5

    if-eq p1, v1, :cond_4

    const/4 p4, 0x3

    if-eq p1, p4, :cond_3

    goto :goto_0

    .line 755
    :cond_3
    sget-object p1, Lcom/itextpdf/layout/properties/BaseDirection;->RIGHT_TO_LEFT:Lcom/itextpdf/layout/properties/BaseDirection;

    const/4 p4, 0x7

    invoke-virtual {p0, p4}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/itextpdf/layout/properties/BaseDirection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 756
    invoke-direct {p0, p3, p2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->alignStaticKids(Lcom/itextpdf/layout/renderer/LineRenderer;F)V

    goto :goto_0

    :cond_4
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    .line 752
    invoke-direct {p0, p3, p2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->alignStaticKids(Lcom/itextpdf/layout/renderer/LineRenderer;F)V

    goto :goto_0

    .line 749
    :cond_5
    invoke-direct {p0, p3, p2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->alignStaticKids(Lcom/itextpdf/layout/renderer/LineRenderer;F)V

    :cond_6
    :goto_0
    return-void
.end method

.method private createOverflowRenderer()Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    .locals 1

    .line 644
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    return-object v0
.end method

.method private createSplitRenderer()Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    .locals 1

    .line 648
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    return-object v0
.end method

.method private fixOverflowRenderer(Lcom/itextpdf/layout/renderer/ParagraphRenderer;)V
    .locals 3

    const/16 v0, 0x12

    .line 718
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 720
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static updateParentLines(Lcom/itextpdf/layout/renderer/ParagraphRenderer;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 768
    invoke-virtual {v1, p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    goto :goto_0

    .line 770
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 771
    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    .line 772
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    check-cast v2, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    const/4 v2, 0x0

    .line 773
    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method protected createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 0

    .line 668
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->createOverflowRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    move-result-object p1

    return-object p1
.end method

.method protected createOverflowRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    .locals 1

    .line 652
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->createOverflowRenderer()Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    move-result-object v0

    .line 653
    iput-object p1, v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 654
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->fixOverflowRenderer(Lcom/itextpdf/layout/renderer/ParagraphRenderer;)V

    .line 655
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->addAllProperties(Ljava/util/Map;)V

    return-object v0
.end method

.method protected createSplitRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    .locals 1

    .line 660
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->createSplitRenderer()Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    move-result-object v0

    .line 661
    iput-object p1, v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 662
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->addAllProperties(Ljava/util/Map;)V

    return-object v0
.end method

.method protected directLayout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 50

    move-object/from16 v8, p0

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->isClippedHeight()Z

    move-result v9

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v10

    .line 120
    new-instance v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-direct {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;-><init>()V

    invoke-virtual {v0, v8}, Lcom/itextpdf/layout/renderer/LineRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    .line 124
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x59

    invoke-virtual {v8, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 126
    new-instance v0, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getMarginsCollapseInfo()Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;-><init>(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;)V

    move-object v13, v0

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/16 v14, 0x67

    .line 129
    invoke-virtual {v8, v14}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    const/16 v0, 0x76

    .line 131
    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    .line 132
    invoke-virtual {v6, v0, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v3

    const/16 v0, 0x63

    .line 136
    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/itextpdf/layout/properties/FloatPropertyValue;

    .line 137
    invoke-static {v8, v3, v7}, Lcom/itextpdf/layout/renderer/FloatingHelper;->calculateClearHeightCorrection(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)F

    move-result v5

    .line 138
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    invoke-static {v7, v13, v5, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->applyClearance(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;FZ)V

    .line 139
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v2

    .line 140
    invoke-static {v8, v4}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/properties/FloatPropertyValue;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v16, v5

    move-object v5, v15

    .line 141
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustFloatedBlockLayoutBox(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/util/List;Lcom/itextpdf/layout/properties/FloatPropertyValue;Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Ljava/lang/Float;

    move-result-object v2

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_1
    move/from16 v16, v5

    :goto_1
    move-object v5, v3

    .line 145
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_2

    const/4 v6, 0x0

    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    move/from16 v17, v4

    .line 150
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isPositioned()Z

    move-result v18

    const/16 v0, 0x37

    .line 151
    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v19

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v20

    const/16 v1, 0x68

    if-eqz v20, :cond_3

    .line 154
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v21

    cmpl-float v0, v0, v21

    if-lez v0, :cond_4

    :cond_3
    if-nez v9, :cond_4

    sget-object v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    goto :goto_3

    .line 157
    :cond_4
    invoke-virtual {v8, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    :goto_3
    if-nez v19, :cond_5

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isFixedLayout()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 160
    :cond_5
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v21

    const v1, 0x49742400    # 1000000.0f

    sub-float v3, v1, v21

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_6
    if-eqz v19, :cond_7

    .line 162
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 163
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-static {v1, v8}, Lcom/itextpdf/layout/renderer/RotationUtils;->retrieveRotatedLayoutWidth(FLcom/itextpdf/layout/renderer/AbstractRenderer;)Ljava/lang/Float;

    move-result-object v2

    :cond_7
    if-eqz v11, :cond_8

    .line 167
    invoke-virtual {v13, v7}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 169
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v3

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPaddings()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    .line 172
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v21

    .line 174
    invoke-virtual {v8, v7, v4}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 175
    invoke-virtual {v8, v7, v3, v4}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isFixedLayout()Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v14, 0x22

    .line 177
    invoke-virtual {v8, v14}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v7, v14}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 179
    :cond_9
    invoke-virtual {v8, v7, v1, v4}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 180
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v14

    sub-float v14, v21, v14

    .line 181
    invoke-virtual {v8, v7, v2, v15}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyWidth(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Lcom/itextpdf/layout/properties/OverflowPropertyValue;)V

    const/16 v21, 0x0

    move-object v2, v0

    move-object/from16 v0, p0

    move-object/from16 v24, v1

    move-object v1, v7

    move-object/from16 v22, v2

    move-object/from16 v2, v20

    move-object/from16 v26, v3

    move-object v3, v13

    move v12, v4

    move/from16 v4, v21

    move-object/from16 v27, v5

    move v5, v9

    move-object/from16 v28, v6

    move-object/from16 v6, v22

    .line 182
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyMaxHeight(Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;ZZLcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v21

    .line 184
    new-instance v6, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-direct {v6, v14}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(F)V

    .line 185
    new-instance v14, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;

    invoke-direct {v14, v6}, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    if-eqz v18, :cond_a

    .line 189
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    .line 191
    :cond_a
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-direct {v0, v10, v7}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->initElementAreas(Lcom/itextpdf/layout/layout/LayoutArea;)Ljava/util/List;

    move-result-object v0

    :goto_4
    move-object v5, v0

    .line 194
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

    invoke-direct {v0, v10, v1}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->shrinkOccupiedAreaForAbsolutePosition()V

    .line 197
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->addPageByID(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 200
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    .line 202
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v18, v12

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    if-nez v18, :cond_c

    .line 203
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_6

    :cond_b
    move/from16 v18, v12

    move-object/from16 v3, v28

    goto :goto_7

    :cond_c
    :goto_6
    move-object/from16 v3, v28

    const/16 v18, 0x1

    .line 204
    :goto_7
    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object/from16 v28, v3

    goto :goto_5

    :cond_d
    move-object/from16 v3, v28

    .line 207
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    add-float/2addr v1, v2

    .line 212
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 216
    new-instance v2, Ljava/util/HashSet;

    move-object/from16 v12, v27

    invoke-direct {v2, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v11, :cond_e

    .line 218
    iget-object v7, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_e

    const/4 v7, 0x0

    .line 220
    invoke-virtual {v13, v7, v0}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->startChildMarginsHandling(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;

    .line 222
    :cond_e
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/BlockFormattingContextUtil;->isRendererCreateBfc(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v28

    move-object v7, v0

    move-object/from16 v34, v13

    move/from16 v29, v17

    const/4 v0, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v17, v1

    const/4 v1, 0x0

    :goto_8
    if-eqz v3, :cond_44

    const/16 v13, 0x43

    move/from16 v35, v1

    .line 225
    invoke-virtual {v8, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v13, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    const/16 v1, 0x45

    .line 226
    invoke-virtual {v8, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v3, v1, v13}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    if-eqz v29, :cond_f

    const/4 v13, 0x0

    goto :goto_9

    :cond_f
    const/16 v1, 0x12

    .line 228
    invoke-virtual {v8, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v13, v1

    .line 229
    :goto_9
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    move-object/from16 v36, v2

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    move-object/from16 v37, v5

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    move-object/from16 v38, v6

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    move/from16 v39, v11

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v11

    invoke-direct {v1, v2, v5, v6, v11}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    const/16 v11, 0x67

    .line 230
    invoke-virtual {v3, v11, v15}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    move-object/from16 v6, v22

    const/16 v5, 0x68

    .line 231
    invoke-virtual {v3, v5, v6}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    .line 233
    new-instance v2, Lcom/itextpdf/layout/layout/LineLayoutContext;

    new-instance v11, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-direct {v11, v10, v1}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    if-nez v21, :cond_11

    if-eqz v9, :cond_10

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    goto :goto_b

    :cond_11
    :goto_a
    const/4 v1, 0x1

    :goto_b
    const/4 v5, 0x0

    invoke-direct {v2, v11, v5, v12, v1}, Lcom/itextpdf/layout/layout/LineLayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/margincollapse/MarginsCollapseInfo;Ljava/util/List;Z)V

    .line 235
    invoke-virtual {v2, v13}, Lcom/itextpdf/layout/layout/LineLayoutContext;->setTextIndent(F)Lcom/itextpdf/layout/layout/LineLayoutContext;

    move-result-object v1

    .line 236
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/layout/LineLayoutContext;->setFloatOverflowedToNextPageWithNothing(Z)Lcom/itextpdf/layout/layout/LineLayoutContext;

    move-result-object v1

    .line 237
    invoke-virtual {v3, v8}, Lcom/itextpdf/layout/renderer/LineRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/layout/LineLayoutResult;

    .line 240
    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getStatus()I

    move-result v5

    const/4 v11, 0x3

    if-ne v5, v11, :cond_17

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->isClippedHeight()Z

    move-result v5

    if-eqz v5, :cond_12

    const/16 v5, 0x68

    .line 244
    invoke-virtual {v3, v5}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    .line 246
    sget-object v11, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->VISIBLE:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-virtual {v3, v5, v11}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    const/4 v11, 0x1

    .line 247
    invoke-virtual {v1, v11}, Lcom/itextpdf/layout/layout/LineLayoutContext;->setClippedHeight(Z)V

    .line 248
    invoke-virtual {v3, v8}, Lcom/itextpdf/layout/renderer/LineRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v22

    move-object/from16 v11, v22

    check-cast v11, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-virtual {v11, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/layout/LineLayoutResult;

    .line 250
    invoke-virtual {v3, v5, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    move-object v2, v11

    const/4 v11, 0x1

    goto :goto_c

    :cond_12
    const/16 v5, 0x68

    const/4 v11, 0x0

    .line 254
    :goto_c
    invoke-static {v12, v7}, Lcom/itextpdf/layout/renderer/FloatingHelper;->calculateLineShiftUnderFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/lang/Float;

    move-result-object v22

    if-eqz v22, :cond_13

    .line 256
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-object/from16 v22, v6

    move/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move/from16 v11, v39

    const/16 v30, 0x1

    goto/16 :goto_8

    .line 261
    :cond_13
    iget-object v0, v3, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v22, 0x1

    xor-int/lit8 v0, v0, 0x1

    .line 262
    iget-object v5, v3, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_14

    .line 263
    invoke-static/range {v22 .. v22}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_d

    :cond_14
    const/4 v0, 0x0

    goto :goto_d

    :cond_15
    move/from16 v22, v11

    if-eqz v0, :cond_16

    const/16 v35, 0x1

    :cond_16
    move-object v11, v2

    goto :goto_e

    :cond_17
    move-object v11, v2

    const/16 v22, 0x0

    .line 270
    :goto_e
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LineLayoutContext;->isFloatOverflowedToNextPageWithNothing()Z

    move-result v40

    .line 271
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getFloatsOverflowedToNextPage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 272
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getFloatsOverflowedToNextPage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    :cond_18
    instance-of v0, v11, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    if-eqz v0, :cond_19

    .line 278
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v0

    .line 279
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v1

    goto :goto_f

    :cond_19
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 282
    :goto_f
    invoke-virtual {v14, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 283
    invoke-virtual {v14, v1}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    .line 285
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-nez v0, :cond_1a

    .line 286
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    move-object v0, v3

    :cond_1a
    if-eqz v35, :cond_1b

    const/4 v5, 0x0

    goto :goto_10

    :cond_1b
    move-object v5, v0

    :goto_10
    const/16 v0, 0x46

    .line 297
    sget-object v1, Lcom/itextpdf/layout/properties/TextAlignment;->LEFT:Lcom/itextpdf/layout/properties/TextAlignment;

    invoke-virtual {v8, v0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/properties/TextAlignment;

    move-object/from16 v0, p0

    move/from16 v41, v9

    move-object/from16 v9, v36

    move-object v2, v11

    move-object/from16 v36, v3

    move-object v3, v5

    move/from16 v42, v10

    move-object v10, v4

    move-object v4, v7

    move-object/from16 v25, v14

    move-object/from16 v43, v37

    const/16 v37, 0x68

    move-object v14, v5

    move-object v5, v12

    move-object/from16 v44, v6

    move-object/from16 v45, v38

    move/from16 v6, v35

    move-object/from16 v38, v7

    const/16 v27, 0x0

    move v7, v13

    .line 298
    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyTextAlignment(Lcom/itextpdf/layout/properties/TextAlignment;Lcom/itextpdf/layout/layout/LineLayoutResult;Lcom/itextpdf/layout/renderer/LineRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/util/List;ZF)V

    .line 300
    sget-object v0, Lcom/itextpdf/layout/properties/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/properties/RenderingMode;

    const/16 v1, 0x7b

    .line 301
    invoke-virtual {v8, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/properties/RenderingMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v7, 0x0

    goto :goto_11

    :cond_1c
    const/16 v0, 0x21

    .line 302
    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/itextpdf/layout/properties/Leading;

    :goto_11
    if-eqz v14, :cond_1d

    .line 304
    invoke-virtual {v14}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    cmpl-float v0, v0, v27

    if-lez v0, :cond_1d

    const/4 v4, 0x1

    goto :goto_12

    :cond_1d
    const/4 v4, 0x0

    :goto_12
    if-eqz v14, :cond_1e

    const/4 v0, 0x1

    goto :goto_13

    :cond_1e
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_29

    .line 307
    sget-object v1, Lcom/itextpdf/layout/properties/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/properties/RenderingMode;

    const/16 v2, 0x7b

    invoke-virtual {v8, v2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/properties/RenderingMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    if-eqz v4, :cond_22

    sub-float v0, v33, v32

    if-eqz v7, :cond_1f

    .line 309
    invoke-virtual {v14, v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->getTopLeadingIndent(Lcom/itextpdf/layout/properties/Leading;)F

    move-result v1

    goto :goto_14

    :cond_1f
    move/from16 v1, v27

    :goto_14
    sub-float/2addr v0, v1

    invoke-virtual {v14}, Lcom/itextpdf/layout/renderer/LineRenderer;->getMaxAscent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 310
    invoke-virtual {v14}, Lcom/itextpdf/layout/renderer/LineRenderer;->containsImage()Z

    move-result v1

    if-eqz v1, :cond_20

    add-float v0, v0, v33

    :cond_20
    add-float v0, v17, v0

    .line 313
    invoke-virtual {v14}, Lcom/itextpdf/layout/renderer/LineRenderer;->getYLine()F

    move-result v1

    sub-float/2addr v0, v1

    if-eqz v7, :cond_21

    .line 314
    invoke-virtual {v14, v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->getBottomLeadingIndent(Lcom/itextpdf/layout/properties/Leading;)F

    move-result v1

    goto :goto_15

    :cond_21
    move/from16 v1, v27

    :goto_15
    cmpg-float v2, v1, v27

    if-gez v2, :cond_23

    .line 315
    invoke-virtual {v14}, Lcom/itextpdf/layout/renderer/LineRenderer;->containsImage()Z

    move-result v2

    if-eqz v2, :cond_23

    move/from16 v1, v27

    goto :goto_16

    :cond_22
    move/from16 v0, v27

    move/from16 v1, v32

    :cond_23
    :goto_16
    if-eqz v30, :cond_25

    if-eqz v14, :cond_24

    if-eqz v7, :cond_24

    .line 322
    invoke-virtual {v14, v7}, Lcom/itextpdf/layout/renderer/LineRenderer;->getTopLeadingIndent(Lcom/itextpdf/layout/properties/Leading;)F

    move-result v0

    neg-float v0, v0

    goto :goto_17

    :cond_24
    move/from16 v0, v27

    :cond_25
    :goto_17
    if-eqz v22, :cond_26

    if-eqz v7, :cond_28

    .line 326
    invoke-virtual {v14}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    add-float/2addr v2, v0

    sub-float/2addr v2, v1

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_27

    goto :goto_18

    :cond_26
    if-eqz v7, :cond_28

    .line 328
    invoke-virtual {v14}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_27

    goto :goto_18

    :cond_27
    const/4 v2, 0x0

    goto :goto_19

    :cond_28
    :goto_18
    const/4 v2, 0x1

    :goto_19
    move/from16 v32, v1

    move v1, v0

    move v0, v2

    goto :goto_1a

    :cond_29
    move/from16 v1, v27

    :goto_1a
    const/4 v6, 0x2

    if-nez v0, :cond_40

    if-eqz v14, :cond_2a

    .line 332
    invoke-static/range {v44 .. v44}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_2a
    add-int/lit8 v0, v31, 0x1

    .line 333
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    move-object/from16 v2, v43

    .line 334
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 335
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    move/from16 v31, v0

    move-object v13, v1

    move/from16 v17, v3

    move/from16 v47, v16

    move-object/from16 v5, v24

    move-object/from16 v48, v26

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v46, v39

    move-object/from16 v3, v44

    move-object/from16 v49, v45

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v30, 0x1

    goto/16 :goto_27

    .line 338
    :cond_2b
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isKeepTogether(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 340
    invoke-interface {v12, v9}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 341
    new-instance v6, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    if-nez v0, :cond_2c

    move-object v5, v8

    goto :goto_1b

    :cond_2c
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    move-object v5, v0

    :goto_1b
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v6

    :cond_2d
    if-eqz v39, :cond_2e

    if-eqz v29, :cond_2e

    if-eqz v18, :cond_2e

    move-object/from16 v0, v34

    move-object/from16 v13, v38

    .line 345
    invoke-virtual {v0, v13}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endChildMarginsHandling(Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_1c

    :cond_2e
    move-object/from16 v0, v34

    move-object/from16 v13, v38

    :goto_1c
    if-eqz v35, :cond_30

    if-eqz v28, :cond_2f

    goto :goto_1d

    :cond_2f
    const/4 v5, 0x0

    goto :goto_1e

    :cond_30
    :goto_1d
    const/4 v5, 0x1

    :goto_1e
    if-eqz v5, :cond_31

    .line 352
    invoke-static {v12, v8, v9}, Lcom/itextpdf/layout/renderer/FloatingHelper;->includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/Set;)V

    .line 353
    invoke-virtual {v8, v15, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_31
    if-eqz v39, :cond_32

    .line 357
    invoke-virtual {v0, v13}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_32
    if-nez v5, :cond_34

    move-object/from16 v3, v44

    .line 362
    invoke-virtual {v8, v3, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyMinHeight(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v0

    if-eqz v0, :cond_33

    const/4 v4, 0x1

    goto :goto_1f

    :cond_33
    const/4 v4, 0x0

    .line 364
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyVerticalAlignment()V

    goto :goto_20

    :cond_34
    const/4 v4, 0x0

    .line 367
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->split()[Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    move-result-object v7

    const/4 v0, 0x0

    .line 368
    aget-object v1, v7, v0

    iget-object v2, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    iput-object v2, v1, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    .line 369
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 370
    aget-object v3, v7, v0

    iget-object v0, v3, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    goto :goto_21

    :cond_35
    const/4 v0, 0x1

    .line 372
    aget-object v1, v7, v0

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v14, :cond_36

    .line 374
    aget-object v1, v7, v0

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-virtual {v14}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 376
    :cond_36
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 377
    aget-object v1, v7, v0

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_37
    if-eqz v35, :cond_38

    if-nez v28, :cond_38

    if-nez v4, :cond_38

    .line 381
    aget-object v1, v7, v0

    invoke-static {v1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->removeParentArtifactsOnPageSplitIfOnlyFloatsOverflow(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 385
    :cond_38
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    if-nez v5, :cond_39

    .line 387
    new-array v0, v6, [Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    aput-object v13, v0, v1

    iget-object v1, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    const/4 v10, 0x1

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    goto :goto_22

    :cond_39
    const/4 v10, 0x1

    :goto_22
    move v1, v0

    .line 391
    aget-object v4, v7, v10

    move-object/from16 v0, p0

    move/from16 v2, v21

    move-object/from16 v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->updateHeightsOnSplit(FZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;Z)V

    .line 392
    invoke-virtual {v8, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->correctFixedLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 393
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v5, v24

    invoke-virtual {v8, v0, v5, v10}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 394
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1, v10}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 395
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v8, v0, v10}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 397
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyAbsolutePositionIfNeeded(Lcom/itextpdf/layout/layout/LayoutContext;)V

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    move/from16 v3, v16

    move/from16 v2, v39

    invoke-static {v8, v0, v1, v3, v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    if-eqz v21, :cond_3a

    .line 401
    new-instance v0, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/4 v3, 0x0

    invoke-direct {v0, v10, v2, v1, v3}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object/from16 v14, v45

    invoke-virtual {v0, v14}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    move-result-object v0

    return-object v0

    :cond_3a
    move-object/from16 v14, v45

    const/4 v1, 0x0

    if-eqz v29, :cond_3b

    .line 403
    new-instance v0, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    aget-object v1, v7, v1

    aget-object v3, v7, v10

    invoke-direct {v0, v6, v2, v1, v3}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-virtual {v0, v14}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    move-result-object v0

    return-object v0

    .line 405
    :cond_3b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x1a

    invoke-virtual {v8, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 406
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    new-array v1, v6, [Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v3, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/LayoutArea;->setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 407
    invoke-virtual {v8, v15, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 408
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v1, 0x19

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    .line 409
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    move-object/from16 v3, v36

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getStatus()I

    move-result v0

    if-ne v6, v0, :cond_3d

    .line 412
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    .line 413
    iget-object v1, v3, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 414
    iget-object v1, v3, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    iget-object v4, v3, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 416
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 417
    invoke-interface {v4, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    goto :goto_23

    :cond_3c
    const/4 v4, 0x1

    .line 419
    aget-object v1, v7, v4

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    aget-object v3, v7, v4

    iget-object v3, v3, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 420
    new-instance v6, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    aget-object v4, v7, v4

    const/4 v5, 0x0

    const/4 v1, 0x2

    move-object v0, v6

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-virtual {v6, v14}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    move-result-object v0

    return-object v0

    .line 422
    :cond_3d
    new-instance v6, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    move-object v0, v6

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-virtual {v6, v14}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    move-result-object v0

    return-object v0

    .line 425
    :cond_3e
    invoke-interface {v12, v9}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 426
    new-instance v6, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    if-nez v0, :cond_3f

    move-object v5, v8

    goto :goto_24

    :cond_3f
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    move-object v5, v0

    :goto_24
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v6

    :cond_40
    move/from16 v47, v16

    move-object/from16 v5, v24

    move-object/from16 v48, v26

    move-object/from16 v0, v34

    move-object/from16 v13, v38

    move/from16 v46, v39

    move-object/from16 v2, v43

    move-object/from16 v3, v44

    move-object/from16 v49, v45

    const/16 v16, 0x0

    if-eqz v7, :cond_41

    .line 433
    invoke-virtual {v14, v1}, Lcom/itextpdf/layout/renderer/LineRenderer;->applyLeading(F)V

    if-eqz v4, :cond_41

    .line 435
    invoke-virtual {v14}, Lcom/itextpdf/layout/renderer/LineRenderer;->getYLine()F

    move-result v17

    :cond_41
    if-eqz v4, :cond_42

    .line 439
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    new-array v4, v6, [Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v6, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-virtual {v14}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    const/16 v20, 0x1

    aput-object v6, v4, v20

    invoke-static {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/layout/layout/LayoutArea;->setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 440
    invoke-virtual {v8, v15, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_25

    :cond_42
    const/4 v7, 0x0

    .line 444
    :goto_25
    invoke-virtual {v14}, Lcom/itextpdf/layout/renderer/LineRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-virtual {v13, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 445
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 450
    invoke-virtual {v14}, Lcom/itextpdf/layout/renderer/LineRenderer;->getMaxDescent()F

    move-result v4

    .line 452
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_43

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LineLayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v6

    if-nez v6, :cond_43

    .line 456
    new-instance v1, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-direct {v1}, Lcom/itextpdf/layout/renderer/LineRenderer;-><init>()V

    move-object/from16 v36, v1

    move/from16 v33, v4

    move/from16 v30, v7

    const/4 v1, 0x1

    goto :goto_26

    :cond_43
    move-object/from16 v36, v1

    move/from16 v33, v4

    move/from16 v30, v7

    move/from16 v1, v35

    :goto_26
    const/16 v29, 0x1

    :goto_27
    move-object/from16 v34, v0

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    move-object v4, v10

    move-object v7, v13

    move-object/from16 v14, v25

    move-object/from16 v3, v36

    move/from16 v0, v40

    move/from16 v10, v42

    move/from16 v11, v46

    move/from16 v16, v47

    move-object/from16 v26, v48

    move-object/from16 v6, v49

    move-object v5, v2

    move-object v2, v9

    move/from16 v9, v41

    goto/16 :goto_8

    :cond_44
    move-object v9, v2

    move-object/from16 v49, v6

    move-object v13, v7

    move/from16 v46, v11

    move/from16 v47, v16

    move-object/from16 v3, v22

    move-object/from16 v5, v24

    move-object/from16 v48, v26

    move-object/from16 v0, v34

    .line 460
    sget-object v1, Lcom/itextpdf/layout/properties/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/properties/RenderingMode;

    const/16 v2, 0x7b

    invoke-virtual {v8, v2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/properties/RenderingMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 462
    invoke-static {v3}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v32, v1

    if-lez v1, :cond_45

    .line 463
    iget-object v1, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    sub-float v32, v1, v2

    :cond_45
    move/from16 v1, v32

    .line 465
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 466
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    iget-object v4, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    add-float/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_46
    move/from16 v1, v46

    if-eqz v1, :cond_47

    .line 470
    iget-object v2, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_47

    if-eqz v18, :cond_47

    .line 471
    invoke-virtual {v0, v13}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endChildMarginsHandling(Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_47
    if-eqz v28, :cond_48

    .line 476
    invoke-static {v12, v8, v9}, Lcom/itextpdf/layout/renderer/FloatingHelper;->includeChildFloatsInOccupiedArea(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/Set;)V

    .line 477
    invoke-virtual {v8, v15, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->fixOccupiedAreaIfOverflowedX(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_48
    if-eqz v21, :cond_49

    .line 481
    invoke-virtual {v8, v3, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->fixOccupiedAreaIfOverflowedY(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_49
    if-eqz v1, :cond_4a

    .line 485
    invoke-virtual {v0, v13}, Lcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;->endMarginsCollapse(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 488
    :cond_4a
    invoke-virtual {v8, v3, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyMinHeight(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v4

    if-eqz v4, :cond_4b

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isKeepTogether()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 490
    invoke-interface {v12, v9}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 491
    new-instance v6, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x3

    move-object v0, v6

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v6

    .line 494
    :cond_4b
    invoke-virtual {v8, v13}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->correctFixedLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 496
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v5, v2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 497
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v3, v48

    invoke-virtual {v8, v0, v3, v2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 498
    iget-object v0, v8, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v8, v0, v2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 500
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyAbsolutePositionIfNeeded(Lcom/itextpdf/layout/layout/LayoutContext;)V

    if-eqz v19, :cond_4d

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyRotationLayout(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 504
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isNotFittingLayoutArea(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 505
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isNotFittingWidth(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isNotFittingHeight(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 506
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v2, "It fits by height so it will be forced placed"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 507
    const-string v3, "Element does not fit current area. {0}"

    invoke-static {v3, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_28

    .line 509
    :cond_4c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x1a

    invoke-virtual {v8, v2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 510
    invoke-interface {v12, v9}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 511
    new-instance v6, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x3

    move-object v0, v6

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v6

    .line 516
    :cond_4d
    :goto_28
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->applyVerticalAlignment()V

    .line 518
    invoke-static {v12, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->removeFloatsAboveRendererBottom(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 519
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    move/from16 v3, v47

    invoke-static {v8, v0, v2, v3, v1}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v11

    if-nez v4, :cond_4e

    .line 523
    new-instance v0, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move-object/from16 v6, v49

    invoke-virtual {v0, v6}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    move-result-object v0

    return-object v0

    :cond_4e
    move-object/from16 v6, v49

    .line 525
    new-instance v7, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    const/4 v1, 0x2

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, v11

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    invoke-virtual {v7, v6}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    move-result-object v0

    return-object v0
.end method

.method public drawChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 584
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 585
    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDefaultProperty(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2b

    if-ne p1, v0, :cond_1

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 552
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    return-object p1

    .line 554
    :cond_1
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getFirstYLineRecursively()Ljava/lang/Float;
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getFirstYLineRecursively()Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLastYLineRecursively()Ljava/lang/Float;
    .locals 3

    .line 628
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->allowLastYLineRecursiveExtraction()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 635
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->getLastYLineRecursively()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/LineRenderer;",
            ">;"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    return-object v0
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 10

    .line 674
    new-instance v0, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-direct {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>()V

    const/16 v1, 0x37

    .line 675
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v2

    .line 676
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->setMinMaxWidthBasedOnFixedWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v3, 0x50

    .line 677
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->hasAbsoluteUnitValue(I)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->retrieveMinWidth(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    const/16 v6, 0x4f

    .line 678
    invoke-virtual {p0, v6}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->hasAbsoluteUnitValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->retrieveMaxWidth(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    if-eqz v3, :cond_2

    if-nez v4, :cond_4

    .line 680
    :cond_2
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->hasOwnProperty(I)Z

    move-result v0

    .line 681
    invoke-virtual {p0, v1, v5}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->setProperty(ILjava/lang/Object;)V

    .line 682
    new-instance v5, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v6, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v7, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v8

    const v9, 0x49742400    # 1000000.0f

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v8, 0x1

    invoke-direct {v6, v8, v7}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v5, v6}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    if-eqz v0, :cond_3

    .line 684
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_2

    .line 686
    :cond_3
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->deleteOwnProperty(I)V

    .line 688
    :goto_2
    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    :cond_4
    if-eqz v3, :cond_5

    .line 691
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    :cond_5
    if-eqz v4, :cond_6

    .line 694
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    .line 696
    :cond_6
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_8

    .line 697
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    goto :goto_3

    .line 700
    :cond_7
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->calculateAdditionalWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setAdditionalWidth(F)V

    :cond_8
    :goto_3
    if-eqz v2, :cond_9

    .line 703
    invoke-static {v0, p0}, Lcom/itextpdf/layout/renderer/RotationUtils;->countRotationMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;Lcom/itextpdf/layout/renderer/AbstractRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    :cond_9
    return-object v0
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 542
    const-class v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->logWarningIfGetNextRendererNotOverridden(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 543
    new-instance v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;-><init>(Lcom/itextpdf/layout/element/Paragraph;)V

    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 2

    const/16 v0, 0x79

    .line 103
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/ParagraphOrphansControl;

    const/16 v1, 0x7a

    .line 104
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/ParagraphWidowsControl;

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->directLayout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object p1

    .line 109
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->updateParentLines(Lcom/itextpdf/layout/renderer/ParagraphRenderer;)V

    .line 110
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    invoke-static {v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->updateParentLines(Lcom/itextpdf/layout/renderer/ParagraphRenderer;)V

    return-object p1

    .line 106
    :cond_1
    :goto_0
    invoke-static {p0, p1, v0, v1}, Lcom/itextpdf/layout/renderer/OrphansWidowsLayoutHelper;->orphansWidowsAwareLayout(Lcom/itextpdf/layout/renderer/ParagraphRenderer;Lcom/itextpdf/layout/layout/LayoutContext;Lcom/itextpdf/layout/properties/ParagraphOrphansControl;Lcom/itextpdf/layout/properties/ParagraphWidowsControl;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object p1

    return-object p1
.end method

.method public move(FF)V
    .locals 2

    .line 595
    const-class v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    if-nez v1, :cond_0

    .line 597
    const-string p1, "Moving won\'t be performed."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Occupied area has not been initialized. {0}"

    invoke-static {p2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 602
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 603
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 604
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/LineRenderer;

    .line 605
    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/layout/renderer/LineRenderer;->move(FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected split()[Lcom/itextpdf/layout/renderer/ParagraphRenderer;
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->createSplitRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    move-result-object v0

    .line 708
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v1, 0x0

    .line 709
    iput-boolean v1, v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->isLastRendererForModelElement:Z

    .line 711
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->createOverflowRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    move-result-object v1

    .line 713
    filled-new-array {v0, v1}, [Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 564
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_0

    .line 566
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->lines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 572
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 575
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
