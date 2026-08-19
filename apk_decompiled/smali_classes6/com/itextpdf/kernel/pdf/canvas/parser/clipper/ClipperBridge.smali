.class public final Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;
.super Ljava/lang/Object;
.source "ClipperBridge.java"


# static fields
.field public static floatMultiplier:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x402c000000000000L    # 14.0

    .line 71
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->floatMultiplier:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addContour(Lcom/itextpdf/kernel/geom/Path;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/geom/Path;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;",
            ">;Z)V"
        }
    .end annotation

    .line 285
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->convertToFloatPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 286
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    .line 287
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/geom/Path;->moveTo(FF)V

    const/4 v0, 0x1

    .line 289
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 290
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Point;

    .line 291
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/kernel/geom/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Path;->closeSubpath()V

    :cond_1
    return-void
.end method

.method public static addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;Lcom/itextpdf/kernel/geom/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;",
            "Lcom/itextpdf/kernel/geom/Path;",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Subpath;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Path;->getSubpaths()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Subpath;

    .line 128
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Subpath;->isDegenerate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Subpath;->isSinglePointClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Subpath;->isSinglePointOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Subpath;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_LINE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    goto :goto_1

    :cond_2
    move-object v2, p3

    .line 143
    :goto_1
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Subpath;->getPiecewiseLinearApproximation()Ljava/util/List;

    move-result-object v1

    .line 144
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->convertToLongPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v3, p2, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;Lcom/itextpdf/kernel/geom/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;)V
    .locals 3

    .line 103
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Path;->getSubpaths()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Subpath;

    .line 104
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Subpath;->isSinglePointClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Subpath;->isSinglePointOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Subpath;->getPiecewiseLinearApproximation()Ljava/util/List;

    move-result-object v1

    .line 106
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->convertToLongPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Subpath;->isClosed()Z

    move-result v0

    invoke-interface {p0, v2, p2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static addPolygonToClipper(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;[Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;)Z
    .locals 2

    .line 262
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->convertToLongPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x1

    invoke-interface {p0, v0, p2, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    move-result p0

    return p0
.end method

.method public static addPolylineSubjectToClipper(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;[Lcom/itextpdf/kernel/geom/Point;)Z
    .locals 2

    .line 281
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->convertToLongPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    move-result p0

    return p0
.end method

.method public static convertToFloatPoints(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 162
    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    .line 163
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    long-to-double v3, v3

    sget-wide v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->floatMultiplier:D

    div-double/2addr v3, v5

    .line 164
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    long-to-double v5, v5

    sget-wide v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->floatMultiplier:D

    div-double/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 162
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static convertToLongPoints(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Point;

    .line 182
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    sget-wide v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->floatMultiplier:D

    .line 183
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v5

    mul-double/2addr v3, v5

    sget-wide v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->floatMultiplier:D

    .line 184
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(DD)V

    .line 182
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static convertToPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;)Lcom/itextpdf/kernel/geom/Path;
    .locals 3

    .line 85
    new-instance v0, Lcom/itextpdf/kernel/geom/Path;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Path;-><init>()V

    .line 86
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->getFirst()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getContour()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->isOpen()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->addContour(Lcom/itextpdf/kernel/geom/Path;Ljava/util/List;Z)V

    .line 90
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getNext()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getEndType(I)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 224
    sget-object p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->OPEN_ROUND:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    return-object p0

    .line 221
    :cond_0
    sget-object p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->OPEN_SQUARE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    return-object p0

    .line 218
    :cond_1
    sget-object p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->OPEN_BUTT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    return-object p0
.end method

.method public static getFillType(I)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;
    .locals 2

    .line 235
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NON_ZERO:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 238
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->EVEN_ODD:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    :cond_0
    return-object v0
.end method

.method public static getJoinType(I)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 206
    sget-object p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;->ROUND:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    return-object p0

    .line 200
    :cond_0
    sget-object p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;->BEVEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    return-object p0

    .line 203
    :cond_1
    sget-object p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;->MITER:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    return-object p0
.end method
