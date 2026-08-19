.class public Lcom/itextpdf/kernel/geom/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static EPS:F = 1.0E-4f


# instance fields
.field protected height:F

.field protected width:F

.field protected x:F

.field protected y:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    .line 79
    iput p2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    .line 80
    iput p3, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    .line 81
    iput p4, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 3

    .line 100
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-void
.end method

.method public static calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/Rectangle;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/Point;

    .line 175
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 180
    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 181
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 182
    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 184
    new-instance p0, Lcom/itextpdf/kernel/geom/Rectangle;

    double-to-float v8, v2

    double-to-float v9, v4

    sub-double/2addr v6, v2

    double-to-float v2, v6

    sub-double/2addr v0, v4

    double-to-float v0, v0

    invoke-direct {p0, v8, v9, v2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object p0
.end method

.method public static createBoundingRectangleFromQuadPoint(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/exceptions/PdfException;
        }
    .end annotation

    .line 708
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    const/16 v1, 0x8

    rem-int/2addr v0, v1

    if-nez v0, :cond_5

    const v0, -0x800001

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v2, v0

    move v3, v4

    :goto_0
    if-ge v5, v1, :cond_4

    .line 718
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v6

    add-int/lit8 v7, v5, 0x1

    .line 719
    invoke-virtual {p0, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v7

    cmpg-float v8, v6, v3

    if-gez v8, :cond_0

    move v3, v6

    :cond_0
    cmpl-float v8, v6, v0

    if-lez v8, :cond_1

    move v0, v6

    :cond_1
    cmpg-float v6, v7, v4

    if-gez v6, :cond_2

    move v4, v7

    :cond_2
    cmpl-float v6, v7, v2

    if-lez v6, :cond_3

    move v2, v7

    :cond_3
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 726
    :cond_4
    new-instance p0, Lcom/itextpdf/kernel/geom/Rectangle;

    sub-float/2addr v0, v3

    sub-float/2addr v2, v4

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object p0

    .line 709
    :cond_5
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "The QuadPoint Array length is not a multiple of 8."

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBoundingRectanglesFromQuadPoint(Lcom/itextpdf/kernel/pdf/PdfArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/exceptions/PdfException;
        }
    .end annotation

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 688
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 691
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v2

    add-int/lit8 v3, v1, 0x8

    invoke-static {v2, v1, v3}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v1

    .line 693
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    .line 694
    invoke-static {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->createBoundingRectangleFromQuadPoint(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0

    .line 689
    :cond_1
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "The QuadPoint Array length is not a multiple of 8."

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 9

    .line 114
    array-length v0, p0

    const v1, -0x800001

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :goto_0
    if-ge v5, v0, :cond_5

    aget-object v6, p0, v5

    if-nez v6, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    .line 118
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v7

    cmpg-float v7, v7, v4

    if-gez v7, :cond_1

    .line 119
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v4

    .line 120
    :cond_1
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v7

    cmpg-float v7, v7, v3

    if-gez v7, :cond_2

    .line 121
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    .line 122
    :cond_2
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v7

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    cmpl-float v7, v7, v2

    if-lez v7, :cond_3

    .line 123
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    add-float/2addr v2, v7

    .line 124
    :cond_3
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v7

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    add-float/2addr v7, v8

    cmpl-float v7, v7, v1

    if-lez v7, :cond_4

    .line 125
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    add-float/2addr v1, v6

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 128
    :cond_5
    new-instance p0, Lcom/itextpdf/kernel/geom/Rectangle;

    sub-float/2addr v1, v3

    sub-float/2addr v2, v4

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object p0
.end method

.method public static getRectangleOnRotatedPage(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 3

    .line 143
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getRotation()I

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPageSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    .line 146
    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p0

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    goto :goto_0

    .line 151
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p0

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    goto :goto_0

    .line 148
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p0

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    :goto_0
    move-object p0, v0

    :cond_3
    :goto_1
    return-object p0
.end method

.method private static linesIntersect(DDDDDDDD)Z
    .locals 21

    sub-double v0, p4, p0

    sub-double v2, p6, p2

    sub-double v4, p8, p0

    sub-double v6, p10, p2

    sub-double v8, p12, p0

    sub-double v10, p14, p2

    mul-double v12, v0, v6

    mul-double v14, v4, v2

    sub-double/2addr v12, v14

    mul-double v14, v0, v10

    mul-double v16, v8, v2

    sub-double v14, v14, v16

    const-wide/16 v16, 0x0

    cmpl-double v18, v12, v16

    const/16 v19, 0x1

    const/16 v20, 0x0

    if-nez v18, :cond_8

    cmpl-double v18, v14, v16

    if-nez v18, :cond_8

    cmpl-double v12, v0, v16

    if-eqz v12, :cond_3

    mul-double v2, v8, v4

    cmpg-double v2, v2, v16

    if-lez v2, :cond_2

    mul-double v2, v4, v0

    cmpl-double v2, v2, v16

    if-ltz v2, :cond_1

    if-lez v12, :cond_0

    cmpg-double v2, v4, v0

    if-lez v2, :cond_2

    cmpg-double v0, v8, v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_0
    cmpl-double v2, v4, v0

    if-gez v2, :cond_2

    cmpl-double v0, v8, v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v19, v20

    :cond_2
    :goto_0
    return v19

    :cond_3
    cmpl-double v0, v2, v16

    if-eqz v0, :cond_7

    mul-double v4, v10, v6

    cmpg-double v1, v4, v16

    if-lez v1, :cond_6

    mul-double v4, v6, v2

    cmpl-double v1, v4, v16

    if-ltz v1, :cond_5

    if-lez v0, :cond_4

    cmpg-double v0, v6, v2

    if-lez v0, :cond_6

    cmpg-double v0, v10, v2

    if-gtz v0, :cond_5

    goto :goto_1

    :cond_4
    cmpl-double v0, v6, v2

    if-gez v0, :cond_6

    cmpl-double v0, v10, v2

    if-ltz v0, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v19, v20

    :cond_6
    :goto_1
    return v19

    :cond_7
    return v20

    :cond_8
    mul-double/2addr v4, v10

    mul-double/2addr v8, v6

    sub-double/2addr v4, v8

    mul-double v0, v12, v14

    cmpg-double v0, v0, v16

    if-gtz v0, :cond_9

    add-double/2addr v12, v4

    sub-double/2addr v12, v14

    mul-double/2addr v4, v12

    cmpg-double v0, v4, v16

    if-gtz v0, :cond_9

    goto :goto_2

    :cond_9
    move/from16 v19, v20

    :goto_2
    return v19
.end method


# virtual methods
.method public applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4

    .line 551
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p5, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    int-to-float v3, v3

    mul-float/2addr v3, p4

    add-float/2addr v0, v3

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    .line 552
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    add-float/2addr p4, p2

    if-eqz p5, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    int-to-float p2, p2

    mul-float/2addr p4, p2

    sub-float/2addr v0, p4

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    .line 553
    iget p2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    if-eqz p5, :cond_2

    move p4, v1

    goto :goto_2

    :cond_2
    move p4, v2

    :goto_2
    int-to-float p4, p4

    mul-float/2addr p4, p3

    add-float/2addr p2, p4

    iput p2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    .line 554
    iget p2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    add-float/2addr p1, p3

    if-eqz p5, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    int-to-float p3, v1

    mul-float/2addr p1, p3

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    return-object p0
.end method

.method public clone()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 601
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public contains(Lcom/itextpdf/kernel/geom/Rectangle;)Z
    .locals 8

    .line 245
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    .line 246
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    .line 247
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    add-float/2addr v2, v0

    .line 248
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    add-float/2addr v3, v1

    .line 250
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v4

    .line 251
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    .line 252
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    add-float/2addr v6, v4

    .line 253
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    add-float/2addr p1, v5

    .line 255
    sget v7, Lcom/itextpdf/kernel/geom/Rectangle;->EPS:F

    sub-float/2addr v0, v7

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    sub-float/2addr v1, v7

    cmpg-float v0, v1, v5

    if-gtz v0, :cond_0

    add-float/2addr v2, v7

    cmpg-float v0, v6, v2

    if-gtz v0, :cond_0

    add-float/2addr v3, v7

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 433
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    return-object p0
.end method

.method public decreaseWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 455
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    return-object p0
.end method

.method public equalsWithEpsilon(Lcom/itextpdf/kernel/geom/Rectangle;)Z
    .locals 1

    .line 615
    sget v0, Lcom/itextpdf/kernel/geom/Rectangle;->EPS:F

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->equalsWithEpsilon(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result p1

    return p1
.end method

.method public equalsWithEpsilon(Lcom/itextpdf/kernel/geom/Rectangle;F)Z
    .locals 4

    .line 626
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    iget v1, p1, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 627
    iget v1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    iget v2, p1, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 628
    iget v2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    iget v3, p1, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 629
    iget v3, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    iget p1, p1, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    cmpg-float v0, v1, p2

    if-gez v0, :cond_0

    cmpg-float v0, v2, p2

    if-gez v0, :cond_0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBottom()F
    .locals 1

    .line 492
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 401
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    return v0
.end method

.method public getIntersection(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 6

    .line 210
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    iget v1, p1, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 211
    iget v1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    iget v2, p1, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 212
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 213
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float/2addr v2, v0

    .line 217
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/itextpdf/kernel/geom/Rectangle;->EPS:F

    cmpg-float v3, v3, v4

    const/4 v4, 0x0

    if-gez v3, :cond_0

    move v2, v4

    :cond_0
    sub-float/2addr p1, v1

    .line 222
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v5, Lcom/itextpdf/kernel/geom/Rectangle;->EPS:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    move p1, v4

    .line 226
    :cond_1
    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-ltz v3, :cond_4

    .line 227
    invoke-static {p1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-ltz v3, :cond_4

    .line 228
    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_2

    move v2, v4

    .line 229
    :cond_2
    invoke-static {p1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_3

    goto :goto_0

    :cond_3
    move v4, p1

    .line 230
    :goto_0
    new-instance p1, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {p1, v0, v1, v2, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getLeft()F
    .locals 1

    .line 465
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    return v0
.end method

.method public getRight()F
    .locals 2

    .line 474
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    iget v1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTop()F
    .locals 2

    .line 483
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    iget v1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 381
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .line 341
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 361
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    return v0
.end method

.method public increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 422
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    return-object p0
.end method

.method public increaseWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 444
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    return-object p0
.end method

.method public intersectsLine(FFFF)Z
    .locals 33

    move/from16 v0, p2

    move/from16 v1, p4

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    float-to-double v13, v2

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    float-to-double v11, v2

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    float-to-double v2, v2

    add-double v19, v13, v2

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    float-to-double v2, v2

    add-double v21, v11, v2

    move/from16 v2, p1

    float-to-double v9, v2

    cmpg-double v2, v13, v9

    if-gtz v2, :cond_0

    cmpg-double v2, v9, v19

    if-gtz v2, :cond_0

    float-to-double v2, v0

    cmpg-double v4, v11, v2

    if-gtz v4, :cond_0

    cmpg-double v2, v2, v21

    if-lez v2, :cond_3

    :cond_0
    move/from16 v2, p3

    float-to-double v7, v2

    cmpg-double v2, v13, v7

    if-gtz v2, :cond_1

    cmpg-double v2, v7, v19

    if-gtz v2, :cond_1

    float-to-double v2, v1

    cmpg-double v4, v11, v2

    if-gtz v4, :cond_1

    cmpg-double v2, v2, v21

    if-lez v2, :cond_3

    :cond_1
    float-to-double v5, v0

    float-to-double v0, v1

    move-wide v3, v13

    move-wide/from16 v23, v5

    move-wide v5, v11

    move-wide/from16 v25, v7

    move-wide/from16 v7, v19

    move-wide/from16 v27, v9

    move-wide/from16 v9, v21

    move-wide/from16 v29, v11

    move-wide/from16 v11, v27

    move-wide/from16 v31, v13

    move-wide/from16 v13, v23

    move-wide/from16 v15, v25

    move-wide/from16 v17, v0

    .line 575
    invoke-static/range {v3 .. v18}, Lcom/itextpdf/kernel/geom/Rectangle;->linesIntersect(DDDDDDDD)Z

    move-result v2

    if-nez v2, :cond_3

    move-wide/from16 v3, v19

    move-wide/from16 v5, v29

    move-wide/from16 v7, v31

    move-wide/from16 v9, v21

    move-wide/from16 v11, v27

    move-wide/from16 v13, v23

    move-wide/from16 v15, v25

    move-wide/from16 v17, v0

    .line 576
    invoke-static/range {v3 .. v18}, Lcom/itextpdf/kernel/geom/Rectangle;->linesIntersect(DDDDDDDD)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 502
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    return-object p0
.end method

.method public moveLeft(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 536
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    return-object p0
.end method

.method public moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 525
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    return-object p0
.end method

.method public moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 514
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    return-object p0
.end method

.method public overlaps(Lcom/itextpdf/kernel/geom/Rectangle;)Z
    .locals 1

    .line 266
    sget v0, Lcom/itextpdf/kernel/geom/Rectangle;->EPS:F

    neg-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result p1

    return p1
.end method

.method public overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z
    .locals 4

    .line 282
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    add-float/2addr v1, p2

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    return v1

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    add-float/2addr v2, p2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    return v1

    .line 295
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    add-float/2addr p2, p1

    cmpl-float p1, v0, p2

    if-lez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public setBbox(FFFF)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    move v1, p3

    move p3, p1

    move p1, v1

    :cond_0
    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    move v1, p4

    move p4, p2

    move p2, v1

    .line 328
    :cond_1
    iput p1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    .line 329
    iput p2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    sub-float/2addr p3, p1

    .line 330
    iput p3, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    sub-float/2addr p4, p2

    .line 331
    iput p4, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    return-object p0
.end method

.method public setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    .line 411
    iput p1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    return-object p0
.end method

.method public setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    .line 391
    iput p1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    return-object p0
.end method

.method public setX(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    .line 351
    iput p1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    return-object p0
.end method

.method public setY(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    .line 371
    iput p1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    return-object p0
.end method

.method public toPointsArray()[Lcom/itextpdf/kernel/geom/Point;
    .locals 6

    const/4 v0, 0x4

    .line 193
    new-array v0, v0, [Lcom/itextpdf/kernel/geom/Point;

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    iget v2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    float-to-double v2, v2

    iget v4, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    iget v2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    iget v3, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    iget v2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    iget v3, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    iget v5, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    iget v2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    float-to-double v2, v2

    iget v4, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    iget v5, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rectangle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 588
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
