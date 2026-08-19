.class final Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper;
.super Ljava/lang/Object;
.source "InlineVerticalAlignmentHelper.java"


# static fields
.field private static final ADJUSTMENT_THRESHOLD:F = 0.001f

.field private static final SUB_OFFSET:F = -0.2f

.field private static final SUPER_OFFSET:F = 0.3f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustBBox(Lcom/itextpdf/layout/renderer/LineRenderer;FFF)V
    .locals 2

    const/16 v0, 0x7c

    .line 137
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/LineHeight;

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/LineHeightHelper;->calculateLineHeight(Lcom/itextpdf/layout/renderer/AbstractRenderer;)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    sub-float p1, v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    add-float/2addr p2, p1

    sub-float/2addr p3, p1

    sub-float p1, p2, p3

    .line 146
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 148
    iget-object p3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result p3

    .line 149
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 150
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result p1

    sub-float p1, p3, p1

    .line 151
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    sub-float/2addr p3, p2

    .line 154
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/renderer/IRenderer;

    const/4 p2, 0x0

    .line 155
    invoke-interface {p1, p2, p3}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static adjustChildrenYLineHtmlMode(Lcom/itextpdf/layout/renderer/LineRenderer;)V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 48
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    sub-float/2addr v0, v1

    .line 51
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v1, v0, v2, v3}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper;->processRenderers(Lcom/itextpdf/layout/renderer/LineRenderer;Ljava/util/List;FLjava/util/function/Predicate;Ljava/util/function/Predicate;)V

    .line 56
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 57
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 58
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 59
    new-instance v2, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper$$ExternalSyntheticLambda3;-><init>()V

    new-instance v3, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p0, v1, v0, v2, v3}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper;->processRenderers(Lcom/itextpdf/layout/renderer/LineRenderer;Ljava/util/List;FLjava/util/function/Predicate;Ljava/util/function/Predicate;)V

    return-void
.end method

