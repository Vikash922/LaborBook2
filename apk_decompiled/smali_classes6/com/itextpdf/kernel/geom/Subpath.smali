.class public Lcom/itextpdf/kernel/geom/Subpath;
.super Ljava/lang/Object;
.source "Subpath.java"


# instance fields
.field private closed:Z

.field private segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/IShape;",
            ">;"
        }
    .end annotation
.end field

.field private startPoint:Lcom/itextpdf/kernel/geom/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    .line 93
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v1, p1

    float-to-double p1, p2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/Point;)V
    .locals 3

    .line 83
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/geom/Subpath;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/Subpath;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    .line 72
    iget-object v1, p1, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    iput-object v1, p0, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 73
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Subpath;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-boolean p1, p1, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    iput-boolean p1, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    return-void
.end method


# virtual methods
.method public addSegment(Lcom/itextpdf/kernel/geom/IShape;)V
    .locals 2

    .line 140
    iget-boolean v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Subpath;->isSinglePointOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-interface {p1}, Lcom/itextpdf/kernel/geom/IShape;->getBasePoints()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLastPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 126
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    if-nez v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/IShape;

    .line 128
    invoke-interface {v0}, Lcom/itextpdf/kernel/geom/IShape;->getBasePoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Lcom/itextpdf/kernel/geom/IShape;->getBasePoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    :cond_0
    return-object v0
.end method

.method public getPiecewiseLinearApproximation()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/kernel/geom/BezierCurve;

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/BezierCurve;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/BezierCurve;->getPiecewiseLinearApproximation()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/IShape;

    invoke-interface {v1}, Lcom/itextpdf/kernel/geom/IShape;->getBasePoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    .line 245
    :goto_1
    iget-object v3, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 248
    iget-object v3, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/itextpdf/kernel/geom/BezierCurve;

    if-eqz v3, :cond_2

    .line 249
    iget-object v3, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/geom/BezierCurve;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/BezierCurve;->getPiecewiseLinearApproximation()Ljava/util/List;

    move-result-object v3

    .line 250
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_2

    .line 252
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/geom/IShape;

    invoke-interface {v3}, Lcom/itextpdf/kernel/geom/IShape;->getBasePoints()Ljava/util/List;

    move-result-object v3

    .line 253
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 256
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/IShape;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    return-object v0
.end method

.method public getStartPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    return v0
.end method

.method public isDegenerate()Z
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    if-eqz v0, :cond_0

    return v1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/IShape;

    .line 216
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v2}, Lcom/itextpdf/kernel/geom/IShape;->getBasePoints()Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 219
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v2, v3, :cond_1

    return v1

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-boolean v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    if-eqz v0, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSinglePointClosed()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSinglePointOpen()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setClosed(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    return-void
.end method

.method public setStartPoint(FF)V
    .locals 3

    .line 110
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v1, p1

    float-to-double p1, p2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    return-void
.end method

.method public setStartPoint(Lcom/itextpdf/kernel/geom/Point;)V
    .locals 3

    .line 101
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/geom/Subpath;->setStartPoint(FF)V

    return-void
.end method
