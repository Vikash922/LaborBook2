.class Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;
.super Ljava/lang/Object;
.source "EllipticalCurveTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EllipseArc"
.end annotation


# instance fields
.field final extent:D

.field final ll:Lcom/itextpdf/kernel/geom/Point;

.field final startAng:D

.field final ur:Lcom/itextpdf/kernel/geom/Point;


# direct methods
.method constructor <init>(Lcom/itextpdf/kernel/geom/Point;DDDD)V
    .locals 5

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    iget-wide v1, p1, Lcom/itextpdf/kernel/geom/Point;->x:D

    sub-double/2addr v1, p2

    iget-wide v3, p1, Lcom/itextpdf/kernel/geom/Point;->y:D

    sub-double/2addr v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->ll:Lcom/itextpdf/kernel/geom/Point;

    .line 238
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    iget-wide v1, p1, Lcom/itextpdf/kernel/geom/Point;->x:D

    add-double/2addr v1, p2

    iget-wide p1, p1, Lcom/itextpdf/kernel/geom/Point;->y:D

    add-double/2addr p1, p4

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->ur:Lcom/itextpdf/kernel/geom/Point;

    .line 239
    iput-wide p6, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->startAng:D

    .line 240
    iput-wide p8, p0, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->extent:D

    return-void
.end method

.method static calculateAngle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DD)D
    .locals 8

    .line 352
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v2, p1, Lcom/itextpdf/kernel/geom/Point;->x:D

    sub-double/2addr v0, v2

    div-double/2addr v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v6, p1, Lcom/itextpdf/kernel/geom/Point;->y:D

    sub-double/2addr v4, v6

    div-double/2addr v4, p4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 354
    iget-wide v2, p0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v4, p1, Lcom/itextpdf/kernel/geom/Point;->x:D

    sub-double/2addr v2, v4

    div-double/2addr v2, p2

    .line 355
    iget-wide p2, p0, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide p0, p1, Lcom/itextpdf/kernel/geom/Point;->y:D

    sub-double/2addr p2, p0

    div-double/2addr p2, p4

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    .line 357
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const-wide/high16 p4, -0x4010000000000000L    # -1.0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    const-wide/16 p4, 0x0

    cmpl-double v2, p0, p4

    if-ltz v2, :cond_0

    cmpl-double v3, p2, p4

    if-gez v3, :cond_1

    :cond_0
    cmpg-double v3, p0, p4

    if-gez v3, :cond_2

    cmpl-double v3, p2, p4

    if-ltz v3, :cond_2

    .line 360
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->toDegrees(D)D

    move-result-wide v0

    :cond_2
    if-ltz v2, :cond_3

    cmpg-double v2, p2, p4

    if-ltz v2, :cond_4

    :cond_3
    cmpg-double v2, p0, p4

    if-gez v2, :cond_5

    cmpg-double p2, p2, p4

    if-gez p2, :cond_5

    .line 363
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->toDegrees(D)D

    move-result-wide p0

    const-wide p2, 0x4076800000000000L    # 360.0

    sub-double v0, p2, p0

    :cond_5
    return-wide v0
.end method

