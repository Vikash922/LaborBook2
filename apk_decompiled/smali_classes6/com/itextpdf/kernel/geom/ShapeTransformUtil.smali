.class public final Lcom/itextpdf/kernel/geom/ShapeTransformUtil;
.super Ljava/lang/Object;
.source "ShapeTransformUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transformBezierCurve(Lcom/itextpdf/kernel/geom/BezierCurve;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/BezierCurve;
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/geom/ShapeTransformUtil;->transformSegment(Lcom/itextpdf/kernel/geom/IShape;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/IShape;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/geom/BezierCurve;

    return-object p0
.end method

.method public static transformLine(Lcom/itextpdf/kernel/geom/Line;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Line;
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/geom/ShapeTransformUtil;->transformSegment(Lcom/itextpdf/kernel/geom/IShape;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/IShape;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/geom/Line;

    return-object p0
.end method

.method public static transformPath(Lcom/itextpdf/kernel/geom/Path;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Path;
    .locals 2

    .line 71
    new-instance v0, Lcom/itextpdf/kernel/geom/Path;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Path;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Path;->getSubpaths()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Subpath;

    .line 74
    invoke-static {v1, p1}, Lcom/itextpdf/kernel/geom/ShapeTransformUtil;->transformSubpath(Lcom/itextpdf/kernel/geom/Subpath;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Subpath;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Path;->addSubpath(Lcom/itextpdf/kernel/geom/Subpath;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static varargs transformPoints(Lcom/itextpdf/kernel/geom/Matrix;[Lcom/itextpdf/kernel/geom/Point;)[Lcom/itextpdf/kernel/geom/Point;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 109
    :try_start_0
    new-instance v15, Lcom/itextpdf/kernel/geom/AffineTransform;

    const/4 v2, 0x0

    .line 110
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v2

    float-to-double v3, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v2

    float-to-double v5, v2

    const/4 v2, 0x3

    .line 111
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v2

    float-to-double v7, v2

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v2

    float-to-double v9, v2

    const/4 v2, 0x6

    .line 112
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v2

    float-to-double v11, v2

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v0

    float-to-double v13, v0

    move-object v2, v15

    invoke-direct/range {v2 .. v14}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    .line 114
    invoke-virtual {v15}, Lcom/itextpdf/kernel/geom/AffineTransform;->createInverse()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    .line 116
    array-length v2, v1

    new-array v6, v2, [Lcom/itextpdf/kernel/geom/Point;

    .line 117
    array-length v5, v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform([Lcom/itextpdf/kernel/geom/Point;I[Lcom/itextpdf/kernel/geom/Point;II)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "A noninvertible matrix has been parsed. The behaviour is unpredictable."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static transformSegment(Lcom/itextpdf/kernel/geom/IShape;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/IShape;
    .locals 2

    .line 94
    invoke-interface {p0}, Lcom/itextpdf/kernel/geom/IShape;->getBasePoints()Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/itextpdf/kernel/geom/Point;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/kernel/geom/Point;

    invoke-static {p1, v0}, Lcom/itextpdf/kernel/geom/ShapeTransformUtil;->transformPoints(Lcom/itextpdf/kernel/geom/Matrix;[Lcom/itextpdf/kernel/geom/Point;)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object p1

    .line 98
    instance-of p0, p0, Lcom/itextpdf/kernel/geom/BezierCurve;

    if-eqz p0, :cond_0

    .line 99
    new-instance p0, Lcom/itextpdf/kernel/geom/BezierCurve;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/geom/BezierCurve;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 101
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/geom/Line;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/geom/Line;-><init>(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)V

    :goto_0
    return-object p0
.end method

.method private static transformSubpath(Lcom/itextpdf/kernel/geom/Subpath;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Subpath;
    .locals 2

    .line 82
    new-instance v0, Lcom/itextpdf/kernel/geom/Subpath;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Subpath;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Subpath;->isClosed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Subpath;->setClosed(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Subpath;->getSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/IShape;

    .line 86
    invoke-static {v1, p1}, Lcom/itextpdf/kernel/geom/ShapeTransformUtil;->transformSegment(Lcom/itextpdf/kernel/geom/IShape;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/IShape;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Subpath;->addSegment(Lcom/itextpdf/kernel/geom/IShape;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
