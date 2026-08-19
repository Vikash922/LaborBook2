.class public Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;
.super Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;
.source "QuadraticCurveTo.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/path/impl/IControlPointCurve;


# static fields
.field static final ARGUMENT_SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 69
    new-instance v0, Lcom/itextpdf/svg/renderers/path/impl/DefaultOperatorConverter;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/path/impl/DefaultOperatorConverter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;-><init>(ZLcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;)V

    return-void
.end method

.method public constructor <init>(ZLcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;-><init>(ZLcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;)V

    return-void
.end method

.method private static addTValueToList(DLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    .line 180
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static calculateExtremeCoordinate(DDDD)D
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    mul-double v2, v0, v0

    mul-double/2addr v2, p2

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p2

    mul-double/2addr v0, p0

    mul-double/2addr v0, p4

    add-double/2addr v2, v0

    mul-double/2addr p0, p0

    mul-double/2addr p0, p6

    add-double/2addr v2, p0

    return-wide v2
.end method

.method private static getBezierMinMaxPoints(DDDDDD)[D
    .locals 28

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    .line 133
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 134
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 135
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 136
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 137
    invoke-static/range {p0 .. p11}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->getExtremeTValues(DDDDDD)[D

    move-result-object v8

    .line 138
    array-length v9, v8

    const/16 v16, 0x0

    move/from16 v10, v16

    move-wide/from16 v24, v0

    move-wide v0, v6

    move-wide/from16 v6, v24

    move-wide/from16 v26, v2

    move-wide v2, v4

    move-wide/from16 v4, v26

    :goto_0
    if-ge v10, v9, :cond_0

    aget-wide v17, v8, v10

    move-object v11, v8

    move/from16 v19, v9

    move-wide v8, v0

    move-wide/from16 v0, v17

    move-object v13, v11

    move-wide v11, v2

    move-wide/from16 v2, p0

    move-object v15, v13

    move-wide v13, v4

    move-wide/from16 v4, p4

    move-wide/from16 v20, v8

    move-wide v8, v6

    move-wide/from16 v6, p8

    .line 139
    invoke-static/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->calculateExtremeCoordinate(DDDD)D

    move-result-wide v6

    move-wide/from16 v2, p2

    move-wide/from16 v4, p6

    move/from16 v17, v10

    move-wide/from16 v22, v11

    move-wide v10, v6

    move-wide/from16 v6, p10

    .line 140
    invoke-static/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->calculateExtremeCoordinate(DDDD)D

    move-result-wide v0

    .line 141
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 142
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    move-wide/from16 v2, v22

    .line 143
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-wide/from16 v10, v20

    .line 144
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    add-int/lit8 v10, v17, 0x1

    move-wide/from16 v12, p8

    move-object v8, v15

    move/from16 v9, v19

    move-wide/from16 v14, p10

    goto :goto_0

    :cond_0
    move-wide v10, v0

    move-wide v13, v4

    move-wide v8, v6

    const/4 v0, 0x4

    .line 146
    new-array v0, v0, [D

    aput-wide v8, v0, v16

    const/4 v1, 0x1

    aput-wide v13, v0, v1

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    aput-wide v10, v0, v1

    return-object v0
.end method

.method private static getExtremeTValues(DDDDDD)[D
    .locals 7

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-wide v1, p0

    move-wide v3, p4

    move-wide v5, p8

    .line 164
    invoke-static/range {v1 .. v6}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->getTValue(DDD)D

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->addTValueToList(DLjava/util/List;)V

    move-wide p0, p2

    move-wide p2, p6

    move-wide/from16 p4, p10

    .line 165
    invoke-static/range {p0 .. p5}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->getTValue(DDD)D

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->addTValueToList(DLjava/util/List;)V

    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    const/4 v2, 0x0

    .line 167
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 168
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getTValue(DDD)D
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p2, v0

    mul-double v2, p0, v0

    sub-double v2, p2, v2

    sub-double/2addr p0, p2

    add-double/2addr p0, p4

    neg-double p2, v2

    mul-double/2addr p0, v0

    div-double/2addr p2, p0

    return-wide p2
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 13

    .line 81
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    .line 83
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    .line 84
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    float-to-double v5, v0

    float-to-double v7, v1

    float-to-double v9, v2

    float-to-double v11, v3

    move-object v4, p1

    .line 85
    invoke-virtual/range {v4 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public getLastControlPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->createPoint(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    return-object v0
.end method

.method public getPathShapeRectangle(Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 14

    .line 109
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->getLastControlPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    .line 111
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    .line 112
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v8

    .line 113
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v10

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v12

    .line 111
    invoke-static/range {v2 .. v13}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->getBezierMinMaxPoints(DDDDDD)[D

    move-result-object p1

    .line 114
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    .line 115
    invoke-static {v4, v5}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x2

    aget-wide v5, p1, v5

    aget-wide v7, p1, v1

    sub-double/2addr v5, v7

    .line 116
    invoke-static {v5, v6}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v5

    double-to-float v1, v5

    const/4 v5, 0x3

    aget-wide v5, p1, v5

    aget-wide v7, p1, v3

    sub-double/2addr v5, v7

    .line 117
    invoke-static {v5, v6}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v5

    double-to-float p1, v5

    invoke-direct {v0, v2, v4, v1, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v0
.end method

.method public setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V
    .locals 4

    .line 91
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 94
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide p1

    const/4 v3, 0x2

    new-array v3, v3, [D

    aput-wide v0, v3, v2

    const/4 v0, 0x1

    aput-wide p1, v3, v0

    .line 97
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->isRelative()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->copier:Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;

    iget-object p2, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    invoke-interface {p1, p2, v3}, Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;->makeCoordinatesAbsolute([Ljava/lang/String;[D)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    :cond_0
    return-void

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p2, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "(x1 y1 x y)+ parameters are expected for quadratic curves. Got: {0}"

    invoke-static {v0, p2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
