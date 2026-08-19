.class public Lcom/itextpdf/layout/renderer/ImageRenderer;
.super Lcom/itextpdf/layout/renderer/AbstractRenderer;
.source "ImageRenderer.java"

# interfaces
.implements Lcom/itextpdf/layout/renderer/ILeafElementRenderer;


# instance fields
.field protected deltaX:F

.field private doesObjectFitRequireCutting:Z

.field protected fixedXPosition:Ljava/lang/Float;

.field protected fixedYPosition:Ljava/lang/Float;

.field private height:Ljava/lang/Float;

.field protected imageHeight:F

.field protected imageWidth:F

.field private initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

.field matrix:[F

.field protected pivotY:F

.field private renderedImageHeight:F

.field private renderedImageWidth:F

.field private rotatedDeltaX:F

.field private rotatedDeltaY:F

.field private width:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/Image;)V
    .locals 1

    .line 102
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    const/4 v0, 0x6

    .line 86
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->matrix:[F

    .line 103
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Image;->getImageWidth()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    .line 104
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Image;->getImageHeight()F

    move-result p1

    iput p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    return-void
.end method

.method private adjustPositionAfterRotation(FFF)F
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    float-to-double v1, v1

    .line 579
    invoke-static {v1, v2}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    .line 580
    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(II)V

    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v5}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    .line 581
    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    iget-object v6, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide/16 v8, 0x0

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v6, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v6}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    invoke-virtual {v1, v5, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v5

    .line 582
    new-instance v6, Lcom/itextpdf/kernel/geom/Point;

    iget-object v7, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v10, v7

    invoke-direct {v6, v10, v11, v8, v9}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v7, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v7}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v6

    .line 583
    new-instance v7, Lcom/itextpdf/kernel/geom/Point;

    iget-object v8, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    iget-object v10, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-double v10, v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v8, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v8}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    invoke-virtual {v1, v7, v8}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    .line 585
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v7

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v9

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v11

    new-array v13, v3, [D

    aput-wide v7, v13, v4

    const/4 v7, 0x1

    aput-wide v9, v13, v7

    const/4 v8, 0x2

    aput-wide v11, v13, v8

    .line 586
    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v9

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v11

    new-array v1, v3, [D

    aput-wide v9, v1, v4

    aput-wide v5, v1, v7

    aput-wide v11, v1, v8

    .line 588
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v5

    .line 589
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v7

    move v11, v4

    move-wide v9, v5

    :goto_0
    if-ge v11, v3, :cond_0

    .line 593
    aget-wide v14, v13, v11

    .line 594
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 595
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move-wide v11, v7

    :goto_1
    if-ge v4, v3, :cond_1

    .line 597
    aget-wide v13, v1, v4

    .line 598
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    .line 599
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    sub-double/2addr v7, v11

    double-to-float v1, v7

    .line 602
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    sub-double/2addr v9, v5

    double-to-float v1, v9

    .line 603
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 604
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v1

    sub-double/2addr v1, v11

    double-to-float v1, v1

    iput v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->pivotY:F

    double-to-float v1, v5

    neg-float v1, v1

    .line 606
    iput v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->deltaX:F

    .line 611
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 612
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float v1, p2, v1

    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float v2, p3, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 613
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float v1, p2, v1

    .line 614
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v3, p2, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 615
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    goto/16 :goto_2

    .line 617
    :cond_3
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float v1, p3, v1

    .line 618
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v3, p3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 619
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    goto :goto_2

    .line 621
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 622
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float v1, p2, v1

    .line 623
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 624
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    goto :goto_2

    .line 625
    :cond_5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 626
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float v1, p3, v1

    .line 627
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 628
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    goto :goto_2

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 630
    :goto_2
    iget v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->pivotY:F

    mul-float/2addr v2, v1

    iput v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->pivotY:F

    .line 631
    iget v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->deltaX:F

    mul-float/2addr v2, v1

    iput v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->deltaX:F

    return v1
.end method

.method private applyConcatMatrix(Lcom/itextpdf/layout/renderer/DrawContext;Ljava/lang/Float;)V
    .locals 17

    move-object/from16 v0, p0

    .line 647
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getBorderAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 650
    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/ImageRenderer;->rectangleToPointsList(Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->transformPoints(Ljava/util/List;Lcom/itextpdf/kernel/geom/AffineTransform;)Ljava/util/List;

    move-result-object v3

    .line 652
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    add-float/2addr v5, v2

    invoke-virtual {v0, v4, v5, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->calculateShiftToPositionBBoxOfPointsAt(FFLjava/util/List;)[F

    move-result-object v2

    const/4 v3, 0x6

    .line 654
    new-array v3, v3, [D

    .line 655
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([D)V

    .line 657
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    const/4 v1, 0x0

    aget-wide v5, v3, v1

    const/4 v7, 0x1

    aget-wide v8, v3, v7

    const/4 v10, 0x2

    aget-wide v10, v3, v10

    const/4 v12, 0x3

    aget-wide v12, v3, v12

    aget v1, v2, v1

    float-to-double v14, v1

    aget v1, v2, v7

    float-to-double v1, v1

    move-wide v7, v8

    move-wide v9, v10

    move-wide v11, v12

    move-wide v13, v14

    move-wide v15, v1

    invoke-virtual/range {v4 .. v16}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method private applyObjectFit(Lcom/itextpdf/layout/properties/ObjectFit;FF)V
    .locals 9

    float-to-double v1, p2

    float-to-double v3, p3

    .line 479
    iget-object p2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 480
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v5, p2

    iget-object p2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v7, p2

    move-object v0, p1

    .line 479
    invoke-static/range {v0 .. v8}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitCalculator;->calculateRenderedImageSize(Lcom/itextpdf/layout/properties/ObjectFit;DDDD)Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;->getRenderedImageWidth()D

    move-result-wide p2

    double-to-float p2, p2

    iput p2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageWidth:F

    .line 482
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;->getRenderedImageHeight()D

    move-result-wide p2

    double-to-float p2, p2

    iput p2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageHeight:F

    .line 483
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/objectfit/ObjectFitApplyingResult;->isImageCuttingRequired()Z

    move-result p1

    iput-boolean p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->doesObjectFitRequireCutting:Z

    return-void
.end method

.method private applyRotationLayout(F)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v2

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getBorderAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    const/4 v4, 0x3

    .line 664
    aget-object v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    :goto_0
    const/4 v6, 0x1

    .line 665
    aget-object v6, v2, v6

    if-nez v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v6

    :goto_1
    const/4 v7, 0x0

    .line 666
    aget-object v2, v2, v7

    if-nez v2, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v2

    :goto_2
    cmpl-float v7, v4, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    if-eqz v7, :cond_4

    float-to-double v10, v2

    .line 668
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    float-to-double v12, v4

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v7, v10

    div-float v10, v2, v4

    float-to-double v10, v10

    .line 669
    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    cmpg-float v14, v1, v5

    if-gez v14, :cond_3

    neg-double v10, v10

    :cond_3
    float-to-double v14, v7

    float-to-double v8, v1

    sub-double/2addr v8, v10

    .line 673
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v14, v7

    sub-double/2addr v14, v12

    double-to-float v7, v14

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iput v7, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaX:F

    goto :goto_3

    .line 675
    :cond_4
    iput v5, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaX:F

    .line 678
    :goto_3
    iget v7, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaX:F

    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 679
    iget-object v7, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    iget-object v8, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    iget v9, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaX:F

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    cmpl-float v7, v6, v5

    if-eqz v7, :cond_6

    float-to-double v7, v2

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 682
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    float-to-double v13, v4

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v4, v9

    div-float v2, v6, v2

    float-to-double v9, v2

    .line 683
    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    cmpg-float v2, v1, v5

    if-gez v2, :cond_5

    neg-double v9, v9

    :cond_5
    float-to-double v11, v4

    float-to-double v13, v1

    sub-double/2addr v13, v9

    .line 687
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v11, v9

    sub-double/2addr v11, v7

    double-to-float v2, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaY:F

    goto :goto_4

    .line 689
    :cond_6
    iput v5, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaY:F

    .line 692
    :goto_4
    iget v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaY:F

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    cmpg-float v1, v1, v5

    if-gez v1, :cond_7

    .line 694
    iget v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaY:F

    add-float/2addr v1, v6

    iput v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaY:F

    .line 696
    :cond_7
    iget-object v1, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    iget v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaY:F

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method

.method private beginObjectFitImageClipping(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 5

    .line 487
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->doesObjectFitRequireCutting:Z

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 489
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    .line 490
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 491
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_0
    return-void
.end method

.method private calculateImageDimensions(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;)V
    .locals 9

    const/16 v0, 0x4d

    .line 502
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 503
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveHeight()Ljava/lang/Float;

    move-result-object v0

    .line 504
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 505
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 506
    iget v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 507
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 509
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 511
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    :cond_3
    :goto_1
    const/16 v1, 0x1d

    const/high16 v2, 0x3f800000    # 1.0f

    .line 514
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    const/16 v3, 0x4c

    .line 515
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    .line 518
    instance-of p3, p3, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz p3, :cond_4

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 519
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    div-float/2addr v4, v5

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 520
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 523
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-eqz v4, :cond_6

    if-eqz p3, :cond_5

    .line 525
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v7, v4

    invoke-virtual {p2, v7, v8, v5, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    .line 526
    iget v4, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    goto :goto_2

    .line 528
    :cond_5
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 531
    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_8

    if-eqz p3, :cond_7

    .line 533
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    float-to-double v1, p3

    invoke-virtual {p2, v5, v6, v1, v2}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    .line 534
    iget p2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    goto :goto_3

    .line 536
    :cond_7
    iget-object p2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 541
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveMinWidth(F)Ljava/lang/Float;

    move-result-object p2

    .line 542
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveMaxWidth(F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p2, :cond_9

    .line 543
    iget-object p3, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float p3, p3, v1

    if-gez p3, :cond_9

    .line 544
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr p3, v1

    mul-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 545
    iput-object p2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    goto :goto_4

    :cond_9
    if-eqz p1, :cond_a

    .line 546
    iget-object p2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_a

    .line 547
    iget-object p2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr p3, v1

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 548
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 552
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveMinHeight()Ljava/lang/Float;

    move-result-object p1

    .line 553
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object p2

    if-eqz p1, :cond_b

    .line 554
    iget-object p3, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float p3, p3, v1

    if-gez p3, :cond_b

    .line 555
    iget-object p2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr p3, v0

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 556
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    goto :goto_5

    :cond_b
    if-eqz p2, :cond_c

    .line 557
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_c

    .line 558
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr p3, v0

    mul-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 559
    iput-object p2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    goto :goto_5

    :cond_c
    if-eqz v0, :cond_d

    .line 560
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {p1, v0}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 561
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object p3, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    div-float/2addr p2, p3

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    .line 562
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    :cond_d
    :goto_5
    return-void
.end method

.method private endObjectFitImageClipping(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1

    .line 496
    iget-boolean v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->doesObjectFitRequireCutting:Z

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_0
    return-void
.end method

.method private getMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;FF)V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->matrix:[F

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([F)V

    .line 568
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/Image;

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/layout/element/Image;

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Image;->getXObject()Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object p1

    .line 569
    instance-of p1, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz p1, :cond_0

    .line 570
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->matrix:[F

    const/4 v0, 0x0

    aget v1, p1, v0

    mul-float/2addr v1, p2

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 571
    aget v1, p1, v0

    mul-float/2addr v1, p2

    aput v1, p1, v0

    const/4 p2, 0x2

    .line 572
    aget v0, p1, p2

    mul-float/2addr v0, p3

    aput v0, p1, p2

    const/4 p2, 0x3

    .line 573
    aget v0, p1, p2

    mul-float/2addr v0, p3

    aput v0, p1, p2

    :cond_0
    return-void
.end method

.method private translateImage(FFLcom/itextpdf/kernel/geom/AffineTransform;)V
    .locals 2

    float-to-double v0, p1

    float-to-double p1, p2

    .line 636
    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 637
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->matrix:[F

    invoke-virtual {p3, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([F)V

    .line 638
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    if-eqz p1, :cond_0

    .line 639
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateX()D

    move-result-wide v0

    double-to-float p2, v0

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    .line 641
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    if-eqz p1, :cond_1

    .line 642
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateY()D

    move-result-wide p2

    double-to-float p2, p2

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    :cond_1
    return-void
.end method


# virtual methods
.method protected applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    return-object p1
.end method

.method protected autoScale(Lcom/itextpdf/layout/layout/LayoutArea;)Lcom/itextpdf/layout/renderer/ImageRenderer;
    .locals 3

    .line 465
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    const/4 v0, 0x0

    .line 466
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 467
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 469
    iget v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v0, v1

    .line 470
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    mul-float/2addr v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 471
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->updateHeight(Lcom/itextpdf/layout/properties/UnitValue;)V

    .line 472
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    mul-float/2addr v0, p1

    invoke-static {v0}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->updateWidth(Lcom/itextpdf/layout/properties/UnitValue;)V

    :cond_0
    return-object p0
.end method

.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 281
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    if-nez v2, :cond_0

    .line 282
    const-class v1, Lcom/itextpdf/layout/renderer/ImageRenderer;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 283
    const-string v2, "Drawing won\'t be performed."

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Occupied area has not been initialized. {0}"

    invoke-static {v3, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 288
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->isRelativePosition()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 290
    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyRelativePositioningTranslation(Z)V

    .line 293
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    const/16 v7, 0x6c

    .line 298
    invoke-virtual {v0, v7}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-nez v7, :cond_2

    move v8, v6

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isArtifact(Lcom/itextpdf/layout/IPropertyContainer;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 304
    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->useAutoTaggingPointerAndRememberItsPosition(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v5

    .line 305
    invoke-virtual {v7, v0, v5}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 306
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v9

    invoke-static {v0, v5}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->getLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->addAttributes(ILcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    goto :goto_0

    :cond_3
    move v8, v3

    move-object v7, v5

    .line 312
    :cond_4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/itextpdf/layout/renderer/ImageRenderer;->beginTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    const/16 v9, 0x37

    .line 314
    invoke-virtual {v0, v9}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 316
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 317
    invoke-direct {v0, v1, v9}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyConcatMatrix(Lcom/itextpdf/layout/renderer/DrawContext;Ljava/lang/Float;)V

    .line 320
    :cond_5
    invoke-super/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    invoke-virtual {v0, v10, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v10

    invoke-virtual {v0, v1, v10, v6}, Lcom/itextpdf/layout/renderer/ImageRenderer;->clipBackgroundArea(Lcom/itextpdf/layout/renderer/DrawContext;Lcom/itextpdf/kernel/geom/Rectangle;Z)Z

    move-result v10

    .line 323
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v0, v11, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 324
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v12

    invoke-virtual {v0, v11, v12, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 326
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    if-nez v11, :cond_6

    .line 327
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v11

    iget v12, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->pivotY:F

    add-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    .line 329
    :cond_6
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    if-nez v11, :cond_7

    .line 330
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v11}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    :cond_7
    if-eqz v9, :cond_8

    .line 334
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaX:F

    add-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iput-object v9, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    .line 335
    iget-object v9, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->rotatedDeltaY:F

    sub-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iput-object v9, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 338
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v9

    if-eqz v4, :cond_a

    if-eqz v8, :cond_9

    .line 341
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;-><init>()V

    invoke-virtual {v9, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 343
    :cond_9
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getTagReference()Lcom/itextpdf/kernel/pdf/tagutils/TagReference;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/tagutils/TagReference;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 348
    :cond_a
    :goto_1
    invoke-direct {v0, v9}, Lcom/itextpdf/layout/renderer/ImageRenderer;->beginObjectFitImageClipping(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/element/Image;

    move-object v11, v5

    check-cast v11, Lcom/itextpdf/layout/element/Image;

    invoke-virtual {v5}, Lcom/itextpdf/layout/element/Image;->getXObject()Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v5

    .line 351
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 353
    iget-object v11, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget v12, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageWidth:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    .line 354
    iget-object v13, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iget v14, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageHeight:F

    sub-float/2addr v13, v14

    div-float/2addr v13, v12

    .line 355
    iget-object v12, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->matrix:[F

    aget v3, v12, v3

    aget v14, v12, v6

    const/4 v15, 0x2

    aget v15, v12, v15

    const/16 v16, 0x3

    aget v16, v12, v16

    iget-object v12, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget v6, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->deltaX:F

    add-float/2addr v12, v6

    add-float v17, v12, v11

    iget-object v6, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    .line 356
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float v18, v6, v13

    move-object v11, v9

    move-object v12, v5

    move v13, v3

    .line 355
    invoke-virtual/range {v11 .. v18}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 358
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 359
    invoke-direct {v0, v9}, Lcom/itextpdf/layout/renderer/ImageRenderer;->endObjectFitImageClipping(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->endTransformationIfApplied(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 362
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 363
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->flush()V

    :cond_b
    if-eqz v4, :cond_c

    .line 367
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_c
    if-eqz v10, :cond_d

    .line 371
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_d
    const/4 v1, 0x1

    if-eqz v2, :cond_e

    .line 375
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyRelativePositioningTranslation(Z)V

    .line 377
    :cond_e
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 378
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    if-eqz v4, :cond_f

    if-nez v8, :cond_f

    .line 381
    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishTaggingHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 382
    invoke-virtual {v7, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->restoreAutoTaggingPointerPosition(Lcom/itextpdf/layout/renderer/IRenderer;)V

    :cond_f
    return-void
.end method

.method public getAscent()F
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    return v0
.end method

.method getAspectRatio()Ljava/lang/Float;
    .locals 2

    .line 418
    iget v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    iget v1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getBorderAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 394
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 396
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->isRelativePosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyRelativePositioningTranslation(Z)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 401
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 402
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public getDescent()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImageHeight()F
    .locals 1

    .line 436
    iget v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    return v0
.end method

.method public getImageWidth()F
    .locals 1

    .line 427
    iget v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    return v0
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 5

    .line 461
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v3

    const v4, 0x49742400    # 1000000.0f

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    return-object v0
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method hasAspectRatio()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 20

    move-object/from16 v6, p0

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    .line 110
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    .line 112
    new-instance v9, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v9}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/itextpdf/layout/element/Image;

    move-object v0, v10

    check-cast v0, Lcom/itextpdf/layout/element/Image;

    .line 114
    invoke-virtual {v10}, Lcom/itextpdf/layout/element/Image;->getXObject()Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v11

    .line 116
    invoke-direct {v6, v8, v9, v11}, Lcom/itextpdf/layout/renderer/ImageRenderer;->calculateImageDimensions(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;)V

    .line 118
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v1, 0x67

    .line 119
    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    :goto_0
    move-object v12, v0

    .line 123
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x76

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v14, v0

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 127
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v15

    .line 128
    invoke-static {v6, v15, v8}, Lcom/itextpdf/layout/renderer/FloatingHelper;->calculateClearHeightCorrection(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;)F

    move-result v5

    const/16 v0, 0x63

    .line 129
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/itextpdf/layout/properties/FloatPropertyValue;

    .line 130
    invoke-static {v6, v4}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/properties/FloatPropertyValue;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {v8, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 132
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v13, v3

    move-object v3, v15

    move-object/from16 v16, v10

    move v10, v5

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustFloatedBlockLayoutBox(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/util/List;Lcom/itextpdf/layout/properties/FloatPropertyValue;Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Ljava/lang/Float;

    move v5, v10

    goto :goto_2

    :cond_2
    move-object v13, v3

    move-object/from16 v16, v10

    move v10, v5

    .line 134
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-static {v15, v8, v0, v10, v13}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustLayoutBoxAccordingToFloats(Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;FLcom/itextpdf/layout/margincollapse/MarginsCollapseHandler;)F

    move-result v5

    :goto_2
    const/4 v0, 0x0

    .line 137
    invoke-virtual {v6, v8, v0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v1

    .line 139
    invoke-virtual {v6, v8, v1, v0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveMaxHeight()Ljava/lang/Float;

    move-result-object v0

    .line 142
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_3

    .line 143
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 144
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->isClippedHeight()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x68

    .line 146
    invoke-interface {v0, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    goto :goto_4

    .line 144
    :cond_5
    :goto_3
    sget-object v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    .line 147
    :goto_4
    invoke-static {v12}, Lcom/itextpdf/layout/renderer/ImageRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    if-eqz v14, :cond_6

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    move v2, v3

    .line 148
    :goto_6
    invoke-static {v0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v0

    xor-int/2addr v0, v3

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->isAbsolutePosition()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 150
    invoke-virtual {v6, v8}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyAbsolutePosition(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 152
    :cond_8
    new-instance v4, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v10

    new-instance v12, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v14

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v17

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v18

    add-float v13, v17, v18

    const/4 v3, 0x0

    invoke-direct {v12, v14, v13, v3, v3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v4, v10, v12}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v4, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 154
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->addPageByID(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 156
    iget-object v4, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 157
    iget-object v10, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->isFixedLayout()Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x22

    .line 160
    invoke-virtual {v6, v12}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v12

    iput-object v12, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    const/16 v12, 0xe

    .line 161
    invoke-virtual {v6, v12}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v12

    iput-object v12, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    :cond_9
    const/16 v12, 0x37

    .line 164
    invoke-virtual {v6, v12}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v12

    if-nez v12, :cond_a

    .line 167
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 169
    :cond_a
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v13

    float-to-double v13, v13

    invoke-virtual {v9, v13, v14}, Lcom/itextpdf/kernel/geom/AffineTransform;->rotate(D)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v13

    iput-object v13, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 171
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v14

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    invoke-direct {v6, v13, v14, v3}, Lcom/itextpdf/layout/renderer/ImageRenderer;->adjustPositionAfterRotation(FFF)F

    move-result v3

    mul-float/2addr v10, v3

    mul-float/2addr v4, v3

    .line 176
    iget-object v13, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v13, v10}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 177
    iget-object v13, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v13, v10}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 178
    iget-object v13, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v13, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 179
    instance-of v11, v11, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v11, :cond_b

    float-to-double v13, v3

    .line 180
    invoke-virtual {v9, v13, v14, v13, v14}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    .line 186
    :cond_b
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/element/Image;->getObjectFit()Lcom/itextpdf/layout/properties/ObjectFit;

    move-result-object v11

    iget v13, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    iget v14, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageHeight:F

    invoke-direct {v6, v11, v13, v14}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyObjectFit(Lcom/itextpdf/layout/properties/ObjectFit;FF)V

    .line 187
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/layout/element/Image;->getObjectFit()Lcom/itextpdf/layout/properties/ObjectFit;

    move-result-object v11

    sget-object v13, Lcom/itextpdf/layout/properties/ObjectFit;->FILL:Lcom/itextpdf/layout/properties/ObjectFit;

    if-ne v11, v13, :cond_c

    move v11, v4

    move v13, v10

    goto :goto_7

    .line 191
    :cond_c
    iget v11, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageWidth:F

    .line 192
    iget v13, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageHeight:F

    .line 194
    :goto_7
    invoke-direct {v6, v9, v11, v13}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;FF)V

    .line 198
    iget-object v11, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v13

    const v14, 0x38d1b717    # 1.0E-4f

    add-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-gtz v11, :cond_e

    iget-object v11, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v13

    add-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-lez v11, :cond_d

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 199
    :cond_e
    :goto_8
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v13, 0x1a

    invoke-virtual {v6, v13}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v0, 0x1

    goto :goto_a

    .line 203
    :cond_f
    iget-object v11, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v13

    add-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-lez v11, :cond_10

    goto :goto_9

    :cond_10
    const/4 v2, 0x1

    .line 206
    :goto_9
    iget-object v11, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    add-float/2addr v8, v14

    cmpl-float v8, v11, v8

    if-lez v8, :cond_11

    and-int/2addr v0, v2

    goto :goto_a

    :cond_11
    move v0, v2

    :goto_a
    if-nez v0, :cond_12

    .line 212
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 213
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v6, v0, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 214
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 215
    new-instance v7, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v3, 0x0

    const/4 v1, 0x3

    move-object v0, v7

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v7

    .line 219
    :cond_12
    :goto_b
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    iget-object v8, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v2, v8}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x3

    .line 220
    aget-object v8, v1, v2

    if-eqz v8, :cond_13

    .line 221
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v8, v13

    aget-object v11, v1, v2

    invoke-virtual {v11}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v11

    mul-float/2addr v8, v11

    .line 222
    iget v11, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageHeight:F

    iget-object v13, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    div-float/2addr v11, v13

    .line 223
    iget-object v13, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    add-float/2addr v13, v8

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    iput-object v13, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    .line 224
    iget v13, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageHeight:F

    mul-float/2addr v8, v11

    add-float/2addr v13, v8

    iput v13, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->renderedImageHeight:F

    .line 226
    :cond_13
    iget-object v8, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    iget-object v11, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->height:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v8, v11}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 227
    iget-object v8, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    iget-object v11, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->width:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v8, v11}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    const/16 v8, 0x2c

    .line 229
    invoke-virtual {v6, v8}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v11

    .line 230
    invoke-virtual {v11}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v13

    const-string v14, "Property {0} in percents is not supported"

    const-class v16, Lcom/itextpdf/layout/renderer/ImageRenderer;

    if-nez v13, :cond_14

    .line 231
    invoke-static/range {v16 .. v16}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v13

    .line 233
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 232
    invoke-static {v14, v8}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v13, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_14
    const/16 v8, 0x2e

    .line 235
    invoke-virtual {v6, v8}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v13

    .line 236
    invoke-virtual {v13}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v19

    if-nez v19, :cond_15

    .line 237
    invoke-static/range {v16 .. v16}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 239
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 238
    invoke-static {v14, v8}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 242
    :cond_15
    invoke-virtual {v11}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    const/4 v8, 0x0

    cmpl-float v2, v8, v2

    if-nez v2, :cond_16

    invoke-virtual {v13}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_17

    .line 243
    :cond_16
    invoke-virtual {v11}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    invoke-virtual {v13}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v8

    invoke-direct {v6, v2, v8, v9}, Lcom/itextpdf/layout/renderer/ImageRenderer;->translateImage(FFLcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 244
    invoke-direct {v6, v9, v4, v10}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;FF)V

    .line 247
    :cond_17
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v6, v2, v1, v4}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 248
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v6, v1, v4}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 250
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_18

    .line 251
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {v6, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyRotationLayout(F)V

    .line 254
    :cond_18
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    div-float/2addr v1, v3

    .line 255
    new-instance v3, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-direct {v3, v1, v1, v2}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(FFF)V

    const/16 v8, 0x4d

    .line 256
    invoke-virtual {v6, v8}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz v8, :cond_19

    .line 258
    invoke-virtual {v8}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 259
    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    .line 260
    iget v2, v6, Lcom/itextpdf/layout/renderer/ImageRenderer;->imageWidth:F

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/itextpdf/layout/renderer/ImageRenderer;->retrieveWidth(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v2, v4

    mul-float/2addr v1, v2

    .line 261
    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    goto :goto_e

    :cond_19
    const/4 v1, 0x3

    .line 263
    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v4

    goto :goto_c

    :cond_1a
    const/4 v1, 0x0

    :goto_c
    const/4 v2, 0x5

    .line 264
    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/renderer/ImageRenderer;->hasProperty(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/renderer/ImageRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_d

    :cond_1b
    const/4 v4, 0x0

    :goto_d
    if-nez v1, :cond_1c

    if-eqz v4, :cond_1d

    :cond_1c
    const/4 v1, 0x0

    .line 266
    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    .line 270
    :cond_1d
    :goto_e
    invoke-static {v15, v6}, Lcom/itextpdf/layout/renderer/FloatingHelper;->removeFloatsAboveRendererBottom(Ljava/util/List;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v6, v15, v1, v5, v2}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustResultOccupiedAreaForFloatAndClear(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/util/List;Lcom/itextpdf/kernel/geom/Rectangle;FZ)Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v9

    .line 273
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/ImageRenderer;->applyAbsolutePositionIfNeeded(Lcom/itextpdf/layout/layout/LayoutContext;)V

    .line 275
    new-instance v1, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    if-eqz v0, :cond_1e

    move-object v12, v6

    goto :goto_f

    :cond_1e
    const/4 v12, 0x0

    :goto_f
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 276
    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    move-result-object v0

    return-object v0
.end method

.method public move(FF)V
    .locals 1

    .line 446
    invoke-super {p0, p1, p2}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->move(FF)V

    .line 447
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 449
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->initialOccupiedAreaBBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedXPosition:Ljava/lang/Float;

    .line 454
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    if-eqz p1, :cond_2

    .line 455
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;->fixedYPosition:Ljava/lang/Float;

    :cond_2
    return-void
.end method
