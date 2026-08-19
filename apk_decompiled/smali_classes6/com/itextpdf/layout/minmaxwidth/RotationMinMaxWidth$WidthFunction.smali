.class Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;
.super Ljava/lang/Object;
.source "RotationMinMaxWidth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidthFunction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;
    }
.end annotation


# instance fields
.field private area:D

.field private cos:D

.field private sin:D


# direct methods
.method public constructor <init>(DD)V
    .locals 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {p1, p2}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->access$000(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->sin:D

    .line 221
    invoke-static {p1, p2}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->access$100(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->cos:D

    .line 222
    iput-wide p3, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->area:D

    return-void
.end method


# virtual methods
.method public getRotatedHeight(D)D
    .locals 6

    .line 242
    iget-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->sin:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->area:D

    iget-wide v4, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->cos:D

    mul-double/2addr v2, v4

    div-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getRotatedWidth(D)D
    .locals 6

    .line 232
    iget-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->cos:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->area:D

    iget-wide v4, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->sin:D

    mul-double/2addr v2, v4

    div-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getValidOriginalWidths(D)Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;
    .locals 12

    .line 254
    iget-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->cos:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 255
    iget-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->area:D

    iget-wide v2, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->sin:D

    mul-double/2addr v0, v2

    div-double v2, v0, p1

    .line 256
    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result p1

    float-to-double p1, p1

    goto :goto_1

    .line 257
    :cond_0
    iget-wide v4, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->sin:D

    cmpl-double v6, v4, v2

    if-nez v6, :cond_1

    :goto_0
    div-double/2addr p1, v0

    goto :goto_1

    :cond_1
    mul-double v6, p1, p1

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    .line 261
    iget-wide v10, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->area:D

    mul-double/2addr v10, v8

    mul-double/2addr v10, v4

    mul-double/2addr v10, v0

    sub-double/2addr v6, v10

    cmpg-double v0, v6, v2

    if-gez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 265
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double v0, p1, v0

    iget-wide v2, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->cos:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    div-double v2, v0, v2

    .line 266
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr p1, v0

    iget-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->cos:D

    mul-double/2addr v0, v4

    goto :goto_0

    .line 268
    :goto_1
    new-instance v0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;

    invoke-direct {v0, v2, v3, p1, p2}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;-><init>(DD)V

    return-object v0
.end method

.method public getWidthDerivativeZeroPoint()D
    .locals 4

    .line 279
    iget-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->area:D

    iget-wide v2, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->sin:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->cos:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method
