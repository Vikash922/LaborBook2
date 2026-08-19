.class public Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;
.super Ljava/lang/Object;
.source "ClipperOffset.java"


# static fields
.field private static final DEFAULT_ARC_TOLERANCE:D = 0.25

.field private static final TOLERANCE:D = 1.0E-20

.field private static final TWO_PI:D = 6.283185307179586


# instance fields
.field private final arcTolerance:D

.field private cos:D

.field private delta:D

.field private destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

.field private destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

.field private inA:D

.field private lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

.field private miterLim:D

.field private final miterLimit:D

.field private final normals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;",
            ">;"
        }
    .end annotation
.end field

.field private final polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

.field private sin:D

.field private srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

.field private stepsPerRad:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    .line 68
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 2

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    .line 72
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->miterLimit:D

    .line 77
    iput-wide p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->arcTolerance:D

    .line 78
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    const-wide/16 p2, -0x1

    .line 79
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setX(Ljava/lang/Number;)V

    .line 80
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    return-void
.end method

.method private doMiter(IID)V
    .locals 8

    .line 146
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    div-double/2addr v0, p3

    .line 147
    iget-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance p4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v2, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v4

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v6

    add-double/2addr v4, v6

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    .line 148
    invoke-virtual {v4, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    long-to-double v4, v4

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v6

    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide p1

    add-double/2addr v6, p1

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-direct {p4, v2, v3, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    .line 147
    invoke-virtual {p3, p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private doOffset(D)V
    .locals 31

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 152
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;-><init>()V

    iput-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    .line 153
    iput-wide v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    .line 156
    invoke-static/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->nearZero(D)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 157
    :goto_0
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 158
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChilds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 159
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v2, v3, :cond_0

    .line 160
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 167
    :cond_2
    iget-wide v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->miterLimit:D

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    cmpl-double v3, v5, v7

    if-lez v3, :cond_3

    mul-double/2addr v5, v5

    div-double/2addr v7, v5

    .line 168
    iput-wide v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->miterLim:D

    goto :goto_1

    :cond_3
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 171
    iput-wide v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->miterLim:D

    .line 175
    :goto_1
    iget-wide v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->arcTolerance:D

    const-wide/16 v7, 0x0

    cmpg-double v3, v5, v7

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    if-gtz v3, :cond_4

    goto :goto_2

    .line 178
    :cond_4
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    cmpl-double v3, v5, v11

    if-lez v3, :cond_5

    .line 179
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double/2addr v9, v5

    goto :goto_2

    .line 182
    :cond_5
    iget-wide v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->arcTolerance:D

    .line 185
    :goto_2
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    div-double/2addr v9, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v9, v5, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v11, v9

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    div-double v13, v9, v11

    .line 186
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->sin:D

    .line 187
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->cos:D

    div-double v5, v11, v9

    .line 188
    iput-wide v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->stepsPerRad:D

    cmpg-double v3, v1, v7

    if-gez v3, :cond_6

    .line 190
    iget-wide v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->sin:D

    neg-double v5, v5

    iput-wide v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->sin:D

    :cond_6
    move v5, v4

    .line 193
    :goto_3
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1f

    .line 194
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChilds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 195
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v9

    iput-object v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    .line 197
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v9

    if-eqz v9, :cond_1e

    if-gtz v3, :cond_7

    const/4 v10, 0x3

    if-lt v9, v10, :cond_1e

    .line 199
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v10

    sget-object v13, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-eq v10, v13, :cond_7

    goto/16 :goto_15

    .line 203
    :cond_7
    new-instance v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>()V

    iput-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    .line 206
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getJoinType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    move-result-object v6

    sget-object v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;->ROUND:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    if-ne v6, v9, :cond_9

    move-wide/from16 v16, v7

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    :goto_4
    int-to-double v7, v10

    cmpg-double v6, v7, v11

    if-gtz v6, :cond_8

    .line 209
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v8, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v8

    long-to-double v8, v8

    mul-double v18, v13, v1

    add-double v8, v8, v18

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    iget-object v15, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v15, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move/from16 v20, v5

    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v21, v16, v1

    add-double v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-direct {v7, v8, v9, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 212
    iget-wide v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->cos:D

    mul-double v6, v13, v4

    iget-wide v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->sin:D

    mul-double v21, v8, v16

    sub-double v6, v6, v21

    mul-double/2addr v13, v8

    mul-double v16, v16, v4

    add-double v16, v13, v16

    add-int/lit8 v10, v10, 0x1

    move-wide v13, v6

    move/from16 v5, v20

    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    move/from16 v20, v5

    goto :goto_7

    :cond_9
    move/from16 v20, v5

    const/4 v6, 0x0

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    :goto_5
    const/4 v13, 0x4

    if-ge v6, v13, :cond_c

    .line 219
    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v14, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v15, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v21, v7, v1

    add-double v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    iget-object v15, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move/from16 v21, v3

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-wide/from16 v22, v11

    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v11

    long-to-double v11, v11

    mul-double v24, v9, v1

    add-double v11, v11, v24

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    invoke-direct {v14, v4, v5, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, 0x0

    cmpg-double v5, v7, v3

    if-gez v5, :cond_a

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_6

    :cond_a
    cmpg-double v5, v9, v3

    if-gez v5, :cond_b

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_6

    :cond_b
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    :goto_6
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v21

    move-wide/from16 v11, v22

    goto :goto_5

    :cond_c
    :goto_7
    move/from16 v21, v3

    move-wide/from16 v22, v11

    .line 232
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    :goto_8
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_16

    :cond_d
    move/from16 v21, v3

    move/from16 v20, v5

    move-wide/from16 v22, v11

    .line 237
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    :goto_9
    add-int/lit8 v4, v9, -0x1

    if-ge v3, v4, :cond_e

    .line 239
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-static {v5, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->getUnitNormal(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 241
    :cond_e
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v3

    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_LINE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-eq v3, v5, :cond_10

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v3

    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v3, v5, :cond_f

    goto :goto_a

    .line 245
    :cond_f
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    add-int/lit8 v8, v9, -0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-direct {v5, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 242
    :cond_10
    :goto_a
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-static {v5, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->getUnitNormal(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :goto_b
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v3

    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v3, v5, :cond_12

    .line 249
    filled-new-array {v4}, [I

    move-result-object v3

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v9, :cond_11

    .line 251
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getJoinType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    move-result-object v5

    invoke-direct {v0, v4, v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->offsetPoint(I[ILcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 253
    :cond_11
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 255
    :cond_12
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v3

    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_LINE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v3, v5, :cond_16

    .line 256
    new-array v3, v10, [I

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v9, :cond_13

    .line 258
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getJoinType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    move-result-object v7

    invoke-direct {v0, v5, v3, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->offsetPoint(I[ILcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 260
    :cond_13
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>()V

    iput-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    .line 263
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    move v7, v4

    :goto_e
    if-lez v7, :cond_14

    .line 265
    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    new-instance v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    add-int/lit8 v11, v7, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v12

    neg-double v12, v12

    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v10

    neg-double v10, v10

    invoke-direct {v9, v12, v13, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;-><init>(DD)V

    invoke-interface {v8, v7, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    goto :goto_e

    .line 267
    :cond_14
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    new-instance v15, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v8

    neg-double v9, v8

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v11

    neg-double v11, v11

    const-wide/16 v13, 0x0

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;-><init>(DDD)V

    const/4 v5, 0x0

    invoke-interface {v7, v5, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 268
    aput v5, v3, v5

    :goto_f
    if-ltz v4, :cond_15

    .line 270
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getJoinType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    move-result-object v5

    invoke-direct {v0, v4, v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->offsetPoint(I[ILcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    .line 272
    :cond_15
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 275
    :cond_16
    new-array v3, v10, [I

    move v5, v10

    :goto_10
    if-ge v5, v4, :cond_17

    .line 277
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getJoinType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    move-result-object v7

    invoke-direct {v0, v5, v3, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->offsetPoint(I[ILcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 281
    :cond_17
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v5

    sget-object v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->OPEN_BUTT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v5, v7, :cond_18

    .line 283
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v7, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    long-to-double v7, v7

    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v11

    mul-double/2addr v11, v1

    add-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v25

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v7, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 284
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    long-to-double v7, v7

    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v11

    mul-double/2addr v11, v1

    add-double/2addr v7, v11

    .line 283
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v27

    const-wide/16 v29, 0x0

    move-object/from16 v24, v5

    invoke-direct/range {v24 .. v30}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    .line 285
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v7, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    long-to-double v7, v7

    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v11

    mul-double/2addr v11, v1

    sub-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v25

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v7, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 287
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    long-to-double v7, v7

    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v11

    mul-double/2addr v11, v1

    sub-double/2addr v7, v11

    .line 286
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v27

    move-object/from16 v24, v5

    invoke-direct/range {v24 .. v30}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    .line 288
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_18
    add-int/lit8 v5, v9, -0x2

    const/4 v7, 0x0

    .line 292
    aput v5, v3, v7

    const-wide/16 v7, 0x0

    .line 293
    iput-wide v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    .line 294
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v11

    neg-double v11, v11

    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v13

    neg-double v13, v13

    invoke-direct {v7, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;-><init>(DD)V

    invoke-interface {v5, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v5

    sget-object v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->OPEN_SQUARE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v5, v7, :cond_19

    const/4 v5, 0x0

    .line 296
    aget v7, v3, v5

    invoke-direct {v0, v4, v7, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doSquare(IIZ)V

    goto :goto_11

    :cond_19
    const/4 v5, 0x0

    .line 299
    aget v7, v3, v5

    invoke-direct {v0, v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doRound(II)V

    :goto_11
    move v5, v4

    :goto_12
    if-lez v5, :cond_1a

    .line 305
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    add-int/lit8 v12, v5, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v13

    neg-double v13, v13

    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v11

    neg-double v11, v11

    invoke-direct {v8, v13, v14, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;-><init>(DD)V

    invoke-interface {v7, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    goto :goto_12

    .line 308
    :cond_1a
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v11

    neg-double v11, v11

    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v13

    neg-double v13, v13

    invoke-direct {v7, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;-><init>(DD)V

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 310
    aput v4, v3, v8

    add-int/lit8 v9, v9, -0x2

    :goto_13
    if-lez v9, :cond_1b

    .line 312
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getJoinType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    move-result-object v4

    invoke-direct {v0, v9, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->offsetPoint(I[ILcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_13

    .line 315
    :cond_1b
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->OPEN_BUTT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v4, v5, :cond_1c

    .line 316
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    long-to-double v6, v6

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v8

    mul-double/2addr v8, v1

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 317
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    long-to-double v8, v8

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v10

    mul-double/2addr v10, v1

    sub-double/2addr v8, v10

    .line 316
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    .line 318
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    long-to-double v6, v6

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v8

    mul-double/2addr v8, v1

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 320
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    long-to-double v8, v8

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v10

    mul-double/2addr v10, v1

    add-double/2addr v8, v10

    .line 319
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    .line 321
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, 0x0

    goto :goto_14

    :cond_1c
    const/4 v5, 0x0

    .line 324
    aput v10, v3, v5

    const-wide/16 v3, 0x0

    .line 325
    iput-wide v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    .line 326
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v6

    sget-object v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->OPEN_SQUARE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v6, v7, :cond_1d

    .line 327
    invoke-direct {v0, v5, v10, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doSquare(IIZ)V

    goto :goto_14

    .line 330
    :cond_1d
    invoke-direct {v0, v5, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doRound(II)V

    .line 333
    :goto_14
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_1e
    :goto_15
    move/from16 v21, v3

    move/from16 v20, v5

    move-wide/from16 v22, v11

    move v5, v4

    move-wide v3, v7

    :goto_16
    add-int/lit8 v6, v20, 0x1

    move-wide v7, v3

    move v4, v5

    move v5, v6

    move/from16 v3, v21

    move-wide/from16 v11, v22

    goto/16 :goto_3

    :cond_1f
    return-void
.end method

.method private doRound(II)V
    .locals 13

    .line 339
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v2

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v4

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 340
    iget-wide v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->stepsPerRad:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 342
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_0

    .line 344
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v7, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    long-to-double v7, v7

    iget-wide v9, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v9, v1

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v9, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    long-to-double v9, v9

    iget-wide v11, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v11, v3

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 346
    iget-wide v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->cos:D

    mul-double v7, v1, v5

    iget-wide v9, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->sin:D

    mul-double v11, v9, v3

    sub-double/2addr v7, v11

    mul-double/2addr v1, v9

    mul-double/2addr v3, v5

    add-double/2addr v3, v1

    add-int/lit8 p2, p2, 0x1

    move-wide v1, v7

    goto :goto_0

    .line 349
    :cond_0
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    long-to-double v1, v1

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v3, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    long-to-double v3, v3

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    .line 350
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v5

    iget-wide v7, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    .line 349
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private doSquare(IIZ)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 354
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v3

    .line 355
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v5

    .line 356
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v7

    .line 357
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v9

    .line 358
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v11

    long-to-double v11, v11

    .line 359
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    long-to-double v1, v1

    .line 360
    iget-wide v13, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    mul-double v15, v3, v7

    mul-double v17, v5, v9

    move-wide/from16 v19, v7

    add-double v7, v15, v17

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    div-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    .line 361
    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v14, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-wide v15, v9

    iget-wide v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    const-wide/16 v17, 0x0

    if-eqz p3, :cond_0

    mul-double v21, v5, v7

    goto :goto_0

    :cond_0
    move-wide/from16 v21, v17

    :goto_0
    sub-double v21, v3, v21

    mul-double v9, v9, v21

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    iget-wide v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    if-eqz p3, :cond_1

    mul-double/2addr v3, v7

    goto :goto_1

    :cond_1
    move-wide/from16 v3, v17

    :goto_1
    add-double/2addr v5, v3

    mul-double/2addr v9, v5

    add-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v27}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    if-eqz p3, :cond_2

    mul-double v9, v15, v7

    goto :goto_2

    :cond_2
    move-wide/from16 v9, v17

    :goto_2
    add-double v9, v19, v9

    mul-double/2addr v5, v9

    add-double/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    iget-wide v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    if-eqz p3, :cond_3

    mul-double v17, v19, v7

    :cond_3
    sub-double v9, v15, v17

    mul-double/2addr v5, v9

    add-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    move-object/from16 v21, v4

    invoke-direct/range {v21 .. v27}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private fixOrientations()V
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->childs:Ljava/util/List;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->orientation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 441
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 442
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->childs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 443
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_LINE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->orientation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 451
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->childs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 452
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_LINE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->orientation()Z

    move-result v2

    if-nez v2, :cond_3

    .line 453
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private static nearZero(D)Z
    .locals 2

    const-wide v0, -0x4438635ef36dbdddL    # -1.0E-20

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide v0, 0x3bc79ca10c924223L    # 1.0E-20

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private offsetPoint(I[ILcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 461
    aget v3, p2, v2

    .line 462
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v4

    .line 463
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v6

    .line 464
    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v8

    .line 465
    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v10

    .line 466
    iget-object v12, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v12, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    .line 467
    iget-object v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v14, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v14

    mul-double v16, v4, v8

    mul-double v18, v10, v6

    move/from16 v21, v3

    sub-double v2, v16, v18

    .line 468
    iput-wide v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    move-wide/from16 v16, v14

    .line 470
    iget-wide v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v14

    const-wide/16 v18, 0x0

    if-gez v2, :cond_1

    mul-double v2, v4, v10

    mul-double v22, v8, v6

    add-double v2, v2, v22

    cmpl-double v2, v2, v18

    if-lez v2, :cond_0

    .line 476
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    long-to-double v8, v12

    iget-wide v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v4, v10

    add-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    move-wide/from16 v3, v16

    long-to-double v3, v3

    iget-wide v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v21

    const-wide/16 v23, 0x0

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    move-wide/from16 v2, v16

    move-wide/from16 v16, v8

    goto :goto_0

    :cond_1
    move-wide/from16 v2, v16

    move-wide/from16 v16, v8

    .line 481
    iget-wide v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    cmpl-double v22, v8, v14

    if-lez v22, :cond_2

    .line 482
    iput-wide v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    goto :goto_0

    :cond_2
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpg-double v8, v8, v14

    if-gez v8, :cond_3

    .line 485
    iput-wide v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    .line 488
    :cond_3
    :goto_0
    iget-wide v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    iget-wide v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v8, v14

    cmpg-double v8, v8, v18

    if-gez v8, :cond_4

    .line 489
    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    long-to-double v12, v12

    iget-wide v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v4, v14

    add-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v2, v2

    iget-wide v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v6, v14

    add-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v5, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v10, v6

    add-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    iget-wide v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double v8, v8, v16

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-direct {v5, v6, v7, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 494
    :cond_4
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset$1;->$SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$clipper$IClipper$JoinType:[I

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    move/from16 v2, v21

    .line 509
    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doRound(II)V

    goto :goto_1

    :cond_6
    move/from16 v2, v21

    const/4 v3, 0x0

    .line 506
    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doSquare(IIZ)V

    goto :goto_2

    :cond_7
    move/from16 v2, v21

    const/4 v3, 0x0

    mul-double/2addr v10, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v4

    mul-double v8, v16, v6

    add-double/2addr v10, v8

    .line 497
    iget-wide v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->miterLim:D

    cmpl-double v4, v10, v4

    if-ltz v4, :cond_8

    .line 498
    invoke-direct {v0, v1, v2, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doMiter(IID)V

    goto :goto_2

    .line 501
    :cond_8
    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doSquare(IIZ)V

    .line 513
    :goto_2
    aput v1, p2, v3

    return-void
.end method


# virtual methods
.method public addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;)V
    .locals 9

    .line 85
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;-><init>()V

    .line 90
    invoke-virtual {v2, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->setJoinType(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;)V

    .line 91
    invoke-virtual {v2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->setEndType(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;)V

    .line 94
    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_LINE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    const/4 v3, 0x0

    if-eq p3, p2, :cond_1

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne p3, p2, :cond_2

    :cond_1
    :goto_0
    if-lez v0, :cond_2

    .line 95
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object p2

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    move v4, v1

    move p2, v3

    :goto_1
    if-gt v4, v0, :cond_5

    .line 103
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 105
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 107
    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    :cond_3
    move p2, v3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 112
    :cond_5
    sget-object p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne p3, p1, :cond_6

    const/4 p1, 0x2

    if-ge v3, p1, :cond_6

    return-void

    .line 116
    :cond_6
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->addChild(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;)V

    .line 119
    sget-object p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-eq p3, p1, :cond_7

    return-void

    .line 122
    :cond_7
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gez p1, :cond_8

    .line 123
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v1

    int-to-long v0, p3

    int-to-long p2, p2

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    goto :goto_2

    .line 126
    :cond_8
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChilds()Ljava/util/List;

    move-result-object p1

    iget-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    long-to-int p3, v3

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object p1

    iget-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    long-to-int p3, v3

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 127
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    cmp-long p3, v3, v5

    if-gtz p3, :cond_9

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    cmp-long p3, v3, v5

    if-nez p3, :cond_a

    .line 128
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_a

    .line 129
    :cond_9
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v1

    int-to-long v0, p3

    int-to-long p2, p2

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    :cond_a
    :goto_2
    return-void
.end method

.method public addPaths(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;)V
    .locals 1

    .line 135
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    .line 136
    invoke-virtual {p0, v0, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChilds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setX(Ljava/lang/Number;)V

    return-void
.end method

.method public execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;D)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->clear()V

    .line 369
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->fixOrientations()V

    .line 370
    invoke-direct {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doOffset(D)V

    .line 372
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;-><init>(I)V

    .line 373
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    sget-object v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    invoke-virtual {v4, v6, v7, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addPaths(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-lez v2, :cond_0

    .line 375
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->POSITIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->POSITIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {v4, v2, v1, v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    goto :goto_0

    .line 378
    :cond_0
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->getBounds()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;

    move-result-object v2

    .line 379
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v6, 0x4

    invoke-direct {v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(I)V

    .line 381
    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v7, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->left:J

    const-wide/16 v14, 0xa

    sub-long v8, v7, v14

    iget-wide v10, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->bottom:J

    add-long/2addr v10, v14

    const-wide/16 v12, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v7, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->right:J

    add-long v17, v7, v14

    iget-wide v7, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->bottom:J

    add-long v19, v7, v14

    const-wide/16 v21, 0x0

    move-object/from16 v16, v6

    invoke-direct/range {v16 .. v22}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v7, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->right:J

    add-long v8, v7, v14

    iget-wide v10, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->top:J

    sub-long/2addr v10, v14

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v7, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->left:J

    sub-long v17, v7, v14

    iget-wide v7, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->top:J

    sub-long v19, v7, v14

    move-object/from16 v16, v6

    invoke-direct/range {v16 .. v22}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    invoke-virtual {v4, v3, v2, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    .line 388
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NEGATIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NEGATIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {v4, v2, v1, v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 390
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;D)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 398
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->Clear()V

    .line 399
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->fixOrientations()V

    .line 400
    invoke-direct {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doOffset(D)V

    .line 403
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;-><init>(I)V

    .line 404
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    sget-object v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    invoke-virtual {v4, v6, v7, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addPaths(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-lez v2, :cond_0

    .line 406
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->POSITIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->POSITIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {v4, v2, v1, v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    goto/16 :goto_1

    .line 409
    :cond_0
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->getBounds()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;

    move-result-object v2

    .line 410
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v6, 0x4

    invoke-direct {v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(I)V

    .line 412
    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v7, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->left:J

    const-wide/16 v14, 0xa

    sub-long v8, v7, v14

    iget-wide v10, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->bottom:J

    add-long/2addr v10, v14

    const-wide/16 v12, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v7, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->right:J

    add-long v17, v7, v14

    iget-wide v7, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->bottom:J

    add-long v19, v7, v14

    const-wide/16 v21, 0x0

    move-object/from16 v16, v6

    invoke-direct/range {v16 .. v22}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v7, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->right:J

    add-long v8, v7, v14

    iget-wide v10, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->top:J

    sub-long/2addr v10, v14

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v7, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->left:J

    sub-long v17, v7, v14

    iget-wide v7, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->top:J

    sub-long v19, v7, v14

    move-object/from16 v16, v6

    invoke-direct/range {v16 .. v22}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    invoke-virtual {v4, v3, v2, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    .line 419
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NEGATIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    sget-object v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NEGATIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {v4, v2, v1, v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->getChildCount()I

    move-result v2

    if-ne v2, v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->getChilds()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->getChilds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 423
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->getChilds()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChilds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->getChilds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->setParent(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;)V

    .line 425
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result v3

    if-ge v5, v3, :cond_2

    .line 426
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChilds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->addChild(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 430
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->Clear()V

    :cond_2
    :goto_1
    return-void
.end method
