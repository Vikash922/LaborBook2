.class public Lcom/itextpdf/kernel/geom/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final START_PATH_ERR_MSG:Ljava/lang/String; = "Path shall start with \"re\" or \"m\" operator"


# instance fields
.field private currentPoint:Lcom/itextpdf/kernel/geom/Point;

.field private subpaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Subpath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/Path;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    .line 71
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Path;->getSubpaths()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/Path;->addSubpaths(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/itextpdf/kernel/geom/Subpath;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    .line 67
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/Path;->addSubpaths(Ljava/util/List;)V

    return-void
.end method

.method private getLastSubpath()Lcom/itextpdf/kernel/geom/Subpath;
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Subpath;

    return-object v0
.end method


# virtual methods
.method public addSubpath(Lcom/itextpdf/kernel/geom/Subpath;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Subpath;->getLastPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    return-void
.end method

.method public addSubpaths(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/itextpdf/kernel/geom/Subpath;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Subpath;

    .line 99
    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/kernel/geom/Subpath;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/geom/Subpath;-><init>(Lcom/itextpdf/kernel/geom/Subpath;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/geom/Subpath;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Subpath;->getLastPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    :cond_1
    return-void
.end method

.method public closeAllSubpaths()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Subpath;

    const/4 v2, 0x1

    .line 244
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Subpath;->setClosed(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public closeSubpath()V
    .locals 4

    .line 230
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/itextpdf/kernel/geom/Path;->getLastSubpath()Lcom/itextpdf/kernel/geom/Subpath;

    move-result-object v0

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Subpath;->setClosed(Z)V

    .line 234
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Subpath;->getStartPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/geom/Path;->moveTo(FF)V

    :cond_0
    return-void
.end method

.method public curveFromTo(FFFF)V
    .locals 7

    .line 197
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    if-eqz v0, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    .line 200
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/kernel/geom/Path;->curveTo(FFFFFF)V

    return-void

    .line 198
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Path shall start with \"re\" or \"m\" operator"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public curveTo(FFFF)V
    .locals 9

    .line 180
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    double-to-float v3, v0

    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v0

    double-to-float v4, v0

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/itextpdf/kernel/geom/Path;->curveTo(FFFFFF)V

    return-void

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Path shall start with \"re\" or \"m\" operator"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public curveTo(FFFFFF)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v1, p1

    float-to-double p1, p2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 160
    new-instance p1, Lcom/itextpdf/kernel/geom/Point;

    float-to-double p2, p3

    float-to-double v1, p4

    invoke-direct {p1, p2, p3, v1, v2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 161
    new-instance p2, Lcom/itextpdf/kernel/geom/Point;

    float-to-double p3, p5

    float-to-double p5, p6

    invoke-direct {p2, p3, p4, p5, p6}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 163
    new-instance p3, Ljava/util/ArrayList;

    const/4 p4, 0x4

    new-array p4, p4, [Lcom/itextpdf/kernel/geom/Point;

    const/4 p5, 0x0

    iget-object p6, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    aput-object p6, p4, p5

    const/4 p5, 0x1

    aput-object v0, p4, p5

    const/4 p5, 0x2

    aput-object p1, p4, p5

    const/4 p1, 0x3

    aput-object p2, p4, p1

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 164
    invoke-direct {p0}, Lcom/itextpdf/kernel/geom/Path;->getLastSubpath()Lcom/itextpdf/kernel/geom/Subpath;

    move-result-object p1

    new-instance p4, Lcom/itextpdf/kernel/geom/BezierCurve;

    invoke-direct {p4, p3}, Lcom/itextpdf/kernel/geom/BezierCurve;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p4}, Lcom/itextpdf/kernel/geom/Subpath;->addSegment(Lcom/itextpdf/kernel/geom/IShape;)V

    .line 166
    iput-object p2, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    return-void

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Path shall start with \"re\" or \"m\" operator"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCurrentPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    return-object v0
.end method

.method public getSubpaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Subpath;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lineTo(FF)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v1, p1

    float-to-double p1, p2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 140
    invoke-direct {p0}, Lcom/itextpdf/kernel/geom/Path;->getLastSubpath()Lcom/itextpdf/kernel/geom/Subpath;

    move-result-object p1

    new-instance p2, Lcom/itextpdf/kernel/geom/Line;

    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {p2, v1, v0}, Lcom/itextpdf/kernel/geom/Line;-><init>(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)V

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Subpath;->addSegment(Lcom/itextpdf/kernel/geom/IShape;)V

    .line 141
    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    return-void

    .line 137
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Path shall start with \"re\" or \"m\" operator"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public moveTo(FF)V
    .locals 3

    .line 120
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v1, p1

    float-to-double p1, p2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 121
    iget-object p1, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/geom/Subpath;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Subpath;->isSinglePointOpen()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 124
    iget-object p2, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/geom/Subpath;->setStartPoint(Lcom/itextpdf/kernel/geom/Point;)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    new-instance p2, Lcom/itextpdf/kernel/geom/Subpath;

    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {p2, v0}, Lcom/itextpdf/kernel/geom/Subpath;-><init>(Lcom/itextpdf/kernel/geom/Point;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public rectangle(FFFF)V
    .locals 0

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/geom/Path;->moveTo(FF)V

    add-float/2addr p3, p1

    .line 220
    invoke-virtual {p0, p3, p2}, Lcom/itextpdf/kernel/geom/Path;->lineTo(FF)V

    add-float/2addr p2, p4

    .line 221
    invoke-virtual {p0, p3, p2}, Lcom/itextpdf/kernel/geom/Path;->lineTo(FF)V

    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/geom/Path;->lineTo(FF)V

    .line 223
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Path;->closeSubpath()V

    return-void
.end method

.method public rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 3

    .line 208
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itextpdf/kernel/geom/Path;->rectangle(FFFF)V

    return-void
.end method

.method public replaceCloseWithLine()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/geom/Subpath;

    .line 263
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Subpath;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 264
    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/geom/Subpath;->setClosed(Z)V

    .line 265
    new-instance v5, Lcom/itextpdf/kernel/geom/Line;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Subpath;->getLastPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v6

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Subpath;->getStartPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/kernel/geom/Line;-><init>(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)V

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Subpath;->addSegment(Lcom/itextpdf/kernel/geom/IShape;)V

    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
