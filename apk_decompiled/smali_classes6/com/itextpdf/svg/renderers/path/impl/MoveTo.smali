.class public Lcom/itextpdf/svg/renderers/path/impl/MoveTo;
.super Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;
.source "MoveTo.java"


# static fields
.field static final ARGUMENT_SIZE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/path/impl/MoveTo;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/MoveTo;->coordinates:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/path/impl/MoveTo;->coordinates:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v0

    float-to-double v0, v1

    .line 72
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V
    .locals 8

    .line 77
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 80
    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    aput-object v3, v0, v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    aput-object p1, v0, v3

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/MoveTo;->coordinates:[Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/path/impl/MoveTo;->isRelative()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/itextpdf/svg/renderers/path/impl/MoveTo;->copier:Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;

    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/MoveTo;->coordinates:[Ljava/lang/String;

    iget-wide v4, p2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v6, p2, Lcom/itextpdf/kernel/geom/Point;->y:D

    new-array p2, v1, [D

    aput-wide v4, p2, v2

    aput-wide v6, p2, v3

    invoke-interface {p1, v0, p2}, Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;->makeCoordinatesAbsolute([Ljava/lang/String;[D)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/svg/renderers/path/impl/MoveTo;->coordinates:[Ljava/lang/String;

    :cond_0
    return-void

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p2, p0, Lcom/itextpdf/svg/renderers/path/impl/MoveTo;->coordinates:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "(x y)+ parameters are expected for moveTo operator. Got: {0}"

    invoke-static {v0, p2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
