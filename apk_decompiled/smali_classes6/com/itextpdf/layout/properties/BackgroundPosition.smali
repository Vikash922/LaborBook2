.class public Lcom/itextpdf/layout/properties/BackgroundPosition;
.super Ljava/lang/Object;
.source "BackgroundPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/properties/BackgroundPosition$PositionY;,
        Lcom/itextpdf/layout/properties/BackgroundPosition$PositionX;
    }
.end annotation


# static fields
.field private static final EPS:D = 9.999999747378752E-5

.field private static final FULL_VALUE:I = 0x64

.field private static final HALF_VALUE:I = 0x32


# instance fields
.field private positionX:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionX;

.field private positionY:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionY;

.field private xShift:Lcom/itextpdf/layout/properties/UnitValue;

.field private yShift:Lcom/itextpdf/layout/properties/UnitValue;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/properties/UnitValue;-><init>(IF)V

    iput-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->xShift:Lcom/itextpdf/layout/properties/UnitValue;

    .line 46
    new-instance v0, Lcom/itextpdf/layout/properties/UnitValue;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/properties/UnitValue;-><init>(IF)V

    iput-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->yShift:Lcom/itextpdf/layout/properties/UnitValue;

    .line 47
    sget-object v0, Lcom/itextpdf/layout/properties/BackgroundPosition$PositionX;->LEFT:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionX;

    iput-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->positionX:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionX;

    .line 48
    sget-object v0, Lcom/itextpdf/layout/properties/BackgroundPosition$PositionY;->TOP:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionY;

    iput-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->positionY:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionY;

    return-void
.end method

.method private static calculateValue(Lcom/itextpdf/layout/properties/UnitValue;F)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->isPercentValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p0

    if-eqz v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    mul-float/2addr p0, p1

    :cond_1
    return p0
.end method

