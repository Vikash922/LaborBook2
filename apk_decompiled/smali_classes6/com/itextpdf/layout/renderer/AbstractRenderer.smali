.class public abstract Lcom/itextpdf/layout/renderer/AbstractRenderer;
.super Ljava/lang/Object;
.source "AbstractRenderer.java"

# interfaces
.implements Lcom/itextpdf/layout/renderer/IRenderer;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARC_BOTTOM_DEGREE:I = 0x10e

.field private static final ARC_LEFT_DEGREE:I = 0xb4

.field private static final ARC_QUARTER_CLOCKWISE_EXTENT:I = -0x5a

.field private static final ARC_RIGHT_DEGREE:I = 0x0

.field private static final ARC_TOP_DEGREE:I = 0x5a

.field static final BOTTOM_SIDE:I = 0x2

.field protected static final EPS:F = 1.0E-4f

.field protected static final INF:F = 1000000.0f

.field static final LEFT_SIDE:I = 0x3

.field public static final OVERLAP_EPSILON:F = 1.0E-4f

.field static final RIGHT_SIDE:I = 0x1

.field static final TOP_SIDE:I


# instance fields
.field protected childRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation
.end field

.field protected flushed:Z

.field protected isLastRendererForModelElement:Z

.field protected modelElement:Lcom/itextpdf/layout/IPropertyContainer;

.field protected occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

.field protected parent:Lcom/itextpdf/layout/renderer/IRenderer;

.field protected positionedRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation
.end field

.field protected properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->flushed:Z

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isLastRendererForModelElement:Z

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/layout/element/IElement;)V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->flushed:Z

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isLastRendererForModelElement:Z

    .line 180
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;)V
    .locals 2

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->flushed:Z

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isLastRendererForModelElement:Z

    .line 184
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    .line 185
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    .line 186
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 187
    iget-boolean v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->flushed:Z

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->flushed:Z

    .line 188
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 189
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 190
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    iget-object v1, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 191
    iget-boolean p1, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isLastRendererForModelElement:Z

    iput-boolean p1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isLastRendererForModelElement:Z

    return-void
.end method

