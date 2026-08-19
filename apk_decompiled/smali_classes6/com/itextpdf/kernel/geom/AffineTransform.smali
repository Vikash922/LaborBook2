.class public Lcom/itextpdf/kernel/geom/AffineTransform;
.super Ljava/lang/Object;
.source "AffineTransform.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final TYPE_FLIP:I = 0x40

.field public static final TYPE_GENERAL_ROTATION:I = 0x10

.field public static final TYPE_GENERAL_SCALE:I = 0x4

.field public static final TYPE_GENERAL_TRANSFORM:I = 0x20

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MASK_ROTATION:I = 0x18

.field public static final TYPE_MASK_SCALE:I = 0x6

.field public static final TYPE_QUADRANT_ROTATION:I = 0x8

.field public static final TYPE_TRANSLATION:I = 0x1

.field public static final TYPE_UNIFORM_SCALE:I = 0x2

.field static final TYPE_UNKNOWN:I = -0x1

.field static final ZERO:D = 1.0E-10


# instance fields
.field m00:D

.field m01:D

.field m02:D

.field m10:D

.field m11:D

.field m12:D

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 128
    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    const-wide/16 v0, 0x0

    .line 129
    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 143
    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 144
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 145
    iput-wide p3, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 146
    iput-wide p5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 147
    iput-wide p7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    .line 148
    iput-wide p9, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 149
    iput-wide p11, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/AffineTransform;)V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iget v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 134
    iget-wide v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 135
    iget-wide v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 136
    iget-wide v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 137
    iget-wide v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    .line 138
    iget-wide v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 139
    iget-wide v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 2

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 165
    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    const/4 v0, 0x0

    .line 166
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    const/4 v0, 0x1

    .line 167
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    const/4 v0, 0x2

    .line 168
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    const/4 v0, 0x3

    .line 169
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    .line 170
    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 171
    aget-wide v0, p1, v1

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    const/4 v0, 0x5

    .line 172
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    :cond_0
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    const/4 v0, 0x0

    .line 154
    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    const/4 v0, 0x1

    .line 155
    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    const/4 v0, 0x2

    .line 156
    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    const/4 v0, 0x3

    .line 157
    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    .line 158
    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 159
    aget v0, p1, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    const/4 v0, 0x5

    .line 160
    aget p1, p1, v0

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    :cond_0
    return-void
.end method

.method public static getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 1

    .line 422
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 423
    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->setToRotation(D)V

    return-object v0
.end method

.method public static getRotateInstance(DDD)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 8

    .line 437
    new-instance v7, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v7}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    .line 438
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->setToRotation(DDD)V

    return-object v7
.end method

.method public static getScaleInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 1

    .line 404
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 405
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/itextpdf/kernel/geom/AffineTransform;->setToScale(DD)V

    return-object v0
.end method

.method public static getShearInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 1

    .line 410
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 411
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/itextpdf/kernel/geom/AffineTransform;->setToShear(DD)V

    return-object v0
.end method

.method public static getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 1

    .line 398
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 399
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/itextpdf/kernel/geom/AffineTransform;->setToTranslation(DD)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 677
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/AffineTransform;->clone()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    return-object v0
.end method

