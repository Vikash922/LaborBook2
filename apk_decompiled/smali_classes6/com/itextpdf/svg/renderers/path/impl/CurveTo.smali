.class public Lcom/itextpdf/svg/renderers/path/impl/CurveTo;
.super Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;
.source "CurveTo.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/path/impl/IControlPointCurve;


# static fields
.field static final ARGUMENT_SIZE:I = 0x6

.field private static ZERO_EPSILON:D = 1.0E-12


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 71
    new-instance v0, Lcom/itextpdf/svg/renderers/path/impl/DefaultOperatorConverter;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/path/impl/DefaultOperatorConverter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;-><init>(ZLcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;)V

    return-void
.end method

.method public constructor <init>(ZLcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;)V
    .locals 0

    .line 75
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

    .line 235
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static calculateExtremeCoordinate(DDDDD)D
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    mul-double v2, v0, v0

    mul-double/2addr v2, v0

    mul-double/2addr v2, p2

    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    mul-double/2addr p2, v0

    mul-double/2addr v0, p2

    mul-double/2addr v0, p0

    mul-double/2addr v0, p4

    add-double/2addr v2, v0

    mul-double/2addr p2, p0

    mul-double/2addr p2, p0

    mul-double/2addr p2, p6

    add-double/2addr v2, p2

    mul-double p2, p0, p0

    mul-double/2addr p2, p0

    mul-double/2addr p2, p8

    add-double/2addr v2, p2

    return-wide v2
.end method