.method private adjustPositionedRendererLayoutBoxWidth(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 2595
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_0
    if-eqz p4, :cond_1

    .line 2598
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_1
    if-nez p3, :cond_3

    if-nez p4, :cond_3

    const/16 p3, 0x4d

    .line 2601
    invoke-interface {p1, p3}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result p3

    if-nez p3, :cond_3

    .line 2603
    instance-of p3, p1, Lcom/itextpdf/layout/renderer/BlockRenderer;

    if-eqz p3, :cond_2

    check-cast p1, Lcom/itextpdf/layout/renderer/BlockRenderer;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 2604
    invoke-virtual {p1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result p3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p4

    cmpg-float p3, p3, p4

    if-gez p3, :cond_3

    .line 2605
    invoke-virtual {p1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result p1

    const p3, 0x38d1b717    # 1.0E-4f

    add-float/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_3
    return-void
.end method

.method private applyBackgroundBoxProperty(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/properties/BackgroundBox;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 585
    sget-object v0, Lcom/itextpdf/layout/properties/BackgroundBox;->PADDING_BOX:Lcom/itextpdf/layout/properties/BackgroundBox;

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 586
    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_0

    .line 587
    :cond_0
    sget-object v0, Lcom/itextpdf/layout/properties/BackgroundBox;->CONTENT_BOX:Lcom/itextpdf/layout/properties/BackgroundBox;

    if-ne v0, p2, :cond_1

    .line 588
    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 589
    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_1
    :goto_0
    return-object p1
.end method

.method static calculateAdditionalWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F
    .locals 2

    .line 2420
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v1, 0x1

    .line 2421
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2422
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2423
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2424
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p0

    return p0
.end method

.method static calculatePaddingBorderHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F
    .locals 2

    .line 2618
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v1, 0x1

    .line 2619
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2620
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2621
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p0

    return p0
.end method

.method static calculatePaddingBorderWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F
    .locals 2

    .line 2611
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v1, 0x1

    .line 2612
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2613
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2614
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p0

    return p0
.end method

.method private calculateRadii([Lcom/itextpdf/layout/properties/BorderRadius;Lcom/itextpdf/kernel/geom/Rectangle;Z)[F
    .locals 6

    const/4 v0, 0x4

    .line 1572
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 1575
    aget-object v3, p1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    if-eqz p3, :cond_0

    .line 1576
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/BorderRadius;->getHorizontalRadius()Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/BorderRadius;->getVerticalRadius()Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_3

    .line 1578
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/UnitValue;->getUnitType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 1579
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    :goto_2
    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    aput v3, v1, v2

    goto :goto_3

    .line 1582
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v3

    aput v3, v1, v2

    goto :goto_3

    .line 1585
    :cond_3
    aput v4, v1, v2

    goto :goto_3

    .line 1588
    :cond_4
    aput v4, v1, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private clipArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;ZZZZ)Z
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    const/4 v1, 0x4

    .line 771
    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v6, 0x2

    aput v4, v2, v6

    const/4 v7, 0x3

    aput v4, v2, v7

    .line 774
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v9

    .line 775
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v10

    .line 776
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v11

    .line 777
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v12

    new-array v13, v1, [F

    aput v9, v13, v3

    aput v10, v13, v5

    aput v11, v13, v6

    aput v12, v13, v7

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorderRadii()[Lcom/itextpdf/layout/properties/BorderRadius;

    move-result-object v9

    .line 783
    invoke-direct {v8, v9, v0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculateRadii([Lcom/itextpdf/layout/properties/BorderRadius;Lcom/itextpdf/kernel/geom/Rectangle;Z)[F

    move-result-object v10

    .line 784
    invoke-direct {v8, v9, v0, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculateRadii([Lcom/itextpdf/layout/properties/BorderRadius;Lcom/itextpdf/kernel/geom/Rectangle;Z)[F

    move-result-object v9

    move v11, v3

    move v12, v11

    :goto_0
    if-ge v11, v1, :cond_2

    .line 786
    aget v14, v10, v11

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    aput v14, v10, v11

    .line 787
    aget v14, v9, v11

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v15

    div-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    aput v14, v9, v11

    if-nez v12, :cond_1

    .line 788
    aget v15, v10, v11

    cmpl-float v15, v4, v15

    if-nez v15, :cond_0

    cmpl-float v14, v4, v14

    if-eqz v14, :cond_1

    :cond_0
    move v12, v5

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    if-eqz v12, :cond_6

    .line 794
    aget v0, v13, v7

    aget v4, v9, v3

    add-float/2addr v4, v0

    aget v11, v13, v5

    aget v14, v9, v5

    sub-float v14, v11, v14

    aget v15, v9, v6

    sub-float/2addr v11, v15

    aget v15, v9, v7

    add-float/2addr v0, v15

    new-array v15, v1, [F

    aput v4, v15, v3

    aput v14, v15, v5

    aput v11, v15, v6

    aput v0, v15, v7

    .line 795
    aget v0, v13, v3

    aget v4, v10, v3

    sub-float v4, v0, v4

    aget v11, v10, v5

    sub-float/2addr v0, v11

    aget v11, v13, v6

    aget v14, v10, v6

    add-float/2addr v14, v11

    aget v16, v10, v7

    add-float v11, v11, v16

    new-array v1, v1, [F

    aput v4, v1, v3

    aput v0, v1, v5

    aput v14, v1, v6

    aput v11, v1, v7

    .line 797
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v7

    .line 798
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    if-eqz p5, :cond_3

    move-object/from16 v0, p0

    move-object v11, v1

    move-object v1, v9

    move-object v2, v10

    move-object v3, v13

    move-object v4, v15

    move-object v5, v11

    .line 801
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->decreaseBorderRadiiWithBorders([F[F[F[F[F)[F

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v11, v1

    :goto_1
    move-object v14, v2

    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v9

    move-object v3, v10

    move-object v4, v13

    move-object v5, v15

    move-object v6, v11

    .line 806
    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipOuterArea(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;[F[F[F[F[F)V

    :cond_4
    if-eqz p6, :cond_5

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v13

    move-object v4, v15

    move-object v5, v11

    .line 810
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->decreaseBorderRadiiWithBorders([F[F[F[F[F)[F

    move-result-object v0

    move-object v14, v0

    :cond_5
    if-eqz p4, :cond_6

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v9

    move-object v3, v10

    move-object v4, v13

    move-object v5, v15

    move-object v6, v11

    move-object v7, v14

    .line 815
    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipInnerArea(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;[F[F[F[F[F[F)V

    :cond_6
    return v12
.end method

.method private clipInnerArea(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;[F[F[F[F[F[F)V
    .locals 81

    const/4 v0, 0x0

    .line 884
    aget v1, p4, v0

    float-to-double v13, v1

    const/4 v1, 0x1

    .line 885
    aget v2, p4, v1

    float-to-double v11, v2

    const/4 v15, 0x2

    .line 886
    aget v2, p4, v15

    float-to-double v9, v2

    const/16 v28, 0x3

    .line 887
    aget v2, p4, v28

    float-to-double v7, v2

    .line 889
    aget v2, p5, v0

    float-to-double v5, v2

    .line 890
    aget v2, p6, v0

    float-to-double v3, v2

    .line 891
    aget v2, p5, v1

    move-wide/from16 v16, v11

    float-to-double v11, v2

    .line 892
    aget v2, p6, v1

    move-wide/from16 v18, v11

    float-to-double v11, v2

    .line 893
    aget v2, p5, v15

    move-wide/from16 v20, v11

    float-to-double v11, v2

    .line 894
    aget v2, p6, v15

    move-wide/from16 v22, v11

    float-to-double v11, v2

    .line 895
    aget v2, p5, v28

    move-wide/from16 v24, v11

    float-to-double v11, v2

    .line 896
    aget v2, p6, v28

    move-wide/from16 v26, v11

    float-to-double v11, v2

    .line 897
    aget v2, p7, v0

    move-wide/from16 p4, v11

    float-to-double v11, v2

    .line 898
    aget v2, p7, v1

    move-wide/from16 v29, v11

    float-to-double v11, v2

    .line 899
    aget v2, p7, v15

    move-wide/from16 v31, v11

    float-to-double v11, v2

    .line 900
    aget v2, p7, v28

    move-wide/from16 v33, v11

    float-to-double v11, v2

    .line 903
    aget v2, p2, v0

    const/16 v35, 0x0

    cmpl-float v36, v35, v2

    if-nez v36, :cond_1

    aget v36, p3, v0

    cmpl-float v36, v35, v36

    if-eqz v36, :cond_0

    goto :goto_0

    :cond_0
    move-wide/from16 v57, p4

    move v2, v1

    move-wide/from16 v45, v5

    move-wide/from16 v47, v7

    move-wide/from16 v37, v9

    move-wide/from16 v61, v11

    move-wide/from16 v11, v16

    move-wide/from16 v0, v18

    move-wide/from16 v49, v20

    move-wide/from16 v51, v22

    move-wide/from16 v53, v24

    move-wide/from16 v55, v26

    move-wide/from16 v59, v33

    move-wide/from16 v33, v31

    move-wide/from16 v31, v29

    goto/16 :goto_1

    .line 904
    :cond_1
    :goto_0
    aget v0, p3, v0

    move-wide/from16 v37, v9

    float-to-double v9, v0

    sub-double v9, v3, v9

    float-to-double v1, v2

    add-double v39, v5, v1

    const-wide v41, 0x4066800000000000L    # 180.0

    const-wide v43, -0x3fa9800000000000L    # -90.0

    move-object/from16 v2, p1

    move-wide v0, v3

    move-wide v3, v7

    move-wide/from16 v45, v5

    move-wide v5, v9

    move-wide v9, v7

    move-wide/from16 v7, v39

    move-wide/from16 v39, v0

    move-wide/from16 v47, v9

    move-wide/from16 v0, v37

    move-wide v9, v13

    move-wide/from16 v57, p4

    move-wide/from16 v61, v11

    move-wide/from16 v0, v18

    move-wide/from16 v49, v20

    move-wide/from16 v51, v22

    move-wide/from16 v53, v24

    move-wide/from16 v55, v26

    move-wide/from16 v59, v33

    move-wide/from16 v33, v31

    move-wide/from16 v31, v29

    move-wide/from16 v29, v16

    move-wide/from16 v11, v41

    move-wide/from16 v63, v13

    move-wide/from16 v13, v43

    .line 905
    invoke-virtual/range {v2 .. v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v13, v63

    .line 908
    invoke-virtual {v2, v0, v1, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v11, v29

    move-wide/from16 v9, v49

    .line 909
    invoke-virtual {v2, v11, v12, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v7, v53

    .line 910
    invoke-virtual {v2, v11, v12, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v5, v37

    move-wide/from16 v3, v51

    .line 911
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v7, v55

    .line 912
    invoke-virtual {v2, v7, v8, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v7, v47

    move-wide/from16 v3, v57

    .line 913
    invoke-virtual {v2, v7, v8, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v3, v39

    .line 914
    invoke-virtual {v2, v7, v8, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    sub-double v9, v7, v61

    .line 915
    invoke-virtual {v2, v9, v10, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    sub-double v7, v5, v59

    .line 916
    invoke-virtual {v2, v9, v10, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    add-double v5, v11, v33

    .line 917
    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    add-double v7, v13, v31

    .line 918
    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 919
    invoke-virtual {v2, v9, v10, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 920
    invoke-virtual {v2, v9, v10, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 921
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 v2, 0x1

    .line 924
    :goto_1
    aget v5, p2, v2

    cmpl-float v6, v35, v5

    if-nez v6, :cond_3

    aget v6, p3, v2

    cmpl-float v6, v35, v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move-wide v9, v0

    move-wide/from16 v39, v3

    move-wide v0, v11

    move-wide/from16 v63, v13

    move-wide/from16 v5, v37

    move-wide/from16 v77, v49

    move-wide/from16 v3, v53

    goto/16 :goto_3

    :cond_3
    :goto_2
    float-to-double v5, v5

    sub-double v5, v0, v5

    .line 925
    aget v2, p3, v2

    float-to-double v7, v2

    sub-double v9, v49, v7

    const-wide v16, 0x4056800000000000L    # 90.0

    const-wide v18, -0x3fa9800000000000L    # -90.0

    move-object/from16 v2, p1

    move-wide/from16 v29, v0

    move-wide v7, v3

    move-wide/from16 v0, v51

    move-wide/from16 v65, v57

    move-wide v3, v5

    move-wide/from16 v67, v37

    move-wide v5, v13

    move-wide/from16 v71, v7

    move-wide/from16 v69, v47

    move-wide/from16 v73, v53

    move-wide/from16 v75, v55

    move-wide v7, v11

    move-wide/from16 v77, v49

    move-wide v0, v11

    move-wide/from16 v11, v16

    move-wide/from16 v79, v13

    move-wide/from16 v13, v18

    .line 926
    invoke-virtual/range {v2 .. v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v3, v73

    .line 929
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v7, v51

    move-wide/from16 v5, v67

    .line 930
    invoke-virtual {v2, v7, v8, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v9, v75

    .line 931
    invoke-virtual {v2, v9, v10, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v13, v65

    move-wide/from16 v11, v69

    .line 932
    invoke-virtual {v2, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v57, v13

    move-wide/from16 v13, v71

    .line 933
    invoke-virtual {v2, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v55, v9

    move-wide/from16 v39, v13

    move-wide/from16 v9, v45

    move-wide/from16 v13, v79

    .line 934
    invoke-virtual {v2, v9, v10, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v9, v29

    .line 935
    invoke-virtual {v2, v9, v10, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    add-double v7, v13, v31

    .line 936
    invoke-virtual {v2, v9, v10, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v63, v13

    sub-double v13, v11, v61

    .line 937
    invoke-virtual {v2, v13, v14, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v47, v11

    sub-double v11, v5, v59

    .line 938
    invoke-virtual {v2, v13, v14, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    add-double v13, v0, v33

    .line 939
    invoke-virtual {v2, v13, v14, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 940
    invoke-virtual {v2, v13, v14, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 941
    invoke-virtual {v2, v9, v10, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 942
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 945
    :goto_3
    aget v2, p2, v15

    cmpl-float v7, v35, v2

    if-nez v7, :cond_5

    aget v7, p3, v15

    cmpl-float v7, v35, v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move-wide/from16 v36, v0

    move-wide/from16 v29, v9

    move-wide/from16 v11, v47

    move-wide/from16 v13, v63

    move-wide/from16 v49, v77

    goto :goto_5

    .line 946
    :cond_5
    :goto_4
    aget v7, p3, v15

    float-to-double v7, v7

    add-double v18, v3, v7

    float-to-double v7, v2

    sub-double v20, v51, v7

    const-wide/16 v24, 0x0

    const-wide v26, -0x3fa9800000000000L    # -90.0

    move-object/from16 v15, p1

    move-wide/from16 v16, v0

    move-wide/from16 v22, v5

    .line 947
    invoke-virtual/range {v15 .. v27}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v7, v55

    .line 950
    invoke-virtual {v2, v7, v8, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v11, v47

    move-wide/from16 v13, v57

    .line 951
    invoke-virtual {v2, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v13, v39

    .line 952
    invoke-virtual {v2, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v7, v45

    move-wide/from16 v13, v63

    .line 953
    invoke-virtual {v2, v7, v8, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 954
    invoke-virtual {v2, v9, v10, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v29, v9

    move-wide/from16 v9, v77

    .line 955
    invoke-virtual {v2, v0, v1, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 956
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v49, v9

    add-double v9, v0, v33

    .line 957
    invoke-virtual {v2, v9, v10, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v36, v0

    add-double v0, v13, v31

    .line 958
    invoke-virtual {v2, v9, v10, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    sub-double v7, v11, v61

    .line 959
    invoke-virtual {v2, v7, v8, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    sub-double v1, v5, v59

    .line 960
    invoke-virtual {v0, v7, v8, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 961
    invoke-virtual {v0, v9, v10, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 962
    invoke-virtual {v0, v9, v10, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 963
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 966
    :goto_5
    aget v0, p2, v28

    cmpl-float v1, v35, v0

    if-nez v1, :cond_6

    aget v1, p3, v28

    cmpl-float v1, v35, v1

    if-eqz v1, :cond_7

    :cond_6
    float-to-double v0, v0

    add-double v17, v55, v0

    .line 967
    aget v0, p3, v28

    float-to-double v0, v0

    add-double v23, v57, v0

    const-wide v25, 0x4070e00000000000L    # 270.0

    const-wide v27, -0x3fa9800000000000L    # -90.0

    move-object/from16 v16, p1

    move-wide/from16 v19, v5

    move-wide/from16 v21, v11

    .line 968
    invoke-virtual/range {v16 .. v28}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    move-wide/from16 v1, v39

    .line 971
    invoke-virtual {v0, v11, v12, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    move-wide/from16 v1, v45

    .line 972
    invoke-virtual {v0, v1, v2, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    move-wide/from16 v1, v29

    .line 973
    invoke-virtual {v0, v1, v2, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    move-wide/from16 v1, v36

    move-wide/from16 v7, v49

    .line 974
    invoke-virtual {v0, v1, v2, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 975
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    move-wide/from16 v3, v51

    .line 976
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    move-wide/from16 v3, v55

    .line 977
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    sub-double v9, v5, v59

    .line 978
    invoke-virtual {v0, v3, v4, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    add-double v1, v1, v33

    .line 979
    invoke-virtual {v0, v1, v2, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    add-double v13, v13, v31

    .line 980
    invoke-virtual {v0, v1, v2, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    sub-double v7, v11, v61

    .line 981
    invoke-virtual {v0, v7, v8, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 982
    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 983
    invoke-virtual {v0, v3, v4, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 984
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_7
    return-void
.end method

.method private clipOuterArea(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;[F[F[F[F[F)V
    .locals 41

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 823
    aget v2, p4, v1

    float-to-double v14, v2

    const/4 v2, 0x1

    .line 824
    aget v3, p4, v2

    float-to-double v12, v3

    const/16 v16, 0x2

    .line 825
    aget v3, p4, v16

    float-to-double v10, v3

    const/16 v29, 0x3

    .line 826
    aget v3, p4, v29

    float-to-double v8, v3

    .line 829
    aget v3, p2, v1

    const/16 v30, 0x0

    cmpl-float v4, v30, v3

    if-nez v4, :cond_1

    aget v4, p3, v1

    cmpl-float v4, v30, v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v10

    move-wide v0, v12

    move-wide v12, v8

    goto :goto_1

    .line 830
    :cond_1
    :goto_0
    aget v4, p6, v1

    float-to-double v4, v4

    aget v6, p3, v1

    float-to-double v6, v6

    sub-double v6, v4, v6

    .line 831
    aget v1, p5, v1

    float-to-double v4, v1

    float-to-double v2, v3

    add-double v17, v4, v2

    .line 833
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    const-wide v19, 0x4066800000000000L    # 180.0

    const-wide v21, -0x3fa9800000000000L    # -90.0

    move-wide v4, v8

    move-wide v1, v8

    move-wide/from16 v8, v17

    move-wide/from16 v31, v1

    move-wide v0, v10

    move-wide v10, v14

    move-wide/from16 v17, v0

    move-wide v0, v12

    move-wide/from16 v12, v19

    move-wide/from16 v33, v14

    move-wide/from16 v14, v21

    .line 834
    invoke-virtual/range {v3 .. v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arcContinuous(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v14, v33

    .line 836
    invoke-virtual {v2, v0, v1, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v3, v17

    .line 837
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    move-wide/from16 v12, v31

    .line 838
    invoke-virtual {v2, v12, v13, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 839
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 v2, 0x1

    .line 842
    :goto_1
    aget v5, p2, v2

    cmpl-float v6, v30, v5

    if-nez v6, :cond_3

    aget v6, p3, v2

    cmpl-float v6, v30, v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v2, p1

    move-wide v4, v3

    move-wide v6, v12

    move-wide v8, v14

    goto :goto_3

    .line 843
    :cond_3
    :goto_2
    aget v6, p5, v2

    float-to-double v6, v6

    float-to-double v8, v5

    sub-double v5, v6, v8

    .line 844
    aget v7, p6, v2

    float-to-double v7, v7

    aget v2, p3, v2

    float-to-double v9, v2

    sub-double v10, v7, v9

    move-object/from16 v2, p1

    move-wide v8, v3

    .line 846
    invoke-virtual {v2, v12, v13, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    const-wide v17, 0x4056800000000000L    # 90.0

    const-wide v19, -0x3fa9800000000000L    # -90.0

    move-wide v4, v5

    move-wide v6, v14

    move-wide/from16 v35, v8

    move-wide v8, v0

    move-wide/from16 v37, v12

    move-wide/from16 v12, v17

    move-wide/from16 v39, v14

    move-wide/from16 v14, v19

    .line 847
    invoke-virtual/range {v3 .. v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arcContinuous(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    move-wide/from16 v4, v35

    .line 849
    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    move-wide/from16 v6, v37

    .line 850
    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    move-wide/from16 v8, v39

    .line 851
    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 852
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 855
    :goto_3
    aget v3, p2, v16

    cmpl-float v10, v30, v3

    if-nez v10, :cond_4

    aget v10, p3, v16

    cmpl-float v10, v30, v10

    if-eqz v10, :cond_5

    .line 856
    :cond_4
    aget v10, p6, v16

    float-to-double v10, v10

    aget v12, p3, v16

    float-to-double v12, v12

    add-double v19, v10, v12

    .line 857
    aget v10, p5, v16

    float-to-double v10, v10

    float-to-double v12, v3

    sub-double v21, v10, v12

    .line 859
    invoke-virtual {v2, v0, v1, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v16

    const-wide/16 v25, 0x0

    const-wide v27, -0x3fa9800000000000L    # -90.0

    move-wide/from16 v17, v0

    move-wide/from16 v23, v4

    .line 860
    invoke-virtual/range {v16 .. v28}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arcContinuous(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 862
    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 863
    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 864
    invoke-virtual {v3, v0, v1, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 865
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 868
    :cond_5
    aget v3, p2, v29

    cmpl-float v10, v30, v3

    if-nez v10, :cond_6

    aget v10, p3, v29

    cmpl-float v10, v30, v10

    if-eqz v10, :cond_7

    .line 869
    :cond_6
    aget v10, p5, v29

    float-to-double v10, v10

    float-to-double v12, v3

    add-double v18, v10, v12

    .line 870
    aget v3, p6, v29

    float-to-double v10, v3

    aget v3, p3, v29

    float-to-double v12, v3

    add-double v24, v10, v12

    .line 872
    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v17

    const-wide v26, 0x4070e00000000000L    # 270.0

    const-wide v28, -0x3fa9800000000000L    # -90.0

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    .line 873
    invoke-virtual/range {v17 .. v29}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arcContinuous(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 875
    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 876
    invoke-virtual {v3, v0, v1, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    .line 877
    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 878
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_7
    return-void
.end method

.method private createTransformationInsideOccupiedArea()Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 8

    .line 2632
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 2633
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    .line 2634
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    .line 2635
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    .line 2636
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    add-float/2addr v1, v5

    const/high16 v5, -0x40800000    # -1.0f

    mul-float v6, v1, v5

    float-to-double v6, v6

    div-float v4, v3, v4

    add-float/2addr v2, v4

    mul-float/2addr v5, v2

    float-to-double v4, v5

    .line 2638
    invoke-static {v6, v7, v4, v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v4

    const/16 v5, 0x35

    .line 2639
    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/properties/Transform;

    invoke-static {v5, v0, v3}, Lcom/itextpdf/layout/properties/Transform;->getAffineTransform(Lcom/itextpdf/layout/properties/Transform;FF)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->preConcatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    float-to-double v0, v1

    float-to-double v2, v2

    .line 2640
    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->preConcatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    return-object v4
.end method

.method public static createXObject(Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 3

    .line 730
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 731
    new-instance p1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 733
    invoke-virtual {p0, v0, v1, p2}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->buildColor(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 735
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v1, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const/4 p2, 0x1

    .line 736
    invoke-virtual {v1, p0, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/colors/Color;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p0

    .line 737
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p0

    .line 738
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_0
    return-object p1
.end method

.method private decreaseBorderRadiiWithBorders([F[F[F[F[F)[F
    .locals 9

    .line 989
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    const/4 v1, 0x4

    .line 990
    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v5, 0x2

    aput v3, v1, v5

    const/4 v6, 0x3

    aput v3, v1, v6

    .line 992
    aget-object v7, v0, v2

    if-eqz v7, :cond_2

    .line 993
    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    aput v7, v1, v2

    .line 994
    aget v7, p3, v2

    aget-object v8, v0, v2

    invoke-virtual {v8}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v8

    sub-float/2addr v7, v8

    aput v7, p3, v2

    .line 995
    aget v8, p5, v4

    cmpl-float v8, v8, v7

    if-lez v8, :cond_0

    .line 996
    aput v7, p5, v4

    .line 998
    :cond_0
    aget v8, p5, v2

    cmpl-float v8, v8, v7

    if-lez v8, :cond_1

    .line 999
    aput v7, p5, v2

    .line 1001
    :cond_1
    aget v7, p2, v2

    aget-object v8, v0, v2

    invoke-virtual {v8}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    aput v7, p2, v2

    .line 1002
    aget v7, p2, v4

    aget-object v8, v0, v2

    invoke-virtual {v8}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    aput v7, p2, v4

    .line 1004
    :cond_2
    aget-object v7, v0, v4

    if-eqz v7, :cond_5

    .line 1005
    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    aput v7, v1, v4

    .line 1006
    aget v7, p3, v4

    aget-object v8, v0, v4

    invoke-virtual {v8}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v8

    sub-float/2addr v7, v8

    aput v7, p3, v4

    .line 1007
    aget v8, p4, v4

    cmpl-float v8, v8, v7

    if-lez v8, :cond_3

    .line 1008
    aput v7, p4, v4

    .line 1010
    :cond_3
    aget v7, p4, v5

    aget v8, p3, v4

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 1011
    aput v8, p4, v5

    .line 1013
    :cond_4
    aget v7, p1, v4

    aget-object v8, v0, v4

    invoke-virtual {v8}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    aput v7, p1, v4

    .line 1014
    aget v7, p1, v5

    aget-object v4, v0, v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    sub-float/2addr v7, v4

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, p1, v5

    .line 1016
    :cond_5
    aget-object v4, v0, v5

    if-eqz v4, :cond_8

    .line 1017
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    aput v4, v1, v5

    .line 1018
    aget v4, p3, v5

    aget-object v7, v0, v5

    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    add-float/2addr v4, v7

    aput v4, p3, v5

    .line 1019
    aget v7, p5, v5

    cmpg-float v7, v7, v4

    if-gez v7, :cond_6

    .line 1020
    aput v4, p5, v5

    .line 1022
    :cond_6
    aget v4, p5, v6

    aget v7, p3, v5

    cmpg-float v4, v4, v7

    if-gez v4, :cond_7

    .line 1023
    aput v7, p5, v6

    .line 1025
    :cond_7
    aget p5, p2, v5

    aget-object v4, v0, v5

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    sub-float/2addr p5, v4

    invoke-static {v3, p5}, Ljava/lang/Math;->max(FF)F

    move-result p5

    aput p5, p2, v5

    .line 1026
    aget p5, p2, v6

    aget-object v4, v0, v5

    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    sub-float/2addr p5, v4

    invoke-static {v3, p5}, Ljava/lang/Math;->max(FF)F

    move-result p5

    aput p5, p2, v6

    .line 1028
    :cond_8
    aget-object p2, v0, v6

    if-eqz p2, :cond_b

    .line 1029
    invoke-virtual {p2}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p2

    aput p2, v1, v6

    .line 1030
    aget p2, p3, v6

    aget-object p5, v0, v6

    invoke-virtual {p5}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p5

    add-float/2addr p2, p5

    aput p2, p3, v6

    .line 1031
    aget p5, p4, v6

    cmpg-float p5, p5, p2

    if-gez p5, :cond_9

    .line 1032
    aput p2, p4, v6

    .line 1034
    :cond_9
    aget p2, p4, v2

    aget p3, p3, v6

    cmpg-float p2, p2, p3

    if-gez p2, :cond_a

    .line 1035
    aput p3, p4, v2

    .line 1037
    :cond_a
    aget p2, p1, v6

    aget-object p3, v0, v6

    invoke-virtual {p3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, p1, v6

    .line 1038
    aget p2, p1, v2

    aget-object p3, v0, v6

    invoke-virtual {p3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, p1, v2

    :cond_b
    return-object v1
.end method

.method private drawBackgroundImage(Lcom/itextpdf/layout/properties/BackgroundImage;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 12

    .line 612
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 613
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getBackgroundOrigin()Lcom/itextpdf/layout/properties/BackgroundBox;

    move-result-object v1

    .line 612
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBackgroundBoxProperty(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/properties/BackgroundBox;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    .line 615
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    .line 614
    invoke-static {p1, v0, v1}, Lcom/itextpdf/layout/renderer/BackgroundSizeCalculationUtil;->calculateBackgroundImageSize(Lcom/itextpdf/layout/properties/BackgroundImage;FF)[F

    move-result-object v0

    .line 616
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getImage()Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 618
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getForm()Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v1

    :cond_0
    const/4 v2, 0x0

    .line 621
    invoke-static {v2}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v3

    .line 622
    invoke-static {v2}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_2

    .line 624
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getLinearGradientBuilder()Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 629
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getBackgroundPosition()Lcom/itextpdf/layout/properties/BackgroundPosition;

    move-result-object v8

    invoke-virtual {v8, v2, v2, v3, v4}, Lcom/itextpdf/layout/properties/BackgroundPosition;->calculatePositionValues(FFLcom/itextpdf/layout/properties/UnitValue;Lcom/itextpdf/layout/properties/UnitValue;)V

    .line 630
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->createXObject(Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v1

    .line 631
    new-instance v8, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v9

    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v3

    add-float/2addr v9, v3

    .line 632
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v3

    aget v10, v0, v6

    sub-float/2addr v3, v10

    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    sub-float/2addr v3, v4

    aget v4, v0, v5

    aget v0, v0, v6

    invoke-direct {v8, v9, v3, v4, v0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    goto :goto_0

    .line 635
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getBackgroundPosition()Lcom/itextpdf/layout/properties/BackgroundPosition;

    move-result-object v8

    .line 636
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v9

    aget v10, v0, v5

    sub-float/2addr v9, v10

    .line 637
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v10

    aget v11, v0, v6

    sub-float/2addr v10, v11

    .line 635
    invoke-virtual {v8, v9, v10, v3, v4}, Lcom/itextpdf/layout/properties/BackgroundPosition;->calculatePositionValues(FFLcom/itextpdf/layout/properties/UnitValue;Lcom/itextpdf/layout/properties/UnitValue;)V

    .line 638
    new-instance v8, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v9

    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v3

    add-float/2addr v9, v3

    .line 639
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v3

    aget v10, v0, v6

    sub-float/2addr v3, v10

    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    sub-float/2addr v3, v4

    aget v4, v0, v5

    aget v0, v0, v6

    invoke-direct {v8, v9, v3, v4, v0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    :goto_0
    move-object v5, v1

    .line 642
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_4

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    goto :goto_1

    .line 648
    :cond_3
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 649
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getBackgroundClip()Lcom/itextpdf/layout/properties/BackgroundBox;

    move-result-object v1

    .line 648
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBackgroundBoxProperty(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/properties/BackgroundBox;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 650
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 651
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    .line 652
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    .line 655
    invoke-static/range {v2 .. v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawPdfXObject(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/properties/BackgroundImage;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 657
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_2

    .line 643
    :cond_4
    :goto_1
    const-class p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 644
    const-string p2, "background-image"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "The {0} rectangle has negative or zero sizes. It will not be displayed."

    invoke-static {p3, p2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private drawBackgroundImagesList(Ljava/util/List;ZLcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/properties/BackgroundImage;",
            ">;Z",
            "Lcom/itextpdf/layout/renderer/DrawContext;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ")Z"
        }
    .end annotation

    .line 597
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 598
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/BackgroundImage;

    if-eqz v1, :cond_1

    .line 599
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/BackgroundImage;->isBackgroundSpecified()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_0

    .line 602
    invoke-virtual {p0, p3, p4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipBackgroundArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Z

    move-result p2

    .line 604
    :cond_0
    invoke-direct {p0, v1, p3, p4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawBackgroundImage(Lcom/itextpdf/layout/properties/BackgroundImage;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method private drawColorBackground(Lcom/itextpdf/layout/properties/Background;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 11

    .line 572
    new-instance v0, Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Background;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    .line 573
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Background;->getOpacity()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/properties/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 574
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 575
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/properties/TransparentColor;->applyFillTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 576
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Background;->getExtraLeft()F

    move-result p2

    float-to-double v3, p2

    sub-double v3, v0, v3

    .line 577
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Background;->getExtraBottom()F

    move-result p2

    float-to-double v5, p2

    sub-double v5, v0, v5

    .line 578
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p2

    float-to-double v0, p2

    .line 579
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Background;->getExtraLeft()F

    move-result p2

    float-to-double v7, p2

    add-double/2addr v0, v7

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Background;->getExtraRight()F

    move-result p2

    float-to-double v7, p2

    add-double/2addr v7, v0

    .line 580
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p2

    float-to-double p2, p2

    .line 581
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Background;->getExtraTop()F

    move-result v0

    float-to-double v0, v0

    add-double/2addr p2, v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Background;->getExtraBottom()F

    move-result p1

    float-to-double v0, p1

    add-double v9, p2, v0

    .line 576
    invoke-virtual/range {v2 .. v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 581
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method private static drawPdfXObject(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/properties/BackgroundImage;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 10

    .line 664
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getBlendMode()Lcom/itextpdf/layout/properties/BlendMode;

    move-result-object v0

    .line 665
    sget-object v1, Lcom/itextpdf/layout/properties/BlendMode;->NORMAL:Lcom/itextpdf/layout/properties/BlendMode;

    if-eq v0, v1, :cond_0

    .line 666
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    new-instance v2, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>()V

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/BlendMode;->getPdfRepresentation()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setBlendMode(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 668
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getRepeat()Lcom/itextpdf/layout/properties/BackgroundRepeat;

    move-result-object v0

    .line 670
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getBackgroundSize()Lcom/itextpdf/layout/properties/BackgroundSize;

    move-result-object v1

    .line 669
    invoke-virtual {v0, p0, p5, v1}, Lcom/itextpdf/layout/properties/BackgroundRepeat;->prepareRectangleToDrawingAndGetWhitespace(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/properties/BackgroundSize;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object p5

    .line 671
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    const/4 v1, 0x1

    move v7, v1

    move v9, v7

    .line 678
    :goto_0
    invoke-virtual {p5}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    double-to-float v8, v2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 677
    invoke-static/range {v2 .. v8}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawPdfXObjectHorizontally(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/properties/BackgroundImage;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;ZF)V

    .line 680
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    const v2, 0x38d1b717    # 1.0E-4f

    .line 681
    invoke-virtual {p0, p4, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v3

    .line 682
    rem-int/lit8 v4, v9, 0x2

    if-ne v4, v1, :cond_1

    .line 684
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    invoke-virtual {p5}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v5

    double-to-float v5, v5

    add-float/2addr v4, v5

    int-to-float v5, v9

    mul-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 685
    invoke-virtual {v4, p4, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v2

    goto :goto_1

    .line 687
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    invoke-virtual {p5}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v5

    double-to-float v5, v5

    add-float/2addr v4, v5

    int-to-float v5, v9

    mul-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 688
    invoke-virtual {v4, p4, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v2

    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 691
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getRepeat()Lcom/itextpdf/layout/properties/BackgroundRepeat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/BackgroundRepeat;->isNoRepeatOnYAxis()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private static drawPdfXObjectHorizontally(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/properties/BackgroundImage;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;ZF)V
    .locals 6

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    const v2, 0x38d1b717    # 1.0E-4f

    .line 702
    invoke-virtual {p0, p4, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p5, :cond_2

    .line 703
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p5

    invoke-virtual {p5, p3, p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectFittedIntoRectangle(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 p5, 0x0

    .line 706
    :cond_2
    invoke-virtual {p0, p4, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v3

    .line 707
    rem-int/lit8 v4, v1, 0x2

    if-ne v4, v0, :cond_3

    .line 709
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    add-float/2addr v4, p6

    int-to-float v5, v1

    mul-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 710
    invoke-virtual {v4, p4, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v2

    goto :goto_0

    .line 712
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    add-float/2addr v4, p6

    int-to-float v5, v1

    mul-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->moveLeft(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 713
    invoke-virtual {v4, p4, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v2

    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 717
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/BackgroundImage;->getRepeat()Lcom/itextpdf/layout/properties/BackgroundRepeat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/BackgroundRepeat;->isNoRepeatOnXAxis()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    :cond_4
    return-void
.end method

.method private static getBorderRadii(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/properties/BorderRadius;
    .locals 11

    const/16 v0, 0x65

    .line 2796
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/BorderRadius;

    const/16 v1, 0x6e

    .line 2797
    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/properties/BorderRadius;

    const/16 v3, 0x6f

    .line 2798
    invoke-interface {p0, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/properties/BorderRadius;

    const/16 v5, 0x70

    .line 2799
    invoke-interface {p0, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/properties/BorderRadius;

    const/16 v7, 0x71

    .line 2800
    invoke-interface {p0, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/properties/BorderRadius;

    const/4 v9, 0x4

    .line 2802
    new-array v9, v9, [Lcom/itextpdf/layout/properties/BorderRadius;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v2, 0x1

    aput-object v4, v9, v2

    const/4 v4, 0x2

    aput-object v6, v9, v4

    const/4 v6, 0x3

    aput-object v8, v9, v6

    .line 2804
    invoke-static {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2805
    aput-object v0, v9, v10

    .line 2807
    :cond_0
    invoke-static {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2808
    aput-object v0, v9, v2

    .line 2810
    :cond_1
    invoke-static {p0, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2811
    aput-object v0, v9, v4

    .line 2813
    :cond_2
    invoke-static {p0, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 2814
    aput-object v0, v9, v6

    :cond_3
    return-object v9
.end method

.method static getBorders(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/borders/Border;
    .locals 11

    const/16 v0, 0x9

    .line 2525
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/borders/Border;

    const/16 v1, 0xd

    .line 2526
    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/borders/Border;

    const/16 v3, 0xc

    .line 2527
    invoke-interface {p0, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/borders/Border;

    const/16 v5, 0xa

    .line 2528
    invoke-interface {p0, v5}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/borders/Border;

    const/16 v7, 0xb

    .line 2529
    invoke-interface {p0, v7}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/borders/Border;

    const/4 v9, 0x4

    .line 2531
    new-array v9, v9, [Lcom/itextpdf/layout/borders/Border;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v2, 0x1

    aput-object v4, v9, v2

    const/4 v4, 0x2

    aput-object v6, v9, v4

    const/4 v6, 0x3

    aput-object v8, v9, v6

    .line 2533
    invoke-static {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2534
    aput-object v0, v9, v10

    .line 2536
    :cond_0
    invoke-static {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2537
    aput-object v0, v9, v2

    .line 2539
    :cond_1
    invoke-static {p0, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2540
    aput-object v0, v9, v4

    .line 2542
    :cond_2
    invoke-static {p0, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 2543
    aput-object v0, v9, v6

    :cond_3
    return-object v9
.end method

.method private static getMargins(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/properties/UnitValue;
    .locals 3

    const/4 v0, 0x4

    .line 2791
    new-array v0, v0, [Lcom/itextpdf/layout/properties/UnitValue;

    const/16 v1, 0x2e

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x2d

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x2b

    .line 2792
    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x2c

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    return-object v0
.end method

.method private static getPaddings(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/properties/UnitValue;
    .locals 3

    const/4 v0, 0x4

    .line 2821
    new-array v0, v0, [Lcom/itextpdf/layout/properties/UnitValue;

    const/16 v1, 0x32

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x31

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x2f

    .line 2822
    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x30

    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    return-object v0
.end method

.method static getPropertyAsFloat(Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Float;
    .locals 0

    .line 2432
    invoke-interface {p0, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/io/util/NumberUtil;->asFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method static getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/properties/UnitValue;
    .locals 0

    .line 2443
    invoke-interface {p0, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object p0
.end method

.method private static hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z
    .locals 1

    .line 2826
    invoke-interface {p0, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->hasOwnProperty(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p0

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

.method protected static isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1

    const/16 v0, 0x69

    .line 1309
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/BoxSizingPropertyValue;

    if-eqz p0, :cond_0

    .line 1310
    sget-object v0, Lcom/itextpdf/layout/properties/BoxSizingPropertyValue;->BORDER_BOX:Lcom/itextpdf/layout/properties/BoxSizingPropertyValue;

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/properties/BoxSizingPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1326
    sget-object v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-virtual {v0, p0}, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->equals(Ljava/lang/Object;)Z

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

.method protected static isOverflowProperty(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z
    .locals 1

    .line 1322
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

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

.method protected static isOverflowProperty(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/layout/renderer/IRenderer;I)Z
    .locals 0

    .line 1318
    invoke-interface {p1, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-static {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isOverflowProperty(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result p0

    return p0
.end method

.method static noAbsolutePositionInfo(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 1

    const/16 v0, 0x49

    .line 2428
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xe

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x22

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x36

    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static processWaitingDrawing(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/properties/Transform;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "Lcom/itextpdf/layout/properties/Transform;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)V"
        }
    .end annotation

    .line 1379
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 1380
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v0, 0x6a

    .line 1382
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/borders/Border;

    if-eqz v0, :cond_6

    .line 1383
    instance-of v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v1, :cond_6

    .line 1384
    check-cast p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 1385
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isRelativePosition()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1386
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyRelativePositioningTranslation(Z)V

    .line 1387
    :cond_2
    new-instance v1, Lcom/itextpdf/layout/element/Div;

    invoke-direct {v1}, Lcom/itextpdf/layout/element/Div;-><init>()V

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Div;->setNeutralRole()Lcom/itextpdf/layout/element/IElement;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Div;

    if-eqz p1, :cond_3

    const/16 v3, 0x35

    .line 1389
    invoke-virtual {v1, v3, p1}, Lcom/itextpdf/layout/element/Div;->setProperty(ILjava/lang/Object;)V

    :cond_3
    const/16 p1, 0x9

    .line 1390
    invoke-virtual {v1, p1, v0}, Lcom/itextpdf/layout/element/Div;->setProperty(ILjava/lang/Object;)V

    .line 1391
    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/element/Div;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    const/16 v3, 0x6b

    .line 1392
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1393
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v0, v3

    .line 1394
    :cond_4
    new-instance v3, Lcom/itextpdf/layout/renderer/DivRenderer;

    invoke-direct {v3, v1}, Lcom/itextpdf/layout/renderer/DivRenderer;-><init>(Lcom/itextpdf/layout/element/Div;)V

    .line 1395
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/renderer/DivRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1396
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveLeft(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 1397
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    add-float/2addr v5, v0

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1398
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, v3, Lcom/itextpdf/layout/renderer/DivRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 1399
    invoke-virtual {v3, p1}, Lcom/itextpdf/layout/renderer/DivRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {p1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p1

    .line 1400
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    mul-float/2addr p1, v4

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_5

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_5

    .line 1401
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1403
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isRelativePosition()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 1404
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyRelativePositioningTranslation(Z)V

    :cond_6
    return-void
.end method

.method private removeThisFromParent(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2777
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    if-ne p0, v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2778
    invoke-interface {p1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    :cond_0
    return-void
.end method

.method private removeThisFromParents(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)V"
        }
    .end annotation

    .line 2783
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_0

    .line 2784
    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    if-ne p0, v1, :cond_0

    const/4 v1, 0x0

    .line 2785
    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private retrieveDirectParentDeclaredHeight()Ljava/lang/Float;
    .locals 2

    .line 2039
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_0

    const/16 v1, 0x1b

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2040
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    .line 2041
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2042
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private retrieveResolvedParentDeclaredHeight()Ljava/lang/Float;
    .locals 2

    .line 2021
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_1

    const/16 v1, 0x1b

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2022
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    .line 2023
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2024
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 2026
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateMinHeightForAbsolutelyPositionedRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 4

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    const/16 v0, 0x1b

    .line 2569
    invoke-interface {p1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x54

    .line 2570
    invoke-static {p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    const/16 v1, 0x55

    .line 2571
    invoke-static {p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v2

    .line 2572
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    sub-float/2addr v3, p3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p2

    sub-float/2addr v3, p2

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float/2addr v3, p2

    const/4 p2, 0x0

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 2574
    new-instance p4, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {p4, p2, p2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    .line 2575
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p2

    const/4 v3, 0x1

    if-nez p2, :cond_0

    .line 2576
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPaddings(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p2

    invoke-virtual {p0, p4, p2, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2577
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorders(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/borders/Border;

    move-result-object p2

    invoke-virtual {p0, p4, p2, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2579
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMargins(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p2

    invoke-virtual {p0, p4, p2, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2580
    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p2

    sub-float/2addr p3, p2

    if-eqz v2, :cond_1

    .line 2583
    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p3

    :cond_1
    if-eqz v0, :cond_2

    .line 2586
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 2589
    :cond_2
    invoke-static {p3}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method addAllChildRenderers(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)V"
        }
    .end annotation

    .line 2691
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setThisAsParent(Ljava/util/Collection;)V

    .line 2692
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method addAllChildRenderers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2679
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setThisAsParent(Ljava/util/Collection;)V

    .line 2680
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected addAllProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1740
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 4

    const/16 v0, 0x34

    .line 201
    invoke-interface {p1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 202
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 204
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    move-object v0, p0

    .line 206
    :goto_0
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v2, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v2, :cond_1

    .line 207
    move-object v0, v1

    check-cast v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    goto :goto_0

    :cond_1
    if-ne v0, p0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 212
    :cond_2
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_3

    .line 214
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 219
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->noAbsolutePositionInfo(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    move-object v1, p0

    .line 220
    :goto_1
    invoke-virtual {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isPositioned()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    .line 221
    iget-object v2, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 222
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v3, :cond_4

    .line 223
    move-object v1, v2

    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    goto :goto_1

    :cond_4
    if-ne v1, p0, :cond_5

    .line 229
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 231
    :cond_5
    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_3

    .line 203
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_7
    :goto_3
    instance-of v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isPositioned()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 241
    iget-object p1, p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    const/4 v0, 0x0

    .line 242
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 243
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->noAbsolutePositionInfo(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 246
    :cond_8
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    return-void
.end method

.method addChildRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 1

    .line 2665
    invoke-interface {p1, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2666
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected alignChildHorizontally(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 3

    .line 2207
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p2

    const/16 v0, 0x1c

    .line 2208
    invoke-interface {p1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/HorizontalAlignment;

    if-eqz v0, :cond_2

    .line 2209
    sget-object v1, Lcom/itextpdf/layout/properties/HorizontalAlignment;->LEFT:Lcom/itextpdf/layout/properties/HorizontalAlignment;

    if-eq v0, v1, :cond_2

    .line 2210
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-lez v2, :cond_2

    .line 2213
    :try_start_0
    sget-object v2, Lcom/itextpdf/layout/renderer/AbstractRenderer$1;->$SwitchMap$com$itextpdf$layout$properties$HorizontalAlignment:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/HorizontalAlignment;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 2218
    invoke-interface {p1, p2, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_0

    .line 2215
    :cond_1
    invoke-interface {p1, p2, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2222
    :catch_0
    const-class p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 2223
    const-string p2, "Some of the children might not end up aligned horizontally."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Occupied area has not been initialized. {0}"

    invoke-static {v0, p2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected allowLastYLineRecursiveExtraction()Z
    .locals 2

    .line 1774
    sget-object v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->HIDDEN:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isOverflowProperty(Lcom/itextpdf/layout/properties/OverflowPropertyValue;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->HIDDEN:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    const/16 v1, 0x68

    .line 1775
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isOverflowProperty(Lcom/itextpdf/layout/properties/OverflowPropertyValue;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected applyAbsolutePosition(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 8

    const/16 v0, 0x49

    .line 1888
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xe

    .line 1889
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x22

    .line 1890
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0x36

    .line 1891
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    .line 1898
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 1893
    sget-object v6, Lcom/itextpdf/layout/properties/BaseDirection;->RIGHT_TO_LEFT:Lcom/itextpdf/layout/properties/BaseDirection;

    const/4 v7, 0x7

    invoke-virtual {p0, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/properties/BaseDirection;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, v5

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    move-object v0, v5

    :cond_1
    if-eqz v3, :cond_2

    .line 1903
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v5, v3

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v3

    sub-float/2addr v5, v3

    invoke-virtual {p0, v5, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->move(FF)V

    :cond_2
    if-eqz v2, :cond_3

    .line 1907
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->move(FF)V

    :cond_3
    if-eqz v0, :cond_4

    .line 1911
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    sub-float/2addr v2, v0

    invoke-virtual {p0, v4, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->move(FF)V

    :cond_4
    if-eqz v1, :cond_5

    .line 1915
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, v4, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->move(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1918
    :catch_0
    const-class p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 1919
    const-string v0, "Absolute positioning might be applied incorrectly."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Occupied area has not been initialized. {0}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method applyAbsolutePositionIfNeeded(Lcom/itextpdf/layout/layout/LayoutContext;)V
    .locals 1

    .line 2550
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isAbsolutePosition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2551
    instance-of v0, p1, Lcom/itextpdf/layout/layout/PositionedLayoutContext;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/itextpdf/layout/layout/PositionedLayoutContext;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/PositionedLayoutContext;->getParentOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyAbsolutePosition(Lcom/itextpdf/kernel/geom/Rectangle;)V

    :cond_1
    return-void
.end method

.method protected applyAction(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 8

    const/4 p1, 0x1

    .line 1964
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    if-eqz v0, :cond_2

    const/16 v1, 0x58

    .line 1966
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    if-nez v2, :cond_1

    .line 1968
    new-instance v2, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setFlags(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    const/16 v3, 0x9

    .line 1969
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/borders/Border;

    const/4 v5, 0x3

    if-eqz v3, :cond_0

    .line 1971
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v3}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    new-array v5, v5, [F

    const/4 v7, 0x0

    aput v4, v5, v7

    aput v4, v5, p1

    const/4 p1, 0x2

    aput v3, v5, p1

    invoke-direct {v6, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setBorder(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_0

    .line 1973
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-direct {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v2, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setBorder(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 1975
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    .line 1977
    :cond_1
    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setAction(Lcom/itextpdf/kernel/pdf/action/PdfAction;)Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 1281
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    .line 1282
    invoke-virtual {p0, p1, v0, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method protected applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 8

    const/4 v0, 0x0

    .line 1880
    aget-object v0, p2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v0, 0x1

    .line 1881
    aget-object v0, p2, v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    const/4 v0, 0x2

    .line 1882
    aget-object v0, p2, v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    const/4 v0, 0x3

    .line 1883
    aget-object p2, p2, v0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    :cond_3
    move v6, v1

    move-object v2, p1

    move v7, p3

    .line 1884
    invoke-virtual/range {v2 .. v7}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method protected applyDestination(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 6

    const/16 v0, 0x11

    .line 1940
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1942
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 1943
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v3

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 1951
    :cond_0
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1952
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1953
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->XYZ:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1954
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {v2, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1955
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-direct {v2, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1956
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1957
    invoke-virtual {v3, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNamedDestination(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1959
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->deleteProperty(I)V

    goto :goto_1

    .line 1944
    :cond_1
    :goto_0
    const-class p1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 1946
    const-string v0, "Unable to apply page dependent property, because the page on which element is drawn is unknown. Usually this means that element was added to the Canvas instance that was created not with constructor taking PdfPage as argument. Not processed property: {0}"

    const-string v1, "Property.DESTINATION, which specifies this element location as destination, see ElementPropertyContainer.setDestination."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected applyDestinationsAndAnnotation(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 1

    .line 1303
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyDestination(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 1304
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyAction(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 1305
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyLinkAnnotation(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method

.method protected applyLinkAnnotation(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 5

    .line 1982
    const-class v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const/16 v1, 0x58

    .line 1983
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    if-eqz v1, :cond_3

    .line 1985
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    .line 1986
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v3

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 1996
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1997
    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    .line 1998
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculateAbsolutePdfBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    .line 1999
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->setRectangle(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2001
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    .line 2004
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2005
    const-string p1, "link annotation applying"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Page was flushed. {0} will not be performed."

    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 2008
    :cond_1
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    goto :goto_1

    .line 1988
    :cond_2
    :goto_0
    const-string p1, "Unable to apply page dependent property, because the page on which element is drawn is unknown. Usually this means that element was added to the Canvas instance that was created not with constructor taking PdfPage as argument. Not processed property: {0}"

    const-string v1, "Property.LINK_ANNOTATION, which specifies a link associated with this element content area, see com.itextpdf.layout.element.Link."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 1267
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMargins()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method protected applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 12

    const/4 v0, 0x0

    .line 1788
    aget-object v1, p2, v0

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v1

    const-string v2, "Property {0} in percents is not supported"

    const-class v3, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-nez v1, :cond_0

    .line 1789
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    const/16 v4, 0x2e

    .line 1791
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 1790
    invoke-static {v2, v4}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    .line 1793
    aget-object v4, p2, v1

    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1794
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    const/16 v5, 0x2d

    .line 1796
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 1795
    invoke-static {v2, v5}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x2

    .line 1798
    aget-object v5, p2, v4

    invoke-virtual {v5}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1799
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    const/16 v6, 0x2b

    .line 1801
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 1800
    invoke-static {v2, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_2
    const/4 v5, 0x3

    .line 1803
    aget-object v6, p2, v5

    invoke-virtual {v6}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1804
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    const/16 v6, 0x2c

    .line 1806
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 1805
    invoke-static {v2, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1808
    :cond_3
    aget-object v0, p2, v0

    .line 1809
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v7

    aget-object v0, p2, v1

    .line 1810
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v8

    aget-object v0, p2, v4

    .line 1811
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v9

    aget-object p2, p2, v5

    .line 1812
    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v10

    move-object v6, p1

    move v11, p3

    .line 1808
    invoke-virtual/range {v6 .. v11}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method applyMarginsBordersPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    .line 1251
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1252
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1253
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    return-object p1
.end method

.method public applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 1295
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPaddings()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method protected applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 12

    const/4 v0, 0x0

    .line 1843
    aget-object v1, p2, v0

    const-string v2, "Property {0} in percents is not supported"

    const-class v3, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1844
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    const/16 v4, 0x32

    .line 1846
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 1845
    invoke-static {v2, v4}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    .line 1848
    aget-object v4, p2, v1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1849
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    const/16 v5, 0x31

    .line 1851
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 1850
    invoke-static {v2, v5}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x2

    .line 1853
    aget-object v5, p2, v4

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1854
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    const/16 v6, 0x2f

    .line 1856
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 1855
    invoke-static {v2, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_2
    const/4 v5, 0x3

    .line 1858
    aget-object v6, p2, v5

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1859
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    const/16 v6, 0x30

    .line 1861
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 1860
    invoke-static {v2, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1863
    :cond_3
    aget-object v0, p2, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    move v7, v0

    goto :goto_0

    :cond_4
    move v7, v2

    :goto_0
    aget-object v0, p2, v1

    if-eqz v0, :cond_5

    .line 1864
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    move v8, v0

    goto :goto_1

    :cond_5
    move v8, v2

    :goto_1
    aget-object v0, p2, v4

    if-eqz v0, :cond_6

    .line 1865
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    :cond_6
    move v9, v2

    aget-object p2, p2, v5

    if-eqz p2, :cond_7

    .line 1866
    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p2

    goto :goto_2

    :cond_7
    const/high16 p2, 0x40400000    # 3.0f

    :goto_2
    move v10, p2

    move-object v6, p1

    move v11, p3

    .line 1863
    invoke-virtual/range {v6 .. v11}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method protected applyRelativePositioningTranslation(Z)V
    .locals 6

    const/4 v0, 0x0

    .line 1925
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x49

    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/16 v3, 0xe

    .line 1926
    invoke-virtual {p0, v3, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/16 v4, 0x22

    .line 1927
    invoke-virtual {p0, v4, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/16 v5, 0x36

    .line 1928
    invoke-virtual {p0, v5, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    cmpl-float v5, v4, v0

    if-eqz v5, :cond_1

    int-to-float v1, p1

    mul-float/2addr v4, v1

    goto :goto_1

    :cond_1
    neg-float v1, v1

    int-to-float v4, p1

    mul-float/2addr v4, v1

    :goto_1
    cmpl-float v1, v2, v0

    if-eqz v1, :cond_2

    neg-float v1, v2

    int-to-float p1, p1

    mul-float/2addr v1, p1

    goto :goto_2

    :cond_2
    int-to-float p1, p1

    mul-float v1, v3, p1

    :goto_2
    cmpl-float p1, v4, v0

    if-nez p1, :cond_3

    cmpl-float p1, v1, v0

    if-eqz p1, :cond_4

    .line 1936
    :cond_3
    invoke-virtual {p0, v4, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->move(FF)V

    :cond_4
    return-void
.end method

.method protected beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 3

    const/16 v0, 0x5c

    .line 508
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 510
    new-instance v1, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>()V

    .line 512
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setStrokeOpacity(F)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    move-result-object v2

    .line 513
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->setFillOpacity(F)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    .line 514
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 515
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 516
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_0
    return-void
.end method

.method protected beginTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1

    const/16 v0, 0x35

    .line 2646
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2647
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->createTransformationInsideOccupiedArea()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    .line 2648
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_0
    return-void
.end method

.method protected calculateAbsolutePdfBBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4

    .line 2282
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 2283
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->rectangleToPointsList(Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/util/List;

    move-result-object v0

    move-object v1, p0

    .line 2285
    :goto_0
    iget-object v2, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v2, :cond_3

    .line 2286
    instance-of v2, v1, Lcom/itextpdf/layout/renderer/BlockRenderer;

    if-eqz v2, :cond_0

    const/16 v3, 0x37

    .line 2287
    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v3, :cond_0

    .line 2289
    move-object v3, v1

    check-cast v3, Lcom/itextpdf/layout/renderer/BlockRenderer;

    .line 2290
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createRotationTransformInsideOccupiedArea()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v3

    .line 2291
    invoke-virtual {p0, v0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->transformPoints(Ljava/util/List;Lcom/itextpdf/kernel/geom/AffineTransform;)Ljava/util/List;

    :cond_0
    const/16 v3, 0x35

    .line 2295
    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    .line 2296
    instance-of v2, v1, Lcom/itextpdf/layout/renderer/ImageRenderer;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v2, :cond_2

    .line 2297
    :cond_1
    invoke-direct {v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->createTransformationInsideOccupiedArea()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v2

    .line 2298
    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->transformPoints(Ljava/util/List;Lcom/itextpdf/kernel/geom/AffineTransform;)Ljava/util/List;

    .line 2301
    :cond_2
    iget-object v1, v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    check-cast v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    goto :goto_0

    .line 2304
    :cond_3
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method protected calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/Rectangle;"
        }
    .end annotation

    .line 2314
    invoke-static {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method protected calculateShiftToPositionBBoxOfPointsAt(FFLjava/util/List;)[F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;)[F"
        }
    .end annotation

    .line 2342
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v2, -0x10000000000001L

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/geom/Point;

    .line 2343
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v5

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 2344
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto :goto_0

    :cond_0
    float-to-double v4, p1

    sub-double/2addr v4, v0

    double-to-float p1, v4

    float-to-double p2, p2

    sub-double/2addr p2, v2

    double-to-float p2, p2

    const/4 p3, 0x2

    .line 2349
    new-array p3, p3, [F

    const/4 v0, 0x0

    aput p1, p3, v0

    const/4 p1, 0x1

    aput p2, p3, p1

    return-object p3
.end method

.method protected clipBackgroundArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 759
    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;ZZZZ)Z

    move-result p1

    return p1
.end method

.method protected clipBackgroundArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;Z)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 763
    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;ZZZZ)Z

    move-result p1

    return p1
.end method

.method protected clipBorderArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 755
    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;ZZZZ)Z

    move-result p1

    return p1
.end method

.method createFontCharacteristics()Lcom/itextpdf/layout/font/FontCharacteristics;
    .locals 3

    .line 2468
    new-instance v0, Lcom/itextpdf/layout/font/FontCharacteristics;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontCharacteristics;-><init>()V

    const/16 v1, 0x5f

    .line 2469
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2470
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/font/FontCharacteristics;->setFontWeight(Ljava/lang/String;)Lcom/itextpdf/layout/font/FontCharacteristics;

    :cond_0
    const/16 v1, 0x5e

    .line 2472
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2473
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/font/FontCharacteristics;->setFontStyle(Ljava/lang/String;)Lcom/itextpdf/layout/font/FontCharacteristics;

    :cond_1
    return-object v0
.end method

.method public deleteOwnProperty(I)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deleteProperty(I)V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    if-eqz v0, :cond_1

    .line 317
    invoke-interface {v0, p1}, Lcom/itextpdf/layout/IPropertyContainer;->deleteOwnProperty(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 2

    .line 486
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyDestinationsAndAnnotation(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 488
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isRelativePosition()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 490
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyRelativePositioningTranslation(Z)V

    .line 493
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 494
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 495
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 496
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 497
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawPositionedChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 498
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    const/4 p1, 0x1

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyRelativePositioningTranslation(Z)V

    .line 504
    :cond_1
    iput-boolean p1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->flushed:Z

    return-void
.end method

.method public drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 7

    const/4 v0, 0x6

    .line 534
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/Background;

    const/16 v1, 0x5a

    .line 535
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v0, :cond_0

    if-eqz v1, :cond_7

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 539
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 541
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;-><init>()V

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_1
    const/4 v4, 0x0

    .line 543
    invoke-virtual {p0, v2, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBackgroundArea(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 544
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-lez v5, :cond_5

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 552
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 553
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/Background;->getBackgroundClip()Lcom/itextpdf/layout/properties/BackgroundBox;

    move-result-object v5

    .line 552
    invoke-direct {p0, v4, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBackgroundBoxProperty(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/properties/BackgroundBox;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 554
    invoke-virtual {p0, p1, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipBackgroundArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Z

    move-result v5

    .line 555
    invoke-direct {p0, v0, p1, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawColorBackground(Lcom/itextpdf/layout/properties/Background;Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)V

    move v4, v5

    :cond_3
    if-eqz v1, :cond_4

    .line 558
    invoke-direct {p0, v1, v4, p1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->drawBackgroundImagesList(Ljava/util/List;ZLcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Z

    move-result v4

    :cond_4
    if-eqz v4, :cond_6

    .line 562
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 545
    :cond_5
    :goto_0
    const-class v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 546
    const-string v1, "background"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The {0} rectangle has negative or zero sizes. It will not be displayed."

    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_6
    :goto_1
    if-eqz v3, :cond_7

    .line 566
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_7
    return-void
.end method

.method public drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 33

    move-object/from16 v0, p0

    .line 1073
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    .line 1076
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v2, :cond_2

    aget-object v7, v1, v4

    if-nez v5, :cond_1

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move v5, v3

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v6

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_18

    .line 1080
    aget-object v2, v1, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v4

    .line 1081
    :goto_3
    aget-object v5, v1, v6

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v5

    goto :goto_4

    :cond_4
    move v5, v4

    :goto_4
    const/16 v20, 0x2

    .line 1082
    aget-object v7, v1, v20

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    move/from16 v21, v7

    goto :goto_5

    :cond_5
    move/from16 v21, v4

    :goto_5
    const/16 v22, 0x3

    .line 1083
    aget-object v7, v1, v22

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v7

    move/from16 v23, v7

    goto :goto_6

    :cond_6
    move/from16 v23, v4

    .line 1085
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorderAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    .line 1086
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    cmpg-float v8, v8, v4

    if-ltz v8, :cond_17

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    cmpg-float v8, v8, v4

    if-gez v8, :cond_7

    goto/16 :goto_10

    .line 1091
    :cond_7
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v24

    .line 1092
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v25

    .line 1093
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v8

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v9

    add-float v26, v8, v9

    .line 1094
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v8

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    add-float v27, v8, v7

    .line 1096
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v28

    .line 1097
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v15

    if-eqz v28, :cond_8

    .line 1099
    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;

    invoke-direct {v7}, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;-><init>()V

    invoke-virtual {v15, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1102
    :cond_8
    iget-object v7, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMargins()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v8

    invoke-virtual {v0, v7, v8, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    move-object/from16 v14, p1

    .line 1103
    invoke-virtual {v0, v14, v7}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->clipBorderArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Z

    move-result v29

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorderRadii()[Lcom/itextpdf/layout/properties/BorderRadius;

    move-result-object v8

    .line 1105
    invoke-direct {v0, v8, v7, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculateRadii([Lcom/itextpdf/layout/properties/BorderRadius;Lcom/itextpdf/kernel/geom/Rectangle;Z)[F

    move-result-object v30

    .line 1106
    invoke-direct {v0, v8, v7, v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculateRadii([Lcom/itextpdf/layout/properties/BorderRadius;Lcom/itextpdf/kernel/geom/Rectangle;Z)[F

    move-result-object v31

    move v8, v3

    :goto_7
    const/4 v9, 0x4

    if-ge v8, v9, :cond_9

    .line 1108
    aget v9, v30, v8

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    aput v9, v30, v8

    .line 1109
    aget v9, v31, v8

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v10

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    aput v9, v31, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1111
    :cond_9
    aget-object v7, v1, v3

    if-eqz v7, :cond_c

    .line 1112
    aget v13, v31, v3

    cmpl-float v8, v4, v13

    if-nez v8, :cond_b

    aget v8, v30, v3

    cmpl-float v8, v4, v8

    if-nez v8, :cond_b

    aget v8, v31, v6

    cmpl-float v8, v4, v8

    if-nez v8, :cond_b

    aget v8, v30, v6

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_a

    goto :goto_8

    .line 1115
    :cond_a
    sget-object v13, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    move-object v8, v15

    move/from16 v9, v24

    move/from16 v10, v27

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v14, v23

    move-object/from16 v32, v15

    move v15, v5

    invoke-virtual/range {v7 .. v15}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_9

    :cond_b
    :goto_8
    move-object/from16 v32, v15

    .line 1113
    aget v14, v30, v3

    aget v15, v31, v6

    aget v16, v30, v6

    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v8, v32

    move/from16 v9, v24

    move/from16 v10, v27

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v18, v23

    move/from16 v19, v5

    invoke-virtual/range {v7 .. v19}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_9

    :cond_c
    move-object/from16 v32, v15

    .line 1118
    :goto_9
    aget-object v7, v1, v6

    if-eqz v7, :cond_f

    .line 1119
    aget v13, v31, v6

    cmpl-float v8, v4, v13

    if-nez v8, :cond_e

    aget v8, v30, v6

    cmpl-float v8, v4, v8

    if-nez v8, :cond_e

    aget v8, v31, v20

    cmpl-float v8, v4, v8

    if-nez v8, :cond_e

    aget v8, v30, v20

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_d

    goto :goto_a

    .line 1122
    :cond_d
    sget-object v13, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v8, v32

    move/from16 v9, v26

    move/from16 v10, v27

    move/from16 v11, v26

    move/from16 v12, v25

    move v14, v2

    move/from16 v15, v21

    invoke-virtual/range {v7 .. v15}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_b

    .line 1120
    :cond_e
    :goto_a
    aget v14, v30, v6

    aget v15, v31, v20

    aget v16, v30, v20

    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v8, v32

    move/from16 v9, v26

    move/from16 v10, v27

    move/from16 v11, v26

    move/from16 v12, v25

    move/from16 v18, v2

    move/from16 v19, v21

    invoke-virtual/range {v7 .. v19}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 1125
    :cond_f
    :goto_b
    aget-object v7, v1, v20

    if-eqz v7, :cond_12

    .line 1126
    aget v13, v31, v20

    cmpl-float v6, v4, v13

    if-nez v6, :cond_11

    aget v6, v30, v20

    cmpl-float v6, v4, v6

    if-nez v6, :cond_11

    aget v6, v31, v22

    cmpl-float v6, v4, v6

    if-nez v6, :cond_11

    aget v6, v30, v22

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_10

    goto :goto_c

    .line 1129
    :cond_10
    sget-object v13, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v8, v32

    move/from16 v9, v26

    move/from16 v10, v25

    move/from16 v11, v24

    move/from16 v12, v25

    move v14, v5

    move/from16 v15, v23

    invoke-virtual/range {v7 .. v15}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_d

    .line 1127
    :cond_11
    :goto_c
    aget v14, v30, v20

    aget v15, v31, v22

    aget v16, v30, v22

    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v8, v32

    move/from16 v9, v26

    move/from16 v10, v25

    move/from16 v11, v24

    move/from16 v12, v25

    move/from16 v18, v5

    move/from16 v19, v23

    invoke-virtual/range {v7 .. v19}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 1132
    :cond_12
    :goto_d
    aget-object v7, v1, v22

    if-eqz v7, :cond_15

    .line 1133
    aget v13, v31, v22

    cmpl-float v1, v4, v13

    if-nez v1, :cond_14

    aget v1, v30, v22

    cmpl-float v1, v4, v1

    if-nez v1, :cond_14

    aget v1, v31, v3

    cmpl-float v1, v4, v1

    if-nez v1, :cond_14

    aget v1, v30, v3

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_13

    goto :goto_e

    .line 1136
    :cond_13
    sget-object v13, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v8, v32

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v24

    move/from16 v12, v27

    move/from16 v14, v21

    move v15, v2

    invoke-virtual/range {v7 .. v15}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    goto :goto_f

    .line 1134
    :cond_14
    :goto_e
    aget v14, v30, v22

    aget v15, v31, v3

    aget v16, v30, v3

    sget-object v17, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    move-object/from16 v8, v32

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v24

    move/from16 v12, v27

    move/from16 v18, v21

    move/from16 v19, v2

    invoke-virtual/range {v7 .. v19}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    :cond_15
    :goto_f
    if-eqz v29, :cond_16

    .line 1141
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_16
    if-eqz v28, :cond_18

    .line 1145
    invoke-virtual/range {v32 .. v32}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_11

    .line 1087
    :cond_17
    :goto_10
    const-class v1, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 1088
    const-string v2, "border"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The {0} rectangle has negative size. It will not be displayed."

    invoke-static {v3, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_18
    :goto_11
    return-void
.end method

.method public drawChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 6

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v3, 0x35

    .line 1052
    invoke-interface {v2, v3}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/properties/Transform;

    .line 1053
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getRootRenderer()Lcom/itextpdf/layout/renderer/RootRenderer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1054
    iget-object v5, v4, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingDrawingElements:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v4, v4, Lcom/itextpdf/layout/renderer/RootRenderer;->waitingDrawingElements:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v4, v0

    .line 1055
    :goto_1
    invoke-static {v2, v3, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->processWaitingDrawing(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/properties/Transform;Ljava/util/List;)V

    .line 1056
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 1057
    invoke-interface {v2, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    goto :goto_0

    .line 1060
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1061
    invoke-interface {v1, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method drawPositionedChildren(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 2

    .line 2462
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2463
    invoke-interface {v1, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 2

    const/16 v0, 0x5c

    .line 521
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 523
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_0
    return-void
.end method

.method protected endTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1

    const/16 v0, 0x35

    .line 2653
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2654
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_0
    return-void
.end method

.method getAspectRatio()Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBackgroundArea(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    return-object p1
.end method

.method public getBorderAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 1228
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v1, 0x0

    .line 1229
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1230
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method protected getBorderRadii()[Lcom/itextpdf/layout/properties/BorderRadius;
    .locals 1

    .line 2251
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorderRadii(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/properties/BorderRadius;

    move-result-object v0

    return-object v0
.end method

.method protected getBorders()[Lcom/itextpdf/layout/borders/Border;
    .locals 1

    .line 2239
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getBorders(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/borders/Border;

    move-result-object v0

    return-object v0
.end method

.method public getChildRenderers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultProperty(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getFirstYLineRecursively()Ljava/lang/Float;
    .locals 2

    .line 1751
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getFirstYLineRecursively()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getInnerAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 1235
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v1, 0x0

    .line 1236
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1237
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1238
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method protected getLastYLineRecursively()Ljava/lang/Float;
    .locals 4

    .line 1758
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->allowLastYLineRecursiveExtraction()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1761
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1762
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1763
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v3, :cond_1

    .line 1764
    check-cast v2, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getLastYLineRecursively()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected getMargins()[Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    .line 1821
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getMargins(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    return-object v0
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 1

    .line 2131
    invoke-static {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->countDefaultMinMaxWidth(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    return-object v0
.end method

.method public getModelElement()Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    return-object v0
.end method

.method public getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 1218
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method protected getOwnProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1736
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getOwnProperty(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getPaddings()[Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    .line 1830
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPaddings(Lcom/itextpdf/layout/renderer/IRenderer;)[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 1177
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    return-object v0
.end method

.method getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 2

    .line 2397
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getRootRenderer()Lcom/itextpdf/layout/renderer/RootRenderer;

    move-result-object v0

    .line 2398
    instance-of v1, v0, Lcom/itextpdf/layout/renderer/DocumentRenderer;

    if-eqz v1, :cond_0

    .line 2399
    check-cast v0, Lcom/itextpdf/layout/renderer/DocumentRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/DocumentRenderer;->document:Lcom/itextpdf/layout/Document;

    .line 2400
    invoke-virtual {v0}, Lcom/itextpdf/layout/Document;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    return-object v0

    .line 2401
    :cond_0
    instance-of v1, v0, Lcom/itextpdf/layout/renderer/CanvasRenderer;

    if-eqz v1, :cond_1

    .line 2402
    check-cast v0, Lcom/itextpdf/layout/renderer/CanvasRenderer;

    iget-object v0, v0, Lcom/itextpdf/layout/renderer/CanvasRenderer;->canvas:Lcom/itextpdf/layout/Canvas;

    invoke-virtual {v0}, Lcom/itextpdf/layout/Canvas;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    invoke-interface {v1, p1}, Lcom/itextpdf/layout/IPropertyContainer;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-object v0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/itextpdf/layout/properties/Property;->isPropertyInherited(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v0, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 337
    :cond_3
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 341
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/itextpdf/layout/IPropertyContainer;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_6
    :goto_1
    return-object v0
.end method

.method public getProperty(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(ITT1;)TT1;"
        }
    .end annotation

    .line 357
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public getPropertyAsBoolean(I)Ljava/lang/Boolean;
    .locals 0

    .line 435
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public getPropertyAsColor(I)Lcom/itextpdf/kernel/colors/Color;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/colors/Color;

    return-object p1
.end method

.method public getPropertyAsFloat(I)Ljava/lang/Float;
    .locals 0

    .line 414
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/io/util/NumberUtil;->asFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/io/util/NumberUtil;->asFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyAsFont(I)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 0

    .line 384
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/font/PdfFont;

    return-object p1
.end method

.method public getPropertyAsInteger(I)Ljava/lang/Integer;
    .locals 0

    .line 455
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/io/util/NumberUtil;->asInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyAsTransparentColor(I)Lcom/itextpdf/layout/properties/TransparentColor;
    .locals 0

    .line 404
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/properties/TransparentColor;

    return-object p1
.end method

.method public getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;
    .locals 0

    .line 445
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/properties/UnitValue;

    return-object p1
.end method

.method getRootRenderer()Lcom/itextpdf/layout/renderer/RootRenderer;
    .locals 2

    move-object v0, p0

    .line 2410
    :goto_0
    instance-of v1, v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v1, :cond_1

    .line 2411
    instance-of v1, v0, Lcom/itextpdf/layout/renderer/RootRenderer;

    if-eqz v1, :cond_0

    .line 2412
    check-cast v0, Lcom/itextpdf/layout/renderer/RootRenderer;

    return-object v0

    .line 2414
    :cond_0
    check-cast v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected hasAbsoluteUnitValue(I)Z
    .locals 0

    .line 2359
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz p1, :cond_0

    .line 2360
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method hasAspectRatio()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasOwnOrModelProperty(I)Z
    .locals 0

    .line 295
    invoke-static {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnOrModelProperty(Lcom/itextpdf/layout/renderer/IRenderer;I)Z

    move-result p1

    return p1
.end method

.method public hasOwnProperty(I)Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasProperty(I)Z
    .locals 1

    .line 274
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasOwnProperty(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0, p1}, Lcom/itextpdf/layout/IPropertyContainer;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_1

    .line 276
    invoke-static {p1}, Lcom/itextpdf/layout/properties/Property;->isPropertyInherited(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v0, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected hasRelativeUnitValue(I)Z
    .locals 0

    .line 2370
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz p1, :cond_0

    .line 2371
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public initElementAreas(Lcom/itextpdf/layout/layout/LayoutArea;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/layout/LayoutArea;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;"
        }
    .end annotation

    .line 1208
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected isAbsolutePosition()Z
    .locals 2

    const/16 v0, 0x34

    .line 2190
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    .line 2191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFirstOnRootArea()Z
    .locals 1

    const/4 v0, 0x0

    .line 1299
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isFirstOnRootArea(Z)Z

    move-result v0

    return v0
.end method

.method isFirstOnRootArea(Z)Z
    .locals 4

    const/4 v0, 0x1

    move-object v2, p0

    :goto_0
    move v1, v0

    :cond_0
    :goto_1
    if-eqz v1, :cond_4

    .line 2377
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2378
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    .line 2379
    instance-of v3, v2, Lcom/itextpdf/layout/renderer/RootRenderer;

    if-eqz v3, :cond_1

    .line 2380
    move-object v1, v2

    check-cast v1, Lcom/itextpdf/layout/renderer/RootRenderer;

    iget-object v1, v1, Lcom/itextpdf/layout/renderer/RootRenderer;->currentArea:Lcom/itextpdf/layout/layout/RootLayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/RootLayoutArea;->isEmptyArea()Z

    move-result v1

    goto :goto_1

    .line 2381
    :cond_1
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    if-nez p1, :cond_0

    .line 2384
    invoke-interface {v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    const v3, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method protected isFixedLayout()Z
    .locals 2

    const/16 v0, 0x34

    .line 2175
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    .line 2176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFlushed()Z
    .locals 1

    .line 1160
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->flushed:Z

    return v0
.end method

.method protected isKeepTogether()Z
    .locals 1

    const/4 v0, 0x0

    .line 2195
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isKeepTogether(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    return v0
.end method

.method isKeepTogether(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 2

    .line 2199
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lcom/itextpdf/layout/renderer/AreaBreakRenderer;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isNotFittingHeight(Lcom/itextpdf/layout/layout/LayoutArea;)Z
    .locals 1

    .line 2149
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isPositioned()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isNotFittingLayoutArea(Lcom/itextpdf/layout/layout/LayoutArea;)Z
    .locals 1

    .line 2157
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isNotFittingHeight(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isNotFittingWidth(Lcom/itextpdf/layout/layout/LayoutArea;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected isNotFittingWidth(Lcom/itextpdf/layout/layout/LayoutArea;)Z
    .locals 1

    .line 2153
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isPositioned()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isOverflowProperty(Lcom/itextpdf/layout/properties/OverflowPropertyValue;I)Z
    .locals 0

    .line 1314
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-static {p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isOverflowProperty(Lcom/itextpdf/layout/properties/OverflowPropertyValue;Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result p1

    return p1
.end method

.method protected isPositioned()Z
    .locals 1

    .line 2166
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isStaticLayout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isRelativePosition()Z
    .locals 2

    const/16 v0, 0x34

    .line 2185
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    .line 2186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isStaticLayout()Z
    .locals 3

    const/16 v0, 0x34

    .line 2180
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method logWarningIfGetNextRendererNotOverridden(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eq p1, p2, :cond_0

    .line 2767
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 2768
    const-string p2, "If a renderer overflows, iText uses this method to create another renderer for the overflow part. So if one wants to extend the renderer, one should override this method: otherwise the default method will be used and thus the default rather than the custom renderer will be created."

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public move(FF)V
    .locals 2

    .line 1185
    const-class v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 1186
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    if-nez v1, :cond_0

    .line 1187
    const-string p1, "Moving won\'t be performed."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Occupied area has not been initialized. {0}"

    invoke-static {p2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 1191
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1192
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1193
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1194
    invoke-interface {v1, p1, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_0

    .line 1196
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->positionedRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1197
    invoke-interface {v1, p1, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method preparePositionedRendererAndAreaForLayout(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 4

    const/16 v0, 0x22

    .line 2556
    invoke-static {p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x36

    .line 2557
    invoke-static {p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x49

    .line 2558
    invoke-static {p1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0xe

    .line 2559
    invoke-static {p1, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Float;

    move-result-object v3

    .line 2560
    invoke-interface {p1, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2561
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->adjustPositionedRendererLayoutBoxWidth(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/lang/Float;)V

    const/4 p2, 0x3

    .line 2563
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x34

    invoke-interface {p1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2564
    invoke-direct {p0, p1, p3, v2, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateMinHeightForAbsolutelyPositionedRenderer(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/lang/Float;)V

    :cond_0
    return-void
.end method

.method protected rectangleToPointsList(Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    .line 2318
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->toPointsArray()[Lcom/itextpdf/kernel/geom/Point;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method removeAllChildRenderers(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)Z"
        }
    .end annotation

    .line 2733
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->removeThisFromParents(Ljava/util/Collection;)V

    .line 2734
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method removeChildRenderer(I)Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 2719
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2720
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->removeThisFromParent(Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object p1
.end method

.method replaceOwnProperty(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)TT;"
        }
    .end annotation

    .line 1338
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 1339
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    return-object v0
.end method

.method resolveFirstPdfFont()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 5

    const/16 v0, 0x14

    .line 2489
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 2490
    instance-of v1, v0, Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_0

    .line 2491
    check-cast v0, Lcom/itextpdf/kernel/font/PdfFont;

    return-object v0

    .line 2492
    :cond_0
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_4

    const/16 v1, 0x5b

    .line 2493
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/font/FontProvider;

    .line 2494
    const-string v2, "FontProvider and FontSet are empty. Cannot resolve font family name (see ElementPropertyContainer#setFontFamily) without initialized FontProvider (see RootElement#setFontProvider)."

    if-eqz v1, :cond_3

    const/16 v3, 0x62

    .line 2498
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/font/FontSet;

    .line 2499
    invoke-virtual {v1}, Lcom/itextpdf/layout/font/FontProvider;->getFontSet()Lcom/itextpdf/layout/font/FontSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/font/FontSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/itextpdf/layout/font/FontSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 2500
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2503
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->createFontCharacteristics()Lcom/itextpdf/layout/font/FontCharacteristics;

    move-result-object v2

    .line 2504
    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->resolveFirstPdfFont([Ljava/lang/String;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0

    .line 2495
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2506
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "String[] or PdfFont expected as value of FONT property"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resolveFirstPdfFont([Ljava/lang/String;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 0

    .line 2520
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1, p3, p4}, Lcom/itextpdf/layout/font/FontProvider;->getFontSelector(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelector;

    move-result-object p1

    .line 2521
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontSelector;->bestMatch()Lcom/itextpdf/layout/font/FontInfo;

    move-result-object p1

    invoke-virtual {p2, p1, p4}, Lcom/itextpdf/layout/font/FontProvider;->getPdfFont(Lcom/itextpdf/layout/font/FontInfo;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    return-object p1
.end method

.method protected retrieveHeight()Ljava/lang/Float;
    .locals 7

    const/16 v0, 0x1b

    .line 1517
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    .line 1518
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveResolvedParentDeclaredHeight()Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    const/16 v4, 0x54

    const/16 v5, 0x55

    if-nez v2, :cond_3

    .line 1523
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    move-object v1, v0

    move-object v2, v1

    goto :goto_2

    .line 1528
    :cond_0
    invoke-virtual {p0, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1529
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1530
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 1532
    :goto_0
    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1533
    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1534
    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 1537
    :goto_1
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_2

    .line 1540
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1, v5}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v1

    .line 1541
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p0, v5, v4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v4

    .line 1542
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v0

    move-object v2, v4

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 1544
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    move-object v2, v0

    :cond_4
    if-eqz v1, :cond_7

    if-eqz v2, :cond_5

    .line 1549
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    move-object v1, v2

    :cond_5
    if-eqz v0, :cond_7

    .line 1552
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v1

    :goto_3
    move-object v1, v0

    :cond_7
    if-eqz v1, :cond_9

    .line 1555
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1556
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_4

    :cond_8
    move-object v1, v3

    :cond_9
    :goto_4
    if-eqz v1, :cond_a

    const/4 v0, 0x0

    .line 1559
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_a
    return-object v3
.end method

.method protected retrieveMaxHeight()Ljava/lang/Float;
    .locals 5

    .line 1616
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveDirectParentDeclaredHeight()Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x54

    .line 1617
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1620
    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    goto :goto_1

    .line 1623
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMinHeight()Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x55

    .line 1625
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1626
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1627
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_1
    move-object v3, v0

    .line 1630
    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1633
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    move-object v4, v3

    move-object v3, v0

    move-object v0, v4

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v0, :cond_3

    .line 1636
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    move-object v3, v0

    .line 1639
    :cond_3
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1640
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 1642
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1646
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected retrieveMaxWidth(F)Ljava/lang/Float;
    .locals 3

    const/16 v0, 0x4f

    .line 1457
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x50

    .line 1459
    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1460
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move-object v0, p1

    .line 1464
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1465
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1467
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected retrieveMinHeight()Ljava/lang/Float;
    .locals 3

    .line 1673
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveDirectParentDeclaredHeight()Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x55

    .line 1674
    invoke-static {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    .line 1677
    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1682
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1685
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 1688
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1689
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1691
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_3
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1695
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected retrieveMinWidth(F)Ljava/lang/Float;
    .locals 2

    const/16 v0, 0x50

    .line 1484
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1486
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1487
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 1489
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected retrieveUnitValue(FI)Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x0

    .line 1713
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FIZ)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected retrieveUnitValue(FIZ)Ljava/lang/Float;
    .locals 2

    .line 1717
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz p3, :cond_0

    .line 1718
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getUnitType()I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 1719
    const-class p3, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    invoke-static {p3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p3

    .line 1720
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "Property {0} in percents is not supported"

    invoke-static {v1, p2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_3

    .line 1723
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getUnitType()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    .line 1725
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p2

    const/high16 p3, 0x42c80000    # 100.0f

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p2

    mul-float/2addr p1, p2

    div-float/2addr p1, p3

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 1728
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected retrieveWidth(F)Ljava/lang/Float;
    .locals 5

    const/16 v0, 0x50

    .line 1420
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x4f

    .line 1422
    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1423
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move-object v1, v0

    :cond_0
    const/16 v2, 0x4d

    .line 1427
    invoke-virtual {p0, p1, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveUnitValue(FI)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    if-eqz v1, :cond_2

    .line 1430
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float p1, p1, v4

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    move-object v2, v1

    :cond_2
    if-eqz v0, :cond_6

    .line 1433
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    move-object v2, v0

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_6

    .line 1436
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v3

    :goto_2
    move-object v2, v1

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 1439
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1440
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_8

    const/4 p1, 0x0

    .line 1443
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_8
    return-object v3
.end method

.method returnBackOwnProperty(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1352
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->deleteOwnProperty(I)V

    goto :goto_0

    .line 1354
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected setBorders(Lcom/itextpdf/layout/borders/Border;I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 1

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xb

    .line 2266
    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0xa

    .line 2263
    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/16 p2, 0xc

    .line 2260
    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/16 p2, 0xd

    .line 2257
    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method setChildRenderer(ILcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    if-eqz p2, :cond_0

    .line 2748
    invoke-interface {p2, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2750
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2751
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->removeThisFromParent(Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object p1
.end method

.method setChildRenderers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)V"
        }
    .end annotation

    .line 2705
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->removeThisFromParents(Ljava/util/Collection;)V

    .line 2706
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2707
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addAllChildRenderers(Ljava/util/List;)V

    return-void
.end method

.method protected setMinMaxWidthBasedOnFixedWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Z
    .locals 2

    const/16 v0, 0x4d

    .line 2136
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->hasAbsoluteUnitValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2138
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2140
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    .line 2141
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 0

    .line 1168
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    return-object p0
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setThisAsParent(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)V"
        }
    .end annotation

    .line 2760
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 2761
    invoke-interface {v0, p0}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method shrinkOccupiedAreaForAbsolutePosition()V
    .locals 3

    .line 2451
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isAbsolutePosition()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    .line 2452
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x36

    .line 2453
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x4d

    .line 2454
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/properties/UnitValue;

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 2456
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 468
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected transformPoints(Ljava/util/List;Lcom/itextpdf/kernel/geom/AffineTransform;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;",
            "Lcom/itextpdf/kernel/geom/AffineTransform;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    .line 2322
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Point;

    .line 2323
    invoke-virtual {p2, v1, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method protected updateHeight(Lcom/itextpdf/layout/properties/UnitValue;)V
    .locals 2

    .line 1601
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1602
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    :cond_0
    const/16 v0, 0x1b

    .line 1605
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method updateHeightsOnSplit(FZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 2055
    const-class p2, Lcom/itextpdf/layout/renderer/BlockRenderer;

    invoke-static {p2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p2

    .line 2056
    const-string v0, "Element content was clipped because some height properties are set."

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 2059
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object p2

    .line 2060
    iget-object p3, p3, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p3

    .line 2061
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p5

    sub-float/2addr p5, p1

    invoke-virtual {p3, p5}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 2062
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 2063
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :cond_0
    if-eqz p4, :cond_7

    .line 2067
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isKeepTogether()Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_2

    .line 2073
    :cond_1
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveResolvedParentDeclaredHeight()Ljava/lang/Float;

    move-result-object p2

    const/16 p3, 0x54

    .line 2074
    invoke-static {p0, p3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p3

    const/high16 p5, 0x42c80000    # 100.0f

    if-eqz p3, :cond_3

    .line 2076
    invoke-virtual {p3}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2077
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object p3

    .line 2078
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    sub-float/2addr p3, p1

    invoke-static {p3}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p3

    .line 2079
    invoke-virtual {p4, p3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateMaxHeight(Lcom/itextpdf/layout/properties/UnitValue;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 2082
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v0, p1, v0

    mul-float/2addr v0, p5

    .line 2084
    invoke-virtual {p3}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p3

    sub-float/2addr p3, v0

    .line 2086
    invoke-static {p3}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateMinHeight(Lcom/itextpdf/layout/properties/UnitValue;)V

    :cond_3
    :goto_0
    const/16 p3, 0x55

    .line 2090
    invoke-static {p0, p3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 2092
    invoke-virtual {p3}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2093
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveMinHeight()Ljava/lang/Float;

    move-result-object p3

    .line 2094
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    sub-float/2addr p3, p1

    invoke-static {p3}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p3

    .line 2095
    invoke-virtual {p4, p3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateMinHeight(Lcom/itextpdf/layout/properties/UnitValue;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 2098
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v0, p1, v0

    mul-float/2addr v0, p5

    .line 2100
    invoke-virtual {p3}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p3

    sub-float/2addr p3, v0

    .line 2102
    invoke-static {p3}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateMinHeight(Lcom/itextpdf/layout/properties/UnitValue;)V

    :cond_5
    :goto_1
    const/16 p3, 0x1b

    .line 2107
    invoke-static {p0, p3}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getPropertyAsUnitValue(Lcom/itextpdf/layout/renderer/IRenderer;I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 2109
    invoke-virtual {p3}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2110
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object p2

    .line 2111
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float/2addr p2, p1

    invoke-static {p2}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    .line 2112
    invoke-virtual {p4, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateHeight(Lcom/itextpdf/layout/properties/UnitValue;)V

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    .line 2115
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    div-float/2addr p1, p2

    mul-float/2addr p1, p5

    .line 2117
    invoke-virtual {p3}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p2

    sub-float/2addr p2, p1

    .line 2119
    invoke-static {p2}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateMinHeight(Lcom/itextpdf/layout/properties/UnitValue;)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected updateHeightsOnSplit(ZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;)V
    .locals 7

    .line 2049
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->updateHeightsOnSplit(FZLcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/layout/renderer/AbstractRenderer;Z)V

    return-void
.end method

.method protected updateMaxHeight(Lcom/itextpdf/layout/properties/UnitValue;)V
    .locals 2

    .line 1657
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1658
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    :cond_0
    const/16 v0, 0x54

    .line 1661
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method protected updateMinHeight(Lcom/itextpdf/layout/properties/UnitValue;)V
    .locals 2

    .line 1706
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1707
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    :cond_0
    const/16 v0, 0x55

    .line 1709
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method protected updateWidth(Lcom/itextpdf/layout/properties/UnitValue;)V
    .locals 2

    .line 1502
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->isBorderBoxSizing(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1503
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->calculatePaddingBorderWidth(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    :cond_0
    const/16 v0, 0x4d

    .line 1505
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    return-void
.end method
