.class public Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;
.super Lcom/itextpdf/layout/font/FontSelectorStrategy;
.source "ComplexFontSelectorStrategy.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private font:Lcom/itextpdf/kernel/font/PdfFont;

.field private selector:Lcom/itextpdf/layout/font/FontSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/layout/font/FontSelector;Lcom/itextpdf/layout/font/FontProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p3, v0}, Lcom/itextpdf/layout/font/FontSelectorStrategy;-><init>(Ljava/lang/String;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontSet;)V

    .line 71
    iput-object v0, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 72
    iput-object p2, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->selector:Lcom/itextpdf/layout/font/FontSelector;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/layout/font/FontSelector;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p3, p4}, Lcom/itextpdf/layout/font/FontSelectorStrategy;-><init>(Ljava/lang/String;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontSet;)V

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 66
    iput-object p2, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->selector:Lcom/itextpdf/layout/font/FontSelector;

    return-void
.end method

.method private static isSignificantUnicodeScript(Ljava/lang/Character$UnicodeScript;)Z
    .locals 1

    .line 161
    sget-object v0, Ljava/lang/Character$UnicodeScript;->COMMON:Ljava/lang/Character$UnicodeScript;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeScript;->INHERITED:Ljava/lang/Character$UnicodeScript;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSurrogatePair(Ljava/lang/String;I)Z
    .locals 2

    .line 166
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isSurrogateHigh(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    add-int/2addr p1, v1

    .line 167
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/itextpdf/io/util/TextUtil;->isSurrogateLow(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private nextSignificantIndex()I
    .locals 2

    .line 133
    iget v0, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->index:I

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/itextpdf/io/util/TextUtil;->isWhitespaceOrNonPrintable(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private nextSignificantUnicodeScript(I)Ljava/lang/Character$UnicodeScript;
    .locals 2

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 151
    :goto_1
    invoke-static {v0}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->isSignificantUnicodeScript(Ljava/lang/Character$UnicodeScript;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 156
    :cond_2
    sget-object p1, Ljava/lang/Character$UnicodeScript;->COMMON:Ljava/lang/Character$UnicodeScript;

    return-object p1
.end method


# virtual methods
.method public getCurrentFont()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->font:Lcom/itextpdf/kernel/font/PdfFont;

    return-object v0
.end method

.method public nextGlyphs()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 83
    invoke-direct {p0}, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->nextSignificantIndex()I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->selector:Lcom/itextpdf/layout/font/FontSelector;

    invoke-virtual {v1}, Lcom/itextpdf/layout/font/FontSelector;->getFonts()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/font/FontInfo;

    .line 86
    iget-object v3, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    .line 87
    invoke-static {v3, v0}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 90
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/layout/font/FontInfo;->getFontUnicodeRange()Lcom/itextpdf/layout/font/Range;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/itextpdf/layout/font/Range;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->getPdfFont(Lcom/itextpdf/layout/font/FontInfo;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v2

    .line 92
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    iput-object v2, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 100
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v2, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 103
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->nextSignificantUnicodeScript(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v2

    move v4, v0

    move v5, v4

    .line 105
    :goto_1
    iget-object v6, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 106
    iget-object v6, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v6

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 107
    :goto_2
    invoke-static {v6}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v7

    .line 108
    invoke-static {v7}, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->isSignificantUnicodeScript(Ljava/lang/Character$UnicodeScript;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eq v7, v2, :cond_4

    goto :goto_3

    :cond_4
    const v5, 0xffff

    if-le v6, v5, :cond_5

    add-int/lit8 v4, v4, 0x1

    :cond_5
    move v5, v4

    add-int/lit8 v4, v5, 0x1

    goto :goto_1

    .line 115
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    iget v6, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->index:I

    invoke-virtual {v2, v4, v6, v5, v1}, Lcom/itextpdf/kernel/font/PdfFont;->appendGlyphs(Ljava/lang/String;IILjava/util/List;)I

    move-result v2

    if-lez v2, :cond_7

    const/4 v3, 0x1

    .line 118
    :cond_7
    iget v4, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->index:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->index:I

    :cond_8
    if-nez v3, :cond_a

    .line 121
    iget-object v2, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->selector:Lcom/itextpdf/layout/font/FontSelector;

    invoke-virtual {v2}, Lcom/itextpdf/layout/font/FontSelector;->bestMatch()Lcom/itextpdf/layout/font/FontInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->getPdfFont(Lcom/itextpdf/layout/font/FontInfo;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 122
    iget v2, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->index:I

    if-eq v2, v0, :cond_9

    .line 123
    iget v2, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->index:I

    iget-object v3, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    iget v5, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->index:I

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/itextpdf/kernel/font/PdfFont;->appendGlyphs(Ljava/lang/String;IILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->index:I

    .line 125
    :cond_9
    :goto_4
    iget v2, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->index:I

    if-gt v2, v0, :cond_a

    iget v2, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->index:I

    iget-object v3, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 126
    iget v2, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->index:I

    iget-object v3, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v4, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->text:Ljava/lang/String;

    iget v5, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->index:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/itextpdf/kernel/font/PdfFont;->appendAnyGlyph(Ljava/lang/String;ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;->index:I

    goto :goto_4

    :cond_a
    return-object v1
.end method
