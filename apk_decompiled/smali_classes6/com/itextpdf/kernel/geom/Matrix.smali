.class public Lcom/itextpdf/kernel/geom/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# static fields
.field public static final I11:I = 0x0

.field public static final I12:I = 0x1

.field public static final I13:I = 0x2

.field public static final I21:I = 0x3

.field public static final I22:I = 0x4

.field public static final I23:I = 0x5

.field public static final I31:I = 0x6

.field public static final I32:I = 0x7

.field public static final I33:I = 0x8


# instance fields
.field private final vals:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 82
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(FF)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 82
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v1, 0x6

    .line 101
    aput p1, v0, v1

    const/4 p1, 0x7

    .line 102
    aput p2, v0, p1

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 82
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v1, 0x0

    .line 143
    aput p1, v0, v1

    const/4 p1, 0x1

    .line 144
    aput p2, v0, p1

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 145
    aput p2, v0, p1

    const/4 p1, 0x3

    .line 146
    aput p3, v0, p1

    const/4 p1, 0x4

    .line 147
    aput p4, v0, p1

    const/4 p1, 0x5

    .line 148
    aput p2, v0, p1

    const/4 p1, 0x6

    .line 149
    aput p5, v0, p1

    const/4 p1, 0x7

    .line 150
    aput p6, v0, p1

    const/16 p1, 0x8

    const/high16 p2, 0x3f800000    # 1.0f

    .line 151
    aput p2, v0, p1

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 82
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v1, 0x0

    .line 119
    aput p1, v0, v1

    const/4 p1, 0x1

    .line 120
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 121
    aput p3, v0, p1

    const/4 p1, 0x3

    .line 122
    aput p4, v0, p1

    const/4 p1, 0x4

    .line 123
    aput p5, v0, p1

    const/4 p1, 0x5

    .line 124
    aput p6, v0, p1

    const/4 p1, 0x6

    .line 125
    aput p7, v0, p1

    const/4 p1, 0x7

    .line 126
    aput p8, v0, p1

    const/16 p1, 0x8

    .line 127
    aput p9, v0, p1

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public add(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;
    .locals 6

    .line 204
    new-instance v0, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Matrix;-><init>()V

    .line 206
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 207
    iget-object p1, p1, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 208
    iget-object v2, v0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v3, 0x0

    .line 210
    aget v4, v1, v3

    aget v5, p1, v3

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    .line 211
    aget v4, v1, v3

    aget v5, p1, v3

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x2

    .line 212
    aget v4, v1, v3

    aget v5, p1, v3

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x3

    .line 213
    aget v4, v1, v3

    aget v5, p1, v3

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x4

    .line 214
    aget v4, v1, v3

    aget v5, p1, v3

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x5

    .line 215
    aget v4, v1, v3

    aget v5, p1, v3

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x6

    .line 216
    aget v4, v1, v3

    aget v5, p1, v3

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x7

    .line 217
    aget v4, v1, v3

    aget v5, p1, v3

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/16 v3, 0x8

    .line 218
    aget v1, v1, v3

    aget p1, p1, v3

    add-float/2addr v1, p1

    aput v1, v2, v3

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 276
    instance-of v0, p1, Lcom/itextpdf/kernel/geom/Matrix;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    check-cast p1, Lcom/itextpdf/kernel/geom/Matrix;

    iget-object p1, p1, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1
.end method

.method public get(I)F
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    aget p1, v0, p1

    return p1
.end method

.method public getDeterminant()F
    .locals 12

    .line 259
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x4

    aget v2, v0, v2

    mul-float v3, v1, v2

    const/16 v4, 0x8

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/4 v5, 0x1

    aget v5, v0, v5

    const/4 v6, 0x5

    aget v6, v0, v6

    mul-float v7, v5, v6

    const/4 v8, 0x6

    aget v8, v0, v8

    mul-float/2addr v7, v8

    add-float/2addr v3, v7

    const/4 v7, 0x2

    aget v7, v0, v7

    const/4 v9, 0x3

    aget v9, v0, v9

    mul-float v10, v7, v9

    const/4 v11, 0x7

    aget v0, v0, v11

    mul-float/2addr v10, v0

    add-float/2addr v3, v10

    mul-float/2addr v1, v6

    mul-float/2addr v1, v0

    sub-float/2addr v3, v1

    mul-float/2addr v5, v9

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    mul-float/2addr v7, v2

    mul-float/2addr v7, v8

    sub-float/2addr v3, v7

    return v3
.end method

.method public hashCode()I
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public multiply(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;
    .locals 23

    .line 178
    new-instance v0, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Matrix;-><init>()V

    move-object/from16 v1, p0

    .line 180
    iget-object v2, v1, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    move-object/from16 v3, p1

    .line 181
    iget-object v3, v3, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 182
    iget-object v4, v0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v5, 0x0

    .line 184
    aget v6, v2, v5

    aget v7, v3, v5

    mul-float/2addr v6, v7

    const/4 v7, 0x1

    aget v8, v2, v7

    const/4 v9, 0x3

    aget v10, v3, v9

    mul-float v11, v8, v10

    add-float/2addr v6, v11

    const/4 v11, 0x2

    aget v12, v2, v11

    const/4 v13, 0x6

    aget v14, v3, v13

    mul-float v15, v12, v14

    add-float/2addr v6, v15

    aput v6, v4, v5

    .line 185
    aget v6, v2, v5

    aget v15, v3, v7

    mul-float/2addr v15, v6

    const/16 v16, 0x4

    aget v17, v3, v16

    mul-float v8, v8, v17

    add-float/2addr v15, v8

    const/4 v8, 0x7

    aget v18, v3, v8

    mul-float v19, v12, v18

    add-float v15, v15, v19

    aput v15, v4, v7

    .line 186
    aget v15, v3, v11

    mul-float/2addr v6, v15

    aget v15, v2, v7

    const/16 v19, 0x5

    aget v20, v3, v19

    mul-float v15, v15, v20

    add-float/2addr v6, v15

    const/16 v15, 0x8

    aget v21, v3, v15

    mul-float v12, v12, v21

    add-float/2addr v6, v12

    aput v6, v4, v11

    .line 187
    aget v6, v2, v9

    aget v5, v3, v5

    mul-float/2addr v6, v5

    aget v12, v2, v16

    mul-float/2addr v10, v12

    add-float/2addr v6, v10

    aget v10, v2, v19

    mul-float v22, v10, v14

    add-float v6, v6, v22

    aput v6, v4, v9

    .line 188
    aget v6, v2, v9

    aget v7, v3, v7

    mul-float v22, v6, v7

    mul-float v12, v12, v17

    add-float v22, v22, v12

    mul-float v12, v10, v18

    add-float v22, v22, v12

    aput v22, v4, v16

    .line 189
    aget v11, v3, v11

    mul-float/2addr v6, v11

    aget v12, v2, v16

    mul-float v12, v12, v20

    add-float/2addr v6, v12

    mul-float v10, v10, v21

    add-float/2addr v6, v10

    aput v6, v4, v19

    .line 190
    aget v6, v2, v13

    mul-float/2addr v6, v5

    aget v5, v2, v8

    aget v9, v3, v9

    mul-float/2addr v9, v5

    add-float/2addr v6, v9

    aget v9, v2, v15

    mul-float/2addr v14, v9

    add-float/2addr v6, v14

    aput v6, v4, v13

    .line 191
    aget v6, v2, v13

    mul-float/2addr v7, v6

    aget v10, v3, v16

    mul-float/2addr v5, v10

    add-float/2addr v7, v5

    mul-float v18, v18, v9

    add-float v7, v7, v18

    aput v7, v4, v8

    mul-float/2addr v6, v11

    .line 192
    aget v2, v2, v8

    aget v3, v3, v19

    mul-float/2addr v2, v3

    add-float/2addr v6, v2

    mul-float v9, v9, v21

    add-float/2addr v6, v9

    aput v6, v4, v15

    return-object v0
.end method

.method public subtract(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;
    .locals 6

    .line 231
    new-instance v0, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Matrix;-><init>()V

    .line 233
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 234
    iget-object p1, p1, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 235
    iget-object v2, v0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v3, 0x0

    .line 237
    aget v4, v1, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    .line 238
    aget v4, v1, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x2

    .line 239
    aget v4, v1, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x3

    .line 240
    aget v4, v1, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x4

    .line 241
    aget v4, v1, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x5

    .line 242
    aget v4, v1, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x6

    .line 243
    aget v4, v1, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x7

    .line 244
    aget v4, v1, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/16 v3, 0x8

    .line 245
    aget v1, v1, v3

    aget p1, p1, v3

    sub-float/2addr v1, p1

    aput v1, v2, v3

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
