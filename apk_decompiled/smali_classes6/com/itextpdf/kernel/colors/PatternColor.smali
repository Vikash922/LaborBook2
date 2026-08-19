.class public Lcom/itextpdf/kernel/colors/PatternColor;
.super Lcom/itextpdf/kernel/colors/Color;
.source "PatternColor.java"


# instance fields
.field private pattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

.field private underlyingColor:Lcom/itextpdf/kernel/colors/Color;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/colors/Color;)V
    .locals 1

    .line 62
    invoke-virtual {p2}, Lcom/itextpdf/kernel/colors/Color;->getColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/itextpdf/kernel/colors/PatternColor;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V
    .locals 1

    .line 66
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;

    invoke-static {p2}, Lcom/itextpdf/kernel/colors/PatternColor;->ensureNotPatternCs(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/itextpdf/kernel/colors/PatternColor;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;[F)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;[F)V
    .locals 0

    .line 70
    invoke-direct {p0, p2, p3}, Lcom/itextpdf/kernel/colors/Color;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    .line 71
    iput-object p1, p0, Lcom/itextpdf/kernel/colors/PatternColor;->pattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    .line 72
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;->getUnderlyingColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/itextpdf/kernel/colors/PatternColor;->makeColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)Lcom/itextpdf/kernel/colors/Color;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/colors/PatternColor;->underlyingColor:Lcom/itextpdf/kernel/colors/Color;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)V
    .locals 2

    .line 57
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/colors/Color;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    .line 58
    iput-object p1, p0, Lcom/itextpdf/kernel/colors/PatternColor;->pattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    return-void
.end method

.method private static ensureNotPatternCs(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .locals 1

    .line 96
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    if-nez v0, :cond_0

    return-object p0

    .line 97
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "underlyingCS"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 87
    invoke-super {p0, p1}, Lcom/itextpdf/kernel/colors/Color;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 90
    :cond_0
    check-cast p1, Lcom/itextpdf/kernel/colors/PatternColor;

    .line 91
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/PatternColor;->pattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    iget-object v2, p1, Lcom/itextpdf/kernel/colors/PatternColor;->pattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/kernel/colors/PatternColor;->underlyingColor:Lcom/itextpdf/kernel/colors/Color;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/itextpdf/kernel/colors/PatternColor;->underlyingColor:Lcom/itextpdf/kernel/colors/Color;

    .line 92
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/colors/Color;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/itextpdf/kernel/colors/PatternColor;->underlyingColor:Lcom/itextpdf/kernel/colors/Color;

    if-nez p1, :cond_2

    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getPattern()Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/PatternColor;->pattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    return-object v0
.end method

.method public setColorValue([F)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/itextpdf/kernel/colors/Color;->setColorValue([F)V

    .line 82
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/PatternColor;->underlyingColor:Lcom/itextpdf/kernel/colors/Color;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/colors/Color;->setColorValue([F)V

    return-void
.end method
