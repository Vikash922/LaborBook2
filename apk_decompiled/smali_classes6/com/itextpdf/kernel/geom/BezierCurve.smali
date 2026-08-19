.class public Lcom/itextpdf/kernel/geom/BezierCurve;
.super Ljava/lang/Object;
.source "BezierCurve.java"

# interfaces
.implements Lcom/itextpdf/kernel/geom/IShape;


# static fields
.field public static curveCollinearityEpsilon:D = 1.0E-30

.field public static distanceToleranceManhattan:D = 0.4

.field public static distanceToleranceSquare:D = 0.025


# instance fields
.field private final controlPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    return-void
.end method

.method private recursiveApproximation(DDDDDDDDLjava/util/List;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDDDDD",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v15, p17

    add-double v0, p1, p5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v5, v0, v2

    add-double v0, p3, p7

    div-double v7, v0, v2

    add-double v0, p5, p9

    div-double/2addr v0, v2

    add-double v9, p7, p11

    div-double/2addr v9, v2

    add-double v11, p9, p13

    div-double v18, v11, v2

    add-double v11, p11, p15

    div-double v20, v11, v2

    add-double v11, v5, v0

    div-double/2addr v11, v2

    add-double v13, v7, v9

    div-double/2addr v13, v2

    add-double v0, v0, v18

    div-double v22, v0, v2

    add-double v9, v9, v20

    div-double v24, v9, v2

    add-double v0, v11, v22

    div-double v9, v0, v2

    add-double v0, v13, v24

    div-double v3, v0, v2

    sub-double v0, p13, p1

    sub-double v16, p15, p3

    sub-double v26, p5, p13

    mul-double v26, v26, v16

    sub-double v28, p7, p15

    mul-double v28, v28, v0

    sub-double v26, v26, v28

    .line 143
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    sub-double v28, p9, p13

    mul-double v28, v28, v16

    sub-double v30, p11, p15

    mul-double v30, v30, v0

    sub-double v28, v28, v30

    .line 146
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    .line 150
    sget-wide v30, Lcom/itextpdf/kernel/geom/BezierCurve;->curveCollinearityEpsilon:D

    cmpl-double v2, v26, v30

    if-gtz v2, :cond_1

    cmpl-double v2, v28, v30

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    add-double v0, p1, p9

    sub-double v0, v0, p5

    sub-double v0, v0, p5

    .line 159
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    add-double v16, p3, p11

    sub-double v16, v16, p7

    sub-double v16, v16, p7

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    add-double v0, v0, v16

    add-double v16, p5, p13

    sub-double v16, v16, p9

    sub-double v16, v16, p9

    .line 160
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    add-double v0, v0, v16

    add-double v16, p7, p15

    sub-double v16, v16, p11

    sub-double v16, v16, p11

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    add-double v0, v0, v16

    sget-wide v16, Lcom/itextpdf/kernel/geom/BezierCurve;->distanceToleranceManhattan:D

    cmpg-double v0, v0, v16

    if-gtz v0, :cond_2

    .line 161
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v0, v9, v10, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    add-double v26, v26, v28

    mul-double v26, v26, v26

    .line 153
    sget-wide v28, Lcom/itextpdf/kernel/geom/BezierCurve;->distanceToleranceSquare:D

    mul-double/2addr v0, v0

    mul-double v16, v16, v16

    add-double v0, v0, v16

    mul-double v28, v28, v0

    cmpg-double v0, v26, v28

    if-gtz v0, :cond_2

    .line 154
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v0, v9, v10, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v26, v3

    move-wide/from16 v3, p3

    move-wide/from16 v28, v9

    move-wide v9, v11

    move-wide v11, v13

    move-wide/from16 v13, v28

    move-wide/from16 v15, v26

    move-object/from16 v17, p17

    .line 166
    invoke-direct/range {v0 .. v17}, Lcom/itextpdf/kernel/geom/BezierCurve;->recursiveApproximation(DDDDDDDDLjava/util/List;)V

    move-wide/from16 v1, v28

    move-wide/from16 v3, v26

    move-wide/from16 v5, v22

    move-wide/from16 v7, v24

    move-wide/from16 v9, v18

    move-wide/from16 v11, v20

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    .line 167
    invoke-direct/range {v0 .. v17}, Lcom/itextpdf/kernel/geom/BezierCurve;->recursiveApproximation(DDDDDDDDLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getBasePoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    return-object v0
.end method

.method public getPiecewiseLinearApproximation()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    .line 109
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v17, v13

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v1, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    iget-object v4, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    iget-object v5, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    const/4 v14, 0x1

    .line 113
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v5

    iget-object v7, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v7

    iget-object v9, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    const/4 v11, 0x2

    .line 114
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v9

    iget-object v12, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v11

    iget-object v14, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    move-object/from16 v18, v0

    const/4 v0, 0x3

    .line 115
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v14}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v19

    move-object/from16 v21, v13

    const/16 v22, 0x1

    move-wide/from16 v13, v19

    move-wide/from16 v19, v1

    iget-object v1, v15, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v0

    move-object v2, v15

    move-wide v15, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    .line 112
    invoke-direct/range {v0 .. v17}, Lcom/itextpdf/kernel/geom/BezierCurve;->recursiveApproximation(DDDDDDDDLjava/util/List;)V

    move-object/from16 v0, p0

    .line 117
    iget-object v1, v0, Lcom/itextpdf/kernel/geom/BezierCurve;->controlPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method
