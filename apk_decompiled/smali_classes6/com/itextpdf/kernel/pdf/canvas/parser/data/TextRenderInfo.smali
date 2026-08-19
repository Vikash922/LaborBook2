.class public Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;
.super Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;
.source "TextRenderInfo.java"


# instance fields
.field private final canvasTagHierarchy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;",
            ">;"
        }
    .end annotation
.end field

.field private final string:Lcom/itextpdf/kernel/pdf/PdfString;

.field private text:Ljava/lang/String;

.field private final textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

.field private final textToUserSpaceTransformMatrix:Lcom/itextpdf/kernel/geom/Matrix;

.field private unscaledWidth:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/geom/Matrix;Ljava/util/Stack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfString;",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;",
            "Lcom/itextpdf/kernel/geom/Matrix;",
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;-><init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->text:Ljava/lang/String;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 81
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->unscaledWidth:F

    .line 98
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->string:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 99
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCtm()Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/itextpdf/kernel/geom/Matrix;->multiply(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->textToUserSpaceTransformMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    .line 100
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;Lcom/itextpdf/kernel/pdf/PdfString;F)V
    .locals 1

    .line 112
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;-><init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->text:Ljava/lang/String;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 81
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->unscaledWidth:F

    .line 113
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->string:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 114
    new-instance p2, Lcom/itextpdf/kernel/geom/Matrix;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0}, Lcom/itextpdf/kernel/geom/Matrix;-><init>(FF)V

    .line 115
    iget-object p3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->textToUserSpaceTransformMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {p2, p3}, Lcom/itextpdf/kernel/geom/Matrix;->multiply(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object p3

    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->textToUserSpaceTransformMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    .line 116
    iget-object p3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {p2, p3}, Lcom/itextpdf/kernel/geom/Matrix;->multiply(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    .line 117
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    return-void
.end method

.method private convertHeightFromTextSpaceToUserSpace(F)F
    .locals 5

    .line 451
    new-instance v0, Lcom/itextpdf/kernel/geom/LineSegment;

    new-instance v1, Lcom/itextpdf/kernel/geom/Vector;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Vector;

    invoke-direct {v4, v2, p1, v3}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/kernel/geom/LineSegment;-><init>(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)V

    .line 452
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->textToUserSpaceTransformMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/LineSegment;->transformBy(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object p1

    .line 453
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/LineSegment;->getLength()F

    move-result p1

    return p1
.end method

.method private convertWidthFromTextSpaceToUserSpace(F)F
    .locals 5

    .line 441
    new-instance v0, Lcom/itextpdf/kernel/geom/LineSegment;

    new-instance v1, Lcom/itextpdf/kernel/geom/Vector;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Vector;

    invoke-direct {v4, p1, v2, v3}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/kernel/geom/LineSegment;-><init>(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)V

    .line 442
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->textToUserSpaceTransformMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/LineSegment;->transformBy(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object p1

    .line 443
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/LineSegment;->getLength()F

    move-result p1

    return p1
.end method

.method private getAscentDescent()[F
    .locals 4

    .line 560
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 561
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v0

    int-to-float v0, v0

    .line 562
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    neg-float v1, v1

    :cond_0
    sub-float v2, v0, v1

    const/high16 v3, 0x442f0000    # 700.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x447a0000    # 1000.0f

    :goto_0
    div-float/2addr v1, v2

    .line 570
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFontSize()F

    move-result v3

    mul-float/2addr v1, v3

    div-float/2addr v0, v2

    .line 571
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFontSize()F

    move-result v2

    mul-float/2addr v0, v2

    const/4 v2, 0x2

    .line 572
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    return-object v2
.end method

.method private getCharCode(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 517
    :try_start_0
    const-string v1, "UTF-16BE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    move v1, v0

    move v2, v1

    .line 519
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 520
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    :cond_0
    array-length v1, p1

    if-lez v1, :cond_1

    .line 524
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte p1, p1, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v2, p1

    :cond_1
    return v2

    :catch_0
    return v0
.end method

.method private getPdfStringWidth(Lcom/itextpdf/kernel/pdf/PdfString;Z)F
    .locals 6

    .line 479
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 481
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getWidthAndWordSpacing(Lcom/itextpdf/kernel/pdf/PdfString;)[F

    move-result-object p1

    .line 482
    aget p2, p1, v0

    float-to-double v2, p2

    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFontSize()F

    move-result p2

    float-to-double v4, p2

    mul-double/2addr v2, v4

    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCharSpacing()F

    move-result p2

    float-to-double v4, p2

    add-double/2addr v2, v4

    aget p1, p1, v1

    float-to-double p1, p1

    add-double/2addr v2, p1

    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 483
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getHorizontalScaling()F

    move-result p1

    float-to-double p1, p1

    mul-double/2addr v2, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    div-double/2addr v2, p1

    double-to-float p1, v2

    return p1

    .line 486
    :cond_0
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->splitString(Lcom/itextpdf/kernel/pdf/PdfString;)[Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p1

    array-length p2, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v3, p1, v0

    .line 487
    invoke-direct {p0, v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getPdfStringWidth(Lcom/itextpdf/kernel/pdf/PdfString;Z)F

    move-result v3

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private getUnscaledBaselineWithOffset(F)Lcom/itextpdf/kernel/geom/LineSegment;
    .locals 5

    .line 425
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 428
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->string:Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getUnscaledWidth()F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCharSpacing()F

    move-result v2

    .line 431
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getWordSpacing()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getHorizontalScaling()F

    move-result v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    .line 433
    new-instance v0, Lcom/itextpdf/kernel/geom/LineSegment;

    new-instance v2, Lcom/itextpdf/kernel/geom/Vector;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, p1, v3}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Vector;

    invoke-direct {v4, v1, p1, v3}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    invoke-direct {v0, v2, v4}, Lcom/itextpdf/kernel/geom/LineSegment;-><init>(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)V

    return-object v0
.end method

.method private getUnscaledFontSpaceWidth()F
    .locals 4

    .line 462
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 464
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getAvgWidth()I

    move-result v0

    :cond_0
    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 469
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFontSize()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCharSpacing()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getWordSpacing()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getHorizontalScaling()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getWidthAndWordSpacing(Lcom/itextpdf/kernel/pdf/PdfString;)[F
    .locals 4

    .line 501
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 504
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->getContentWidth(Lcom/itextpdf/kernel/pdf/PdfString;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 505
    const-string v1, " "

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getWordSpacing()F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    return-object v1
.end method

.method private splitString(Lcom/itextpdf/kernel/pdf/PdfString;)[Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 6

    .line 539
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 540
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    .line 541
    instance-of v0, v0, Lcom/itextpdf/kernel/font/PdfType0Font;

    if-eqz v0, :cond_1

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 544
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/font/PdfFont;->decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object p1

    .line 545
    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    :goto_0
    iget v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v1, v2, :cond_0

    .line 546
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v3

    invoke-virtual {p1, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/font/PdfFont;->convertToBytes(Lcom/itextpdf/io/font/otf/Glyph;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/itextpdf/kernel/pdf/PdfString;

    return-object p1

    .line 551
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Lcom/itextpdf/kernel/pdf/PdfString;

    const/4 v1, 0x0

    .line 552
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 553
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    move v1, v4

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getActualText()Ljava/lang/String;
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    .line 365
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getActualText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v1
.end method

.method public getAscentLine()Lcom/itextpdf/kernel/geom/LineSegment;
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 231
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getAscentDescent()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTextRise()F

    move-result v1

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getUnscaledBaselineWithOffset(F)Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->textToUserSpaceTransformMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/LineSegment;->transformBy(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()Lcom/itextpdf/kernel/geom/LineSegment;
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 215
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTextRise()F

    move-result v0

    const/4 v1, 0x0

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getUnscaledBaselineWithOffset(F)Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->textToUserSpaceTransformMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/LineSegment;->transformBy(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v0

    return-object v0
.end method

.method public getCanvasTagHierarchy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;",
            ">;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    return-object v0
.end method

.method public getCharSpacing()F
    .locals 1

    .line 343
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 344
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCharSpacing()F

    move-result v0

    return v0
.end method

.method public getCharacterRenderInfos()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;",
            ">;"
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->string:Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->string:Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->splitString(Lcom/itextpdf/kernel/pdf/PdfString;)[Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    .line 279
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    aget-object v6, v1, v5

    .line 280
    invoke-direct {p0, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getWidthAndWordSpacing(Lcom/itextpdf/kernel/pdf/PdfString;)[F

    move-result-object v7

    .line 281
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;

    invoke-direct {v8, p0, v6, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;Lcom/itextpdf/kernel/pdf/PdfString;F)V

    .line 282
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    aget v6, v7, v4

    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFontSize()F

    move-result v8

    mul-float/2addr v6, v8

    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCharSpacing()F

    move-result v8

    add-float/2addr v6, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getHorizontalScaling()F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;

    .line 286
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getUnscaledWidth()F

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getDescentLine()Lcom/itextpdf/kernel/geom/LineSegment;
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 242
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getAscentDescent()[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTextRise()F

    move-result v1

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getUnscaledBaselineWithOffset(F)Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->textToUserSpaceTransformMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/LineSegment;->transformBy(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v0

    return-object v0
.end method

.method public getExpansionText()Ljava/lang/String;
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    .line 381
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getExpansionText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v1
.end method

.method public getFillColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 320
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 321
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    return-object v0
.end method

.method public getFont()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 252
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 334
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFontSize()F

    move-result v0

    return v0
.end method

.method public getHorizontalScaling()F
    .locals 1

    .line 338
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 339
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getHorizontalScaling()F

    move-result v0

    return v0
.end method

.method public getLeading()F
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 354
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getLeading()F

    move-result v0

    return v0
.end method

.method public getMcid()I
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    .line 200
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->hasMcid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getMcid()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getPdfString()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->string:Lcom/itextpdf/kernel/pdf/PdfString;

    return-object v0
.end method

.method public getRise()F
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 264
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTextRise()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return v1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTextRise()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->convertHeightFromTextSpaceToUserSpace(F)F

    move-result v0

    return v0
.end method

.method public getSingleSpaceWidth()F
    .locals 1

    .line 294
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getUnscaledFontSpaceWidth()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->convertWidthFromTextSpaceToUserSpace(F)F

    move-result v0

    return v0
.end method

.method public getStrokeColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 329
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 126
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 127
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->text:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->string:Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/font/PdfFont;->decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->isReversedChars()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget v2, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->toUnicodeString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->text:Ljava/lang/String;

    goto :goto_1

    .line 132
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget v3, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    iget v2, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    iget v3, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-lt v2, v3, :cond_1

    .line 134
    invoke-virtual {v0, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicodeChars()[C

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->text:Ljava/lang/String;

    .line 139
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextMatrix()Lcom/itextpdf/kernel/geom/Matrix;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    return-object v0
.end method

.method public getTextRenderMode()I
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 313
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTextRenderingMode()I

    move-result v0

    return v0
.end method

.method public getUnscaledBaseline()Lcom/itextpdf/kernel/geom/LineSegment;
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 220
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTextRise()F

    move-result v0

    const/4 v1, 0x0

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getUnscaledBaselineWithOffset(F)Lcom/itextpdf/kernel/geom/LineSegment;

    move-result-object v0

    return-object v0
.end method

.method public getUnscaledWidth()F
    .locals 2

    .line 419
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->unscaledWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->string:Lcom/itextpdf/kernel/pdf/PdfString;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getPdfStringWidth(Lcom/itextpdf/kernel/pdf/PdfString;Z)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->unscaledWidth:F

    .line 421
    :cond_0
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->unscaledWidth:F

    return v0
.end method

.method public getWordSpacing()F
    .locals 1

    .line 348
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->checkGraphicsState()V

    .line 349
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getWordSpacing()F

    move-result v0

    return v0
.end method

.method public hasMcid(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->hasMcid(IZ)Z

    move-result p1

    return p1
.end method

.method public hasMcid(IZ)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 179
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 180
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getMcid()I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 184
    :cond_1
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    .line 185
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->hasMcid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getMcid()I

    move-result v2

    if-ne v2, p1, :cond_2

    return v0

    :cond_3
    return v1
.end method

.method public isReversedChars()Z
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    if-eqz v1, :cond_0

    .line 398
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ReversedChars:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