.method private parsePositionXToUnitValueAndReturnMultiplier(Lcom/itextpdf/layout/properties/UnitValue;)I
    .locals 3

    const/4 v0, 0x2

    .line 196
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/properties/UnitValue;->setUnitType(I)V

    .line 197
    sget-object v1, Lcom/itextpdf/layout/properties/BackgroundPosition$1;->$SwitchMap$com$itextpdf$layout$properties$BackgroundPosition$PositionX:[I

    iget-object v2, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->positionX:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionX;

    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/BackgroundPosition$PositionX;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/high16 v0, 0x42480000    # 50.0f

    .line 205
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    return v2

    :cond_1
    const/high16 v0, 0x42c80000    # 100.0f

    .line 202
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    return v2
.end method

.method private parsePositionYToUnitValueAndReturnMultiplier(Lcom/itextpdf/layout/properties/UnitValue;)I
    .locals 3

    const/4 v0, 0x2

    .line 219
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/properties/UnitValue;->setUnitType(I)V

    .line 220
    sget-object v1, Lcom/itextpdf/layout/properties/BackgroundPosition$1;->$SwitchMap$com$itextpdf$layout$properties$BackgroundPosition$PositionY:[I

    iget-object v2, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->positionY:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionY;

    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/BackgroundPosition$PositionY;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/high16 v0, 0x42480000    # 50.0f

    .line 228
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    return v2

    :cond_1
    const/high16 v0, 0x42c80000    # 100.0f

    .line 225
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 v0, 0x0

    .line 222
    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    return v2
.end method


# virtual methods
.method public calculatePositionValues(FFLcom/itextpdf/layout/properties/UnitValue;Lcom/itextpdf/layout/properties/UnitValue;)V
    .locals 6

    .line 60
    invoke-direct {p0, p3}, Lcom/itextpdf/layout/properties/BackgroundPosition;->parsePositionXToUnitValueAndReturnMultiplier(Lcom/itextpdf/layout/properties/UnitValue;)I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    if-nez v0, :cond_0

    .line 61
    iget-object v4, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->xShift:Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v4, v4, v2

    if-lez v4, :cond_0

    .line 62
    invoke-virtual {p3, v1}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p3, p1}, Lcom/itextpdf/layout/properties/BackgroundPosition;->calculateValue(Lcom/itextpdf/layout/properties/UnitValue;F)F

    move-result v4

    iget-object v5, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->xShift:Lcom/itextpdf/layout/properties/UnitValue;

    invoke-static {v5, p1}, Lcom/itextpdf/layout/properties/BackgroundPosition;->calculateValue(Lcom/itextpdf/layout/properties/UnitValue;F)F

    move-result p1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    add-float/2addr v4, p1

    .line 64
    invoke-virtual {p3, v4}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    :goto_0
    const/4 p1, 0x1

    .line 67
    invoke-virtual {p3, p1}, Lcom/itextpdf/layout/properties/UnitValue;->setUnitType(I)V

    .line 69
    invoke-direct {p0, p4}, Lcom/itextpdf/layout/properties/BackgroundPosition;->parsePositionYToUnitValueAndReturnMultiplier(Lcom/itextpdf/layout/properties/UnitValue;)I

    move-result p3

    if-nez p3, :cond_1

    .line 70
    iget-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->yShift:Lcom/itextpdf/layout/properties/UnitValue;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v2

    if-lez v0, :cond_1

    .line 71
    invoke-virtual {p4, v1}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    goto :goto_1

    .line 74
    :cond_1
    invoke-static {p4, p2}, Lcom/itextpdf/layout/properties/BackgroundPosition;->calculateValue(Lcom/itextpdf/layout/properties/UnitValue;F)F

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->yShift:Lcom/itextpdf/layout/properties/UnitValue;

    invoke-static {v1, p2}, Lcom/itextpdf/layout/properties/BackgroundPosition;->calculateValue(Lcom/itextpdf/layout/properties/UnitValue;F)F

    move-result p2

    int-to-float p3, p3

    mul-float/2addr p2, p3

    add-float/2addr v0, p2

    .line 73
    invoke-virtual {p4, v0}, Lcom/itextpdf/layout/properties/UnitValue;->setValue(F)V

    .line 76
    :goto_1
    invoke-virtual {p4, p1}, Lcom/itextpdf/layout/properties/UnitValue;->setUnitType(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 172
    :cond_1
    check-cast p1, Lcom/itextpdf/layout/properties/BackgroundPosition;

    .line 173
    iget-object v2, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->positionX:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionX;

    iget-object v3, p1, Lcom/itextpdf/layout/properties/BackgroundPosition;->positionX:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionX;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->positionY:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionY;

    iget-object v3, p1, Lcom/itextpdf/layout/properties/BackgroundPosition;->positionY:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionY;

    .line 174
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->xShift:Lcom/itextpdf/layout/properties/UnitValue;

    iget-object v3, p1, Lcom/itextpdf/layout/properties/BackgroundPosition;->xShift:Lcom/itextpdf/layout/properties/UnitValue;

    .line 175
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->yShift:Lcom/itextpdf/layout/properties/UnitValue;

    iget-object p1, p1, Lcom/itextpdf/layout/properties/BackgroundPosition;->yShift:Lcom/itextpdf/layout/properties/UnitValue;

    .line 176
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getPositionX()Lcom/itextpdf/layout/properties/BackgroundPosition$PositionX;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->positionX:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionX;

    return-object v0
.end method

.method public getPositionY()Lcom/itextpdf/layout/properties/BackgroundPosition$PositionY;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->positionY:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionY;

    return-object v0
.end method

.method public getXShift()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->xShift:Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getYShift()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->yShift:Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->positionX:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionX;

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/BackgroundPosition$PositionX;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->positionY:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionY;

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/BackgroundPosition$PositionY;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->xShift:Lcom/itextpdf/layout/properties/UnitValue;

    iget-object v3, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->yShift:Lcom/itextpdf/layout/properties/UnitValue;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setPositionX(Lcom/itextpdf/layout/properties/BackgroundPosition$PositionX;)Lcom/itextpdf/layout/properties/BackgroundPosition;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->positionX:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionX;

    return-object p0
.end method

.method public setPositionY(Lcom/itextpdf/layout/properties/BackgroundPosition$PositionY;)Lcom/itextpdf/layout/properties/BackgroundPosition;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->positionY:Lcom/itextpdf/layout/properties/BackgroundPosition$PositionY;

    return-object p0
.end method

.method public setXShift(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/properties/BackgroundPosition;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->xShift:Lcom/itextpdf/layout/properties/UnitValue;

    return-object p0
.end method

.method public setYShift(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/properties/BackgroundPosition;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundPosition;->yShift:Lcom/itextpdf/layout/properties/UnitValue;

    return-object p0
.end method
