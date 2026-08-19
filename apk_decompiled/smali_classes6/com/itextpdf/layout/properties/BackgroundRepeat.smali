.class public Lcom/itextpdf/layout/properties/BackgroundRepeat;
.super Ljava/lang/Object;
.source "BackgroundRepeat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;
    }
.end annotation


# instance fields
.field private final xAxisRepeat:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

.field private final yAxisRepeat:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    sget-object v0, Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;->REPEAT:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/properties/BackgroundRepeat;-><init>(Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p1}, Lcom/itextpdf/layout/properties/BackgroundRepeat;-><init>(Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BackgroundRepeat;->xAxisRepeat:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    .line 60
    iput-object p2, p0, Lcom/itextpdf/layout/properties/BackgroundRepeat;->yAxisRepeat:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    return-void
.end method

.method private static calculateRatio(FF)I
    .locals 2

    div-float v0, p0, p1

    float-to-double v0, v0

    .line 162
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v1, v0

    mul-float/2addr v1, p1

    sub-float/2addr p0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static calculateWhitespace(FF)F
    .locals 2

    div-float v0, p0, p1

    float-to-double v0, v0

    .line 172
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-lez v0, :cond_0

    int-to-float v1, v0

    mul-float/2addr v1, p1

    sub-float/2addr p0, v1

    const/4 p1, 0x1

    if-le v0, p1, :cond_1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    div-float/2addr p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private processSpaceValueAndCalculateWhitespace(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Point;
    .locals 8

    .line 133
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    .line 134
    sget-object v1, Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;->SPACE:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    iget-object v2, p0, Lcom/itextpdf/layout/properties/BackgroundRepeat;->xAxisRepeat:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    .line 135
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    const-wide/16 v5, 0x0

    if-gtz v1, :cond_0

    .line 136
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 137
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-static {v1, v2}, Lcom/itextpdf/layout/properties/BackgroundRepeat;->calculateWhitespace(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    goto :goto_1

    .line 139
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    sub-float/2addr v1, v2

    .line 140
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v7

    sub-float/2addr v2, v7

    .line 141
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpl-float v2, v1, v4

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    float-to-double v1, v1

    .line 143
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    .line 146
    :cond_2
    :goto_1
    sget-object v1, Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;->SPACE:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    iget-object v2, p0, Lcom/itextpdf/layout/properties/BackgroundRepeat;->yAxisRepeat:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    if-ne v1, v2, :cond_5

    .line 147
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 148
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 149
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    invoke-static {p2, p1}, Lcom/itextpdf/layout/properties/BackgroundRepeat;->calculateWhitespace(FF)F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    goto :goto_2

    .line 151
    :cond_3
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v2

    sub-float/2addr v1, v2

    .line 152
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result p2

    sub-float/2addr p1, p2

    .line 153
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    cmpl-float p2, p1, v4

    if-lez p2, :cond_4

    move v4, p1

    .line 155
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide p1

    float-to-double v1, v4

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    :cond_5
    :goto_2
    return-object v0
.end method


# virtual methods
.method public getXAxisRepeat()Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundRepeat;->xAxisRepeat:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    return-object v0
.end method

.method public getYAxisRepeat()Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundRepeat;->yAxisRepeat:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    return-object v0
.end method

.method public isNoRepeatOnXAxis()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundRepeat;->xAxisRepeat:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    sget-object v1, Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;->NO_REPEAT:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNoRepeatOnYAxis()Z
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/itextpdf/layout/properties/BackgroundRepeat;->yAxisRepeat:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    sget-object v1, Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;->NO_REPEAT:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepareRectangleToDrawingAndGetWhitespace(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/properties/BackgroundSize;)Lcom/itextpdf/kernel/geom/Point;
    .locals 4

    .line 110
    sget-object v0, Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;->ROUND:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    iget-object v1, p0, Lcom/itextpdf/layout/properties/BackgroundRepeat;->xAxisRepeat:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    if-ne v0, v1, :cond_0

    .line 111
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-static {v0, v1}, Lcom/itextpdf/layout/properties/BackgroundRepeat;->calculateRatio(FF)I

    move-result v0

    .line 112
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    div-float/2addr v1, v2

    .line 113
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 114
    sget-object v0, Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;->ROUND:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    iget-object v2, p0, Lcom/itextpdf/layout/properties/BackgroundRepeat;->yAxisRepeat:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    if-eq v0, v2, :cond_0

    invoke-virtual {p3}, Lcom/itextpdf/layout/properties/BackgroundSize;->getBackgroundHeightSize()Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 116
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 119
    :cond_0
    sget-object v0, Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;->ROUND:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    iget-object v1, p0, Lcom/itextpdf/layout/properties/BackgroundRepeat;->yAxisRepeat:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    if-ne v0, v1, :cond_1

    .line 120
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-static {v0, v1}, Lcom/itextpdf/layout/properties/BackgroundRepeat;->calculateRatio(FF)I

    move-result v0

    .line 121
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    div-float/2addr v1, v2

    .line 122
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 123
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    div-float/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 124
    sget-object v0, Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;->ROUND:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    iget-object v2, p0, Lcom/itextpdf/layout/properties/BackgroundRepeat;->xAxisRepeat:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    if-eq v0, v2, :cond_1

    invoke-virtual {p3}, Lcom/itextpdf/layout/properties/BackgroundSize;->getBackgroundWidthSize()Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p3

    if-nez p3, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p3

    mul-float/2addr p3, v1

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 129
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/properties/BackgroundRepeat;->processSpaceValueAndCalculateWhitespace(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object p1

    return-object p1
.end method
