.class public Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "PathSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/IMarkerCapable;


# static fields
.field private static final INVALID_OPERATOR_REGEX:Ljava/lang/String; = "(?:(?![mzlhvcsqtae])\\p{L})"

.field private static final INVALID_REGEX_PATTERN:Ljava/util/regex/Pattern;

.field private static final SPACE_CHAR:Ljava/lang/String; = " "

.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private zOperator:Lcom/itextpdf/svg/renderers/path/impl/ClosePath;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    const-string v0, "(?:(?![mzlhvcsqtae])\\p{L})"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->INVALID_REGEX_PATTERN:Ljava/util/regex/Pattern;

    .line 105
    const-string v0, "(?=[mlhvcsqtaz])"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->zOperator:Lcom/itextpdf/svg/renderers/path/impl/ClosePath;

    return-void
.end method

.method private addMoveToShapes(Lcom/itextpdf/svg/renderers/path/IPathShape;[Ljava/lang/String;Lcom/itextpdf/svg/renderers/path/IPathShape;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/svg/renderers/path/IPathShape;",
            "[",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/path/IPathShape;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/svg/renderers/path/IPathShape;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 237
    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 236
    invoke-direct {p0, p1, p3, v1}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getShapeCoordinates(Lcom/itextpdf/svg/renderers/path/IPathShape;Lcom/itextpdf/svg/renderers/path/IPathShape;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 238
    new-instance v3, Lcom/itextpdf/svg/renderers/path/impl/ClosePath;

    invoke-interface {p1}, Lcom/itextpdf/svg/renderers/path/IPathShape;->isRelative()Z

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/svg/renderers/path/impl/ClosePath;-><init>(Z)V

    iput-object v3, p0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->zOperator:Lcom/itextpdf/svg/renderers/path/impl/ClosePath;

    .line 239
    invoke-static {p3}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getCurrentPoint(Lcom/itextpdf/svg/renderers/path/IPathShape;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object p3

    .line 240
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->zOperator:Lcom/itextpdf/svg/renderers/path/impl/ClosePath;

    invoke-virtual {v3, v1, p3}, Lcom/itextpdf/svg/renderers/path/impl/ClosePath;->setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V

    .line 241
    invoke-interface {p1, v1, p3}, Lcom/itextpdf/svg/renderers/path/IPathShape;->setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V

    .line 242
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    array-length p3, p2

    if-le p3, v2, :cond_2

    .line 245
    :goto_0
    array-length p3, p2

    if-ge v2, p3, :cond_2

    add-int/lit8 p3, v2, 0x2

    .line 246
    array-length v1, p2

    if-le p3, v1, :cond_0

    goto :goto_2

    .line 249
    :cond_0
    invoke-interface {p1}, Lcom/itextpdf/svg/renderers/path/IPathShape;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "l"

    invoke-static {v1}, Lcom/itextpdf/svg/renderers/path/SvgPathShapeFactory;->createPathShape(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/path/IPathShape;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "L"

    .line 250
    invoke-static {v1}, Lcom/itextpdf/svg/renderers/path/SvgPathShapeFactory;->createPathShape(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/path/IPathShape;

    move-result-object v1

    .line 252
    :goto_1
    invoke-static {p2, v2, p3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 251
    invoke-direct {p0, v1, p1, v2}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getShapeCoordinates(Lcom/itextpdf/svg/renderers/path/IPathShape;Lcom/itextpdf/svg/renderers/path/IPathShape;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-interface {p1}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/itextpdf/svg/renderers/path/IPathShape;->setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V

    .line 254
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, p3

    move-object p1, v1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method private static concatenate([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 284
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 285
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static endsWithNonWhitespace(Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 369
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static getCurrentPoint(Lcom/itextpdf/svg/renderers/path/IPathShape;)Lcom/itextpdf/kernel/geom/Point;
    .locals 1

    if-nez p0, :cond_0

    .line 419
    new-instance p0, Lcom/itextpdf/kernel/geom/Point;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/itextpdf/kernel/geom/Point;-><init>(II)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getShapeCoordinates(Lcom/itextpdf/svg/renderers/path/IPathShape;Lcom/itextpdf/svg/renderers/path/IPathShape;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    .line 154
    instance-of v0, p1, Lcom/itextpdf/svg/renderers/path/impl/ClosePath;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 158
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/svg/renderers/path/impl/SmoothSCurveTo;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/itextpdf/svg/renderers/path/impl/QuadraticSmoothCurveTo;

    if-eqz p1, :cond_3

    :cond_1
    const/4 p1, 0x2

    .line 159
    new-array p1, p1, [Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 161
    invoke-interface {p2}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 163
    instance-of v1, p2, Lcom/itextpdf/svg/renderers/path/impl/IControlPointCurve;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 164
    check-cast p2, Lcom/itextpdf/svg/renderers/path/impl/IControlPointCurve;

    invoke-interface {p2}, Lcom/itextpdf/svg/renderers/path/impl/IControlPointCurve;->getLastControlPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object p2

    .line 165
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v8

    sub-double/2addr v4, v8

    double-to-float v1, v4

    .line 166
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float p2, v4

    .line 168
    invoke-static {v1}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    .line 169
    invoke-static {p2}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertDoubleToString(D)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    .line 172
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertDoubleToString(D)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    .line 177
    :goto_0
    invoke-static {p1, p3}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->concatenate([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p3, v1

    :goto_1
    return-object p3

    .line 175
    :cond_5
    new-instance p1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string p2, "The smooth curve operations (S, s, T, t) may not be used as a first operator in path."

    invoke-direct {p1, p2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processPathOperator([Ljava/lang/String;Lcom/itextpdf/svg/renderers/path/IPathShape;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/path/IPathShape;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/svg/renderers/path/IPathShape;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    array-length v1, p1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    aget-object v2, p1, v1

    .line 197
    invoke-static {v2}, Lcom/itextpdf/svg/renderers/path/SvgPathShapeFactory;->getArgumentCount(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/itextpdf/svg/renderers/path/SvgPathShapeFactory;->getArgumentCount(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_1

    .line 206
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->zOperator:Lcom/itextpdf/svg/renderers/path/impl/ClosePath;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 204
    :cond_1
    new-instance p1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string p2, "The close path operator (Z) may not be used before a move to operation (M)"

    invoke-direct {p1, p2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v3, 0x1

    .line 209
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_7

    add-int v4, v3, v2

    .line 210
    array-length v5, p1

    if-le v4, v5, :cond_3

    goto :goto_1

    .line 213
    :cond_3
    aget-object v5, p1, v1

    invoke-static {v5}, Lcom/itextpdf/svg/renderers/path/SvgPathShapeFactory;->createPathShape(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/path/IPathShape;

    move-result-object v5

    .line 214
    instance-of v6, v5, Lcom/itextpdf/svg/renderers/path/impl/MoveTo;

    if-eqz v6, :cond_4

    .line 215
    invoke-direct {p0, v5, p1, p2}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->addMoveToShapes(Lcom/itextpdf/svg/renderers/path/IPathShape;[Ljava/lang/String;Lcom/itextpdf/svg/renderers/path/IPathShape;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 220
    :cond_4
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 219
    invoke-direct {p0, v5, p2, v3}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getShapeCoordinates(Lcom/itextpdf/svg/renderers/path/IPathShape;Lcom/itextpdf/svg/renderers/path/IPathShape;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_6

    if-eqz v3, :cond_5

    .line 223
    invoke-static {p2}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getCurrentPoint(Lcom/itextpdf/svg/renderers/path/IPathShape;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object p2

    invoke-interface {v5, v3, p2}, Lcom/itextpdf/svg/renderers/path/IPathShape;->setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V

    .line 225
    :cond_5
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move v3, v4

    move-object p2, v5

    goto :goto_0

    :cond_7
    :goto_1
    return-object v0
.end method

.method static splitPathStringIntoOperators(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 365
    sget-object v0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method containsInvalidAttributes(Ljava/lang/String;)Z
    .locals 1

    .line 292
    sget-object v0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->INVALID_REGEX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 124
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;-><init>()V

    .line 125
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    return-object v0
.end method

.method public doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 2

    .line 115
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 116
    const-string v0, "% path\n"

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 117
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getShapes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/svg/renderers/path/IPathShape;

    .line 118
    invoke-interface {v1, p1}, Lcom/itextpdf/svg/renderers/path/IPathShape;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drawMarker(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/svg/MarkerVertexType;)V
    .locals 4

    .line 374
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getShapes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 376
    sget-object v1, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_START:Lcom/itextpdf/svg/MarkerVertexType;

    invoke-virtual {v1, p2}, Lcom/itextpdf/svg/MarkerVertexType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 377
    aget-object v0, v0, v1

    check-cast v0, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;

    invoke-virtual {v0}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    goto :goto_0

    .line 378
    :cond_0
    sget-object v1, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_END:Lcom/itextpdf/svg/MarkerVertexType;

    invoke-virtual {v1, p2}, Lcom/itextpdf/svg/MarkerVertexType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;

    .line 380
    invoke-virtual {v0}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 383
    iget-wide v1, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    invoke-static {v1, v2}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertDoubleToString(D)Ljava/lang/String;

    move-result-object v1

    .line 384
    iget-wide v2, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-static {v2, v3}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertDoubleToString(D)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {p1, v1, v0, p2, p0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->drawMarker(Lcom/itextpdf/svg/renderers/SvgDrawContext;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/svg/MarkerVertexType;Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;)V

    :cond_2
    return-void
.end method

.method public getAutoOrientAngle(Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;Z)D
    .locals 9

    .line 391
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getShapes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 392
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 393
    new-instance v1, Lcom/itextpdf/kernel/geom/Vector;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 394
    iget-object v4, p1, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v5, "marker"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "marker-end"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 396
    array-length p1, v0

    sub-int/2addr p1, v2

    aget-object p1, v0, p1

    check-cast p1, Lcom/itextpdf/svg/renderers/path/IPathShape;

    .line 397
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/itextpdf/svg/renderers/path/IPathShape;

    .line 398
    new-instance v1, Lcom/itextpdf/kernel/geom/Vector;

    invoke-interface {p1}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    invoke-interface {v0}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v4, v4

    .line 399
    invoke-interface {p1}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v5

    invoke-interface {v0}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v7

    sub-double/2addr v5, v7

    double-to-float p1, v5

    invoke-direct {v1, v4, p1, v3}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object p1, p1, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 402
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v4, "marker-start"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 404
    aget-object p1, v0, p1

    check-cast p1, Lcom/itextpdf/svg/renderers/path/IPathShape;

    .line 405
    aget-object v0, v0, v2

    check-cast v0, Lcom/itextpdf/svg/renderers/path/IPathShape;

    .line 406
    new-instance v1, Lcom/itextpdf/kernel/geom/Vector;

    invoke-interface {v0}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v4, v4

    .line 407
    invoke-interface {v0}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v7

    sub-double/2addr v5, v7

    double-to-float p1, v5

    invoke-direct {v1, v4, p1, v3}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 411
    :cond_1
    :goto_0
    new-instance p1, Lcom/itextpdf/kernel/geom/Vector;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v3, v3}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 412
    invoke-static {p1, v1}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->calculateAngleBetweenTwoVectors(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)D

    move-result-wide v4

    .line 413
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result p1

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    mul-double/2addr v4, p1

    :goto_1
    return-wide v4

    :cond_3
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 5

    .line 133
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->getShapes()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/svg/renderers/path/IPathShape;

    if-nez v1, :cond_0

    .line 135
    invoke-interface {v2}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    .line 137
    :cond_0
    invoke-interface {v2, v1}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getPathShapeRectangle(Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    const/4 v3, 0x2

    .line 138
    new-array v3, v3, [Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 140
    invoke-interface {v2}, Lcom/itextpdf/svg/renderers/path/IPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getShapes()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/svg/renderers/path/IPathShape;",
            ">;"
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->parsePathOperations()Ljava/util/Collection;

    move-result-object v0

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 275
    const-string v3, " +"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/svg/renderers/path/IPathShape;

    .line 277
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->processPathOperator([Ljava/lang/String;Lcom/itextpdf/svg/renderers/path/IPathShape;)Ljava/util/List;

    move-result-object v2

    .line 278
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method parsePathOperations()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "d"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 299
    const-string v1, ""

    .line 301
    :cond_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->containsInvalidAttributes(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 306
    invoke-static {v1}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->splitPathStringIntoOperators(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 308
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 309
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 311
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 312
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, ","

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-virtual {p0, v5}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->separateDecimalPoints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 315
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 302
    :cond_3
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v2, "Invalid operators found in path data attribute: {0}"

    invoke-direct {v0, v2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object v0

    throw v0
.end method

.method separateDecimalPoints(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 333
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 334
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_0

    .line 336
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v3, v1

    .line 339
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v1

    .line 344
    :cond_2
    invoke-static {v0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;->endsWithNonWhitespace(Ljava/lang/StringBuilder;)Z

    move-result v7

    const/16 v8, 0x2e

    if-eqz v7, :cond_5

    if-ne v5, v8, :cond_3

    if-nez v3, :cond_4

    :cond_3
    if-ne v5, v6, :cond_5

    if-nez v4, :cond_5

    .line 346
    :cond_4
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v6, 0x1

    if-ne v5, v8, :cond_6

    move v3, v6

    goto :goto_1

    :cond_6
    const/16 v7, 0x65

    if-ne v5, v7, :cond_7

    move v4, v6

    .line 355
    :cond_7
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