.method static calculatePossibleMiddle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 280
    iget-wide v1, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v3, v3, p2

    sub-double/2addr v1, v3

    .line 281
    iget-wide v3, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v7, v7, p4

    sub-double/2addr v3, v7

    .line 282
    new-instance v7, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v7, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 284
    iget-wide v1, v6, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v3, v7, Lcom/itextpdf/kernel/geom/Point;->x:D

    sub-double/2addr v1, v3

    div-double v1, v1, p2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-wide v8, v6, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v10, v7, Lcom/itextpdf/kernel/geom/Point;->y:D

    sub-double/2addr v8, v10

    div-double v8, v8, p4

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 290
    invoke-static {v1, v2, v3, v4}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(DD)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    move-object v1, v7

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 292
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->calculateAngle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DD)D

    move-result-wide v8

    move-object/from16 v0, p1

    .line 293
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->calculateAngle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DD)D

    move-result-wide v0

    sub-double v2, v0, v8

    .line 298
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide v10, 0x4076800000000000L    # 360.0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0xb4

    if-eqz p9, :cond_3

    if-eqz p8, :cond_1

    cmpl-double v6, v0, v8

    if-lez v6, :cond_0

    cmp-long v6, v4, v14

    if-ltz v6, :cond_0

    move-wide/from16 v16, v8

    goto :goto_0

    :cond_0
    move-wide v2, v12

    move-wide/from16 v16, v2

    :goto_0
    cmpl-double v6, v8, v0

    if-lez v6, :cond_5

    cmp-long v4, v4, v14

    if-gtz v4, :cond_5

    goto :goto_3

    :cond_1
    cmpl-double v2, v0, v8

    if-lez v2, :cond_2

    cmp-long v2, v4, v14

    if-gtz v2, :cond_2

    sub-double/2addr v10, v0

    add-double/2addr v10, v8

    move-wide v2, v0

    goto :goto_1

    :cond_2
    move-wide v2, v12

    move-wide v10, v2

    :goto_1
    cmpl-double v6, v8, v0

    if-lez v6, :cond_8

    cmp-long v4, v4, v14

    if-ltz v4, :cond_8

    goto :goto_5

    :cond_3
    if-eqz p8, :cond_6

    cmpl-double v6, v0, v8

    if-lez v6, :cond_4

    cmp-long v6, v4, v14

    if-gtz v6, :cond_4

    move-wide/from16 v16, v8

    goto :goto_2

    :cond_4
    move-wide v2, v12

    move-wide/from16 v16, v2

    :goto_2
    cmpl-double v6, v8, v0

    if-lez v6, :cond_5

    cmp-long v4, v4, v14

    if-ltz v4, :cond_5

    :goto_3
    sub-double/2addr v10, v8

    add-double/2addr v10, v0

    goto :goto_6

    :cond_5
    move-wide v10, v2

    move-wide/from16 v8, v16

    goto :goto_6

    :cond_6
    cmpl-double v2, v0, v8

    if-lez v2, :cond_7

    cmp-long v2, v4, v14

    if-ltz v2, :cond_7

    sub-double/2addr v10, v0

    add-double/2addr v10, v8

    move-wide v2, v0

    goto :goto_4

    :cond_7
    move-wide v2, v12

    move-wide v10, v2

    :goto_4
    cmpl-double v6, v8, v0

    if-lez v6, :cond_8

    cmp-long v4, v4, v14

    if-gtz v4, :cond_8

    :goto_5
    sub-double/2addr v8, v0

    move-wide v10, v8

    move-wide v8, v0

    goto :goto_6

    :cond_8
    move-wide v8, v2

    :goto_6
    cmpl-double v0, v8, v12

    if-ltz v0, :cond_9

    cmpl-double v0, v10, v12

    if-lez v0, :cond_9

    .line 345
    new-instance v12, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-object v0, v12

    move-object v1, v7

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide v6, v8

    move-wide v8, v10

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;-><init>(Lcom/itextpdf/kernel/geom/Point;DDDD)V

    return-object v12

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method static getEllipse(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 244
    iget-wide v0, v10, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v2, v11, Lcom/itextpdf/kernel/geom/Point;->x:D

    sub-double/2addr v0, v2

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    mul-double v2, v2, p2

    div-double/2addr v0, v2

    .line 245
    iget-wide v2, v10, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v4, v11, Lcom/itextpdf/kernel/geom/Point;->y:D

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v4, v4, p4

    div-double/2addr v2, v4

    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    .line 247
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    mul-double v2, p2, v4

    mul-double v4, v4, p4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p6

    move/from16 v7, p7

    .line 253
    invoke-static/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->getEllipse(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-result-object v0

    return-object v0

    :cond_0
    div-double/2addr v0, v2

    .line 256
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    .line 257
    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    add-double v6, v12, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p6

    move/from16 v9, p7

    .line 259
    invoke-static/range {v0 .. v9}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->calculatePossibleMiddle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    add-double v16, v12, v0

    sub-double v6, v16, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p6

    move/from16 v9, p7

    .line 263
    invoke-static/range {v0 .. v9}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->calculatePossibleMiddle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    add-double v6, v16, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p6

    move/from16 v9, p7

    .line 267
    invoke-static/range {v0 .. v9}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->calculatePossibleMiddle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    sub-double v6, v12, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p6

    move/from16 v9, p7

    .line 271
    invoke-static/range {v0 .. v9}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;->calculatePossibleMiddle(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;DDDZZ)Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo$EllipseArc;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 275
    :cond_4
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "Could not determine the middle point of the ellipse traced by this elliptical arc"

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static toDegrees(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method
