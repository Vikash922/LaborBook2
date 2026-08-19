.class public Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;
.super Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;
.source "EllipticalCurveTo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;
    }
.end annotation


# static fields
.field static final ARGUMENT_SIZE:I = 0x7

.field private static final EPS:D = 1.0E-5


# instance fields
.field private startPoint:Lcom/itextpdf/kernel/geom/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;-><init>(Z)V

    return-void
.end method

.method private anglesAreEquals(DD)Z
    .locals 0

    sub-double/2addr p1, p3

    .line 652
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide p3, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static drawCurve(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 209
    iget-wide v3, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v5, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v7, v1, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v9, v1, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v11, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v13, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    move-object v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v11

    move-wide v11, v13

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method private getAngleBetweenVectors(DD)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    mul-double v2, p1, p1

    mul-double/2addr p3, p3

    add-double/2addr v2, p3

    .line 648
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    mul-double/2addr v0, p1

    const-wide p1, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, p1

    rem-double/2addr v0, p1

    return-wide v0
.end method

.method private getCoordinate(I)D
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private getEllipseCenterCoordinates(DDDDDZZDD)[D
    .locals 14

    .line 513
    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sub-double v2, p1, p13

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    sub-double v8, p3, p15

    mul-double/2addr v6, v8

    div-double/2addr v6, v4

    add-double/2addr v0, v6

    .line 514
    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    neg-double v6, v6

    mul-double/2addr v6, v2

    div-double/2addr v6, v4

    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    div-double/2addr v2, v4

    add-double/2addr v6, v2

    mul-double v2, p5, p5

    mul-double v8, v2, p7

    mul-double v8, v8, p7

    mul-double/2addr v2, v6

    mul-double/2addr v2, v6

    sub-double/2addr v8, v2

    mul-double v10, p7, p7

    mul-double/2addr v10, v0

    mul-double/2addr v10, v0

    sub-double/2addr v8, v10

    add-double/2addr v2, v10

    div-double/2addr v8, v2

    const-wide/16 v2, 0x0

    cmpg-double v10, v8, v2

    if-gez v10, :cond_1

    div-double v8, p5, p7

    mul-double/2addr v6, v6

    mul-double/2addr v0, v0

    mul-double v10, v8, v8

    div-double/2addr v0, v10

    add-double/2addr v6, v0

    cmpg-double v0, v6, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 526
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v6, v8, v0

    move-wide v8, v2

    goto :goto_1

    :cond_1
    move/from16 v2, p11

    move/from16 v3, p12

    if-ne v2, v3, :cond_2

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 529
    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    mul-double v8, v2, p5

    mul-double/2addr v8, v6

    div-double v6, v8, p7

    neg-double v2, v2

    mul-double v2, v2, p7

    mul-double/2addr v2, v0

    div-double v2, v2, p5

    move-wide/from16 v0, p7

    move-wide v8, v2

    move-wide v2, v6

    move-wide/from16 v6, p5

    .line 534
    :goto_1
    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v2

    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v8

    sub-double/2addr v10, v12

    add-double v12, p1, p13

    div-double/2addr v12, v4

    add-double/2addr v10, v12

    .line 535
    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v2, v12

    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v8, v12

    add-double/2addr v2, v8

    add-double v8, p3, p15

    div-double/2addr v8, v4

    add-double/2addr v2, v8

    const/4 v4, 0x4

    .line 537
    new-array v4, v4, [D

    const/4 v5, 0x0

    aput-wide v10, v4, v5

    const/4 v5, 0x1

    aput-wide v2, v4, v5

    const/4 v2, 0x2

    aput-wide v6, v4, v2

    const/4 v2, 0x3

    aput-wide v0, v4, v2

    return-object v4
.end method

.method private getEllipticalArcMinMaxPoints(DDDDDZZDD)[D
    .locals 39

    move-object/from16 v15, p0

    move-wide/from16 v13, p1

    move-wide/from16 v11, p3

    move-wide/from16 v9, p13

    move-wide/from16 v7, p15

    .line 424
    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    .line 425
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 426
    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    const-wide/16 v0, 0x0

    cmpl-double v2, v5, v0

    const/4 v3, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v23, 0x1

    const/16 v24, 0x0

    if-eqz v2, :cond_9

    cmpl-double v0, v19, v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    move/from16 v11, p11

    move/from16 v12, p12

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    .line 432
    invoke-direct/range {v0 .. v16}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getEllipseCenterCoordinates(DDDDDZZDD)[D

    move-result-object v0

    if-nez v0, :cond_1

    move-wide/from16 v11, p1

    move-wide/from16 v13, p13

    .line 435
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    move-wide/from16 v9, p3

    move-wide/from16 v7, p15

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    const/4 v15, 0x4

    new-array v8, v15, [D

    aput-wide v0, v8, v24

    aput-wide v2, v8, v23

    aput-wide v4, v8, v22

    aput-wide v6, v8, v21

    return-object v8

    :cond_1
    move-wide/from16 v11, p1

    move-wide/from16 v9, p3

    move-wide/from16 v13, p13

    move-wide/from16 v7, p15

    const/4 v15, 0x4

    .line 437
    aget-wide v19, v0, v24

    .line 438
    aget-wide v25, v0, v23

    .line 440
    aget-wide v1, v0, v22

    .line 441
    aget-wide v3, v0, v21

    move-object/from16 v0, p0

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    move-wide v13, v9

    move-wide/from16 v9, v25

    .line 443
    invoke-direct/range {v0 .. v10}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getExtremeCoordinatesAndAngles(DDDDD)[[D

    move-result-object v0

    .line 444
    aget-object v1, v0, v24

    .line 445
    aget-object v0, v0, v23

    .line 446
    aget-wide v2, v1, v24

    .line 447
    aget-wide v4, v1, v23

    .line 448
    aget-wide v6, v1, v22

    .line 449
    aget-wide v8, v1, v21

    .line 450
    aget-wide v16, v0, v24

    .line 451
    aget-wide v27, v0, v23

    .line 452
    aget-wide v29, v0, v22

    .line 453
    aget-wide v31, v0, v21

    sub-double v0, v11, v19

    move-wide/from16 v33, v2

    sub-double v2, v13, v25

    move-object/from16 v10, p0

    .line 456
    invoke-direct {v10, v0, v1, v2, v3}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v0

    move-wide/from16 p5, v0

    move-wide v2, v13

    move-wide/from16 v13, p13

    sub-double v0, v13, v19

    move-wide/from16 v18, v4

    move-wide/from16 v35, v6

    move-wide/from16 v4, p15

    sub-double v6, v4, v25

    .line 457
    invoke-direct {v10, v0, v1, v6, v7}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v0

    if-nez p12, :cond_2

    move-wide/from16 v6, p5

    goto :goto_0

    :cond_2
    move-wide v6, v0

    move-wide/from16 v0, p5

    :goto_0
    cmpl-double v20, v0, v6

    if-lez v20, :cond_3

    move/from16 v20, v23

    goto :goto_1

    :cond_3
    move/from16 v20, v24

    :goto_1
    if-eqz v20, :cond_4

    move-wide/from16 v37, v0

    move-wide v0, v6

    move-wide/from16 v6, v37

    :cond_4
    move-object/from16 p5, p0

    move-wide/from16 p6, v16

    move-wide/from16 p8, v0

    move-wide/from16 p10, v6

    move/from16 p12, v20

    .line 480
    invoke-direct/range {p5 .. p12}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->isPointOnTheArc(DDDZ)Z

    move-result v16

    if-nez v16, :cond_5

    .line 481
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    goto :goto_2

    :cond_5
    move-wide/from16 v16, v33

    :goto_2
    move-object/from16 p5, p0

    move-wide/from16 p6, v29

    move-wide/from16 p8, v0

    move-wide/from16 p10, v6

    move/from16 p12, v20

    .line 483
    invoke-direct/range {p5 .. p12}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->isPointOnTheArc(DDDZ)Z

    move-result v25

    if-nez v25, :cond_6

    .line 484
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    move-wide/from16 v35, v11

    :cond_6
    move-object/from16 p5, p0

    move-wide/from16 p6, v27

    move-wide/from16 p8, v0

    move-wide/from16 p10, v6

    move/from16 p12, v20

    .line 486
    invoke-direct/range {p5 .. p12}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->isPointOnTheArc(DDDZ)Z

    move-result v11

    if-nez v11, :cond_7

    .line 487
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    move-wide/from16 v18, v11

    :cond_7
    move-object/from16 p5, p0

    move-wide/from16 p6, v31

    move-wide/from16 p8, v0

    move-wide/from16 p10, v6

    move/from16 p12, v20

    .line 489
    invoke-direct/range {p5 .. p12}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->isPointOnTheArc(DDDZ)Z

    move-result v0

    if-nez v0, :cond_8

    .line 490
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 492
    :cond_8
    new-array v0, v15, [D

    aput-wide v16, v0, v24

    aput-wide v18, v0, v23

    aput-wide v35, v0, v22

    aput-wide v8, v0, v21

    return-object v0

    :cond_9
    :goto_3
    move-wide v4, v7

    move-object/from16 v37, v15

    move v15, v3

    move-wide v2, v11

    move-wide v11, v13

    move-wide v13, v9

    move-object/from16 v10, v37

    .line 429
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    new-array v4, v15, [D

    aput-wide v0, v4, v24

    aput-wide v6, v4, v23

    aput-wide v8, v4, v22

    aput-wide v2, v4, v21

    return-object v4
.end method

.method private getExtremeCoordinatesAndAngles(DDDDD)[[D
    .locals 31

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    const-wide/16 v7, 0x0

    .line 554
    invoke-direct {v0, v5, v6, v7, v8}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->anglesAreEquals(DD)Z

    move-result v9

    if-nez v9, :cond_5

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    invoke-direct {v0, v5, v6, v9, v10}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->anglesAreEquals(DD)Z

    move-result v11

    if-eqz v11, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 563
    invoke-direct {v0, v5, v6, v11, v12}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->anglesAreEquals(DD)Z

    move-result v11

    if-nez v11, :cond_4

    const-wide v11, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-direct {v0, v5, v6, v11, v12}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->anglesAreEquals(DD)Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_0

    .line 574
    :cond_1
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    div-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    neg-double v7, v7

    .line 575
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    mul-double/2addr v11, v3

    div-double/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    sub-double v11, v9, v11

    .line 577
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double v13, p7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    sub-double/2addr v13, v15

    .line 578
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    add-double v15, p7, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v17, v17, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    sub-double v15, v15, v17

    cmpl-double v17, v13, v15

    if-lez v17, :cond_2

    move-wide/from16 v27, v13

    move-wide v13, v15

    move-wide/from16 v15, v27

    move-wide/from16 v29, v7

    move-wide v7, v11

    move-wide/from16 v11, v29

    .line 588
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    add-double v17, p9, v17

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v7, v7, v19

    add-double v17, v17, v7

    sub-double v7, v13, p7

    sub-double v9, v17, p9

    .line 589
    invoke-direct {v0, v7, v8, v9, v10}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v7

    .line 590
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v9, v9, v17

    add-double v9, p9, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v11, v11, v17

    add-double/2addr v9, v11

    sub-double v11, v15, p7

    sub-double v9, v9, p9

    .line 591
    invoke-direct {v0, v11, v12, v9, v10}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v9

    .line 594
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    mul-double/2addr v11, v1

    div-double v11, v3, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    .line 595
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v17

    mul-double v17, v17, v1

    div-double v17, v3, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->atan(D)D

    move-result-wide v17

    const-wide v19, 0x400921fb54442d18L    # Math.PI

    add-double v17, v17, v19

    .line 597
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    add-double v19, p9, v19

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v21, v21, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    add-double v19, v19, v21

    .line 598
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v21, v21, v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    add-double v21, p9, v21

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v23, v23, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    add-double v21, v21, v23

    cmpl-double v23, v19, v21

    if-lez v23, :cond_3

    move-wide/from16 v27, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v27

    move-wide/from16 v29, v11

    move-wide/from16 v11, v17

    move-wide/from16 v17, v29

    .line 608
    :cond_3
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v23, v23, v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    add-double v23, p7, v23

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    mul-double v11, v11, v25

    sub-double v23, v23, v11

    sub-double v11, v23, p7

    sub-double v5, v19, p9

    .line 609
    invoke-direct {v0, v11, v12, v5, v6}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v5

    .line 610
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v1, v11

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v1, v11

    add-double v1, p7, v1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v3, v11

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v3, v11

    sub-double/2addr v1, v3

    sub-double v1, v1, p7

    sub-double v3, v21, p9

    .line 611
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v1

    goto :goto_2

    :cond_4
    :goto_0
    sub-double v13, p7, v3

    neg-double v5, v3

    .line 565
    invoke-direct {v0, v5, v6, v7, v8}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v5

    add-double v15, p7, v3

    .line 567
    invoke-direct {v0, v3, v4, v7, v8}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v9

    sub-double v19, p9, v1

    neg-double v3, v1

    .line 569
    invoke-direct {v0, v7, v8, v3, v4}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v3

    add-double v21, p9, v1

    .line 571
    invoke-direct {v0, v7, v8, v1, v2}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v1

    move-wide v7, v5

    move-wide v5, v3

    goto :goto_2

    :cond_5
    :goto_1
    sub-double v13, p7, v1

    neg-double v5, v1

    .line 556
    invoke-direct {v0, v5, v6, v7, v8}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v5

    add-double v15, p7, v1

    .line 558
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v9

    sub-double v19, p9, v3

    neg-double v1, v3

    .line 560
    invoke-direct {v0, v7, v8, v1, v2}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v1

    add-double v21, p9, v3

    .line 562
    invoke-direct {v0, v7, v8, v3, v4}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getAngleBetweenVectors(DD)D

    move-result-wide v3

    move-wide v7, v5

    move-wide v5, v1

    move-wide v1, v3

    :goto_2
    const/4 v3, 0x4

    .line 615
    new-array v4, v3, [D

    const/4 v11, 0x0

    aput-wide v13, v4, v11

    const/4 v12, 0x1

    aput-wide v19, v4, v12

    const/4 v13, 0x2

    aput-wide v15, v4, v13

    const/4 v14, 0x3

    aput-wide v21, v4, v14

    .line 617
    new-array v3, v3, [D

    aput-wide v7, v3, v11

    aput-wide v5, v3, v12

    aput-wide v9, v3, v13

    aput-wide v1, v3, v14

    .line 618
    filled-new-array {v4, v3}, [[D

    move-result-object v1

    return-object v1
.end method

.method private isPointOnTheArc(DDDZ)Z
    .locals 1

    cmpg-double p3, p3, p1

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    cmpl-double p1, p5, p1

    if-ltz p1, :cond_0

    move p1, p4

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eq p7, p1, :cond_1

    goto :goto_1

    :cond_1
    move p4, v0

    :goto_1
    return p4
.end method

.method private makePoints(Ljava/util/List;)[[Lcom/itextpdf/kernel/geom/Point;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[D>;)[[",
            "Lcom/itextpdf/kernel/geom/Point;"
        }
    .end annotation

    .line 213
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Lcom/itextpdf/kernel/geom/Point;

    const/4 v1, 0x0

    move v2, v1

    .line 214
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 215
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Lcom/itextpdf/kernel/geom/Point;

    aput-object v3, v0, v2

    move v3, v1

    .line 216
    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 217
    aget-object v4, v0, v2

    div-int/lit8 v5, v3, 0x2

    new-instance v6, Lcom/itextpdf/kernel/geom/Point;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    aget-wide v8, v7, v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    add-int/lit8 v10, v3, 0x1

    aget-wide v10, v7, v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    aput-object v6, v4, v5

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static rotate([[Lcom/itextpdf/kernel/geom/Point;DLcom/itextpdf/kernel/geom/Point;)[[Lcom/itextpdf/kernel/geom/Point;
    .locals 7

    const-wide/16 v0, 0x0

    .line 186
    invoke-static {p1, p2, v0, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(DD)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    array-length v0, p0

    new-array v0, v0, [[Lcom/itextpdf/kernel/geom/Point;

    .line 188
    iget-wide v3, p3, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v5, p3, Lcom/itextpdf/kernel/geom/Point;->y:D

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(DDD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    .line 190
    :goto_0
    array-length v1, p0

    if-ge p3, v1, :cond_1

    .line 191
    aget-object v1, p0, p3

    .line 192
    array-length v2, v1

    new-array v2, v2, [Lcom/itextpdf/kernel/geom/Point;

    move v3, p2

    .line 194
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 195
    aget-object v4, v1, v3

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 197
    :cond_0
    aput-object v2, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 112
    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    iget-object v3, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    iget-wide v3, v3, Lcom/itextpdf/kernel/geom/Point;->x:D

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    iget-object v7, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    iget-wide v7, v7, Lcom/itextpdf/kernel/geom/Point;->y:D

    mul-double/2addr v7, v5

    invoke-direct {v2, v3, v4, v7, v8}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 113
    iget-object v3, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v3, v3, v10

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    .line 114
    iget-object v3, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v3, v3, v11

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v6, v3

    .line 117
    iget-object v3, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v12, 0x2

    aget-object v3, v3, v12

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v13, 0x4076800000000000L    # 360.0

    rem-double/2addr v8, v13

    .line 119
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    .line 122
    iget-object v3, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v15, 0x3

    aget-object v3, v3, v15

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v8, 0x0

    invoke-static {v3, v8}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v3

    xor-int/lit8 v9, v3, 0x1

    .line 123
    iget-object v3, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    const/16 v16, 0x4

    aget-object v3, v3, v16

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3, v8}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v16

    xor-int/lit8 v8, v16, 0x1

    .line 125
    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    iget-object v15, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    const/16 v17, 0x5

    aget-object v15, v15, v17

    invoke-static {v15}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v15

    float-to-double v11, v15

    iget-object v15, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    const/16 v18, 0x6

    aget-object v15, v15, v18

    invoke-static {v15}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v15

    float-to-double v0, v15

    invoke-direct {v3, v11, v12, v0, v1}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 127
    iget-wide v0, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v11, v3, Lcom/itextpdf/kernel/geom/Point;->x:D

    invoke-static {v0, v1, v11, v12}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v11, v3, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-static {v0, v1, v11, v12}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 133
    invoke-static {v4, v5, v0, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(DD)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v6, v7, v0, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(DD)Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_3

    .line 145
    :cond_1
    invoke-static {v13, v14, v0, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(DD)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    invoke-static/range {v2 .. v9}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->getEllipse(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-result-object v0

    move-wide/from16 v18, v13

    goto :goto_0

    :cond_2
    neg-double v0, v13

    .line 148
    invoke-static {v0, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    .line 149
    iget-wide v11, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    neg-double v11, v11

    move-wide/from16 v18, v13

    iget-wide v13, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    neg-double v13, v13

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v3

    .line 151
    iget-wide v0, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v11, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v3, v0, v1, v11, v12}, Lcom/itextpdf/kernel/geom/Point;->translate(DD)V

    .line 152
    invoke-static/range {v2 .. v9}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->getEllipse(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-result-object v0

    .line 154
    :goto_0
    iget-object v1, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->ll:Lcom/itextpdf/kernel/geom/Point;

    iget-wide v1, v1, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-object v3, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->ll:Lcom/itextpdf/kernel/geom/Point;

    iget-wide v3, v3, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-object v5, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->ur:Lcom/itextpdf/kernel/geom/Point;

    iget-wide v5, v5, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-object v7, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->ur:Lcom/itextpdf/kernel/geom/Point;

    iget-wide v7, v7, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v11, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->startAng:D

    iget-wide v13, v0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->extent:D

    move-wide/from16 v20, v1

    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    move-wide/from16 v26, v7

    move-wide/from16 v28, v11

    move-wide/from16 v30, v13

    invoke-static/range {v20 .. v31}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bezierArc(DDDDDD)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->makePoints(Ljava/util/List;)[[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    if-nez v16, :cond_3

    .line 164
    aget-object v2, v0, v10

    aget-object v2, v2, v10

    move-wide/from16 v3, v18

    invoke-static {v0, v3, v4, v2}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->rotate([[Lcom/itextpdf/kernel/geom/Point;DLcom/itextpdf/kernel/geom/Point;)[[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 165
    :goto_1
    array-length v2, v0

    if-ge v10, v2, :cond_5

    .line 166
    aget-object v2, v0, v10

    const/4 v5, 0x1

    aget-object v3, v2, v5

    const/4 v4, 0x2

    aget-object v6, v2, v4

    const/4 v7, 0x3

    aget-object v2, v2, v7

    move-object/from16 v8, p1

    invoke-static {v8, v3, v6, v2}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->drawCurve(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v8, p1

    move-wide/from16 v3, v18

    const/4 v5, 0x1

    const/4 v7, 0x3

    .line 169
    array-length v2, v0

    sub-int/2addr v2, v5

    aget-object v2, v0, v2

    aget-object v2, v2, v7

    invoke-static {v0, v3, v4, v2}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->rotate([[Lcom/itextpdf/kernel/geom/Point;DLcom/itextpdf/kernel/geom/Point;)[[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 170
    array-length v2, v0

    sub-int/2addr v2, v5

    :goto_2
    if-ltz v2, :cond_5

    .line 171
    aget-object v3, v0, v2

    const/4 v4, 0x2

    aget-object v6, v3, v4

    aget-object v7, v3, v5

    aget-object v3, v3, v10

    invoke-static {v8, v6, v7, v3}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->drawCurve(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 137
    iget-wide v4, v3, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v2, v3, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v8, v4, v5, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_5
    return-void
.end method

.method getCoordinates()[Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    return-object v0
.end method

.method public getPathShapeRectangle(Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 24

    move-object/from16 v12, p0

    .line 376
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    const/4 v11, 0x0

    .line 377
    invoke-direct {v12, v11}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getCoordinate(I)D

    move-result-wide v5

    const/4 v9, 0x1

    invoke-direct {v12, v9}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getCoordinate(I)D

    move-result-wide v7

    const/4 v10, 0x2

    invoke-direct {v12, v10}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getCoordinate(I)D

    move-result-wide v17

    const/4 v0, 0x3

    .line 378
    invoke-direct {v12, v0}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getCoordinate(I)D

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_0

    move/from16 v19, v9

    goto :goto_0

    :cond_0
    move/from16 v19, v11

    :goto_0
    const/4 v13, 0x4

    invoke-direct {v12, v13}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getCoordinate(I)D

    move-result-wide v13

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_1

    move/from16 v20, v9

    goto :goto_1

    :cond_1
    move/from16 v20, v11

    :goto_1
    const/4 v13, 0x5

    .line 379
    invoke-direct {v12, v13}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getCoordinate(I)D

    move-result-wide v13

    const/4 v15, 0x6

    invoke-direct {v12, v15}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getCoordinate(I)D

    move-result-wide v15

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v22, v9

    move/from16 v23, v10

    move-wide/from16 v9, v17

    move/from16 v17, v11

    move/from16 v11, v19

    move/from16 v12, v20

    .line 376
    invoke-direct/range {v0 .. v16}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->getEllipticalArcMinMaxPoints(DDDDDZZDD)[D

    move-result-object v0

    .line 380
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    aget-wide v2, v0, v17

    invoke-static {v2, v3}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v2

    double-to-float v2, v2

    aget-wide v3, v0, v22

    .line 381
    invoke-static {v3, v4}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v3

    double-to-float v3, v3

    aget-wide v4, v0, v23

    aget-wide v6, v0, v17

    sub-double/2addr v4, v6

    .line 382
    invoke-static {v4, v5}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v4

    double-to-float v4, v4

    aget-wide v5, v0, v21

    aget-wide v7, v0, v22

    sub-double/2addr v5, v7

    .line 383
    invoke-static {v5, v6}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v1
.end method

.method public setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V
    .locals 6

    .line 90
    iput-object p2, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 91
    array-length v0, p1

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 97
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    const/4 p2, 0x2

    new-array v5, p2, [D

    aput-wide v0, v5, v2

    const/4 v0, 0x1

    aput-wide v3, v5, v0

    .line 102
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v3, p1, v1

    aput-object v3, p2, v2

    const/4 v3, 0x6

    aget-object p1, p1, v3

    aput-object p1, p2, v0

    .line 104
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->copier:Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;

    invoke-interface {p1, p2, v5}, Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;->makeCoordinatesAbsolute([Ljava/lang/String;[D)[Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    aget-object v2, p1, v2

    aput-object v2, p2, v1

    .line 106
    iget-object p2, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;->coordinates:[Ljava/lang/String;

    aget-object p1, p1, v0

    aput-object p1, p2, v3

    :cond_0
    return-void

    .line 92
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 95
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 93
    const-string v0, "(rx ry rot largearc sweep x y)+ parameters are expected for elliptical arcs. Got: {0}"

    invoke-static {v0, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
