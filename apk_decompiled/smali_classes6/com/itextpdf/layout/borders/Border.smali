.class public abstract Lcom/itextpdf/layout/borders/Border;
.super Ljava/lang/Object;
.source "Border.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/borders/Border$Side;
    }
.end annotation


# static fields
.field private static final ARC_BOTTOM_DEGREE:I = 0x10e

.field private static final ARC_LEFT_DEGREE:I = 0xb4

.field private static final ARC_QUARTER_CLOCKWISE_EXTENT:I = -0x5a

.field private static final ARC_RIGHT_DEGREE:I = 0x0

.field private static final ARC_TOP_DEGREE:I = 0x5a

.field public static final DASHED:I = 0x1

.field public static final DASHED_FIXED:I = 0x9

.field public static final DOTTED:I = 0x2

.field public static final DOUBLE:I = 0x3

.field public static final NO_BORDER:Lcom/itextpdf/layout/borders/Border; = null

.field public static final ROUND_DOTS:I = 0x4

.field public static final SOLID:I = 0x0

.field public static final _3D_GROOVE:I = 0x5

.field public static final _3D_INSET:I = 0x6

.field public static final _3D_OUTSET:I = 0x7

.field public static final _3D_RIDGE:I = 0x8


# instance fields
.field private hash:I

.field protected transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

.field protected type:I

.field protected width:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(F)V
    .locals 1

    .line 162
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/properties/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;)V

    iput-object v0, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    .line 173
    iput p2, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/Color;FF)V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-direct {v0, p1, p3}, Lcom/itextpdf/layout/properties/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    iput-object v0, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    .line 185
    iput p2, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 9

    .line 288
    const-class v0, Lcom/itextpdf/layout/borders/Border;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 289
    const-string v1, "Border#draw(PdfCanvas, float, float, float, float, float, float, float, float, Side, float, float"

    const-string v2, "Border#draw(PdfCanvas, float, float, float, float, Side, float, float)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Method {0} is not implemented by default: please, override and implement it. {1} will be used instead."

    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    .line 293
    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    return-void
.end method

.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p6

    move/from16 v8, p6

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    .line 255
    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    return-void
.end method

.method public abstract draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
.end method

.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 12

    .line 219
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v9

    .line 220
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v10

    .line 221
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    add-float v11, v0, v1

    .line 222
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p2

    add-float/2addr p2, v0

    .line 223
    sget-object v6, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    iget v8, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    move-object v0, p0

    move-object v1, p1

    move v2, v9

    move v3, p2

    move v4, v11

    move v5, p2

    move v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 224
    sget-object v6, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    iget v8, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    move v2, v11

    move v5, v10

    move v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 225
    sget-object v6, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    iget v8, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    move v3, v10

    move v4, v9

    move v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 226
    sget-object v6, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    iget v8, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    move v2, v9

    move v5, p2

    move v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    return-void
.end method

.method public abstract drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V
.end method

