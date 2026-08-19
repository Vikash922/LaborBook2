.class public Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
.source "PatternSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/ISvgPaintServer;


# static fields
.field private static final CONVERT_COEFF:D = 0.75

.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;-><init>()V

    return-void
.end method

.method private calculateAppliedViewBox(Lcom/itextpdf/kernel/geom/Rectangle;DD)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->retrieveAlignAndMeet()[Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    double-to-float p2, p2

    double-to-float p3, p4

    const/4 p4, 0x0

    invoke-direct {v1, p4, p4, p2, p3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    const/4 p2, 0x0

    .line 196
    aget-object p2, v0, p2

    const/4 p3, 0x1

    aget-object p3, v0, p3

    invoke-static {p1, v1, p2, p3}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->applyViewBox(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method private calculateOriginalPatternRectangle(Lcom/itextpdf/svg/renderers/SvgDrawContext;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 35

    move-object/from16 v0, p0

    .line 218
    const-string v1, "height"

    const-string v2, "width"

    const-string v3, "y"

    const-string v4, "x"

    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {v0, v4}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 219
    invoke-static {v4, v5, v6}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v7

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v7, v9

    .line 222
    invoke-virtual {v0, v3}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-static {v3, v5, v6}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v3

    mul-double/2addr v3, v9

    .line 224
    invoke-virtual {v0, v2}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-static {v2, v5, v6}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    .line 226
    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v1, v5, v6}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForObjectBoundingBox(Ljava/lang/String;D)D

    move-result-wide v1

    mul-double/2addr v1, v9

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    .line 229
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v6

    float-to-double v14, v6

    .line 230
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v6

    float-to-double v12, v6

    .line 231
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    float-to-double v10, v6

    .line 232
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    float-to-double v5, v5

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getCurrentFontSize()F

    move-result v25

    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/svg/css/SvgCssContext;->getRootFontSize()F

    move-result v26

    .line 237
    invoke-virtual {v0, v4}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-wide v8, v14

    move-wide/from16 v27, v10

    move-wide v10, v14

    move-wide/from16 v29, v12

    move-wide/from16 v12, v27

    move-wide/from16 v31, v14

    move/from16 v14, v25

    move/from16 v15, v26

    .line 236
    invoke-static/range {v7 .. v15}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v33

    .line 239
    invoke-virtual {v0, v3}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-wide/from16 v17, v29

    move-wide/from16 v19, v29

    move-wide/from16 v21, v5

    move/from16 v23, v25

    move/from16 v24, v26

    .line 238
    invoke-static/range {v16 .. v24}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v3

    .line 241
    invoke-virtual {v0, v2}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-wide/from16 v8, v31

    move-wide/from16 v10, v31

    .line 240
    invoke-static/range {v7 .. v15}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v11

    .line 243
    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 242
    invoke-static/range {v16 .. v24}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->getCoordinateForUserSpaceOnUse(Ljava/lang/String;DDDFF)D

    move-result-wide v1

    move-wide/from16 v7, v33

    .line 245
    :goto_0
    new-instance v5, Lcom/itextpdf/kernel/geom/Rectangle;

    double-to-float v6, v7

    double-to-float v3, v3

    double-to-float v4, v11

    double-to-float v1, v1

    invoke-direct {v5, v6, v3, v4, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v5
.end method

.method private static createColoredTilingPatternInstance(Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/geom/Rectangle;DD)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;
    .locals 1

    .line 279
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    double-to-float p2, p2

    double-to-float p3, p4

    const/4 p4, 0x1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;FFZ)V

    .line 281
    invoke-static {v0, p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->setPatternMatrix(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/geom/AffineTransform;)V

    return-object v0
.end method

.method private createTilingPattern(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;
    .locals 17

    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->isObjectBoundingBoxInPatternUnits()Z

    move-result v0

    .line 112
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->isObjectBoundingBoxInPatternContentUnits()Z

    move-result v1

    move-object/from16 v8, p0

    move-object/from16 v2, p1

    .line 115
    invoke-direct {v8, v2, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->calculateOriginalPatternRectangle(Lcom/itextpdf/svg/renderers/SvgDrawContext;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    .line 119
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    float-to-double v4, v4

    .line 120
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    float-to-double v6, v6

    .line 122
    invoke-static {v4, v5, v6, v7}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->xStepYStepAreValid(DD)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    return-object v10

    .line 127
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvasTransform()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v11

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getPatternTransform()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    if-eqz v0, :cond_1

    .line 132
    invoke-static/range {p2 .. p2}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getTransformToUserSpaceOnUse(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 135
    :cond_1
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    float-to-double v12, v2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v11, v12, v13, v2, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getViewBoxValues()[F

    move-result-object v2

    .line 139
    array-length v3, v2

    const/4 v9, 0x4

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    if-ge v3, v9, :cond_4

    if-eq v0, v1, :cond_3

    if-eqz v1, :cond_2

    .line 146
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    float-to-double v0, v0

    div-double/2addr v0, v12

    .line 147
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v2, v12

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    float-to-double v0, v0

    div-double v0, v12, v0

    .line 150
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    float-to-double v2, v2

    div-double v2, v12, v2

    .line 152
    :goto_0
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    div-double/2addr v4, v0

    div-double/2addr v6, v2

    .line 156
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    double-to-float v1, v4

    double-to-float v2, v6

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v12, v0

    move-wide v13, v4

    move-wide v15, v6

    goto/16 :goto_1

    .line 158
    :cond_4
    invoke-static {v2}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->isViewBoxInvalid([F)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v10

    :cond_5
    if-eqz v0, :cond_6

    .line 165
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    float-to-double v0, v0

    div-double v0, v12, v0

    .line 166
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    float-to-double v9, v3

    div-double/2addr v12, v9

    .line 167
    invoke-virtual {v11, v0, v1, v12, v13}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    div-double/2addr v4, v0

    div-double/2addr v6, v12

    :cond_6
    move-wide v0, v4

    move-wide v9, v6

    .line 172
    new-instance v12, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    const/4 v5, 0x2

    aget v5, v2, v5

    const/4 v6, 0x3

    aget v2, v2, v6

    invoke-direct {v12, v3, v4, v5, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object/from16 v2, p0

    move-object v3, v12

    move-wide v4, v0

    move-wide v6, v9

    .line 173
    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->calculateAppliedViewBox(Lcom/itextpdf/kernel/geom/Rectangle;DD)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v11, v3, v4, v5, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 177
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    float-to-double v5, v5

    div-double/2addr v3, v5

    .line 178
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    float-to-double v13, v7

    div-double/2addr v5, v13

    .line 179
    invoke-virtual {v11, v3, v4, v5, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    div-double/2addr v0, v3

    div-double/2addr v9, v5

    .line 183
    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v7

    neg-float v7, v7

    float-to-double v13, v7

    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v7

    neg-float v7, v7

    float-to-double v7, v7

    invoke-virtual {v11, v13, v14, v7, v8}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 185
    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v13

    float-to-double v13, v13

    div-double/2addr v13, v3

    sub-double/2addr v7, v13

    .line 186
    invoke-virtual {v12}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    float-to-double v12, v2

    div-double/2addr v12, v5

    sub-double/2addr v3, v12

    .line 187
    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    double-to-float v5, v7

    double-to-float v3, v3

    double-to-float v4, v0

    double-to-float v6, v9

    invoke-direct {v2, v5, v3, v4, v6}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-wide v13, v0

    move-object v12, v2

    move-wide v15, v9

    .line 190
    :goto_1
    invoke-static/range {v11 .. v16}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->createColoredTilingPatternInstance(Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/geom/Rectangle;DD)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    move-result-object v0

    return-object v0
.end method

.method private drawPatternContent(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfPatternCanvas;

    .line 204
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfPatternCanvas;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 205
    invoke-virtual {p1, v0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->pushCanvas(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 208
    invoke-interface {v0, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->popCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->popCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 212
    throw p2
.end method

.method private getPatternTransform()Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 2

    .line 334
    const-string v0, "patternTransform"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 336
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 338
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    invoke-static {v1}, Lcom/itextpdf/svg/utils/TransformUtils;->parseTransform(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    return-object v0

    .line 341
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    return-object v0
.end method

.method private static getTransformToUserSpaceOnUse(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 7

    .line 294
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 295
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 296
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    div-double/2addr v1, v3

    .line 297
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p0

    float-to-double v5, p0

    div-double/2addr v5, v3

    .line 296
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    return-object v0
.end method

.method private isObjectBoundingBoxInPatternContentUnits()Z
    .locals 3

    .line 263
    const-string v0, "patternContentUnits"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 265
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    :cond_0
    const-string v0, "objectBoundingBox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    if-eqz v1, :cond_2

    .line 269
    const-string v0, "userSpaceOnUse"

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v2, "Could not recognize patternContentUnits value {0}"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isObjectBoundingBoxInPatternUnits()Z
    .locals 3

    .line 249
    const-string v0, "patternUnits"

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    :cond_0
    const-string v0, "userSpaceOnUse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    if-eqz v1, :cond_2

    .line 255
    const-string v0, "objectBoundingBox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v2, "Could not recognize patternUnits value {0}"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static isViewBoxInvalid([F)Z
    .locals 3

    const/4 v0, 0x2

    .line 322
    aget v0, p0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    aget p0, p0, v0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 323
    :cond_1
    :goto_0
    sget-object p0, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    const-string v0, "The viewBox width or height is zero. The element with this viewBox will not be rendered."

    new-array v1, v2, [Ljava/lang/Object;

    .line 325
    invoke-static {v0, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static setPatternMatrix(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/geom/AffineTransform;)V
    .locals 1

    .line 286
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    .line 287
    new-array v0, v0, [D

    .line 288
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([D)V

    .line 289
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;->setMatrix(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    :cond_0
    return-void
.end method

.method private static xStepYStepAreValid(DD)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    const/4 v3, 0x0

    if-ltz v2, :cond_4

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    cmpl-double p0, p0, v0

    if-eqz p0, :cond_2

    cmpl-double p0, p2, v0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 309
    :cond_2
    :goto_0
    sget-object p0, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 310
    const-string p1, "Pattern width or height is zero. This pattern will not be rendered."

    new-array p2, v3, [Ljava/lang/Object;

    .line 311
    invoke-static {p1, p2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_3
    return v3

    .line 303
    :cond_4
    :goto_1
    sget-object p0, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 304
    const-string p1, "Pattern width or height is negative value. This pattern will not be rendered."

    new-array p2, v3, [Ljava/lang/Object;

    .line 305
    invoke-static {p1, p2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_5
    return v3
.end method


# virtual methods
.method public createColor(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Rectangle;FF)Lcom/itextpdf/kernel/colors/Color;
    .locals 0

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    .line 91
    :cond_0
    const-string p4, "id"

    invoke-virtual {p0, p4}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->pushPatternId(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    return-object p3

    .line 96
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->createTilingPattern(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    move-result-object p2

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->drawPatternContent(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;)V

    if-nez p2, :cond_2

    goto :goto_0

    .line 98
    :cond_2
    new-instance p3, Lcom/itextpdf/kernel/colors/PatternColor;

    invoke-direct {p3, p2}, Lcom/itextpdf/kernel/colors/PatternColor;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->popPatternId()V

    return-object p3

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->popPatternId()V

    .line 101
    throw p2
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 79
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;-><init>()V

    .line 80
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;->deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;)V

    return-object v0
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
