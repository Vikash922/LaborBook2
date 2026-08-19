.class public Lcom/itextpdf/layout/properties/UnitValue;
.super Ljava/lang/Object;
.source "UnitValue.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final PERCENT:I = 0x2

.field public static final POINT:I = 0x1


# instance fields
.field protected unitType:I

.field protected value:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/itextpdf/layout/properties/UnitValue;->unitType:I

    .line 66
    iput p2, p0, Lcom/itextpdf/layout/properties/UnitValue;->value:F

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/properties/UnitValue;)V
    .locals 1

    .line 75
    iget v0, p1, Lcom/itextpdf/layout/properties/UnitValue;->unitType:I

    iget p1, p1, Lcom/itextpdf/layout/properties/UnitValue;->value:F

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/layout/properties/UnitValue;-><init>(IF)V

    return-void
.end method

.method public static createPercentArray(I)[Lcom/itextpdf/layout/properties/UnitValue;
    .locals 4

    .line 119
    new-array v0, p0, [Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    const/high16 v2, 0x42c80000    # 100.0f

    int-to-float v3, p0

    div-float/2addr v2, v3

    .line 121
    invoke-static {v2}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createPercentArray([F)[Lcom/itextpdf/layout/properties/UnitValue;
    .locals 6

    .line 103
    array-length v0, p0

    new-array v0, v0, [Lcom/itextpdf/layout/properties/UnitValue;

    .line 105
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    aget v5, p0, v4

    add-float/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    :cond_0
    :goto_1
    array-length v1, p0

    if-ge v3, v1, :cond_1

    const/high16 v1, 0x42c80000    # 100.0f

    .line 107
    aget v4, p0, v3

    mul-float/2addr v4, v1

    div-float/2addr v4, v2

    invoke-static {v4}, Lcom/itextpdf/layout/properties/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    aput-object v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static createPercentValue(F)Lcom/itextpdf/layout/properties/UnitValue;
    .locals 2

    .line 93
    new-instance v0, Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/layout/properties/UnitValue;-><init>(IF)V

    return-object v0
.end method

.method public static createPointArray([F)[Lcom/itextpdf/layout/properties/UnitValue;
    .locals 3

    .line 132
    array-length v0, p0

    new-array v0, v0, [Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v1, 0x0

    .line 133
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 134
    aget v2, p0, v1

    invoke-static {v2}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;
    .locals 2

    .line 84
    new-instance v0, Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/layout/properties/UnitValue;-><init>(IF)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 193
    :cond_0
    check-cast p1, Lcom/itextpdf/layout/properties/UnitValue;

    .line 194
    iget v0, p0, Lcom/itextpdf/layout/properties/UnitValue;->unitType:I

    iget v1, p1, Lcom/itextpdf/layout/properties/UnitValue;->unitType:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/itextpdf/layout/properties/UnitValue;->value:F

    iget p1, p1, Lcom/itextpdf/layout/properties/UnitValue;->value:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public getUnitType()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/itextpdf/layout/properties/UnitValue;->unitType:I

    return v0
.end method

.method public getValue()F
    .locals 1

    .line 160
    iget v0, p0, Lcom/itextpdf/layout/properties/UnitValue;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x1f1

    .line 200
    iget v1, p0, Lcom/itextpdf/layout/properties/UnitValue;->unitType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x47

    .line 201
    iget v1, p0, Lcom/itextpdf/layout/properties/UnitValue;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isPercentValue()Z
    .locals 2

    .line 185
    iget v0, p0, Lcom/itextpdf/layout/properties/UnitValue;->unitType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPointValue()Z
    .locals 2

    .line 177
    iget v0, p0, Lcom/itextpdf/layout/properties/UnitValue;->unitType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setUnitType(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/itextpdf/layout/properties/UnitValue;->unitType:I

    return-void
.end method

.method public setValue(F)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/itextpdf/layout/properties/UnitValue;->value:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 207
    iget v0, p0, Lcom/itextpdf/layout/properties/UnitValue;->unitType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "{0}%"

    goto :goto_0

    :cond_0
    const-string v0, "{0}pt"

    :goto_0
    iget v1, p0, Lcom/itextpdf/layout/properties/UnitValue;->value:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
