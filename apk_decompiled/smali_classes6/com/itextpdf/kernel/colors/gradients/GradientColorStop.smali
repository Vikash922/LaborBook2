.class public Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
.super Ljava/lang/Object;
.source "GradientColorStop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;,
        Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;
    }
.end annotation


# instance fields
.field private hintOffset:D

.field private hintOffsetType:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

.field private offset:D

.field private offsetType:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

.field private final opacity:F

.field private final rgb:[F


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V
    .locals 6

    .line 76
    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getRgbArray()[F

    move-result-object v1

    invoke-direct {p1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOpacity()F

    move-result v2

    move-object v0, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>([FFDLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 6

    const-wide/16 v3, 0x0

    .line 54
    sget-object v5, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->AUTO:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>([FFDLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    return-void
.end method

.method public constructor <init>([FDLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V
    .locals 6

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>([FFDLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    return-void
.end method

.method private constructor <init>([FFDLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->hintOffset:D

    .line 45
    sget-object v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->NONE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    iput-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->hintOffsetType:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    .line 80
    invoke-static {p1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->copyRgbArray([F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->rgb:[F

    .line 82
    invoke-static {p2}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->normalize(F)F

    move-result p1

    iput p1, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->opacity:F

    .line 84
    invoke-virtual {p0, p3, p4, p5}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setOffset(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    return-void
.end method

.method private static copyRgbArray([F)[F
    .locals 6

    const/4 v0, 0x3

    if-eqz p0, :cond_1

    .line 201
    array-length v1, p0

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 204
    aget v2, p0, v1

    invoke-static {v2}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->normalize(F)F

    move-result v2

    const/4 v3, 0x1

    aget v4, p0, v3

    invoke-static {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->normalize(F)F

    move-result v4

    const/4 v5, 0x2

    aget p0, p0, v5

    invoke-static {p0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->normalize(F)F

    move-result p0

    new-array v0, v0, [F

    aput v2, v0, v1

    aput v4, v0, v3

    aput p0, v0, v5

    return-object v0

    .line 202
    :cond_1
    :goto_0
    new-array p0, v0, [F

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private getOpacity()F
    .locals 1

    .line 103
    iget v0, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->opacity:F

    return v0
.end method

.method private static normalize(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    :cond_0
    move p0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 178
    :cond_1
    check-cast p1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 179
    iget v2, p1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->opacity:F

    iget v3, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->opacity:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->offset:D

    iget-wide v4, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->offset:D

    .line 180
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->hintOffset:D

    iget-wide v4, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->hintOffset:D

    .line 181
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->rgb:[F

    iget-object v3, p1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->rgb:[F

    .line 182
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->offsetType:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    iget-object v3, p1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->offsetType:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->hintOffsetType:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    iget-object p1, p1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->hintOffsetType:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getHintOffset()D
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->hintOffset:D

    return-wide v0
.end method

.method public getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->hintOffsetType:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    return-object v0
.end method

.method public getOffset()D
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->offset:D

    return-wide v0
.end method

.method public getOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->offsetType:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    return-object v0
.end method

.method public getRgbArray()[F
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->rgb:[F

    invoke-static {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->copyRgbArray([F)[F

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 189
    iget v0, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->opacity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->offset:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->hintOffset:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 190
    iget-object v1, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->offsetType:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 191
    iget-object v1, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->hintOffsetType:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 192
    iget-object v1, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->rgb:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .locals 1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    sget-object p3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->NONE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    :goto_0
    iput-object p3, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->hintOffsetType:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    .line 166
    sget-object v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->NONE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-eq p3, v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    :goto_1
    iput-wide p1, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->hintOffset:D

    return-object p0
.end method

.method public setOffset(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .locals 1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    sget-object p3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->AUTO:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    :goto_0
    iput-object p3, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->offsetType:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    .line 152
    sget-object v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->AUTO:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    if-eq p3, v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    :goto_1
    iput-wide p1, p0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->offset:D

    return-object p0
.end method