.method public concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V
    .locals 0

    .line 492
    invoke-virtual {p0, p1, p0}, Lcom/itextpdf/kernel/geom/AffineTransform;->multiply(Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->setTransform(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    return-void
.end method

.method public createInverse()Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getDeterminant()D

    move-result-wide v1

    .line 501
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_0

    .line 506
    new-instance v3, Lcom/itextpdf/kernel/geom/AffineTransform;

    iget-wide v4, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    div-double v6, v4, v1

    iget-wide v8, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    neg-double v10, v8

    div-double/2addr v10, v1

    iget-wide v12, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    neg-double v14, v12

    div-double/2addr v14, v1

    move-wide/from16 v16, v14

    iget-wide v14, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    div-double v18, v14, v1

    move-wide/from16 v20, v10

    iget-wide v10, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    mul-double/2addr v12, v10

    move-wide/from16 v22, v6

    iget-wide v6, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    mul-double/2addr v4, v6

    sub-double/2addr v12, v4

    div-double v24, v12, v1

    mul-double/2addr v8, v6

    mul-double/2addr v14, v10

    sub-double/2addr v8, v14

    div-double v1, v8, v1

    move-object v4, v3

    move-wide/from16 v5, v22

    move-wide/from16 v7, v20

    move-wide/from16 v9, v16

    move-wide/from16 v11, v18

    move-wide/from16 v13, v24

    move-wide v15, v1

    invoke-direct/range {v4 .. v16}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v3

    .line 504
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;

    const-string v2, "Determinant is zero. Cannot invert transformation."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deltaTransform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;
    .locals 8

    if-nez p2, :cond_0

    .line 596
    new-instance p2, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {p2}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    .line 599
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    .line 600
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    .line 602
    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v0, v6

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    invoke-virtual {p2, v4, v5, v0, v1}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    return-object p2
.end method

.method public deltaTransform([DI[DII)V
    .locals 9

    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 608
    aget-wide v1, p1, p2

    add-int/lit8 p2, p2, 0x2

    .line 609
    aget-wide v3, p1, v0

    add-int/lit8 v0, p4, 0x1

    .line 610
    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v5, v1

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    aput-wide v5, p3, p4

    add-int/lit8 p4, p4, 0x2

    .line 611
    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v1, v5

    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    aput-wide v1, p3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 686
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 689
    :cond_1
    check-cast p1, Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 691
    iget-wide v2, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 692
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 693
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    .line 694
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 695
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    .line 696
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDeterminant()D
    .locals 6

    .line 291
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    iget-wide v2, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getMatrix([D)V
    .locals 4

    const/4 v0, 0x0

    .line 280
    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    .line 281
    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    aput-wide v1, p1, v0

    const/4 v0, 0x2

    .line 282
    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    .line 283
    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    aput-wide v1, p1, v0

    .line 284
    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 285
    iget-wide v2, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    aput-wide v2, p1, v1

    const/4 v0, 0x5

    .line 286
    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    aput-wide v1, p1, v0

    :cond_0
    return-void
.end method

.method public getMatrix([F)V
    .locals 4

    .line 269
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    double-to-float v0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 270
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    double-to-float v0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 271
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    double-to-float v0, v0

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 272
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    double-to-float v0, v0

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 273
    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 274
    iget-wide v2, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    double-to-float v0, v2

    aput v0, p1, v1

    .line 275
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    double-to-float v0, v0

    const/4 v1, 0x5

    aput v0, p1, v1

    :cond_0
    return-void
.end method

.method public getScaleX()D
    .locals 2

    .line 241
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    return-wide v0
.end method

.method public getScaleY()D
    .locals 2

    .line 245
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    return-wide v0
.end method

.method public getShearX()D
    .locals 2

    .line 249
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    return-wide v0
.end method

.method public getShearY()D
    .locals 2

    .line 253
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    return-wide v0
.end method

.method public getTranslateX()D
    .locals 2

    .line 257
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    return-wide v0
.end method

.method public getTranslateY()D
    .locals 2

    .line 261
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    return-wide v0
.end method

.method public getType()I
    .locals 21

    move-object/from16 v0, p0

    .line 200
    iget v1, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v1

    .line 206
    :cond_0
    iget-wide v1, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    iget-wide v3, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double v5, v1, v3

    iget-wide v7, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    iget-wide v9, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double v11, v7, v9

    add-double/2addr v5, v11

    const-wide/16 v11, 0x0

    cmpl-double v5, v5, v11

    if-eqz v5, :cond_1

    const/16 v1, 0x20

    return v1

    .line 211
    :cond_1
    iget-wide v5, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    cmpl-double v5, v5, v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-nez v5, :cond_3

    iget-wide v5, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    cmpl-double v5, v5, v11

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    cmpl-double v5, v1, v13

    const/4 v6, 0x0

    if-nez v5, :cond_4

    cmpl-double v5, v9, v13

    if-nez v5, :cond_4

    cmpl-double v5, v3, v11

    if-nez v5, :cond_4

    cmpl-double v5, v7, v11

    if-nez v5, :cond_4

    return v6

    :cond_3
    :goto_0
    const/4 v6, 0x1

    :cond_4
    mul-double v15, v1, v9

    mul-double v17, v3, v7

    sub-double v15, v15, v17

    cmpg-double v5, v15, v11

    if-gez v5, :cond_5

    or-int/lit8 v6, v6, 0x40

    :cond_5
    mul-double v15, v1, v1

    mul-double v17, v7, v7

    add-double v15, v15, v17

    mul-double v17, v3, v3

    mul-double v19, v9, v9

    add-double v17, v17, v19

    cmpl-double v5, v15, v17

    if-eqz v5, :cond_6

    or-int/lit8 v6, v6, 0x4

    goto :goto_1

    :cond_6
    cmpl-double v5, v15, v13

    if-eqz v5, :cond_7

    or-int/lit8 v6, v6, 0x2

    :cond_7
    :goto_1
    cmpl-double v5, v1, v11

    if-nez v5, :cond_8

    cmpl-double v5, v9, v11

    if-eqz v5, :cond_9

    :cond_8
    cmpl-double v5, v7, v11

    if-nez v5, :cond_a

    cmpl-double v5, v3, v11

    if-nez v5, :cond_a

    cmpg-double v1, v1, v11

    if-ltz v1, :cond_9

    cmpg-double v1, v9, v11

    if-gez v1, :cond_a

    :cond_9
    or-int/lit8 v6, v6, 0x8

    goto :goto_2

    :cond_a
    cmpl-double v1, v3, v11

    if-nez v1, :cond_b

    cmpl-double v1, v7, v11

    if-eqz v1, :cond_c

    :cond_b
    or-int/lit8 v6, v6, 0x10

    :cond_c
    :goto_2
    return v6
.end method

.method public hashCode()I
    .locals 8

    .line 701
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public inverseTransform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
        }
    .end annotation

    .line 616
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getDeterminant()D

    move-result-wide v0

    .line 617
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    if-nez p2, :cond_0

    .line 624
    new-instance p2, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {p2}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    .line 627
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    sub-double/2addr v2, v4

    .line 628
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    sub-double/2addr v4, v6

    .line 630
    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    div-double/2addr v6, v0

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v8

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v2, v8

    sub-double/2addr v4, v2

    div-double/2addr v4, v0

    invoke-virtual {p2, v6, v7, v4, v5}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    return-object p2

    .line 620
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;

    const-string p2, "Determinant is zero. Cannot invert transformation."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inverseTransform([DI[DII)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
        }
    .end annotation

    move-object v0, p0

    .line 636
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getDeterminant()D

    move-result-wide v1

    .line 637
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_1

    move/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    :goto_0
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_0

    add-int/lit8 v6, v3, 0x1

    .line 644
    aget-wide v7, p1, v3

    iget-wide v9, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    sub-double/2addr v7, v9

    add-int/lit8 v3, v3, 0x2

    .line 645
    aget-wide v9, p1, v6

    iget-wide v11, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    sub-double/2addr v9, v11

    add-int/lit8 v6, v4, 0x1

    .line 646
    iget-wide v11, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v11, v7

    iget-wide v13, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v13, v9

    sub-double/2addr v11, v13

    div-double/2addr v11, v1

    aput-wide v11, p3, v4

    add-int/lit8 v4, v4, 0x2

    .line 647
    iget-wide v11, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v9, v11

    iget-wide v11, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v7, v11

    sub-double/2addr v9, v7

    div-double/2addr v9, v1

    aput-wide v9, p3, v6

    goto :goto_0

    :cond_0
    return-void

    .line 640
    :cond_1
    new-instance v1, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;

    const-string v2, "Determinant is zero. Cannot invert transformation."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public inverseTransform([FI[FII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
        }
    .end annotation

    .line 653
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getDeterminant()D

    move-result-wide v0

    double-to-float v0, v0

    .line 654
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_1

    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    add-int/lit8 v1, p2, 0x1

    .line 661
    aget v2, p1, p2

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    add-int/lit8 p2, p2, 0x2

    .line 662
    aget v1, p1, v1

    float-to-double v3, v1

    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    sub-double/2addr v3, v5

    double-to-float v1, v3

    add-int/lit8 v3, p4, 0x1

    float-to-double v4, v2

    .line 663
    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v6, v4

    float-to-double v1, v1

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v8, v1

    sub-double/2addr v6, v8

    float-to-double v8, v0

    div-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p3, p4

    add-int/lit8 p4, p4, 0x2

    .line 664
    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v1, v6

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v4, v6

    sub-double/2addr v1, v4

    div-double/2addr v1, v8

    double-to-float v1, v1

    aput v1, p3, v3

    goto :goto_0

    :cond_0
    return-void

    .line 657
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;

    const-string p2, "Determinant is zero. Cannot invert transformation."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isIdentity()Z
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method multiply(Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 482
    new-instance v13, Lcom/itextpdf/kernel/geom/AffineTransform;

    iget-wide v2, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    iget-wide v4, v1, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    iget-wide v10, v1, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double v14, v8, v10

    add-double/2addr v6, v14

    iget-wide v14, v1, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v2, v14

    move-wide/from16 v16, v6

    iget-wide v6, v1, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v6

    add-double/2addr v8, v2

    iget-wide v2, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double v18, v2, v4

    move-wide/from16 v20, v8

    iget-wide v8, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double v22, v8, v10

    add-double v18, v18, v22

    mul-double/2addr v2, v14

    mul-double/2addr v8, v6

    add-double/2addr v8, v2

    iget-wide v2, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    mul-double/2addr v4, v2

    move-wide/from16 v22, v8

    iget-wide v8, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    mul-double/2addr v10, v8

    add-double/2addr v4, v10

    iget-wide v10, v1, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    add-double/2addr v10, v4

    mul-double/2addr v2, v14

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    iget-wide v0, v1, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    add-double v14, v2, v0

    move-object v0, v13

    move-wide/from16 v1, v16

    move-wide/from16 v3, v20

    move-wide/from16 v5, v18

    move-wide/from16 v7, v22

    move-wide v9, v10

    move-wide v11, v14

    invoke-direct/range {v0 .. v12}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v13
.end method

.method public preConcatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V
    .locals 0

    .line 496
    invoke-virtual {p0, p0, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->multiply(Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->setTransform(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    return-void
.end method

.method public rotate(D)V
    .locals 0

    .line 460
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    return-void
.end method

.method public rotate(DDD)V
    .locals 0

    .line 471
    invoke-static/range {p1 .. p6}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(DDD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    return-void
.end method

.method public scale(DD)V
    .locals 0

    .line 447
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/kernel/geom/AffineTransform;->getScaleInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    return-void
.end method

.method public setToIdentity()V
    .locals 2

    const/4 v0, 0x0

    .line 320
    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 321
    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    const-wide/16 v0, 0x0

    .line 322
    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    return-void
.end method

.method public setToRotation(D)V
    .locals 12

    .line 366
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 367
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    .line 368
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/16 v10, 0x0

    if-gez v2, :cond_1

    cmpl-double p1, v0, v10

    if-lez p1, :cond_0

    move-wide v0, v6

    goto :goto_0

    :cond_0
    move-wide v0, v8

    :goto_0
    move-wide p1, v10

    goto :goto_2

    .line 371
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    cmpl-double p1, p1, v10

    if-lez p1, :cond_2

    move-wide p1, v6

    goto :goto_1

    :cond_2
    move-wide p1, v8

    :goto_1
    move-wide v0, v10

    :cond_3
    :goto_2
    double-to-float p1, p1

    float-to-double p1, p1

    .line 375
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    neg-double p1, v0

    double-to-float p1, p1

    float-to-double p1, p1

    .line 376
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    double-to-float p1, v0

    float-to-double p1, p1

    .line 377
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 378
    iput-wide v10, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    iput-wide v10, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    const/4 p1, -0x1

    .line 379
    iput p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    return-void
.end method

.method public setToRotation(DDD)V
    .locals 8

    .line 391
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/geom/AffineTransform;->setToRotation(D)V

    .line 392
    iget-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, p1

    mul-double/2addr v2, p3

    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double v6, p5, v4

    add-double/2addr v2, v6

    iput-wide v2, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    sub-double/2addr v0, p1

    mul-double/2addr p5, v0

    mul-double/2addr p3, v4

    sub-double/2addr p5, p3

    .line 393
    iput-wide p5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    const/4 p1, -0x1

    .line 394
    iput p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    return-void
.end method

.method public setToScale(DD)V
    .locals 2

    .line 338
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 339
    iput-wide p3, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    const-wide/16 v0, 0x0

    .line 340
    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p1, v0

    if-nez p1, :cond_1

    cmpl-double p1, p3, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 344
    iput p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 342
    iput p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    :goto_1
    return-void
.end method

.method public setToShear(DD)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 349
    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    const-wide/16 v0, 0x0

    .line 350
    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 351
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 352
    iput-wide p3, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    cmpl-double p1, p1, v0

    if-nez p1, :cond_1

    cmpl-double p1, p3, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 356
    iput p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 354
    iput p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    :goto_1
    return-void
.end method

.method public setToTranslation(DD)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 326
    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    const-wide/16 v0, 0x0

    .line 327
    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 328
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 329
    iput-wide p3, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    cmpl-double p1, p1, v0

    if-nez p1, :cond_0

    cmpl-double p1, p3, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 331
    iput p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 333
    iput p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    :goto_0
    return-void
.end method

.method public setTransform(DDDDDD)V
    .locals 1

    const/4 v0, -0x1

    .line 305
    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 306
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 307
    iput-wide p3, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 308
    iput-wide p5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 309
    iput-wide p7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    .line 310
    iput-wide p9, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 311
    iput-wide p11, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    return-void
.end method

.method public setTransform(FFFFFF)V
    .locals 2

    const/4 v0, -0x1

    .line 295
    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    float-to-double v0, p1

    .line 296
    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    float-to-double p1, p2

    .line 297
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    float-to-double p1, p3

    .line 298
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    float-to-double p1, p4

    .line 299
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    float-to-double p1, p5

    .line 300
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    float-to-double p1, p6

    .line 301
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    return-void
.end method

.method public setTransform(Lcom/itextpdf/kernel/geom/AffineTransform;)V
    .locals 14

    .line 315
    iget v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 316
    iget-wide v2, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    iget-wide v4, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    iget-wide v6, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    iget-wide v8, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iget-wide v10, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    iget-wide v12, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v13}, Lcom/itextpdf/kernel/geom/AffineTransform;->setTransform(DDDDDD)V

    return-void
.end method

.method public shear(DD)V
    .locals 0

    .line 451
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/kernel/geom/AffineTransform;->getShearInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    return-void
.end method

.method public transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;
    .locals 8

    if-nez p2, :cond_0

    .line 518
    new-instance p2, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {p2}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    .line 521
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    .line 522
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    .line 524
    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v0, v6

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    add-double/2addr v0, v2

    invoke-virtual {p2, v4, v5, v0, v1}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    return-object p2
.end method

.method public transform([DI[DII)V
    .locals 9

    const/4 v0, 0x2

    if-ne p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    mul-int/lit8 v1, p5, 0x2

    add-int v2, p2, v1

    if-ge p4, v2, :cond_0

    add-int/lit8 p2, v2, -0x2

    add-int/2addr p4, v1

    sub-int/2addr p4, v0

    const/4 v0, -0x2

    :cond_0
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    .line 550
    aget-wide v1, p1, p2

    add-int/lit8 v3, p2, 0x1

    .line 551
    aget-wide v3, p1, v3

    .line 552
    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v5, v1

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    add-double/2addr v5, v7

    aput-wide v5, p3, p4

    add-int/lit8 v5, p4, 0x1

    .line 553
    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v1, v6

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v3, v6

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    add-double/2addr v1, v3

    aput-wide v1, p3, v5

    add-int/2addr p2, v0

    add-int/2addr p4, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public transform([DI[FII)V
    .locals 9

    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 587
    aget-wide v1, p1, p2

    add-int/lit8 p2, p2, 0x2

    .line 588
    aget-wide v3, p1, v0

    add-int/lit8 v0, p4, 0x1

    .line 589
    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v5, v1

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    add-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, p3, p4

    add-int/lit8 p4, p4, 0x2

    .line 590
    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v1, v5

    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    add-double/2addr v1, v3

    double-to-float v1, v1

    aput v1, p3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public transform([FI[DII)V
    .locals 9

    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 578
    aget v1, p1, p2

    add-int/lit8 p2, p2, 0x2

    .line 579
    aget v0, p1, v0

    add-int/lit8 v2, p4, 0x1

    float-to-double v3, v1

    .line 580
    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v5, v3

    float-to-double v0, v0

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v7, v0

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    add-double/2addr v5, v7

    aput-wide v5, p3, p4

    add-int/lit8 p4, p4, 0x2

    .line 581
    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v0, v5

    add-double/2addr v3, v0

    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    add-double/2addr v3, v0

    aput-wide v3, p3, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public transform([FI[FII)V
    .locals 9

    const/4 v0, 0x2

    if-ne p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    mul-int/lit8 v1, p5, 0x2

    add-int v2, p2, v1

    if-ge p4, v2, :cond_0

    add-int/lit8 p2, v2, -0x2

    add-int/2addr p4, v1

    sub-int/2addr p4, v0

    const/4 v0, -0x2

    :cond_0
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    .line 567
    aget v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    .line 568
    aget v2, p1, v2

    float-to-double v3, v1

    .line 569
    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v5, v3

    float-to-double v1, v2

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v7, v1

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    add-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, p3, p4

    add-int/lit8 v5, p4, 0x1

    .line 570
    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v3, v6

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v1, v6

    add-double/2addr v3, v1

    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    add-double/2addr v3, v1

    double-to-float v1, v3

    aput v1, p3, v5

    add-int/2addr p2, v0

    add-int/2addr p4, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public transform([Lcom/itextpdf/kernel/geom/Point;I[Lcom/itextpdf/kernel/geom/Point;II)V
    .locals 9

    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 530
    aget-object p2, p1, p2

    .line 531
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    .line 532
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    .line 533
    aget-object p2, p3, p4

    if-nez p2, :cond_0

    .line 535
    new-instance p2, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {p2}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    .line 537
    :cond_0
    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v5, v1

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v1, v7

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v3, v7

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    add-double/2addr v1, v3

    invoke-virtual {p2, v5, v6, v1, v2}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    add-int/lit8 v1, p4, 0x1

    .line 538
    aput-object p2, p3, p4

    move p2, v0

    move p4, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public translate(DD)V
    .locals 0

    .line 443
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    return-void
.end method
