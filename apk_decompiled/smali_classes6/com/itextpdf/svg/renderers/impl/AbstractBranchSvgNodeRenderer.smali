.class public abstract Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "AbstractBranchSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/IBranchSvgNodeRenderer;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field protected static final VIEWBOX_VALUES_NUMBER:I = 0x4


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-class v0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->children:Ljava/util/List;

    return-void
.end method

.method static addXObject(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FF)V
    .locals 14

    move-object v0, p1

    .line 150
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move/from16 v1, p2

    float-to-double v10, v1

    move/from16 v2, p3

    float-to-double v12, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    .line 152
    invoke-virtual/range {v1 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 153
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    check-cast v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    .line 155
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const-string v1, "Do\n"

    invoke-static {v1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 156
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    move/from16 v2, p3

    .line 158
    invoke-virtual/range {p0 .. p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectAt(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :goto_0
    return-void
.end method

.method private applyViewportClip(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 1

    .line 216
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 217
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 218
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 219
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method private applyViewportTranslationCorrection(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 4

    .line 223
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 224
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->calculateViewPortTranslation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p1

    .line 227
    const-string v1, "preserveAspectRatio"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 230
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_2
    return-void
.end method

.method private cleanUp(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->removeCurrentViewPort()V

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->popCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method private static isOverflowVisible(Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;)Z
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "overflow"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "visible"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 479
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static scaleViewBoxValues([FFF)[F
    .locals 3

    .line 469
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 470
    aget v2, p0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 471
    aget v2, p0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 472
    aget v2, p0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    const/4 p1, 0x3

    .line 473
    aget p0, p0, p1

    mul-float/2addr p0, p2

    aput p0, v0, p1

    return-object v0
.end method

.method private static writeBBoxAccordingToVisibleOverflow(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 23

    move-object/from16 v0, p1

    .line 492
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->popCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 497
    :cond_0
    new-instance v2, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v2}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 498
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1
    if-ltz v4, :cond_1

    .line 499
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 500
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCtm()Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v7

    .line 501
    new-instance v15, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v8

    float-to-double v9, v8

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v8

    float-to-double v11, v8

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v8

    float-to-double v13, v8

    const/4 v8, 0x4

    .line 502
    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v8

    move/from16 v21, v4

    float-to-double v3, v8

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v8

    move-object/from16 v22, v6

    float-to-double v5, v8

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v7

    float-to-double v7, v7

    move-wide/from16 v19, v7

    move-object v8, v15

    move-object v7, v15

    move-wide v15, v3

    move-wide/from16 v17, v5

    invoke-direct/range {v8 .. v20}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    .line 501
    invoke-virtual {v2, v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    move-object/from16 v3, p0

    move-object/from16 v6, v22

    .line 503
    invoke-virtual {v3, v6}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->pushCanvas(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    add-int/lit8 v4, v21, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v3, p0

    .line 506
    :try_start_0
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/AffineTransform;->createInverse()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v5
    :try_end_0
    .catch Lcom/itextpdf/kernel/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getRootViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->toPointsArray()[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    const/4 v9, 0x0

    .line 516
    array-length v10, v1

    const/4 v7, 0x0

    move-object v6, v1

    move-object v8, v1

    invoke-virtual/range {v5 .. v10}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform([Lcom/itextpdf/kernel/geom/Point;I[Lcom/itextpdf/kernel/geom/Point;II)V

    .line 517
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 518
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void

    .line 510
    :catch_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 511
    const-class v0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 512
    const-string v1, "Unable to get inverse transformation matrix and thus calculate a viewport for the element because some of the transformation matrices, which are written to document, have a determinant of zero value. A bbox of zero values will be used as a viewport for this element."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addChild(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method applyViewBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 5

    .line 168
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->getViewBoxValues()[F

    move-result-object v0

    .line 169
    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v0, v2, v3

    const/4 v0, 0x3

    aput v1, v2, v0

    .line 171
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 172
    invoke-virtual {p0, p1, v2, v0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->calculateAndApplyViewBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;[FLcom/itextpdf/kernel/geom/Rectangle;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 175
    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->calculateAndApplyViewBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;[FLcom/itextpdf/kernel/geom/Rectangle;)V

    :goto_0
    return-void
.end method

.method calculateAndApplyViewBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;[FLcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 9

    .line 386
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->retrieveAlignAndMeet()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 387
    aget-object v5, v0, v1

    const/4 v1, 0x1

    .line 388
    aget-object v0, v0, v1

    .line 390
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    const/4 v2, 0x2

    aget v2, p2, v2

    div-float/2addr v1, v2

    .line 391
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    const/4 v3, 0x3

    aget v3, p2, v3

    div-float/2addr v2, v3

    .line 393
    const-string v3, "none"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 396
    const-string v3, "meet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 399
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_0
    move v1, v0

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    float-to-double v2, v1

    float-to-double v6, v0

    .line 404
    invoke-static {v2, v3, v6, v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->getScaleInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v8

    .line 406
    invoke-static {p2, v1, v0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->scaleViewBoxValues([FFF)[F

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move v6, v1

    move v7, v0

    .line 408
    invoke-virtual/range {v2 .. v7}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->processAspectRatioPosition(Lcom/itextpdf/svg/renderers/SvgDrawContext;[FLjava/lang/String;FF)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p2

    .line 410
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_2

    .line 411
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 413
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 414
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    div-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 415
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    div-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 416
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    div-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 417
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    div-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 420
    :cond_2
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 421
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 422
    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 425
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 426
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateX()D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 427
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateY()D

    move-result-wide v0

    double-to-float p2, v0

    mul-float/2addr p2, v2

    add-float/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    :cond_3
    return-void
.end method

.method public abstract createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
.end method

.method protected final deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;)V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 361
    invoke-interface {v1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v2

    .line 362
    invoke-interface {v1, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 363
    invoke-virtual {p1, v2}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->addChild(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 8

    .line 101
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 102
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    .line 103
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 104
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Form:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 106
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->makeXObject(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 108
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->applyViewBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 111
    invoke-static {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->isOverflowVisible(Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;)Z

    move-result v3

    .line 113
    instance-of v4, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 114
    invoke-static {p1, v0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->writeBBoxAccordingToVisibleOverflow(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    .line 117
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :goto_0
    if-eqz v4, :cond_1

    .line 121
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->applyMarkerAttributes(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 124
    :cond_1
    invoke-virtual {p1, v2}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->pushCanvas(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    .line 128
    :cond_2
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->applyViewportClip(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 131
    :cond_3
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->applyViewportTranslationCorrection(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 133
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 134
    instance-of v4, v3, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    if-nez v4, :cond_4

    .line 135
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 136
    invoke-interface {v3, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 137
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 141
    :cond_5
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->cleanUp(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 144
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, v0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->addXObject(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FF)V

    :cond_6
    return-void
.end method

.method public final getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getViewBoxValues()[F
    .locals 7

    .line 432
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 433
    new-array v0, v1, [F

    return-object v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "viewBox"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    if-nez v0, :cond_2

    .line 441
    new-array v0, v1, [F

    return-object v0

    .line 443
    :cond_2
    invoke-static {v0}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 444
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [F

    move v5, v1

    :goto_0
    if-ge v5, v3, :cond_3

    .line 446
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-eq v3, v2, :cond_5

    .line 450
    sget-object v2, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 451
    const-string v3, "The viewBox value must be 4 numbers. This viewBox=\"{0}\" will not be processed."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 454
    :cond_4
    new-array v0, v1, [F

    return-object v0

    :cond_5
    const/4 v2, 0x2

    .line 458
    aget v2, v4, v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_7

    const/4 v2, 0x3

    aget v2, v4, v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    goto :goto_1

    :cond_6
    return-object v4

    .line 459
    :cond_7
    :goto_1
    sget-object v2, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 460
    const-string v3, "The viewBox width and height cannot be negative. This viewBox=\"{0}\" will not be processed."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 463
    :cond_8
    new-array v0, v1, [F

    return-object v0
.end method

.method postDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 0

    return-void
.end method

.method processAspectRatioPosition(Lcom/itextpdf/svg/renderers/SvgDrawContext;[FLjava/lang/String;FF)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 15

    move-object v0, p0

    .line 247
    new-instance v1, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v1}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    const/4 v3, 0x0

    .line 250
    aget v4, p2, v3

    const/4 v5, 0x2

    aget v6, p2, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v4, v6

    const/4 v6, 0x1

    .line 251
    aget v8, p2, v6

    const/4 v9, 0x3

    aget v10, p2, v9

    div-float/2addr v10, v7

    add-float/2addr v8, v10

    .line 253
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v10

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v11

    div-float/2addr v11, v7

    add-float/2addr v10, v11

    .line 254
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v11

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v12

    div-float/2addr v12, v7

    add-float/2addr v11, v12

    .line 260
    iget-object v7, v0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v12, "x"

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v13, 0x0

    if-eqz v7, :cond_0

    .line 261
    iget-object v7, v0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v13

    .line 265
    :goto_0
    iget-object v12, v0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v14, "y"

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 266
    iget-object v12, v0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v13

    .line 269
    :cond_1
    instance-of v12, v0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    if-nez v12, :cond_2

    .line 270
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v12

    sub-float/2addr v7, v12

    .line 271
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v12

    sub-float/2addr v13, v12

    .line 276
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v14, "none"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v3

    goto/16 :goto_2

    :sswitch_1
    const-string v14, "xminymin"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v6

    goto :goto_2

    :sswitch_2
    const-string v14, "xminymid"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v5

    goto :goto_2

    :sswitch_3
    const-string v14, "xminymax"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v9

    goto :goto_2

    :sswitch_4
    const-string v14, "xmidymin"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x4

    goto :goto_2

    :sswitch_5
    const-string v14, "xmidymid"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x9

    goto :goto_2

    :sswitch_6
    const-string v14, "xmidymax"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x5

    goto :goto_2

    :sswitch_7
    const-string v14, "xmaxymin"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x6

    goto :goto_2

    :sswitch_8
    const-string v14, "xmaxymid"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x7

    goto :goto_2

    :sswitch_9
    const-string v14, "xmaxymax"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x8

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v12, -0x1

    :goto_2
    packed-switch v12, :pswitch_data_0

    sub-float/2addr v10, v4

    add-float/2addr v7, v10

    goto :goto_4

    .line 308
    :pswitch_0
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    aget v4, p2, v5

    sub-float/2addr v3, v4

    add-float/2addr v7, v3

    .line 309
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    aget v3, p2, v9

    goto :goto_3

    .line 304
    :pswitch_1
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    aget v3, p2, v5

    sub-float/2addr v2, v3

    add-float/2addr v7, v2

    goto :goto_4

    .line 300
    :pswitch_2
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    aget v3, p2, v5

    sub-float/2addr v2, v3

    add-float/2addr v7, v2

    .line 301
    aget v2, p2, v6

    goto :goto_5

    :pswitch_3
    sub-float/2addr v10, v4

    add-float/2addr v7, v10

    .line 297
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    aget v3, p2, v9

    goto :goto_3

    :pswitch_4
    sub-float/2addr v10, v4

    add-float/2addr v7, v10

    .line 293
    aget v2, p2, v6

    goto :goto_5

    .line 288
    :pswitch_5
    aget v3, p2, v3

    sub-float/2addr v7, v3

    .line 289
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    aget v3, p2, v9

    :goto_3
    sub-float/2addr v2, v3

    add-float/2addr v13, v2

    goto :goto_6

    .line 284
    :pswitch_6
    aget v2, p2, v3

    sub-float/2addr v7, v2

    :goto_4
    sub-float/2addr v11, v8

    add-float/2addr v13, v11

    goto :goto_6

    .line 280
    :pswitch_7
    aget v2, p2, v3

    sub-float/2addr v7, v2

    .line 281
    aget v2, p2, v6

    :goto_5
    sub-float/2addr v13, v2

    :goto_6
    :pswitch_8
    div-float v7, v7, p4

    div-float v13, v13, p5

    float-to-double v2, v7

    float-to-double v4, v13

    .line 322
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1c11fdc9 -> :sswitch_9
        -0x1c11fce5 -> :sswitch_8
        -0x1c11fcdb -> :sswitch_7
        -0xf850ee5 -> :sswitch_6
        -0xf850e01 -> :sswitch_5
        -0xf850df7 -> :sswitch_4
        -0xef823db -> :sswitch_3
        -0xef822f7 -> :sswitch_2
        -0xef822ed -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method retrieveAlignAndMeet()[Ljava/lang/String;
    .locals 7

    .line 183
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "preserveAspectRatio"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 187
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "meet"

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 191
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "xmidymid"

    goto :goto_1

    .line 192
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 194
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 196
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_1
    move-object v1, v5

    .line 200
    :goto_2
    instance-of v2, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    if-eqz v2, :cond_4

    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 201
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 204
    const-string v0, "xminymin"

    :cond_4
    const/4 v2, 0x2

    .line 207
    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    return-object v2
.end method

.method setPartOfClipPath(Z)V
    .locals 3

    .line 376
    invoke-super {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->setPartOfClipPath(Z)V

    .line 377
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 378
    instance-of v2, v1, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    if-eqz v2, :cond_0

    .line 379
    check-cast v1, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    invoke-virtual {v1, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->setPartOfClipPath(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