.method private static calculateOffset(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/properties/InlineVerticalAlignment;FFFFFLcom/itextpdf/kernel/geom/Rectangle;)F
    .locals 2

    .line 161
    sget-object v0, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper$1;->$SwitchMap$com$itextpdf$layout$properties$InlineVerticalAlignmentType:[I

    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->getType()Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 191
    :pswitch_0
    invoke-virtual {p8}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result p0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result p1

    :goto_0
    sub-float/2addr p0, p1

    return p0

    .line 189
    :pswitch_1
    invoke-virtual {p8}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p1

    goto :goto_0

    :pswitch_2
    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p7, p0

    add-float/2addr p3, p7

    .line 187
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    div-float/2addr p1, p0

    add-float/2addr p2, p1

    sub-float/2addr p3, p2

    return p3

    .line 176
    :pswitch_3
    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->getType()Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    move-result-object p1

    sget-object p7, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->SUPER:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    if-ne p1, p7, :cond_0

    const p1, 0x3e99999a    # 0.3f

    goto :goto_1

    .line 178
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->getType()Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    move-result-object p1

    sget-object p7, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->SUB:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    if-ne p1, p7, :cond_1

    const p1, -0x41b33333    # -0.2f

    goto :goto_1

    .line 181
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->getValue()F

    move-result p1

    :goto_1
    sub-float/2addr p4, p5

    mul-float/2addr p4, p1

    add-float/2addr p3, p4

    .line 185
    invoke-static {p0, p6}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper;->getChildBaseline(Lcom/itextpdf/layout/renderer/IRenderer;F)F

    move-result p0

    sub-float/2addr p3, p0

    return p3

    .line 170
    :pswitch_4
    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->getValue()F

    move-result p1

    add-float/2addr p3, p1

    .line 171
    invoke-static {p0, p6}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper;->getChildBaseline(Lcom/itextpdf/layout/renderer/IRenderer;F)F

    move-result p0

    sub-float/2addr p3, p0

    return p3

    .line 167
    :pswitch_5
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p0

    sub-float/2addr p5, p0

    return p5

    .line 165
    :pswitch_6
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result p0

    sub-float/2addr p4, p0

    return p4

    .line 163
    :pswitch_7
    invoke-static {p0, p6}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper;->getChildBaseline(Lcom/itextpdf/layout/renderer/IRenderer;F)F

    move-result p0

    sub-float/2addr p3, p0

    return p3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getAdjustedArea(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 124
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 125
    instance-of v1, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/itextpdf/layout/renderer/BlockRenderer;

    if-nez v1, :cond_0

    const/16 v1, 0x88

    .line 126
    invoke-interface {p0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    check-cast p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 129
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_0
    return-object v0
.end method

.method private static getChildBaseline(Lcom/itextpdf/layout/renderer/IRenderer;F)F
    .locals 1

    .line 198
    instance-of v0, p0, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;

    if-eqz v0, :cond_0

    .line 199
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;

    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/ILeafElementRenderer;->getDescent()F

    move-result p1

    .line 200
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p0

    sub-float/2addr p0, p1

    return p0

    .line 202
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->isInlineBlockChild(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/renderer/AbstractRenderer;

    .line 203
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->getLastYLineRecursively()Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 205
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    sub-float/2addr p0, p1

    :goto_1
    return p0
.end method

.method private static isBoxOrientedVerticalAlignment(Lcom/itextpdf/layout/properties/InlineVerticalAlignment;)Z
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->getType()Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->TOP:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    if-eq v0, v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->getType()Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    move-result-object p0

    sget-object v0, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->BOTTOM:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    if-ne p0, v0, :cond_0

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

.method static synthetic lambda$adjustChildrenYLineHtmlMode$0(Lcom/itextpdf/layout/properties/InlineVerticalAlignment;)Z
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper;->isBoxOrientedVerticalAlignment(Lcom/itextpdf/layout/properties/InlineVerticalAlignment;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$adjustChildrenYLineHtmlMode$1(Lcom/itextpdf/layout/properties/InlineVerticalAlignment;)Z
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper;->isBoxOrientedVerticalAlignment(Lcom/itextpdf/layout/properties/InlineVerticalAlignment;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$adjustChildrenYLineHtmlMode$2(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)I
    .locals 0

    .line 57
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    .line 58
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p0

    sub-float/2addr p1, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p0

    .line 57
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$adjustChildrenYLineHtmlMode$3(Lcom/itextpdf/layout/properties/InlineVerticalAlignment;)Z
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper;->isBoxOrientedVerticalAlignment(Lcom/itextpdf/layout/properties/InlineVerticalAlignment;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$adjustChildrenYLineHtmlMode$4(Lcom/itextpdf/layout/properties/InlineVerticalAlignment;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static processRenderers(Lcom/itextpdf/layout/renderer/LineRenderer;Ljava/util/List;FLjava/util/function/Predicate;Ljava/util/function/Predicate;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/LineRenderer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;F",
            "Ljava/util/function/Predicate<",
            "Lcom/itextpdf/layout/properties/InlineVerticalAlignment;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/itextpdf/layout/properties/InlineVerticalAlignment;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 72
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/LineHeightHelper;->getActualFontInfo(Lcom/itextpdf/layout/renderer/AbstractRenderer;)[F

    move-result-object v1

    const/4 v2, 0x0

    .line 73
    aget v3, v1, v2

    add-float v3, p2, v3

    const/4 v4, 0x3

    aget v10, v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v10, v4

    sub-float v11, v3, v5

    const/4 v12, 0x1

    .line 75
    aget v3, v1, v12

    add-float v3, p2, v3

    div-float v4, v10, v4

    sub-float v13, v3, v4

    const/4 v3, 0x2

    .line 78
    aget v14, v1, v3

    .line 84
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v1, 0x1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    move v8, v1

    move v9, v8

    move/from16 v16, v2

    move v7, v3

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 85
    invoke-static {v6}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x88

    .line 88
    invoke-interface {v6, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;

    if-nez v1, :cond_1

    .line 92
    new-instance v1, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;

    invoke-direct {v1}, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;-><init>()V

    :cond_1
    move-object/from16 v4, p3

    move-object v5, v1

    .line 95
    invoke-interface {v4, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    invoke-static {v6}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper;->getAdjustedArea(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 98
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v1, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    iget-object v12, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 99
    invoke-virtual {v12}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iget-object v4, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 100
    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    move/from16 p1, v7

    iget-object v7, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 101
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-direct {v3, v1, v12, v4, v7}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v1, v6

    move-object v12, v3

    move-object v3, v5

    move/from16 v4, p2

    move-object v7, v5

    move v5, v11

    move/from16 v17, v11

    move-object v11, v6

    move v6, v13

    move/from16 v18, v13

    move/from16 v13, p1

    move-object/from16 p1, v15

    move-object v15, v7

    move v7, v10

    move/from16 v19, v10

    move v10, v8

    move v8, v14

    move/from16 v20, v14

    move v14, v9

    move-object v9, v12

    .line 102
    invoke-static/range {v1 .. v9}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper;->calculateOffset(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/properties/InlineVerticalAlignment;FFFFFLcom/itextpdf/kernel/geom/Rectangle;)F

    move-result v1

    .line 104
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    const/4 v2, 0x0

    .line 105
    invoke-interface {v11, v2, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->move(FF)V

    goto :goto_1

    :cond_2
    move/from16 v19, v10

    move/from16 v17, v11

    move/from16 v18, v13

    move/from16 v20, v14

    move-object/from16 p1, v15

    move-object v15, v5

    move-object v11, v6

    move v13, v7

    move v10, v8

    move v14, v9

    :cond_3
    :goto_1
    move-object/from16 v1, p4

    .line 108
    invoke-interface {v1, v15}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    invoke-static {v11}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper;->getAdjustedArea(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 111
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v4

    invoke-static {v13, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 112
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    invoke-static {v14, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move v9, v2

    move v8, v3

    move v7, v4

    const/16 v16, 0x1

    goto :goto_2

    :cond_4
    move v8, v10

    move v7, v13

    move v9, v14

    :goto_2
    move-object/from16 v15, p1

    move/from16 v11, v17

    move/from16 v13, v18

    move/from16 v10, v19

    move/from16 v14, v20

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_5
    move v13, v7

    move v10, v8

    move v14, v9

    if-eqz v16, :cond_6

    .line 119
    invoke-static {v0, v14, v10, v13}, Lcom/itextpdf/layout/renderer/InlineVerticalAlignmentHelper;->adjustBBox(Lcom/itextpdf/layout/renderer/LineRenderer;FFF)V

    :cond_6
    return-void
.end method
