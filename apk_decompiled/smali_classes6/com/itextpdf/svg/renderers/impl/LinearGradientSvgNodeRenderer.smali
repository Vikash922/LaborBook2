.class public Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractGradientSvgNodeRenderer;
.source "LinearGradientSvgNodeRenderer.java"


# static fields
.field private static final CONVERT_COEFF:D = 0.75


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractGradientSvgNodeRenderer;-><init>()V

    return-void
.end method

.method private getCoordinates(Lcom/itextpdf/svg/renderers/SvgDrawContext;Z)[Lcom/itextpdf/kernel/geom/Point;
    .locals 33

    move-object/from16 v0, p0

    .line 145
    const-string v1, "y2"

    const-string v2, "x2"

    const-string v3, "y1"

    const-string v4, "x1"

    if-eqz p2, :cond_0

    .line 149
    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    .line 150
    invoke-virtual {v0, v4}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    .line 149
    invoke-static {v4, v6, v7}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v8, v10

    .line 152
    invoke-virtual {v0, v3}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-static {v3, v6, v7}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v3

    mul-double/2addr v3, v10

    invoke-direct {v5, v8, v9, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 153
    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    .line 154
    invoke-virtual {v0, v2}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 153
    invoke-static {v2, v8, v9}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    .line 156
    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v1, v6, v7}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v1

    mul-double/2addr v1, v10

    invoke-direct {v3, v8, v9, v1, v2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    goto/16 :goto_0

    .line 158
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    .line 159
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v6

    float-to-double v14, v6

    .line 160
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v6

    float-to-double v12, v6

    .line 161
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    float-to-double v10, v6

    .line 162
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    float-to-double v5, v5

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getCurrentFontSize()F

    move-result v25

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/svg/css/SvgCssContext;->getRootFontSize()F

    move-result v26

    .line 165
    new-instance v8, Lcom/itextpdf/kernel/geom/Point;

    .line 167
    invoke-virtual {v0, v4}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v8

    move-wide v8, v14

    move-wide/from16 v27, v10

    move-wide v10, v14

    move-wide/from16 v29, v12

    move-wide/from16 v12, v27

    move-wide/from16 v31, v14

    move/from16 v14, v25

    move/from16 v15, v26

    .line 166
    invoke-static/range {v7 .. v15}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v7

    .line 169
    invoke-virtual {v0, v3}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-wide/from16 v17, v29

    move-wide/from16 v19, v29

    move-wide/from16 v21, v5

    move/from16 v23, v25

    move/from16 v24, v26

    .line 168
    invoke-static/range {v16 .. v24}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v9

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 170
    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    .line 172
    invoke-virtual {v0, v2}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    add-double v8, v31, v27

    move-wide/from16 v10, v31

    .line 171
    invoke-static/range {v7 .. v15}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v7

    .line 174
    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 173
    invoke-static/range {v16 .. v24}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v1

    invoke-direct {v3, v7, v8, v1, v2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    move-object v5, v4

    :goto_0
    const/4 v1, 0x2

    .line 177
    new-array v1, v1, [Lcom/itextpdf/kernel/geom/Point;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    return-object v1
.end method

.method private getGradientTransformToUserSpaceOnUse(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 5

    .line 120
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p2

    float-to-double v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 132
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p2

    float-to-double v1, p2

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    div-double/2addr v1, v3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    float-to-double p1, p1

    div-double/2addr p1, v3

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getGradientTransform()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    :cond_1
    return-object v0
.end method

.method private parseStops(F)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getChildStopRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;

    .line 99
    invoke-virtual {v1}, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;->getStopColor()[F

    move-result-object v2

    .line 100
    invoke-virtual {v1}, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;->getOffset()D

    move-result-wide v3

    .line 101
    new-instance v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    sget-object v5, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>([FDLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 105
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 106
    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 107
    new-instance v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    sget-object v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v2, v1, v4, v5, v3}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    invoke-interface {p1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 110
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 111
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    .line 112
    new-instance v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1
.end method


# virtual methods
.method public createColor(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Rectangle;FF)Lcom/itextpdf/kernel/colors/Color;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 56
    :cond_0
    new-instance v11, Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;

    invoke-direct {v11}, Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;-><init>()V

    move/from16 v2, p4

    .line 58
    invoke-direct {v0, v2}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->parseStops(F)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 59
    invoke-virtual {v11, v3}, Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;->addColorStop(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;)Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->parseSpreadMethod()Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;->setSpreadMethod(Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;)Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->isObjectBoundingBoxUnits()Z

    move-result v12

    move-object/from16 v13, p1

    .line 65
    invoke-direct {v0, v13, v12}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getCoordinates(Lcom/itextpdf/svg/renderers/SvgDrawContext;Z)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    const/4 v3, 0x0

    .line 67
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v6

    const/4 v3, 0x1

    aget-object v8, v2, v3

    .line 68
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v14

    move-object v2, v11

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move-wide v9, v14

    .line 67
    invoke-virtual/range {v2 .. v10}, Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;->setGradientVector(DDDD)Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;

    .line 70
    invoke-direct {v0, v1, v12}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->getGradientTransformToUserSpaceOnUse(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v2

    .line 73
    invoke-virtual {v11, v2}, Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;->setCurrentSpaceToGradientVectorSpaceTransformation(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;

    const/4 v6, 0x1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p3

    .line 76
    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvasTransform()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    .line 75
    invoke-virtual {v11, v1, v2, v3}, Lcom/itextpdf/kernel/colors/gradients/LinearGradientBuilder;->buildColor(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    return-object v1
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 83
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;-><init>()V

    .line 84
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;)V

    return-object v0
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