.method private static calculateTValues(DDDD)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    neg-double v1, p0

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    mul-double v5, p2, v3

    add-double/2addr v1, v5

    mul-double/2addr p4, v3

    sub-double/2addr v1, p4

    add-double/2addr v1, p6

    mul-double/2addr v1, v3

    mul-double/2addr p0, v3

    const-wide/high16 p6, 0x4018000000000000L    # 6.0

    mul-double/2addr p2, p6

    sub-double p2, p0, p2

    add-double/2addr p2, p4

    const-wide/high16 p4, 0x4000000000000000L    # 2.0

    mul-double/2addr p2, p4

    sub-double/2addr v5, p0

    .line 207
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    sget-wide p6, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->ZERO_EPSILON:D

    cmpg-double p0, p0, p6

    if-gez p0, :cond_0

    .line 208
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    sget-wide p4, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->ZERO_EPSILON:D

    cmpl-double p0, p0, p4

    if-ltz p0, :cond_2

    neg-double p0, v5

    div-double/2addr p0, p2

    .line 210
    invoke-static {p0, p1, v0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->addTValueToList(DLjava/util/List;)V

    goto :goto_0

    :cond_0
    mul-double p0, p2, p2

    const-wide/high16 p6, 0x4010000000000000L    # 4.0

    mul-double/2addr v5, p6

    mul-double/2addr v5, v1

    sub-double/2addr p0, v5

    const-wide/16 p6, 0x0

    cmpg-double p6, p0, p6

    if-gtz p6, :cond_1

    .line 216
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p6

    sget-wide v3, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->ZERO_EPSILON:D

    cmpg-double p6, p6, v3

    if-gez p6, :cond_1

    neg-double p0, p2

    mul-double/2addr v1, p4

    div-double/2addr p0, v1

    .line 218
    invoke-static {p0, p1, v0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->addTValueToList(DLjava/util/List;)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    neg-double p2, p2

    add-double p6, p2, p0

    mul-double/2addr v1, p4

    div-double/2addr p6, v1

    .line 221
    invoke-static {p6, p7, v0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->addTValueToList(DLjava/util/List;)V

    sub-double/2addr p2, p0

    div-double/2addr p2, v1

    .line 222
    invoke-static {p2, p3, v0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->addTValueToList(DLjava/util/List;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getBezierMinMaxPoints(DDDDDDDD)[D
    .locals 29

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p12

    move-wide/from16 v8, p14

    .line 150
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 151
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 152
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 153
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 155
    invoke-static/range {p0 .. p15}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->getTValuesInExtremePoints(DDDDDDDD)[D

    move-result-object v10

    .line 156
    array-length v11, v10

    const/16 v16, 0x0

    move/from16 v12, v16

    move-wide/from16 v25, v0

    move-wide v0, v6

    move-wide/from16 v6, v25

    move-wide/from16 v27, v2

    move-wide v2, v4

    move-wide/from16 v4, v27

    :goto_0
    if-ge v12, v11, :cond_0

    aget-wide v17, v10, v12

    move-object v13, v10

    move/from16 v19, v11

    move-wide v10, v0

    move-wide/from16 v0, v17

    move-object v15, v13

    move-wide v13, v2

    move-wide/from16 v2, p0

    move-wide/from16 v20, v10

    move-wide v10, v4

    move-wide/from16 v4, p4

    move/from16 v22, v12

    move-wide/from16 v23, v13

    move-wide v12, v6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p12

    .line 157
    invoke-static/range {v0 .. v9}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->calculateExtremeCoordinate(DDDDD)D

    move-result-wide v8

    move-wide/from16 v2, p2

    move-wide/from16 v4, p6

    move-wide/from16 v6, p10

    move-object/from16 v17, v15

    move-wide v14, v8

    move-wide/from16 v8, p14

    .line 158
    invoke-static/range {v0 .. v9}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->calculateExtremeCoordinate(DDDDD)D

    move-result-wide v0

    .line 160
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 161
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    move-wide/from16 v2, v23

    .line 162
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-wide/from16 v8, v20

    .line 163
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    add-int/lit8 v12, v22, 0x1

    move-wide/from16 v14, p12

    move-wide/from16 v8, p14

    move-object/from16 v10, v17

    move/from16 v11, v19

    goto :goto_0

    :cond_0
    move-wide v8, v0

    move-wide v10, v4

    move-wide v12, v6

    const/4 v0, 0x4

    .line 165
    new-array v0, v0, [D

    aput-wide v12, v0, v16

    const/4 v1, 0x1

    aput-wide v10, v0, v1

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    aput-wide v8, v0, v1

    return-object v0
.end method

.method private getFirstControlPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->createPoint(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    return-object v0
.end method

.method private static getTValuesInExtremePoints(DDDDDDDD)[D
    .locals 9

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    move-wide v1, p0

    move-wide v3, p4

    move-wide/from16 v5, p8

    move-wide/from16 v7, p12

    invoke-static/range {v1 .. v8}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->calculateTValues(DDDD)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-wide v1, p2

    move-wide v3, p6

    move-wide/from16 v5, p10

    move-wide/from16 v7, p14

    .line 185
    invoke-static/range {v1 .. v8}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->calculateTValues(DDDD)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    const/4 v2, 0x0

    .line 187
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 188
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


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 20

    move-object/from16 v0, p0

    .line 80
    iget-object v1, v0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    .line 81
    iget-object v2, v0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    .line 82
    iget-object v3, v0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    .line 83
    iget-object v4, v0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v4

    .line 84
    iget-object v5, v0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v5

    .line 85
    iget-object v6, v0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v6

    float-to-double v8, v1

    float-to-double v10, v2

    float-to-double v12, v3

    float-to-double v14, v4

    float-to-double v1, v5

    float-to-double v3, v6

    move-object/from16 v7, p1

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    .line 86
    invoke-virtual/range {v7 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public getLastControlPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->createPoint(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    return-object v0
.end method

.method public getPathShapeRectangle(Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 19

    .line 109
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->getFirstControlPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->getLastControlPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v5

    .line 113
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v7

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v9

    .line 114
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v11

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v13

    .line 115
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v15

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v17

    .line 112
    invoke-static/range {v3 .. v18}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->getBezierMinMaxPoints(DDDDDDDD)[D

    move-result-object v0

    .line 116
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    invoke-static {v3, v4}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    .line 117
    invoke-static {v5, v6}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v6, 0x2

    aget-wide v6, v0, v6

    aget-wide v8, v0, v2

    sub-double/2addr v6, v8

    .line 118
    invoke-static {v6, v7}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v6

    double-to-float v2, v6

    const/4 v6, 0x3

    aget-wide v6, v0, v6

    aget-wide v8, v0, v4

    sub-double/2addr v6, v8

    .line 119
    invoke-static {v6, v7}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v6

    double-to-float v0, v6

    invoke-direct {v1, v3, v5, v2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v1
.end method

.method public setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V
    .locals 4

    .line 91
    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    .line 94
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->isRelative()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->copier:Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;

    iget-object p2, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    invoke-interface {p1, p2, v3}, Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;->makeCoordinatesAbsolute([Ljava/lang/String;[D)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    :cond_0
    return-void

    .line 92
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "(x1 y1 x2 y2 x y)+ parameters are expected for curves. Got: {0}"

    invoke-static {v0, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
