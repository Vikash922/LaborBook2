.class public Lcom/itextpdf/kernel/geom/LineSegment;
.super Ljava/lang/Object;
.source "LineSegment.java"


# instance fields
.field private final endPoint:Lcom/itextpdf/kernel/geom/Vector;

.field private final startPoint:Lcom/itextpdf/kernel/geom/Vector;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/itextpdf/kernel/geom/LineSegment;->startPoint:Lcom/itextpdf/kernel/geom/Vector;

    .line 63
    iput-object p2, p0, Lcom/itextpdf/kernel/geom/LineSegment;->endPoint:Lcom/itextpdf/kernel/geom/Vector;

    return-void
.end method


# virtual methods
.method public containsPoint(Lcom/itextpdf/kernel/geom/Vector;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/LineSegment;->startPoint:Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Vector;->subtract(Lcom/itextpdf/kernel/geom/Vector;)Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v4

    cmpg-float v4, v4, v3

    if-ltz v4, :cond_3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/LineSegment;->endPoint:Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/geom/Vector;->subtract(Lcom/itextpdf/kernel/geom/Vector;)Lcom/itextpdf/kernel/geom/Vector;

    move-result-object p1

    .line 139
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_3

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_3

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method public containsSegment(Lcom/itextpdf/kernel/geom/LineSegment;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p1, Lcom/itextpdf/kernel/geom/LineSegment;->startPoint:Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/LineSegment;->containsPoint(Lcom/itextpdf/kernel/geom/Vector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/itextpdf/kernel/geom/LineSegment;->endPoint:Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/LineSegment;->containsPoint(Lcom/itextpdf/kernel/geom/Vector;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBoundingRectangle()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 7

    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/LineSegment;->getStartPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v0

    .line 96
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/LineSegment;->getStartPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v2

    .line 97
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/LineSegment;->getEndPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v1

    .line 98
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/LineSegment;->getEndPoint()Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v3

    .line 99
    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {v4, v5, v6, v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v4
.end method

.method public getEndPoint()Lcom/itextpdf/kernel/geom/Vector;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/LineSegment;->endPoint:Lcom/itextpdf/kernel/geom/Vector;

    return-object v0
.end method

.method public getLength()F
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/LineSegment;->endPoint:Lcom/itextpdf/kernel/geom/Vector;

    iget-object v1, p0, Lcom/itextpdf/kernel/geom/LineSegment;->startPoint:Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Vector;->subtract(Lcom/itextpdf/kernel/geom/Vector;)Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Vector;->length()F

    move-result v0

    return v0
.end method

.method public getStartPoint()Lcom/itextpdf/kernel/geom/Vector;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/LineSegment;->startPoint:Lcom/itextpdf/kernel/geom/Vector;

    return-object v0
.end method

.method public transformBy(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/LineSegment;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/LineSegment;->startPoint:Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Vector;->cross(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/LineSegment;->endPoint:Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/geom/Vector;->cross(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Vector;

    move-result-object p1

    .line 110
    new-instance v1, Lcom/itextpdf/kernel/geom/LineSegment;

    invoke-direct {v1, v0, p1}, Lcom/itextpdf/kernel/geom/LineSegment;-><init>(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)V

    return-object v1
.end method