.method protected drawDiscontinuousBorders(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;[F[FLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 57

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move/from16 v7, p6

    move/from16 v8, p7

    .line 503
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    float-to-double v9, v0

    .line 504
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    float-to-double v11, v0

    .line 505
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v0

    float-to-double v4, v0

    .line 506
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    float-to-double v2, v0

    const/4 v0, 0x0

    .line 508
    aget v1, p3, v0

    float-to-double v0, v1

    const/4 v15, 0x1

    .line 509
    aget v13, p3, v15

    float-to-double v13, v13

    move-wide/from16 v17, v0

    const/16 v16, 0x0

    .line 511
    aget v0, p4, v16

    float-to-double v0, v0

    move-wide/from16 v20, v0

    .line 512
    aget v0, p4, v15

    float-to-double v0, v0

    .line 515
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v15

    move-wide/from16 v22, v13

    float-to-double v13, v15

    .line 516
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v15

    move-wide/from16 p3, v13

    float-to-double v13, v15

    .line 517
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v15

    move-wide/from16 v24, v13

    float-to-double v13, v15

    .line 518
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v15

    move-wide/from16 v26, v13

    float-to-double v13, v15

    .line 525
    iget v15, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    move-wide/from16 v28, v0

    float-to-double v0, v15

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v30, v0, v30

    double-to-float v1, v9

    double-to-float v15, v11

    double-to-float v0, v4

    move-wide/from16 v32, v4

    double-to-float v4, v2

    move v5, v0

    move-wide/from16 v19, v20

    move-object/from16 v0, p0

    move-wide/from16 v34, v2

    move v2, v15

    move v3, v5

    move-wide/from16 v36, v32

    move-object/from16 v5, p5

    .line 530
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/borders/Border;->getBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)Lcom/itextpdf/layout/borders/Border$Side;

    move-result-object v0

    .line 531
    sget-object v1, Lcom/itextpdf/layout/borders/Border$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    const-wide/16 v4, 0x0

    const/4 v15, 0x1

    if-eq v0, v15, :cond_6

    const/4 v15, 0x2

    if-eq v0, v15, :cond_4

    const/4 v15, 0x3

    if-eq v0, v15, :cond_2

    const/4 v15, 0x4

    if-eq v0, v15, :cond_0

    :goto_0
    move-object/from16 v4, p1

    goto/16 :goto_6

    :cond_0
    float-to-double v1, v7

    move-wide/from16 v32, v11

    sub-double v11, v19, v1

    .line 643
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 644
    iget v0, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    move-wide/from16 v19, v11

    float-to-double v11, v0

    sub-double v11, v17, v11

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 645
    iget v0, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    move-wide/from16 v38, v1

    float-to-double v0, v0

    sub-double v0, v22, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    move-wide/from16 v21, v9

    float-to-double v9, v8

    move-wide/from16 v40, v13

    sub-double v13, v28, v9

    .line 646
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    move-wide/from16 v13, p3

    add-double/2addr v13, v11

    div-float v2, v7, v3

    move-wide/from16 p3, v4

    float-to-double v3, v2

    sub-double v2, v24, v3

    add-double v4, v26, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v8, v7

    float-to-double v7, v7

    add-double v7, v40, v7

    .line 654
    new-instance v15, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v44, v0

    iget v0, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v0, v0

    sub-double v0, v21, v0

    move-wide/from16 v16, v11

    sub-double v11, v32, v38

    invoke-direct {v15, v0, v1, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 p5, v11

    move-wide/from16 v11, v21

    move-wide/from16 v21, v4

    move-wide/from16 v4, v32

    invoke-direct {v0, v11, v12, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v1, v13, v14, v2, v3}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v38, v11

    const-wide/high16 v23, 0x4024000000000000L    # 10.0

    add-double v11, v2, v23

    invoke-direct {v4, v13, v14, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v15, v0, v1, v4}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 655
    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    iget v4, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v4, v4

    move-wide/from16 v11, v36

    sub-double v4, v11, v4

    move-wide/from16 v28, v2

    move-wide/from16 v2, v34

    add-double/2addr v9, v2

    invoke-direct {v1, v4, v5, v9, v10}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v4, v11, v12, v2, v3}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v34, v13

    move-wide/from16 v13, v21

    invoke-direct {v5, v13, v14, v7, v8}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v15, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v36, v2

    const-wide/high16 v21, 0x4024000000000000L    # 10.0

    add-double v2, v7, v21

    invoke-direct {v15, v13, v14, v2, v3}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v1, v4, v5, v15}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    .line 656
    iget-wide v2, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v4, v1, Lcom/itextpdf/kernel/geom/Point;->y:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 657
    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    iget v3, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v3, v3

    sub-double v3, v38, v3

    move-wide/from16 v21, v7

    move-wide/from16 v7, p5

    invoke-direct {v2, v3, v4, v7, v8}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    iget v4, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v4, v4

    sub-double v4, v11, v4

    invoke-direct {v3, v4, v5, v9, v10}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v2, v0, v1, v3}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 658
    iget v1, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v1, v1

    sub-double v1, v38, v1

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    iget-wide v4, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    move-wide/from16 v23, v13

    iget-wide v13, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v1, v4, v5, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v1, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v1, v1

    sub-double v4, v11, v1

    invoke-virtual {v0, v4, v5, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v1, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v1, v1

    sub-double v9, v38, v1

    invoke-virtual {v0, v9, v10, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p1

    move-wide/from16 v21, v7

    move-wide/from16 v23, v13

    move-wide/from16 v7, p5

    .line 660
    iget v2, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v4, v2

    sub-double v4, v38, v4

    invoke-virtual {v3, v4, v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    iget-wide v4, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v13, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v2, v4, v5, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget-wide v4, v1, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v1, v1, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v1, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v1, v1

    sub-double v4, v11, v1

    invoke-virtual {v0, v4, v5, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v1, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v1, v1

    sub-double v9, v38, v1

    invoke-virtual {v0, v9, v10, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 662
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    sub-double v0, v38, v30

    add-double v4, v32, v19

    sub-double v25, v11, v30

    move-wide/from16 v30, p3

    sub-double v32, v36, v30

    add-double v8, v34, v16

    add-double v14, v4, v19

    const-wide v16, 0x4070e00000000000L    # 270.0

    const-wide v18, -0x3fa9800000000000L    # -90.0

    move-wide/from16 v4, v21

    move-object/from16 v7, p1

    move-wide/from16 v10, v28

    move-wide/from16 v20, v23

    move-wide v12, v0

    move-object v0, v3

    .line 671
    invoke-virtual/range {v7 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v42

    sub-double v1, v32, v30

    add-double v47, v20, v44

    const-wide v51, 0x4066800000000000L    # 180.0

    const-wide v53, -0x3fa9800000000000L    # -90.0

    move-wide/from16 v43, v25

    move-wide/from16 v45, v1

    move-wide/from16 v49, v4

    .line 674
    invoke-virtual/range {v42 .. v54}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arcContinuous(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto/16 :goto_3

    :cond_2
    move-object/from16 v0, p1

    move-wide v3, v4

    move-wide/from16 v38, v9

    move-wide/from16 v32, v11

    move-wide/from16 v40, v13

    move-wide/from16 v1, v22

    move-wide/from16 v11, v36

    move-wide/from16 v13, p3

    move-wide/from16 v36, v34

    float-to-double v9, v7

    move-wide/from16 p3, v11

    sub-double v11, v17, v9

    .line 607
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 608
    iget v5, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    move-wide/from16 v17, v11

    float-to-double v11, v5

    sub-double v11, v19, v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 609
    iget v5, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v5, v5

    sub-double v5, v28, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    move-wide/from16 v21, v9

    float-to-double v9, v8

    sub-double/2addr v1, v9

    .line 610
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v7, v3

    float-to-double v3, v4

    add-double/2addr v3, v13

    add-double v13, v24, v11

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v8, v7

    float-to-double v7, v7

    sub-double v7, v26, v7

    move-wide/from16 v19, v11

    add-double v11, v40, v5

    .line 618
    new-instance v15, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v28, v5

    add-double v5, v38, v21

    move-wide/from16 v21, v1

    move-object/from16 v1, p0

    iget v2, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    move-wide/from16 p5, v7

    float-to-double v7, v2

    sub-double v7, v32, v7

    invoke-direct {v15, v5, v6, v7, v8}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v23, v5

    move-wide/from16 v5, v32

    move-wide/from16 v7, v38

    invoke-direct {v2, v7, v8, v5, v6}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v7, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v7, v3, v4, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v8, Lcom/itextpdf/kernel/geom/Point;

    const-wide/high16 v25, 0x4024000000000000L    # 10.0

    sub-double v5, v3, v25

    invoke-direct {v8, v5, v6, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v1, v15, v2, v7, v8}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    .line 619
    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v6, p3

    sub-double v8, v6, v9

    iget v10, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    move-wide/from16 p2, v3

    float-to-double v3, v10

    sub-double v3, v36, v3

    invoke-direct {v5, v8, v9, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    move-object/from16 p4, v5

    move-wide/from16 v4, v36

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    move-wide v15, v13

    move-wide/from16 v13, p5

    invoke-direct {v10, v13, v14, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    move-wide/from16 p5, v15

    new-instance v15, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v36, v6

    const-wide/high16 v25, 0x4024000000000000L    # 10.0

    add-double v6, v13, v25

    invoke-direct {v15, v6, v7, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    move-object/from16 v6, p4

    invoke-virtual {v1, v6, v3, v10, v15}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v3

    .line 620
    iget-wide v6, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    move-wide v15, v11

    iget-wide v10, v3, Lcom/itextpdf/kernel/geom/Point;->x:D

    cmpg-double v6, v6, v10

    if-gez v6, :cond_3

    .line 621
    new-instance v6, Lcom/itextpdf/kernel/geom/Point;

    iget v7, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v10, v7

    sub-double v11, v32, v10

    move-wide/from16 v25, v13

    move-wide/from16 v13, v23

    invoke-direct {v6, v13, v14, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v7, Lcom/itextpdf/kernel/geom/Point;

    iget v10, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v10, v10

    sub-double v10, v4, v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v1, v6, v2, v3, v7}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    .line 622
    iget v3, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v6, v3

    sub-double v11, v32, v6

    invoke-virtual {v0, v13, v14, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    iget-wide v6, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v10, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v3, v6, v7, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    iget v3, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v6, v3

    sub-double v6, v4, v6

    invoke-virtual {v2, v8, v9, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    iget v3, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v6, v3

    sub-double v11, v32, v6

    invoke-virtual {v2, v13, v14, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_2

    :cond_3
    move-wide/from16 v25, v13

    move-wide/from16 v13, v23

    .line 624
    iget v6, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v6, v6

    sub-double v11, v32, v6

    invoke-virtual {v0, v13, v14, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v6

    iget-wide v10, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v12, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v6, v10, v11, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    iget-wide v6, v3, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v10, v3, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v2, v6, v7, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    iget v3, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v6, v3

    sub-double v6, v4, v6

    invoke-virtual {v2, v8, v9, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    iget v3, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v6, v3

    sub-double v11, v32, v6

    move-wide/from16 v9, v23

    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 626
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    sub-double v9, v38, v17

    sub-double v2, v32, v30

    add-double v23, v36, v21

    sub-double v45, v4, v30

    move-wide/from16 v13, p5

    add-double v4, v13, v19

    sub-double v12, v9, v17

    const-wide/16 v17, 0x0

    const-wide v19, -0x3fa9800000000000L    # -90.0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v30, v15

    move-wide v10, v4

    move-wide v14, v2

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    .line 635
    invoke-virtual/range {v7 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v42

    add-double v43, v23, v21

    add-double v49, v30, v28

    const-wide v51, 0x4070e00000000000L    # 270.0

    const-wide v53, -0x3fa9800000000000L    # -90.0

    move-wide/from16 v47, v25

    .line 638
    invoke-virtual/range {v42 .. v54}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arcContinuous(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :goto_3
    move-object v4, v0

    goto/16 :goto_6

    :cond_4
    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v9

    move-wide/from16 v32, v11

    move-wide/from16 v40, v13

    move-wide/from16 v11, v22

    move-wide/from16 v13, p3

    float-to-double v9, v7

    move-wide/from16 v21, v2

    sub-double v2, v19, v9

    .line 571
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 572
    iget v6, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    move-wide/from16 p3, v2

    float-to-double v2, v6

    sub-double v2, v17, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 573
    iget v6, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    move-wide/from16 v38, v9

    float-to-double v9, v6

    sub-double v9, v11, v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v42

    float-to-double v9, v8

    sub-double v11, v28, v9

    .line 574
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    sub-double/2addr v13, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v7, v6

    float-to-double v11, v7

    add-double v11, v24, v11

    move-wide/from16 v17, v2

    sub-double v2, v26, v42

    div-float v6, v8, v6

    float-to-double v6, v6

    sub-double v6, v40, v6

    .line 582
    new-instance v8, Lcom/itextpdf/kernel/geom/Point;

    iget v15, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    move-wide/from16 v28, v4

    float-to-double v4, v15

    add-double v4, v21, v4

    move-wide/from16 p5, v2

    add-double v2, v32, v38

    invoke-direct {v8, v4, v5, v2, v3}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v19, v6

    move-wide/from16 v5, v21

    move-wide/from16 v21, v2

    move-wide/from16 v2, v32

    invoke-direct {v4, v5, v6, v2, v3}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v7, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v7, v13, v14, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v15, Lcom/itextpdf/kernel/geom/Point;

    const-wide/high16 v23, 0x4024000000000000L    # 10.0

    sub-double v2, v11, v23

    invoke-direct {v15, v13, v14, v2, v3}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v1, v8, v4, v7, v15}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    .line 583
    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    iget v4, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v7, v4

    add-double v7, v36, v7

    sub-double v9, v34, v9

    invoke-direct {v3, v7, v8, v9, v10}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    move-wide v15, v11

    move-wide/from16 v11, v34

    move-wide/from16 v7, v36

    invoke-direct {v4, v7, v8, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    move-wide/from16 v23, v15

    new-instance v15, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v36, v11

    move-wide/from16 v34, v13

    move-wide/from16 v11, v19

    move-wide/from16 v13, p5

    invoke-direct {v15, v13, v14, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 p5, v9

    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    sub-double v9, v11, v19

    invoke-direct {v0, v13, v14, v9, v10}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v1, v3, v4, v15, v0}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 584
    iget-wide v3, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v9, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    cmpg-double v3, v3, v9

    if-gez v3, :cond_5

    .line 585
    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    iget v4, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v9, v4

    add-double/2addr v9, v5

    move-wide/from16 v19, v11

    move-wide/from16 v11, v21

    invoke-direct {v3, v9, v10, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    iget v9, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v9, v9

    add-double/2addr v9, v7

    move-wide v15, v13

    move-wide/from16 v13, p5

    invoke-direct {v4, v9, v10, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 586
    iget v2, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v2, v2

    add-double v9, v5, v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v9, v10, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    iget-wide v9, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v3, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v2, v9, v10, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v2, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v2, v2

    add-double/2addr v2, v7

    invoke-virtual {v0, v2, v3, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v2, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v2, v2

    add-double v9, v5, v2

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_4

    :cond_5
    move-wide/from16 v19, v11

    move-wide v15, v13

    move-wide/from16 v11, v21

    move-wide/from16 v13, p5

    .line 588
    iget v3, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v3, v3

    add-double v9, v5, v3

    move-object/from16 v3, p1

    invoke-virtual {v3, v9, v10, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    iget-wide v9, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v2, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v4, v9, v10, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    iget-wide v3, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v9, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v2, v3, v4, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v2, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v2, v2

    add-double/2addr v2, v7

    invoke-virtual {v0, v2, v3, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v2, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v2, v2

    add-double v9, v5, v2

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 590
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    add-double v12, v5, v30

    move-wide/from16 v2, p3

    sub-double v4, v32, v2

    add-double v45, v7, v30

    add-double v21, v36, v28

    sub-double v8, v34, v17

    sub-double v2, v4, v2

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v25, -0x3fa9800000000000L    # -90.0

    move-wide/from16 v30, v19

    move-object/from16 v7, p1

    move-wide/from16 v10, v23

    move-wide/from16 v23, v15

    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v18, v25

    .line 599
    invoke-virtual/range {v7 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v44

    add-double v47, v21, v28

    sub-double v49, v23, v42

    const-wide/16 v53, 0x0

    const-wide v55, -0x3fa9800000000000L    # -90.0

    move-wide/from16 v51, v30

    .line 602
    invoke-virtual/range {v44 .. v56}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arcContinuous(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto/16 :goto_0

    :cond_6
    move-object v1, v6

    move-wide/from16 v32, v11

    move-wide/from16 v40, v13

    move-wide/from16 v13, p3

    move-wide v11, v4

    move-wide v5, v9

    move-wide/from16 v9, v22

    move-wide/from16 p3, v36

    move-wide/from16 v36, v34

    float-to-double v2, v7

    move-wide/from16 v21, v5

    sub-double v4, v17, v2

    .line 534
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 535
    iget v0, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    move-wide/from16 v17, v4

    float-to-double v4, v0

    sub-double v4, v19, v4

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 536
    iget v0, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v0, v0

    sub-double v0, v28, v0

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    move-wide/from16 v19, v2

    float-to-double v2, v8

    sub-double/2addr v9, v2

    .line 537
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v7, v6

    float-to-double v9, v7

    sub-double v9, v13, v9

    sub-double v13, v24, v4

    div-float v6, v8, v6

    float-to-double v6, v6

    add-double v11, v26, v6

    sub-double v6, v40, v0

    .line 546
    new-instance v8, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v23, v0

    sub-double v0, v21, v19

    move-object/from16 v15, p0

    move-wide/from16 v19, v4

    iget v4, v15, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v4, v4

    add-double v4, v32, v4

    invoke-direct {v8, v0, v1, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 p5, v0

    move-wide/from16 v0, v21

    move-wide/from16 v21, v6

    move-wide/from16 v5, v32

    invoke-direct {v4, v0, v1, v5, v6}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v7, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v7, v9, v10, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    move-wide/from16 v38, v0

    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    const-wide/high16 v25, 0x4024000000000000L    # 10.0

    add-double v5, v9, v25

    invoke-direct {v0, v5, v6, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v15, v8, v4, v7, v0}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 547
    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v4, p3

    add-double/2addr v2, v4

    iget v6, v15, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v6, v6

    add-double v6, v36, v6

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v6, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v7, v36

    invoke-direct {v6, v4, v5, v7, v8}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    move-wide/from16 p2, v9

    new-instance v9, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v34, v13

    move-wide/from16 v13, v21

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    move-wide/from16 v36, v4

    const-wide/high16 v21, 0x4024000000000000L    # 10.0

    sub-double v4, v11, v21

    invoke-direct {v10, v4, v5, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v15, v1, v6, v9, v10}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    .line 548
    iget-wide v4, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v9, v1, Lcom/itextpdf/kernel/geom/Point;->x:D

    cmpl-double v4, v4, v9

    if-lez v4, :cond_7

    .line 549
    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    iget v5, v15, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v5, v5

    add-double v5, v32, v5

    move-wide/from16 v9, p5

    invoke-direct {v4, v9, v10, v5, v6}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    iget v6, v15, Lcom/itextpdf/layout/borders/Border;->width:F

    move-wide/from16 p4, v11

    float-to-double v11, v6

    add-double/2addr v11, v7

    invoke-direct {v5, v2, v3, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v15, v4, v0, v1, v5}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 550
    iget v1, v15, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v4, v1

    add-double v11, v32, v4

    move-object/from16 v4, p1

    invoke-virtual {v4, v9, v10, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    iget-wide v5, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v11, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v1, v5, v6, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v1, v15, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v5, v1

    add-double/2addr v5, v7

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v1, v15, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v1, v1

    add-double v11, v32, v1

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-wide/from16 v21, v13

    goto :goto_5

    :cond_7
    move-object/from16 v4, p1

    move-wide/from16 v9, p5

    move-wide/from16 p4, v11

    .line 552
    iget v5, v15, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v5, v5

    add-double v11, v32, v5

    invoke-virtual {v4, v9, v10, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    iget-wide v11, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    move-wide/from16 v21, v13

    iget-wide v13, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v5, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget-wide v5, v1, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v11, v1, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v0, v5, v6, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v1, v15, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v5, v1

    add-double/2addr v5, v7

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    iget v1, v15, Lcom/itextpdf/layout/borders/Border;->width:F

    float-to-double v1, v1

    add-double v11, v32, v1

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 554
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    add-double v9, v38, v17

    add-double v0, v32, v30

    sub-double v2, v36, v28

    add-double v45, v7, v30

    sub-double v5, v34, v19

    add-double v12, v9, v17

    const-wide v16, 0x4066800000000000L    # 180.0

    const-wide v18, -0x3fa9800000000000L    # -90.0

    move-wide/from16 v20, v21

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v25, p4

    move-wide v10, v5

    move-wide v14, v0

    .line 563
    invoke-virtual/range {v7 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v42

    sub-double v43, v2, v28

    sub-double v49, v20, v23

    const-wide v51, 0x4056800000000000L    # 90.0

    const-wide v53, -0x3fa9800000000000L    # -90.0

    move-wide/from16 v47, v25

    .line 566
    invoke-virtual/range {v42 .. v54}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arcContinuous(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 682
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 683
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 369
    :cond_0
    instance-of v1, p1, Lcom/itextpdf/layout/borders/Border;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 370
    check-cast p1, Lcom/itextpdf/layout/borders/Border;

    .line 371
    invoke-virtual {p1}, Lcom/itextpdf/layout/borders/Border;->getType()I

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/Border;->getType()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 372
    invoke-virtual {p1}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/colors/Color;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    invoke-virtual {p1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget-object p1, p1, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    .line 374
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/TransparentColor;->getOpacity()F

    move-result p1

    iget-object v1, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/TransparentColor;->getOpacity()F

    move-result v1

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method protected getBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)Lcom/itextpdf/layout/borders/Border$Side;
    .locals 4

    sub-float/2addr p4, p2

    .line 414
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v0, 0x3a03126f    # 5.0E-4f

    cmpl-float p2, p2, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez p2, :cond_2

    cmpl-float p2, p4, v2

    if-lez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    cmpg-float p4, p4, v2

    if-gez p4, :cond_1

    move p4, v1

    goto :goto_1

    :cond_1
    move p4, v3

    goto :goto_1

    :cond_2
    move p2, v3

    move p4, p2

    :goto_1
    sub-float/2addr p3, p1

    .line 421
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    cmpl-float p1, p3, v2

    if-lez p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    cmpg-float p3, p3, v2

    if-gez p3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    move v3, p1

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    if-eqz v3, :cond_7

    if-eqz p2, :cond_6

    .line 427
    sget-object p1, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    goto :goto_5

    :cond_6
    sget-object p1, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    :goto_5
    return-object p1

    :cond_7
    if-eqz p4, :cond_8

    .line 429
    sget-object p1, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    return-object p1

    :cond_8
    if-eqz v1, :cond_9

    .line 431
    sget-object p1, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    return-object p1

    :cond_9
    if-eqz p2, :cond_a

    .line 433
    sget-object p1, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    return-object p1

    :cond_a
    return-object p5
.end method

.method public getColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    return-object v0
.end method

.method protected getDotsGap(DF)F
    .locals 4

    float-to-double v0, p3

    div-double v0, p1, v0

    .line 476
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    return p3

    :cond_0
    div-double/2addr p1, v0

    double-to-float p1, p1

    return p1
.end method

.method protected getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;
    .locals 16

    .line 458
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 459
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    .line 460
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    .line 461
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v10

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v12

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double v12, v4, v2

    mul-double v14, v6, v0

    sub-double/2addr v12, v14

    .line 465
    new-instance v14, Lcom/itextpdf/kernel/geom/Point;

    mul-double/2addr v6, v8

    mul-double/2addr v4, v10

    sub-double/2addr v6, v4

    div-double/2addr v6, v12

    mul-double/2addr v10, v0

    mul-double/2addr v8, v2

    sub-double/2addr v10, v8

    div-double/2addr v10, v12

    invoke-direct {v14, v6, v7, v10, v11}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    return-object v14
.end method

.method public getOpacity()F
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/TransparentColor;->getOpacity()F

    move-result v0

    return v0
.end method

.method protected getStartingPointsForBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)[F
    .locals 5

    .line 697
    iget v0, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 699
    invoke-virtual/range {p0 .. p5}, Lcom/itextpdf/layout/borders/Border;->getBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)Lcom/itextpdf/layout/borders/Border$Side;

    move-result-object p5

    .line 700
    sget-object v1, Lcom/itextpdf/layout/borders/Border$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {p5}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result p5

    aget p5, v1, p5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p5, v4, :cond_3

    if-eq p5, v3, :cond_2

    if-eq p5, v2, :cond_1

    if-eq p5, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v0

    sub-float/2addr p3, v0

    goto :goto_0

    :cond_1
    sub-float/2addr p2, v0

    sub-float/2addr p4, v0

    goto :goto_0

    :cond_2
    add-float/2addr p1, v0

    add-float/2addr p3, v0

    goto :goto_0

    :cond_3
    add-float/2addr p2, v0

    add-float/2addr p4, v0

    .line 720
    :goto_0
    new-array p5, v1, [F

    const/4 v0, 0x0

    aput p1, p5, v0

    aput p2, p5, v4

    aput p3, p5, v3

    aput p4, p5, v2

    return-object p5
.end method

.method public abstract getType()I
.end method

.method public getWidth()F
    .locals 1

    .line 339
    iget v0, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 388
    iget v0, p0, Lcom/itextpdf/layout/borders/Border;->hash:I

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/Color;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 392
    iget-object v1, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/TransparentColor;->getOpacity()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 393
    iput v0, p0, Lcom/itextpdf/layout/borders/Border;->hash:I

    :cond_0
    return v0
.end method

.method public setColor(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 2

    .line 348
    new-instance v0, Lcom/itextpdf/layout/properties/TransparentColor;

    iget-object v1, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/TransparentColor;->getOpacity()F

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/layout/properties/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    iput-object v0, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/properties/TransparentColor;

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    .line 357
    iput p1, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    return-void
.end method
