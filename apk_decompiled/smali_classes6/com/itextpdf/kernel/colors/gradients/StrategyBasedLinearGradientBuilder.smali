.class public Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;
.super Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;
.source "StrategyBasedLinearGradientBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;
    }
.end annotation


# instance fields
.field private gradientStrategy:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

.field private isCentralRotationAngleStrategy:Z

.field private rotateVectorAngle:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;-><init>()V

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->rotateVectorAngle:D

    .line 36
    sget-object v0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_BOTTOM:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    iput-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->gradientStrategy:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->isCentralRotationAngleStrategy:Z

    return-void
.end method

.method private static buildCentralRotationCoordinates(Lcom/itextpdf/kernel/geom/Rectangle;D)[Lcom/itextpdf/kernel/geom/Point;
    .locals 9

    .line 143
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v5, v0

    .line 145
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v7, v0

    move-wide v3, p1

    .line 144
    invoke-static/range {v3 .. v8}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(DDD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p1

    .line 146
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->buildCoordinates(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object p0

    return-object p0
.end method

.method private static buildCoordinates(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;)[Lcom/itextpdf/kernel/geom/Point;
    .locals 7

    .line 174
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 175
    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    .line 176
    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v5

    float-to-double v5, v5

    invoke-direct {v4, v0, v1, v5, v6}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {p1, v4, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object p1

    const/4 v0, 0x2

    .line 177
    new-array v0, v0, [Lcom/itextpdf/kernel/geom/Point;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 178
    invoke-static {v0, p0}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->evaluateCoveringDomain([Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Rectangle;)[D

    move-result-object p0

    .line 179
    invoke-static {p0, v0}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->createCoordinatesForNewDomain([D[Lcom/itextpdf/kernel/geom/Point;)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object p0

    return-object p0
.end method

.method private static buildCoordinatesWithGradientStrategy(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;)[Lcom/itextpdf/kernel/geom/Point;
    .locals 18

    move-object/from16 v0, p0

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v8, v1

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 112
    sget-object v3, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$1;->$SwitchMap$com$itextpdf$kernel$colors$gradients$StrategyBasedLinearGradientBuilder$GradientStrategy:[I

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v1

    float-to-double v6, v1

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v0

    float-to-double v10, v0

    move-wide v4, v8

    .line 137
    invoke-static/range {v4 .. v11}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->createCoordinates(DDDD)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    return-object v0

    .line 132
    :pswitch_0
    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 132
    invoke-static {v0, v1}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->buildToCornerCoordinates(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Point;)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    return-object v0

    .line 129
    :pswitch_1
    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 129
    invoke-static {v0, v1}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->buildToCornerCoordinates(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Point;)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    return-object v0

    .line 126
    :pswitch_2
    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 126
    invoke-static {v0, v1}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->buildToCornerCoordinates(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Point;)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    return-object v0

    .line 123
    :pswitch_3
    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 123
    invoke-static {v0, v1}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->buildToCornerCoordinates(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Point;)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    return-object v0

    .line 120
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v3

    float-to-double v10, v3

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v0

    float-to-double v14, v0

    move-wide v12, v1

    move-wide/from16 v16, v1

    invoke-static/range {v10 .. v17}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->createCoordinates(DDDD)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    return-object v0

    .line 117
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v3

    float-to-double v10, v3

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v0

    float-to-double v14, v0

    move-wide v12, v1

    move-wide/from16 v16, v1

    invoke-static/range {v10 .. v17}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->createCoordinates(DDDD)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    return-object v0

    .line 114
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v1

    float-to-double v6, v1

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    float-to-double v10, v0

    move-wide v4, v8

    .line 114
    invoke-static/range {v4 .. v11}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->createCoordinates(DDDD)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static buildToCornerCoordinates(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Point;)[Lcom/itextpdf/kernel/geom/Point;
    .locals 6

    .line 150
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    .line 151
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 152
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-double v3, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 150
    invoke-static {v0, p1}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->buildToCornerTransform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p1

    .line 154
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->buildCoordinates(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object p0

    return-object p0
.end method

.method private static buildToCornerTransform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 27

    .line 158
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/kernel/geom/Point;->distance(Lcom/itextpdf/kernel/geom/Point;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v4, v0

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    .line 161
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v0, v0, v8

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const-wide/16 v12, 0x0

    if-gez v0, :cond_1

    cmpl-double v0, v4, v12

    if-lez v0, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide v4, v10

    :goto_0
    move-wide/from16 v21, v12

    goto :goto_2

    .line 164
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_3

    cmpl-double v0, v6, v12

    if-lez v0, :cond_2

    move-wide v6, v2

    goto :goto_1

    :cond_2
    move-wide v6, v10

    :goto_1
    move-wide/from16 v21, v6

    move-wide v4, v12

    goto :goto_2

    :cond_3
    move-wide/from16 v21, v6

    .line 168
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    sub-double v2, v2, v21

    mul-double/2addr v0, v2

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v6

    mul-double/2addr v6, v4

    add-double v23, v0, v6

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    mul-double/2addr v2, v4

    sub-double v25, v0, v2

    .line 170
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    neg-double v1, v4

    move-object v14, v0

    move-wide/from16 v15, v21

    move-wide/from16 v17, v4

    move-wide/from16 v19, v1

    invoke-direct/range {v14 .. v26}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v0
.end method

.method private static createCoordinates(DDDD)[Lcom/itextpdf/kernel/geom/Point;
    .locals 2

    const/4 v0, 0x2

    .line 183
    new-array v0, v0, [Lcom/itextpdf/kernel/geom/Point;

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    const/4 p0, 0x0

    aput-object v1, v0, p0

    new-instance p0, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {p0, p4, p5, p6, p7}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    const/4 p1, 0x1

    aput-object p0, v0, p1

    return-object v0
.end method


# virtual methods
.method public getGradientStrategy()Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->gradientStrategy:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    return-object v0
.end method

.method protected getGradientVector(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;)[Lcom/itextpdf/kernel/geom/Point;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_0
    iget-boolean p2, p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->isCentralRotationAngleStrategy:Z

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->rotateVectorAngle:D

    .line 104
    invoke-static {p1, v0, v1}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->buildCentralRotationCoordinates(Lcom/itextpdf/kernel/geom/Rectangle;D)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->gradientStrategy:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    .line 105
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->buildCoordinatesWithGradientStrategy(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getRotateVectorAngle()D
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->rotateVectorAngle:D

    return-wide v0
.end method

.method public isCentralRotationAngleStrategy()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->isCentralRotationAngleStrategy:Z

    return v0
.end method

.method public setGradientDirectionAsCentralRotationAngle(D)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->rotateVectorAngle:D

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->isCentralRotationAngleStrategy:Z

    return-object p0
.end method

.method public setGradientDirectionAsStrategy(Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;)Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    sget-object p1, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;->TO_BOTTOM:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    :goto_0
    iput-object p1, p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->gradientStrategy:Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder$GradientStrategy;

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/itextpdf/kernel/colors/gradients/StrategyBasedLinearGradientBuilder;->isCentralRotationAngleStrategy:Z

    return-object p0
.end method
