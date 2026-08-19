.class public Lcom/itextpdf/layout/renderer/TextRenderer;
.super Lcom/itextpdf/layout/renderer/AbstractRenderer;
.source "TextRenderer.java"

# interfaces
.implements Lcom/itextpdf/layout/renderer/ILeafElementRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/TextRenderer$CustomGlyphLineFilter;,
        Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;,
        Lcom/itextpdf/layout/renderer/TextRenderer$ReversedCharsIterator;
    }
.end annotation


# static fields
.field private static final BOLD_SIMULATION_STROKE_COEFF:F = 0.033333335f

.field private static final ITALIC_ANGLE:F = 0.21256f

.field protected static final TEXT_SPACE_COEFF:F = 1000.0f

.field static final TYPO_ASCENDER_SCALE_COEFF:F = 1.2f

.field static final UNDEFINED_FIRST_CHAR_TO_FORCE_OVERFLOW:I = 0x7fffffff


# instance fields
.field private font:Lcom/itextpdf/kernel/font/PdfFont;

.field private indexOfFirstCharacterToBeForcedToOverflow:I

.field protected line:Lcom/itextpdf/io/font/otf/GlyphLine;

.field protected otfFeaturesApplied:Z

.field protected reversedRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field protected savedWordBreakAtLineEnding:Lcom/itextpdf/io/font/otf/GlyphLine;

.field private specialScriptFirstNotFittingIndex:I

.field private specialScriptsWordBreakPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected strToBeConverted:Ljava/lang/String;

.field protected tabAnchorCharacterPosition:F

.field protected text:Lcom/itextpdf/io/font/otf/GlyphLine;

.field protected yLineOffset:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/Text;)V
    .locals 1

    .line 148
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/element/Text;Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    const/4 p1, 0x0

    .line 125
    iput-boolean p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 127
    iput p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->tabAnchorCharacterPosition:F

    const/4 p1, -0x1

    .line 139
    iput p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptFirstNotFittingIndex:I

    const p1, 0x7fffffff

    .line 140
    iput p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    .line 160
    iput-object p2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/layout/renderer/TextRenderer;)V
    .locals 1

    .line 164
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;-><init>(Lcom/itextpdf/layout/renderer/AbstractRenderer;)V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 127
    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->tabAnchorCharacterPosition:F

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptFirstNotFittingIndex:I

    const v0, 0x7fffffff

    .line 140
    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    .line 165
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 166
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 167
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 168
    iget v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    .line 169
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    .line 170
    iget-boolean v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    .line 171
    iget v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->tabAnchorCharacterPosition:F

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->tabAnchorCharacterPosition:F

    .line 172
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    .line 173
    iget-object p1, p1, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 0

    .line 109
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->noPrint(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result p0

    return p0
.end method

.method public static calculateAscenderDescender(Lcom/itextpdf/kernel/font/PdfFont;)[F
    .locals 1

    .line 1222
    sget-object v0, Lcom/itextpdf/layout/properties/RenderingMode;->DEFAULT_LAYOUT_MODE:Lcom/itextpdf/layout/properties/RenderingMode;

    invoke-static {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->calculateAscenderDescender(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/layout/properties/RenderingMode;)[F

    move-result-object p0

    return-object p0
.end method

.method public static calculateAscenderDescender(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/layout/properties/RenderingMode;)[F
    .locals 3

    .line 1234
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    .line 1238
    sget-object v1, Lcom/itextpdf/layout/properties/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/properties/RenderingMode;

    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/properties/RenderingMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p0, 0x3f99999a    # 1.2f

    .line 1241
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getWinAscender()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getWinDescender()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1242
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result p1

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getWinAscender()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1243
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result p1

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getWinDescender()I

    move-result v1

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 1247
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getWinAscender()I

    move-result p0

    int-to-float p0, p0

    .line 1248
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getWinDescender()I

    move-result p1

    int-to-float p1, p1

    goto :goto_2

    .line 1244
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p0

    .line 1245
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    move v2, p1

    move p1, p0

    move p0, v2

    :goto_2
    const/4 v0, 0x2

    .line 1250
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    aput p1, v0, p0

    return-object v0
.end method

.method static codePointIsOfSpecialScript(I)Z
    .locals 1

    .line 1626
    invoke-static {p0}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object p0

    .line 1627
    sget-object v0, Ljava/lang/Character$UnicodeScript;->THAI:Ljava/lang/Character$UnicodeScript;

    if-eq v0, p0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeScript;->KHMER:Ljava/lang/Character$UnicodeScript;

    if-eq v0, p0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeScript;->LAO:Ljava/lang/Character$UnicodeScript;

    if-eq v0, p0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeScript;->MYANMAR:Ljava/lang/Character$UnicodeScript;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private convertToGlyphLine(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->createGlyphLine(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object p1

    return-object p1
.end method

.method static findPossibleBreaksSplitPosition(Ljava/util/List;IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZ)I"
        }
    .end annotation

    .line 1607
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 1611
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    .line 1613
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    if-nez p2, :cond_3

    if-lez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private getCharWidth(Lcom/itextpdf/io/font/otf/Glyph;FLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)F
    .locals 2

    if-nez p3, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    .line 1682
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    .line 1684
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr v0, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    if-eqz p4, :cond_1

    .line 1686
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr p4, v1

    mul-float/2addr p4, p2

    add-float/2addr v0, p4

    :cond_1
    if-eqz p5, :cond_2

    .line 1688
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p1

    const/16 p4, 0x20

    if-ne p1, p4, :cond_2

    .line 1689
    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    mul-float/2addr p1, p3

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    :cond_2
    return v0
.end method

.method private getGlyphLineWidth(Lcom/itextpdf/io/font/otf/GlyphLine;FFLjava/lang/Float;Ljava/lang/Float;)F
    .locals 10

    .line 1700
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v3, :cond_2

    .line 1701
    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->noPrint(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1702
    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v4, p0

    move v6, p2

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/itextpdf/layout/renderer/TextRenderer;->getCharWidth(Lcom/itextpdf/io/font/otf/Glyph;FLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)F

    move-result v3

    add-float/2addr v2, v3

    .line 1704
    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-eq v0, v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getXAdvance()S

    move-result v3

    int-to-float v3, v3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->scaleXAdvance(FFLjava/lang/Float;)F

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    add-float/2addr v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr v2, p1

    return v2
.end method

.method private getWordBoundsForHyphenation(Lcom/itextpdf/io/font/otf/GlyphLine;III)[I
    .locals 2

    :goto_0
    if-lt p4, p2, :cond_0

    .line 1712
    invoke-virtual {p1, p4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->isGlyphPartOfWordForHyphenation(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1713
    invoke-virtual {p1, p4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isUni0020(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    if-lt p4, p2, :cond_3

    move v0, p4

    :goto_1
    if-lt v0, p2, :cond_1

    .line 1718
    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->isGlyphPartOfWordForHyphenation(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge p4, p3, :cond_2

    .line 1722
    invoke-virtual {p1, p4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/itextpdf/layout/renderer/TextRenderer;->isGlyphPartOfWordForHyphenation(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 1725
    filled-new-array {v0, p4}, [I

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private static glyphBelongsToNonBreakingHyphenRelatedChunk(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z
    .locals 3

    .line 1795
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isNonBreakingHyphen(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isNonBreakingHyphen(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sub-int/2addr p1, v1

    iget v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/io/util/TextUtil;->isNonBreakingHyphen(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private hasOtfFont()Z
    .locals 2

    .line 1282
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    instance-of v1, v0, Lcom/itextpdf/kernel/font/PdfType0Font;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/io/font/TrueTypeFont;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private increaseYLineOffset([Lcom/itextpdf/layout/properties/UnitValue;[Lcom/itextpdf/layout/borders/Border;[Lcom/itextpdf/layout/properties/UnitValue;)V
    .locals 3

    .line 744
    iget v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    const/4 v1, 0x0

    aget-object p1, p1, v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    add-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    .line 745
    aget-object p1, p2, v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    add-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    .line 746
    aget-object p1, p3, v1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    :cond_2
    add-float/2addr v0, v2

    iput v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    return-void
.end method

.method private isGlyphPartOfWordForHyphenation(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 1

    .line 1732
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xad

    .line 1735
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static noPrint(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 1

    .line 1787
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1790
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p0

    .line 1791
    invoke-static {p0}, Lcom/itextpdf/io/util/TextUtil;->isNonPrintable(I)Z

    move-result p0

    return p0
.end method

.method private static numberOfElementsLessThan(Ljava/util/ArrayList;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .line 1769
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static numberOfElementsLessThanOrEqual(Ljava/util/ArrayList;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .line 1778
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private saveWordBreakIfNotYetSaved(Lcom/itextpdf/io/font/otf/Glyph;)V
    .locals 1

    .line 1757
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->savedWordBreakAtLineEnding:Lcom/itextpdf/io/font/otf/GlyphLine;

    if-nez v0, :cond_1

    .line 1758
    invoke-static {p1}, Lcom/itextpdf/io/util/TextUtil;->isNewLine(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1761
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    .line 1764
    :cond_0
    new-instance v0, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->savedWordBreakAtLineEnding:Lcom/itextpdf/io/font/otf/GlyphLine;

    :cond_1
    return-void
.end method

.method private scaleXAdvance(FFLjava/lang/Float;)F
    .locals 0

    mul-float/2addr p1, p2

    .line 1695
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p1, p2

    return p1
.end method

.method private splitIgnoreFirstNewLine(I)[Lcom/itextpdf/layout/renderer/TextRenderer;
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-static {v0, p1}, Lcom/itextpdf/io/util/TextUtil;->isCarriageReturnFollowedByLineFeed(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    .line 1271
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->split(I)[Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 1273
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->split(I)[Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object p1

    return-object p1
.end method

.method private updateFontAndText()V
    .locals 3

    .line 1739
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    .line 1742
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFont(I)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1744
    :catch_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->resolveFirstPdfFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    .line 1745
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1746
    const-class v1, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 1747
    const-string v2, "The \"Property.FONT\" property must be a PdfFont object in this context."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1750
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/font/PdfFont;->createGlyphLine(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v1

    .line 1751
    invoke-static {v1, v0}, Lcom/itextpdf/layout/renderer/TextPreprocessingUtil;->replaceSpecialWhitespaceGlyphs(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v1

    .line 1752
    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProcessedGlyphLineAndFont(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V

    :cond_1
    return-void
.end method

.method static updateRangeBasedOnRemovedCharacters(Ljava/util/ArrayList;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1593
    aget v1, p1, v0

    invoke-static {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->numberOfElementsLessThan(Ljava/util/ArrayList;I)I

    move-result v1

    .line 1594
    aget v2, p1, v0

    sub-int/2addr v2, v1

    aput v2, p1, v0

    const/4 v0, 0x1

    .line 1595
    aget v1, p1, v0

    invoke-static {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->numberOfElementsLessThanOrEqual(Ljava/util/ArrayList;I)I

    move-result p0

    .line 1596
    aget v1, p1, v0

    sub-int/2addr v1, p0

    aput v1, p1, v0

    return-void
.end method


# virtual methods
.method public applyOtf()V
    .locals 15

    .line 750
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->updateFontAndText()V

    const/16 v0, 0x17

    .line 751
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character$UnicodeScript;

    .line 752
    iget-boolean v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    if-nez v1, :cond_10

    invoke-static {}, Lcom/itextpdf/layout/renderer/TypographyUtils;->isPdfCalligraphAvailable()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v1, v2, :cond_10

    .line 753
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 754
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentIdWrapper()Lcom/itextpdf/commons/actions/sequence/SequenceId;

    move-result-object v1

    :goto_0
    const/16 v3, 0x87

    .line 755
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/MetaInfoContainer;

    if-nez v3, :cond_1

    move-object v9, v2

    goto :goto_1

    .line 756
    :cond_1
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/MetaInfoContainer;->getMetaInfo()Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    move-result-object v3

    move-object v9, v3

    .line 757
    :goto_1
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->hasOtfFont()Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x75

    .line 758
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 761
    invoke-static {v10}, Lcom/itextpdf/layout/renderer/TypographyUtils;->getSupportedScripts(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    if-nez v3, :cond_3

    .line 764
    invoke-static {}, Lcom/itextpdf/layout/renderer/TypographyUtils;->getSupportedScripts()Ljava/util/Collection;

    move-result-object v3

    :cond_3
    move-object v11, v3

    .line 766
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4

    .line 768
    new-instance v2, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-direct {v2, v0, v4}, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;-><init>(Ljava/lang/Character$UnicodeScript;I)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 771
    :cond_4
    new-instance v0, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-direct {v0, v2, v4}, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;-><init>(Ljava/lang/Character$UnicodeScript;I)V

    .line 772
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    :goto_3
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v2, v4, :cond_8

    .line 774
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v4, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_7

    .line 776
    invoke-static {v4}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v4

    .line 777
    sget-object v5, Ljava/lang/Character$UnicodeScript;->COMMON:Ljava/lang/Character$UnicodeScript;

    invoke-virtual {v5, v4}, Ljava/lang/Character$UnicodeScript;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Ljava/lang/Character$UnicodeScript;->UNKNOWN:Ljava/lang/Character$UnicodeScript;

    invoke-virtual {v5, v4}, Ljava/lang/Character$UnicodeScript;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Ljava/lang/Character$UnicodeScript;->INHERITED:Ljava/lang/Character$UnicodeScript;

    .line 778
    invoke-virtual {v5, v4}, Ljava/lang/Character$UnicodeScript;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    .line 781
    :cond_5
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    if-eq v4, v5, :cond_7

    .line 782
    iget-object v5, v0, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    if-nez v5, :cond_6

    .line 783
    iput-object v4, v0, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    goto :goto_4

    .line 785
    :cond_6
    iput v2, v0, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->rangeEnd:I

    .line 786
    new-instance v0, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v5, v5, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-direct {v0, v4, v5}, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;-><init>(Ljava/lang/Character$UnicodeScript;I)V

    .line 787
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 795
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 796
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 797
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 798
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v3, 0x0

    move v13, v3

    :cond_9
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;

    .line 799
    iget-object v3, v14, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    if-eqz v3, :cond_9

    iget-object v3, v14, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    invoke-static {v3}, Lcom/itextpdf/io/util/EnumUtil;->throwIfNull(Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_6

    .line 802
    :cond_a
    iget v3, v14, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->rangeEnd:I

    add-int/2addr v3, v13

    iput v3, v14, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->rangeEnd:I

    .line 803
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v4, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 804
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v14, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->rangeEnd:I

    iput v4, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 806
    iget-object v3, v14, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    sget-object v4, Ljava/lang/Character$UnicodeScript;->ARABIC:Ljava/lang/Character$UnicodeScript;

    if-eq v3, v4, :cond_b

    iget-object v3, v14, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    sget-object v4, Ljava/lang/Character$UnicodeScript;->HEBREW:Ljava/lang/Character$UnicodeScript;

    if-ne v3, v4, :cond_c

    :cond_b
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v3, v3, Lcom/itextpdf/layout/renderer/LineRenderer;

    if-eqz v3, :cond_c

    const/4 v3, 0x7

    .line 812
    sget-object v4, Lcom/itextpdf/layout/properties/BaseDirection;->DEFAULT_BIDI:Lcom/itextpdf/layout/properties/BaseDirection;

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProperty(ILjava/lang/Object;)V

    .line 814
    :cond_c
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 815
    invoke-virtual {v3}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v5, v14, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->script:Ljava/lang/Character$UnicodeScript;

    move-object v6, v10

    move-object v7, v1

    move-object v8, v9

    .line 814
    invoke-static/range {v3 .. v8}, Lcom/itextpdf/layout/renderer/TypographyUtils;->applyOtfScript(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/otf/GlyphLine;Ljava/lang/Character$UnicodeScript;Ljava/lang/Object;Lcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)V

    .line 817
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget v4, v14, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->rangeEnd:I

    sub-int/2addr v3, v4

    add-int/2addr v13, v3

    .line 818
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iput v4, v14, Lcom/itextpdf/layout/renderer/TextRenderer$ScriptRange;->rangeEnd:I

    goto :goto_6

    .line 820
    :cond_d
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v0, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 821
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    add-int/2addr v2, v13

    iput v2, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    :cond_e
    const/16 v0, 0x16

    .line 824
    sget-object v2, Lcom/itextpdf/layout/properties/FontKerning;->NO:Lcom/itextpdf/layout/properties/FontKerning;

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/FontKerning;

    .line 825
    sget-object v2, Lcom/itextpdf/layout/properties/FontKerning;->YES:Lcom/itextpdf/layout/properties/FontKerning;

    if-ne v0, v2, :cond_f

    .line 826
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-static {v0, v2, v1, v9}, Lcom/itextpdf/layout/renderer/TypographyUtils;->applyKerning(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)V

    :cond_f
    const/4 v0, 0x1

    .line 829
    iput-boolean v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    :cond_10
    return-void
.end method

.method protected baseCharactersCount()I
    .locals 3

    .line 1389
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v2, :cond_1

    .line 1390
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v2, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    .line 1391
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->hasPlacement()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected calculateLineWidth()F
    .locals 9

    const/16 v0, 0x18

    .line 1512
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v1

    .line 1513
    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1514
    const-class v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 1515
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Property {0} in percents is not supported"

    invoke-static {v3, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1517
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1518
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/16 v0, 0xf

    .line 1519
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v7

    const/16 v0, 0x4e

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v8

    move-object v3, p0

    .line 1517
    invoke-direct/range {v3 .. v8}, Lcom/itextpdf/layout/renderer/TextRenderer;->getGlyphLineWidth(Lcom/itextpdf/io/font/otf/GlyphLine;FFLjava/lang/Float;Ljava/lang/Float;)F

    move-result v0

    return v0
.end method

.method public charAt(I)I
    .locals 2

    .line 1188
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p1

    return p1
.end method

.method protected createCopy(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/renderer/TextRenderer;
    .locals 3

    .line 1583
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eq v1, v0, :cond_0

    .line 1584
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const/4 v1, 0x0

    .line 1585
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "While processing an instance of TextRenderer, iText uses createCopy() to create glyph lines of specific fonts, which represent its parts. So if one extends TextRenderer, one should override createCopy, otherwise if FontSelector related logic is triggered, copies of this TextRenderer will have the default behavior rather than the custom one."

    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1587
    :cond_0
    new-instance v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/renderer/TextRenderer;)V

    .line 1588
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProcessedGlyphLineAndFont(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V

    return-object v0
.end method

.method protected createOverflowRenderer()Lcom/itextpdf/layout/renderer/TextRenderer;
    .locals 1

    .line 1422
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    return-object v0
.end method

.method protected createSplitRenderer()Lcom/itextpdf/layout/renderer/TextRenderer;
    .locals 1

    .line 1418
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    return-object v0
.end method

.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 27

    move-object/from16 v6, p0

    .line 835
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const-class v1, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-nez v0, :cond_0

    .line 836
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 837
    const-string v1, "Drawing won\'t be performed."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Occupied area has not been initialized. {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 843
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->isTaggingEnabled()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v2, 0x1

    if-eqz v7, :cond_4

    const/16 v3, 0x6c

    .line 848
    invoke-virtual {v6, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-nez v3, :cond_1

    move v10, v2

    move-object v9, v3

    goto :goto_0

    .line 852
    :cond_1
    invoke-virtual {v3, v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isArtifact(Lcom/itextpdf/layout/IPropertyContainer;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 854
    invoke-virtual {v3, v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->useAutoTaggingPointerAndRememberItsPosition(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v5

    .line 855
    invoke-virtual {v3, v6, v5}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 856
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v9

    invoke-static {v6, v5}, Lcom/itextpdf/layout/renderer/AccessibleAttributesApplier;->getLayoutAttributes(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->addAttributes(ILcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    :cond_2
    move-object v9, v3

    move v10, v4

    goto :goto_1

    :cond_3
    move-object v9, v3

    move v10, v4

    :goto_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    move v10, v8

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 862
    :goto_1
    invoke-super/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 864
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->isRelativePosition()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 866
    invoke-virtual {v6, v8}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyRelativePositioningTranslation(Z)V

    .line 869
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getInnerAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v3

    .line 871
    iget-object v4, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget-object v12, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v12, v12, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-gt v4, v12, :cond_6

    iget-object v4, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->savedWordBreakAtLineEnding:Lcom/itextpdf/io/font/otf/GlyphLine;

    if-eqz v4, :cond_27

    :cond_6
    const/16 v4, 0x18

    .line 872
    invoke-virtual {v6, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v19

    .line 873
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v12

    if-nez v12, :cond_7

    .line 874
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 876
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 875
    const-string v12, "Property {0} in percents is not supported"

    invoke-static {v12, v4}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_7
    const/16 v1, 0x15

    .line 878
    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsTransparentColor(I)Lcom/itextpdf/layout/properties/TransparentColor;

    move-result-object v4

    const/16 v1, 0x47

    .line 879
    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/16 v12, 0x48

    .line 880
    invoke-virtual {v6, v12}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v20

    const/16 v12, 0xf

    .line 881
    invoke-virtual {v6, v12}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v21

    const/16 v12, 0x4e

    .line 882
    invoke-virtual {v6, v12}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v22

    const/16 v12, 0x1d

    .line 883
    invoke-virtual {v6, v12}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v23, v12

    check-cast v23, Ljava/lang/Float;

    const/16 v12, 0x41

    .line 884
    invoke-virtual {v6, v12}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    .line 885
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v14, 0x1f

    invoke-virtual {v6, v14}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 886
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v14, 0x8

    invoke-virtual {v6, v14}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v15, 0x2

    if-eqz v13, :cond_8

    .line 890
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 891
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v13

    const/high16 v14, 0x41f00000    # 30.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    move-object/from16 v25, v13

    goto :goto_2

    :cond_8
    const/16 v25, 0x0

    .line 894
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v14

    if-eqz v7, :cond_a

    if-eqz v10, :cond_9

    .line 897
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/canvas/CanvasArtifact;-><init>()V

    invoke-virtual {v14, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_3

    .line 899
    :cond_9
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getTagReference()Lcom/itextpdf/kernel/pdf/tagutils/TagReference;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/tagutils/TagReference;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 902
    :cond_a
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->beginElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 903
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    iget-object v13, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    invoke-virtual {v5, v13, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    if-eqz v12, :cond_b

    .line 905
    array-length v0, v12

    if-ne v0, v15, :cond_b

    .line 906
    aget v0, v12, v8

    aget v5, v12, v2

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getYLine()F

    move-result v18

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v12, v14

    move-object/from16 v26, v14

    move v14, v0

    move v0, v15

    move v15, v5

    move/from16 v17, v3

    invoke-virtual/range {v12 .. v18}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_4

    :cond_b
    move-object/from16 v26, v14

    move v0, v15

    if-eqz v24, :cond_c

    const/high16 v16, 0x3f800000    # 1.0f

    .line 908
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getYLine()F

    move-result v18

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const v15, 0x3e59a954    # 0.21256f

    move-object/from16 v12, v26

    move/from16 v17, v3

    invoke-virtual/range {v12 .. v18}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :goto_4
    move-object/from16 v5, v26

    goto :goto_5

    :cond_c
    float-to-double v12, v3

    .line 910
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getYLine()F

    move-result v3

    float-to-double v14, v3

    move-object/from16 v5, v26

    invoke-virtual {v5, v12, v13, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveText(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 913
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_d

    .line 914
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextRenderingMode(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 916
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v12, 0x3f800000    # 1.0f

    if-eq v3, v2, :cond_e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_12

    :cond_e
    if-nez v25, :cond_f

    const/16 v0, 0x40

    .line 918
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v25

    :cond_f
    if-eqz v25, :cond_10

    .line 920
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_10

    .line 921
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_10
    const/16 v0, 0x3f

    .line 923
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsColor(I)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    if-nez v0, :cond_11

    if-eqz v4, :cond_11

    .line 925
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    :cond_11
    if-eqz v0, :cond_12

    .line 928
    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_12
    if-eqz v4, :cond_13

    .line 932
    invoke-virtual {v4}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 933
    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/properties/TransparentColor;->applyFillTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    :cond_13
    const/4 v13, 0x0

    if-eqz v20, :cond_14

    .line 935
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_14

    .line 936
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextRise(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_14
    if-eqz v21, :cond_15

    .line 938
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_15

    .line 939
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setCharacterSpacing(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_15
    if-eqz v22, :cond_18

    .line 941
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_18

    .line 942
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    instance-of v0, v0, Lcom/itextpdf/kernel/font/PdfType0Font;

    if-eqz v0, :cond_17

    .line 948
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    :goto_6
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v1, :cond_18

    .line 949
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/io/util/TextUtil;->isUni0020(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 950
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    div-float/2addr v3, v1

    float-to-int v1, v3

    int-to-short v1, v1

    .line 951
    new-instance v3, Lcom/itextpdf/io/font/otf/Glyph;

    iget-object v14, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v14, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v14

    invoke-direct {v3, v14}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;)V

    .line 952
    invoke-virtual {v3, v1}, Lcom/itextpdf/io/font/otf/Glyph;->setXAdvance(S)V

    .line 953
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1, v0, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->set(ILcom/itextpdf/io/font/otf/Glyph;)Lcom/itextpdf/io/font/otf/Glyph;

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 957
    :cond_17
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setWordSpacing(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_18
    if-eqz v23, :cond_19

    .line 960
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_19

    .line 961
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setHorizontalScaling(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 964
    :cond_19
    new-instance v0, Lcom/itextpdf/layout/renderer/TextRenderer$CustomGlyphLineFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer$CustomGlyphLineFilter;-><init>(Lcom/itextpdf/layout/renderer/TextRenderer$1;)V

    .line 966
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v3, 0x52

    invoke-virtual {v6, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getReversedRanges()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 970
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 971
    iget-object v12, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v12, v12, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    :goto_7
    iget-object v14, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v14, v14, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v12, v14, :cond_1b

    .line 972
    iget-object v14, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v14, v12}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v14

    invoke-interface {v0, v14}, Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;->accept(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v14

    if-nez v14, :cond_1a

    .line 973
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 976
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getReversedRanges()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    .line 977
    invoke-static {v3, v14}, Lcom/itextpdf/layout/renderer/TextRenderer;->updateRangeBasedOnRemovedCharacters(Ljava/util/ArrayList;[I)V

    goto :goto_8

    .line 979
    :cond_1c
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v3, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->filter(Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v0

    iput-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    if-nez v1, :cond_1d

    .line 981
    new-instance v1, Lcom/itextpdf/layout/renderer/TextRenderer$ReversedCharsIterator;

    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    iget-object v12, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v1, v3, v12}, Lcom/itextpdf/layout/renderer/TextRenderer$ReversedCharsIterator;-><init>(Ljava/util/List;Lcom/itextpdf/io/font/otf/GlyphLine;)V

    .line 982
    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/renderer/TextRenderer$ReversedCharsIterator;->setUseReversed(Z)Lcom/itextpdf/layout/renderer/TextRenderer$ReversedCharsIterator;

    move-result-object v1

    .line 981
    invoke-virtual {v5, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Lcom/itextpdf/io/font/otf/GlyphLine;Ljava/util/Iterator;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_9

    .line 984
    :cond_1d
    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_9

    :cond_1e
    if-eqz v1, :cond_1f

    .line 988
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v12, 0x0

    invoke-virtual {v1, v2, v3, v12}, Lcom/itextpdf/io/font/otf/GlyphLine;->setActualText(IILjava/lang/String;)V

    .line 990
    :cond_1f
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->filter(Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 992
    :goto_9
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->savedWordBreakAtLineEnding:Lcom/itextpdf/io/font/otf/GlyphLine;

    if-eqz v0, :cond_20

    .line 993
    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 996
    :cond_20
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 997
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->endElementOpacityApplying(Lcom/itextpdf/layout/renderer/DrawContext;)V

    const/16 v0, 0x4a

    .line 999
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 1000
    instance-of v1, v0, Ljava/util/List;

    const v12, 0x3e59a954    # 0.21256f

    if-eqz v1, :cond_24

    .line 1001
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1002
    instance-of v1, v0, Lcom/itextpdf/layout/properties/Underline;

    if-eqz v1, :cond_22

    .line 1003
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/properties/Underline;

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v15

    if-eqz v24, :cond_21

    move/from16 v16, v12

    goto :goto_b

    :cond_21
    move/from16 v16, v13

    :goto_b
    move-object/from16 v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object/from16 v17, v4

    move v4, v15

    move-object v15, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->drawSingleUnderline(Lcom/itextpdf/layout/properties/Underline;Lcom/itextpdf/layout/properties/TransparentColor;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    goto :goto_c

    :cond_22
    move-object/from16 v17, v4

    move-object v15, v5

    :goto_c
    move-object v5, v15

    move-object/from16 v4, v17

    goto :goto_a

    :cond_23
    move-object v15, v5

    goto :goto_e

    :cond_24
    move-object/from16 v17, v4

    move-object v15, v5

    .line 1006
    instance-of v1, v0, Lcom/itextpdf/layout/properties/Underline;

    if-eqz v1, :cond_26

    .line 1007
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/properties/Underline;

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    if-eqz v24, :cond_25

    move v5, v12

    goto :goto_d

    :cond_25
    move v5, v13

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v2, v17

    move-object v3, v15

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->drawSingleUnderline(Lcom/itextpdf/layout/properties/Underline;Lcom/itextpdf/layout/properties/TransparentColor;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    :cond_26
    :goto_e
    if-eqz v7, :cond_27

    .line 1011
    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_27
    if-eqz v11, :cond_28

    .line 1016
    invoke-virtual {v6, v8}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyRelativePositioningTranslation(Z)V

    :cond_28
    if-eqz v7, :cond_2a

    if-nez v10, :cond_2a

    .line 1020
    iget-boolean v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->isLastRendererForModelElement:Z

    if-eqz v0, :cond_29

    .line 1021
    invoke-virtual {v9, v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishTaggingHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 1023
    :cond_29
    invoke-virtual {v9, v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->restoreAutoTaggingPointerPosition(Lcom/itextpdf/layout/renderer/IRenderer;)V

    :cond_2a
    return-void
.end method

.method protected drawSingleUnderline(Lcom/itextpdf/layout/properties/Underline;Lcom/itextpdf/layout/properties/TransparentColor;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V
    .locals 4

    .line 1488
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Underline;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Underline;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Underline;->getOpacity()F

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/itextpdf/layout/properties/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 1489
    :cond_0
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    if-eqz p2, :cond_1

    .line 1492
    invoke-virtual {p2}, Lcom/itextpdf/layout/properties/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1493
    invoke-virtual {p2, p3}, Lcom/itextpdf/layout/properties/TransparentColor;->applyStrokeTransparency(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 1495
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/layout/properties/Underline;->getLineCapStyle()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineCapStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1496
    invoke-virtual {p1, p4}, Lcom/itextpdf/layout/properties/Underline;->getThickness(F)F

    move-result p2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    .line 1498
    invoke-virtual {p3, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1499
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getYLine()F

    move-result p2

    .line 1500
    invoke-virtual {p1, p4}, Lcom/itextpdf/layout/properties/Underline;->getYPosition(F)F

    move-result p1

    add-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p4, p2

    mul-float/2addr p4, p5

    .line 1502
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getInnerAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p2

    .line 1503
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result p5

    float-to-double v0, p5

    float-to-double v2, p1

    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 1504
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result p5

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result p2

    add-float/2addr p5, p2

    sub-float/2addr p5, p4

    float-to-double p4, p5

    invoke-virtual {p1, p4, p5, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    .line 1505
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1508
    :cond_2
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public getAscent()F
    .locals 1

    .line 1104
    iget v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    return v0
.end method

.method protected getBackgroundArea(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    const/16 v0, 0x48

    .line 1364
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1365
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method public getDescent()F
    .locals 2

    .line 1114
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getOccupiedAreaBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    sub-float/2addr v0, v1

    const/16 v1, 0x48

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    return v0
.end method

.method protected getFirstYLineRecursively()Ljava/lang/Float;
    .locals 1

    .line 1370
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getYLine()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected getLastYLineRecursively()Ljava/lang/Float;
    .locals 1

    .line 1375
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getYLine()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 5

    .line 1400
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v3

    const v4, 0x49742400    # 1000000.0f

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 1401
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    return-object v0
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 1210
    const-class v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->logWarningIfGetNextRendererNotOverridden(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 1211
    new-instance v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/Text;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;)V

    return-object v0
.end method

.method protected getNumberOfSpaces()I
    .locals 4

    .line 1405
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    :goto_0
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v2, :cond_2

    .line 1409
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v2, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    .line 1410
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method getReversedRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 1254
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    return-object v0
.end method

.method getSpecialScriptFirstNotFittingIndex()I
    .locals 1

    .line 1355
    iget v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptFirstNotFittingIndex:I

    return v0
.end method

.method getSpecialScriptsWordBreakPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1347
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    return-object v0
.end method

.method public getTabAnchorCharacterPosition()F
    .locals 1

    .line 1192
    iget v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->tabAnchorCharacterPosition:F

    return v0
.end method

.method public getText()Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 1

    .line 1163
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->updateFontAndText()V

    .line 1164
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    return-object v0
.end method

.method public getYLine()F
    .locals 2

    .line 1124
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    sub-float/2addr v0, v1

    const/16 v1, 0x48

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method initReversedRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 1258
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    return-object v0
.end method

.method isStartsWithSplitCharWhiteSpaceAndEndsWithSplitChar(Lcom/itextpdf/layout/splitting/ISplitCharacters;)[Z
    .locals 5

    .line 1665
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 1666
    invoke-interface {p1, v0, v1}, Lcom/itextpdf/layout/splitting/ISplitCharacters;->isSplitCharacter(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 1667
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isSpaceOrWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1668
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v1, v4, :cond_1

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    sub-int/2addr v4, v3

    .line 1669
    invoke-interface {p1, v1, v4}, Lcom/itextpdf/layout/splitting/ISplitCharacters;->isSplitCharacter(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    .line 1670
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    const/4 v4, 0x2

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    .line 1674
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 1676
    :cond_3
    new-array v1, v4, [Z

    aput-boolean v0, v1, v2

    aput-boolean p1, v1, v3

    return-object v1

    .line 1671
    :cond_4
    :goto_2
    new-array v1, v4, [Z

    aput-boolean v0, v1, v2

    aput-boolean p1, v1, v3

    return-object v1
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 85

    move-object/from16 v6, p0

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->updateFontAndText()V

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v7

    .line 181
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    .line 183
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x76

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 185
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v10, 0x67

    invoke-interface {v0, v10}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    const/16 v1, 0x66

    .line 187
    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;

    .line 188
    sget-object v1, Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;->ANYWHERE:Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v11, v1, :cond_1

    sget-object v1, Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;->BREAK_WORD:Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;

    if-ne v11, v1, :cond_0

    goto :goto_0

    :cond_0
    move v14, v12

    goto :goto_1

    :cond_1
    :goto_0
    move v14, v13

    :goto_1
    if-eqz v14, :cond_2

    .line 191
    sget-object v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    :cond_2
    move-object v15, v0

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->getFloatRendererAreas()Ljava/util/List;

    move-result-object v5

    const/16 v0, 0x63

    .line 195
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/itextpdf/layout/properties/FloatPropertyValue;

    .line 197
    invoke-static {v6, v4}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/properties/FloatPropertyValue;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v3, v5

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object v5, v15

    .line 198
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/FloatingHelper;->adjustFloatedBlockLayoutBox(Lcom/itextpdf/layout/renderer/AbstractRenderer;Lcom/itextpdf/kernel/geom/Rectangle;Ljava/lang/Float;Ljava/util/List;Lcom/itextpdf/layout/properties/FloatPropertyValue;Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Ljava/lang/Float;

    goto :goto_2

    :cond_3
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 201
    :goto_2
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getMargins()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v5

    .line 203
    invoke-virtual {v6, v8, v5, v12}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getBorders()[Lcom/itextpdf/layout/borders/Border;

    move-result-object v4

    .line 205
    invoke-virtual {v6, v8, v4, v12}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPaddings()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v3

    .line 208
    invoke-virtual {v6, v8, v3, v12}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 210
    new-instance v2, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {v2, v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(F)V

    if-eqz v9, :cond_4

    .line 213
    new-instance v0, Lcom/itextpdf/layout/renderer/SumSumWidthHandler;

    invoke-direct {v0, v2}, Lcom/itextpdf/layout/renderer/SumSumWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    goto :goto_3

    .line 215
    :cond_4
    new-instance v0, Lcom/itextpdf/layout/renderer/MaxSumWidthHandler;

    invoke-direct {v0, v2}, Lcom/itextpdf/layout/renderer/MaxSumWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    :goto_3
    move-object v1, v0

    const/4 v0, 0x3

    .line 219
    aget-object v18, v5, v0

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v18

    aget-object v19, v4, v0

    if-nez v19, :cond_5

    const/16 v19, 0x0

    goto :goto_4

    .line 220
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v19

    :goto_4
    aget-object v21, v3, v0

    .line 221
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v21

    new-array v10, v0, [F

    aput v18, v10, v12

    aput v19, v10, v13

    const/4 v12, 0x2

    aput v21, v10, v12

    .line 223
    aget-object v19, v5, v13

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v19

    aget-object v21, v4, v13

    if-nez v21, :cond_6

    const/16 v21, 0x0

    goto :goto_5

    .line 224
    :cond_6
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v21

    :goto_5
    aget-object v22, v3, v13

    .line 225
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v22

    new-array v12, v0, [F

    const/16 v18, 0x0

    aput v19, v12, v18

    aput v21, v12, v13

    const/16 v19, 0x2

    aput v22, v12, v19

    .line 227
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result v13

    move-object/from16 v22, v1

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    move-object/from16 v23, v2

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v24

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v25

    move-object/from16 v26, v3

    add-float v3, v24, v25

    move-object/from16 v24, v4

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v0, v13, v1}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 229
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->addPageByID(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 233
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v13, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    const/16 v0, 0x18

    .line 234
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v25

    .line 235
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v1

    if-nez v1, :cond_7

    .line 236
    const-class v1, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 238
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 237
    const-string v2, "Property {0} in percents is not supported"

    invoke-static {v2, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_7
    const/16 v0, 0x48

    .line 240
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v27

    const/16 v0, 0xf

    .line 241
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v28

    const/16 v0, 0x4e

    .line 242
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v29

    const/high16 v0, 0x3f800000    # 1.0f

    .line 243
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {v6, v1, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v30

    const/16 v0, 0x3e

    .line 244
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/itextpdf/layout/splitting/ISplitCharacters;

    .line 245
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x1f

    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x3e59a954    # 0.21256f

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    mul-float/2addr v0, v1

    move v3, v0

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    .line 246
    :goto_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x3d088889

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v1

    mul-float/2addr v0, v1

    move v2, v0

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    .line 248
    :goto_7
    new-instance v0, Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v0, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    iput-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    const/4 v1, -0x1

    .line 249
    iput v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iput v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    const/16 v0, 0x7b

    .line 261
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/RenderingMode;

    .line 262
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-static {v1, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->calculateAscenderDescender(Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/layout/properties/RenderingMode;)[F

    move-result-object v1

    move-object/from16 v31, v12

    const/16 v18, 0x0

    .line 263
    aget v12, v1, v18

    move-object/from16 v32, v10

    const/16 v21, 0x1

    .line 264
    aget v10, v1, v21

    move/from16 v33, v2

    .line 265
    sget-object v2, Lcom/itextpdf/layout/properties/RenderingMode;->HTML_MODE:Lcom/itextpdf/layout/properties/RenderingMode;

    invoke-virtual {v2, v0}, Lcom/itextpdf/layout/properties/RenderingMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v34, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_a

    .line 266
    aget v0, v1, v18

    .line 267
    aget v1, v1, v21

    sub-float v2, v0, v1

    .line 268
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v35

    mul-float v2, v2, v35

    div-float v2, v2, v34

    add-float v2, v2, v27

    move-object/from16 v35, v7

    goto :goto_8

    :cond_a
    move-object/from16 v35, v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    const/4 v7, 0x0

    .line 271
    iput-object v7, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->savedWordBreakAtLineEnding:Lcom/itextpdf/io/font/otf/GlyphLine;

    const/16 v7, 0x42

    .line 274
    invoke-virtual {v6, v7}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Character;

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/layout/LayoutContext;->isClippedHeight()Z

    move-result v36

    if-nez v36, :cond_b

    sget-object v36, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    move/from16 v37, v1

    move-object/from16 v38, v36

    move/from16 v36, v0

    goto :goto_9

    :cond_b
    move/from16 v36, v0

    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    move/from16 v37, v1

    const/16 v1, 0x68

    .line 280
    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    move-object/from16 v38, v0

    :goto_9
    const/16 v0, 0x1e

    .line 293
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/hyphenation/HyphenationConfig;

    move-object/from16 p1, v1

    move v0, v13

    .line 297
    :goto_a
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v1, :cond_c

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->noPrint(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v1

    if-eqz v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_c
    move/from16 v47, v2

    move/from16 v2, v37

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, -0x1

    const/high16 v48, -0x40800000    # -1.0f

    const/high16 v49, -0x40800000    # -1.0f

    const/16 v50, 0x0

    move-object/from16 v37, v7

    move/from16 v7, v36

    move/from16 v36, v13

    .line 301
    :goto_b
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v13, v1, :cond_55

    .line 302
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1, v13}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->noPrint(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 303
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    move/from16 v51, v2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 304
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v13, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 306
    :cond_d
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    add-int/lit8 v13, v13, 0x1

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    move/from16 v2, v51

    goto :goto_b

    :cond_e
    move/from16 v51, v2

    .line 311
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v2, 0x1

    add-int/lit8 v52, v1, -0x1

    move/from16 v53, v7

    move/from16 v57, v10

    move-object/from16 v54, v11

    move v11, v13

    move-object/from16 v56, v37

    move/from16 v10, v46

    move/from16 v58, v48

    move/from16 v59, v49

    move-object/from16 v60, v50

    const/4 v2, -0x1

    const/4 v7, 0x0

    const/16 v37, 0x0

    const/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v55, 0x0

    const/16 v61, 0x0

    const/16 v62, -0x1

    .line 323
    :goto_c
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v11, v1, :cond_36

    .line 324
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1, v11}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/io/util/TextUtil;->isNewLine(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 326
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1, v11}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    add-int/lit8 v2, v11, 0x1

    if-eq v11, v0, :cond_f

    move/from16 v63, v0

    const/16 v40, 0x1

    goto :goto_d

    :cond_f
    move/from16 v63, v0

    const/16 v44, 0x1

    .line 336
    :goto_d
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    move-object/from16 v39, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 337
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v13, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 340
    :cond_10
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-static {v0, v13}, Lcom/itextpdf/io/util/TextUtil;->isCarriageReturnFollowedByLineFeed(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v0

    if-eqz v0, :cond_11

    add-int/lit8 v13, v13, 0x1

    .line 346
    :cond_11
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    move/from16 v41, v0

    iget v0, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    move-object/from16 v78, v5

    move-object/from16 v1, v22

    move-object/from16 v72, v23

    move-object/from16 v76, v24

    move-object/from16 v74, v26

    move-object/from16 v60, v39

    move/from16 v0, v46

    move/from16 v71, v51

    move-object/from16 v11, v54

    move/from16 v68, v63

    const/16 v39, 0x1

    move v5, v3

    move/from16 v23, v9

    move/from16 v46, v10

    move/from16 v24, v12

    move v3, v13

    move/from16 v22, v14

    move-object/from16 v26, v15

    move/from16 v9, v49

    move/from16 v14, v61

    move-object/from16 v10, p1

    move v15, v2

    move-object v13, v4

    move v12, v7

    move/from16 v4, v33

    move/from16 v7, v62

    const/16 p1, 0x1

    :goto_e
    const/4 v2, -0x1

    goto/16 :goto_21

    :cond_12
    move/from16 v63, v0

    .line 350
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v0, v11}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v64

    .line 351
    invoke-static/range {v64 .. v64}, Lcom/itextpdf/layout/renderer/TextRenderer;->noPrint(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-eqz v0, :cond_18

    add-int/lit8 v0, v11, 0x1

    .line 352
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v1, :cond_13

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 353
    invoke-interface {v4, v1, v0}, Lcom/itextpdf/layout/splitting/ISplitCharacters;->isSplitCharacter(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 354
    invoke-virtual {v1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/io/util/TextUtil;->isSpaceOrWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_f

    :cond_13
    const/4 v1, 0x0

    :goto_f
    move/from16 v65, v3

    const/4 v3, -0x1

    if-eqz v1, :cond_14

    if-ne v2, v3, :cond_14

    const/16 v42, 0x1

    .line 358
    :cond_14
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-eq v0, v3, :cond_16

    if-nez v1, :cond_16

    iget v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    if-lt v0, v1, :cond_15

    goto :goto_10

    :cond_15
    move-object/from16 v78, v5

    move v0, v10

    move/from16 v19, v13

    move-object/from16 v1, v22

    move-object/from16 v72, v23

    move-object/from16 v76, v24

    move-object/from16 v74, v26

    move/from16 v71, v51

    move/from16 v68, v63

    move/from16 v5, v65

    move-object/from16 v10, p1

    move-object v13, v4

    move/from16 v23, v7

    move/from16 v24, v12

    move/from16 v22, v14

    move-object/from16 v26, v15

    move/from16 v4, v33

    move-object/from16 v7, v54

    goto/16 :goto_1e

    .line 360
    :cond_16
    :goto_10
    iget v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    if-lt v0, v1, :cond_17

    move-object/from16 v78, v5

    move v3, v13

    move-object/from16 v1, v22

    move-object/from16 v72, v23

    move-object/from16 v76, v24

    move-object/from16 v74, v26

    move/from16 v0, v46

    move/from16 v71, v51

    move-object/from16 v11, v54

    move/from16 v68, v63

    move/from16 v5, v65

    const/4 v2, -0x1

    move/from16 v23, v9

    move/from16 v46, v10

    move/from16 v24, v12

    move/from16 v22, v14

    move-object/from16 v26, v15

    move/from16 v9, v49

    move/from16 v14, v61

    move-object/from16 v10, p1

    move-object v13, v4

    move v12, v7

    move v15, v3

    move/from16 v4, v33

    move/from16 p1, v42

    move/from16 v7, v62

    goto/16 :goto_21

    :cond_17
    move-object/from16 v78, v5

    move/from16 v52, v11

    move v3, v13

    move-object/from16 v1, v22

    move-object/from16 v72, v23

    move-object/from16 v76, v24

    move-object/from16 v74, v26

    move/from16 v0, v46

    move/from16 v71, v51

    move-object/from16 v11, v54

    move/from16 v68, v63

    move/from16 v5, v65

    move-object v13, v4

    move/from16 v23, v9

    move/from16 v46, v10

    move/from16 v24, v12

    move/from16 v22, v14

    move-object/from16 v26, v15

    move/from16 v4, v33

    move/from16 v9, v49

    move/from16 v14, v61

    move-object/from16 v10, p1

    move v15, v2

    move v12, v7

    move/from16 p1, v42

    move/from16 v7, v62

    goto/16 :goto_e

    :cond_18
    move/from16 v65, v3

    if-eqz v56, :cond_19

    .line 370
    invoke-virtual/range {v56 .. v56}, Ljava/lang/Character;->charValue()C

    move-result v0

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1, v11}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v1

    if-ne v0, v1, :cond_19

    add-float v0, v45, v37

    .line 371
    iput v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->tabAnchorCharacterPosition:F

    const/16 v56, 0x0

    .line 375
    :cond_19
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v3

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v66

    move/from16 v19, v13

    move/from16 v1, v63

    const/4 v13, 0x3

    move-object/from16 v0, p0

    move-object/from16 v67, p1

    move/from16 v68, v1

    move-object/from16 v69, v22

    move/from16 v13, v62

    move/from16 v22, v7

    const/4 v7, -0x1

    move-object/from16 v1, v64

    move/from16 v70, v2

    move-object/from16 v72, v23

    move/from16 v73, v33

    move/from16 v71, v51

    move v2, v3

    move-object/from16 v74, v26

    move/from16 v75, v65

    move-object/from16 v3, v66

    move-object/from16 v77, v4

    move-object/from16 v76, v24

    move-object/from16 v4, v28

    move-object/from16 v78, v5

    move-object/from16 v5, v29

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->getCharWidth(Lcom/itextpdf/io/font/otf/Glyph;FLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)F

    move-result v0

    div-float v0, v0, v34

    if-eq v10, v7, :cond_1a

    .line 376
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v1, v10}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getXAdvance()S

    move-result v1

    int-to-float v1, v1

    goto :goto_11

    :cond_1a
    const/4 v1, 0x0

    :goto_11
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1b

    .line 378
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v6, v1, v2, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->scaleXAdvance(FFLjava/lang/Float;)F

    move-result v1

    div-float v1, v1, v34

    :cond_1b
    add-float v2, v37, v0

    add-float/2addr v2, v1

    move/from16 v5, v75

    add-float/2addr v2, v5

    move/from16 v4, v73

    add-float/2addr v2, v4

    .line 383
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    sub-float v3, v3, v45

    const v23, 0x38d1b717    # 1.0E-4f

    add-float v3, v3, v23

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_12

    :cond_1c
    const/4 v2, 0x0

    :goto_12
    if-nez v9, :cond_1d

    if-eqz v2, :cond_1d

    move/from16 v3, v70

    if-eq v3, v7, :cond_1e

    goto :goto_13

    :cond_1d
    move/from16 v3, v70

    .line 384
    :goto_13
    iget v7, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptFirstNotFittingIndex:I

    if-ne v11, v7, :cond_23

    .line 387
    :cond_1e
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v3, v11}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/io/util/TextUtil;->isSpaceOrWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v3

    .line 388
    iget-object v7, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    move/from16 v23, v10

    const/16 v10, 0x67

    invoke-interface {v7, v10}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    if-nez v3, :cond_20

    if-eqz v14, :cond_1f

    .line 389
    invoke-static {v7}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v7

    if-nez v7, :cond_1f

    goto :goto_14

    :cond_1f
    move v3, v11

    move-object/from16 v10, v67

    move/from16 v7, v68

    goto :goto_16

    :cond_20
    :goto_14
    if-eqz v3, :cond_21

    move-object/from16 v60, v64

    :cond_21
    move/from16 v7, v68

    if-ne v11, v7, :cond_22

    add-int/lit8 v11, v11, 0x1

    move/from16 v68, v7

    move/from16 v24, v12

    move v7, v13

    move-object/from16 v26, v15

    move/from16 v3, v19

    move/from16 v12, v22

    move/from16 v0, v46

    move-object/from16 v10, v67

    move-object/from16 v1, v69

    move-object/from16 v13, v77

    const/16 p1, 0x1

    const/4 v2, -0x1

    const/16 v44, 0x1

    move v15, v11

    move/from16 v22, v14

    move/from16 v46, v23

    move-object/from16 v11, v54

    move/from16 v14, v61

    goto/16 :goto_20

    :cond_22
    move v3, v11

    goto :goto_15

    :cond_23
    move/from16 v7, v68

    :goto_15
    move-object/from16 v10, v67

    :goto_16
    move/from16 v68, v7

    if-eqz v10, :cond_26

    .line 403
    iget-object v7, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-static {v7, v11}, Lcom/itextpdf/layout/renderer/TextRenderer;->glyphBelongsToNonBreakingHyphenRelatedChunk(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v7, -0x1

    if-ne v7, v13, :cond_24

    move v13, v11

    move/from16 v50, v22

    move/from16 v55, v61

    :cond_24
    add-float v23, v0, v1

    add-float v23, v48, v23

    move/from16 v48, v23

    goto :goto_17

    :cond_25
    const/4 v7, -0x1

    move v13, v7

    const/16 v48, 0x0

    goto :goto_17

    :cond_26
    const/4 v7, -0x1

    :goto_17
    if-eq v3, v7, :cond_27

    .line 415
    invoke-static {v15}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v7

    if-nez v7, :cond_28

    :cond_27
    add-float v7, v0, v1

    add-float v46, v46, v7

    :cond_28
    add-float v7, v0, v1

    add-float v37, v37, v7

    move/from16 v7, v22

    .line 420
    invoke-static {v7, v12}, Ljava/lang/Math;->max(FF)F

    move-result v7

    move/from16 p1, v13

    move/from16 v22, v14

    move/from16 v13, v57

    move/from16 v14, v61

    .line 421
    invoke-static {v14, v13}, Ljava/lang/Math;->min(FF)F

    move-result v14

    sub-float v23, v7, v14

    .line 422
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v24

    mul-float v23, v23, v24

    div-float v23, v23, v34

    add-float v49, v23, v27

    if-nez v9, :cond_2b

    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    cmpl-float v23, v2, v48

    if-eqz v23, :cond_29

    add-int/lit8 v2, v11, 0x1

    move/from16 v23, v7

    .line 426
    iget-object v7, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v7, v7, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-eq v2, v7, :cond_2a

    iget-object v7, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 427
    invoke-static {v7, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->glyphBelongsToNonBreakingHyphenRelatedChunk(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_18

    :cond_29
    move/from16 v23, v7

    .line 428
    :cond_2a
    :goto_18
    invoke-static {v15}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move/from16 v7, p1

    move/from16 v24, v12

    move/from16 v57, v13

    move-object/from16 v26, v15

    move/from16 v12, v23

    move/from16 p1, v42

    move/from16 v0, v46

    move-object/from16 v1, v69

    move-object/from16 v13, v77

    const/4 v2, -0x1

    move v15, v3

    move/from16 v23, v9

    move/from16 v46, v11

    move/from16 v3, v19

    move/from16 v9, v49

    move-object/from16 v11, v54

    goto/16 :goto_21

    :cond_2b
    move/from16 v23, v7

    .line 435
    :cond_2c
    sget-object v2, Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;->ANYWHERE:Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;

    move-object/from16 v7, v54

    move/from16 v24, v12

    move/from16 v57, v13

    if-ne v2, v7, :cond_2e

    float-to-double v12, v0

    float-to-double v0, v1

    add-double/2addr v12, v0

    float-to-double v0, v5

    add-double/2addr v0, v12

    move v2, v14

    move-object/from16 v26, v15

    float-to-double v14, v4

    add-double/2addr v0, v14

    double-to-float v0, v0

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v1, v58, v15

    if-nez v1, :cond_2d

    move/from16 v58, v0

    goto :goto_19

    :cond_2d
    move/from16 v59, v0

    :goto_19
    move-object/from16 v1, v69

    .line 443
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    double-to-float v0, v12

    .line 444
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    goto :goto_1a

    :cond_2e
    move v2, v14

    move-object/from16 v26, v15

    move-object/from16 v1, v69

    const/high16 v15, -0x40800000    # -1.0f

    :goto_1a
    const/4 v0, 0x1

    .line 447
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v12

    if-eqz v12, :cond_2f

    iget-object v12, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    add-int/lit8 v13, v11, 0x1

    .line 448
    invoke-static {v12, v13, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->findPossibleBreaksSplitPosition(Ljava/util/List;IZ)I

    move-result v12

    if-ltz v12, :cond_2f

    const/4 v0, 0x1

    goto :goto_1b

    :cond_2f
    const/4 v0, 0x0

    .line 450
    :goto_1b
    iget-object v12, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    move-object/from16 v13, v77

    invoke-interface {v13, v12, v11}, Lcom/itextpdf/layout/splitting/ISplitCharacters;->isSplitCharacter(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v12

    if-nez v12, :cond_31

    add-int/lit8 v12, v11, 0x1

    iget-object v14, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v14, v14, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v12, v14, :cond_30

    iget-object v14, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 452
    invoke-interface {v13, v14, v12}, Lcom/itextpdf/layout/splitting/ISplitCharacters;->isSplitCharacter(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result v14

    if-eqz v14, :cond_30

    iget-object v14, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 453
    invoke-virtual {v14, v12}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/io/util/TextUtil;->isSpaceOrWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v12

    if-eqz v12, :cond_30

    goto :goto_1c

    :cond_30
    const/4 v12, 0x0

    goto :goto_1d

    :cond_31
    :goto_1c
    const/4 v12, 0x1

    :goto_1d
    if-eqz v12, :cond_32

    const/4 v14, -0x1

    if-ne v3, v14, :cond_32

    const/16 v42, 0x1

    :cond_32
    add-int/lit8 v14, v11, 0x1

    .line 457
    iget-object v15, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v15, v15, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-eq v14, v15, :cond_34

    if-nez v12, :cond_34

    if-nez v0, :cond_34

    iget v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    if-lt v14, v0, :cond_33

    goto :goto_1f

    :cond_33
    move/from16 v62, p1

    move/from16 v61, v2

    move v2, v3

    move v0, v11

    :goto_1e
    add-int/lit8 v11, v11, 0x1

    move/from16 v33, v4

    move v3, v5

    move-object/from16 v54, v7

    move-object/from16 p1, v10

    move-object v4, v13

    move/from16 v13, v19

    move/from16 v14, v22

    move/from16 v7, v23

    move/from16 v12, v24

    move-object/from16 v15, v26

    move/from16 v51, v71

    move-object/from16 v23, v72

    move-object/from16 v26, v74

    move-object/from16 v24, v76

    move-object/from16 v5, v78

    move v10, v0

    move-object/from16 v22, v1

    move/from16 v0, v68

    goto/16 :goto_c

    .line 461
    :cond_34
    :goto_1f
    iget v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    if-lt v14, v0, :cond_35

    if-nez v12, :cond_35

    move/from16 v3, v19

    :cond_35
    move v14, v2

    move v15, v3

    move/from16 v52, v11

    move/from16 v3, v19

    move/from16 v12, v23

    move/from16 v0, v46

    const/4 v2, -0x1

    move/from16 v23, v9

    move/from16 v46, v52

    move/from16 v9, v49

    move-object v11, v7

    move/from16 v7, p1

    move/from16 p1, v42

    goto :goto_21

    :cond_36
    move/from16 v68, v0

    move-object/from16 v78, v5

    move/from16 v19, v13

    move-object/from16 v1, v22

    move-object/from16 v72, v23

    move-object/from16 v76, v24

    move-object/from16 v74, v26

    move/from16 v71, v51

    move-object/from16 v11, v54

    move v5, v3

    move-object v13, v4

    move/from16 v23, v10

    move/from16 v24, v12

    move/from16 v22, v14

    move-object/from16 v26, v15

    move/from16 v4, v33

    move/from16 v14, v61

    move-object/from16 v10, p1

    move v3, v2

    move v15, v3

    move v12, v7

    move/from16 v3, v19

    move/from16 p1, v42

    move/from16 v0, v46

    move/from16 v7, v62

    const/4 v2, -0x1

    move/from16 v46, v23

    :goto_20
    move/from16 v23, v9

    move/from16 v9, v49

    :goto_21
    if-ne v15, v2, :cond_3a

    .line 472
    iget-object v7, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v7, v7, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-ne v7, v2, :cond_37

    .line 473
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 475
    :cond_37
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    add-int/lit8 v7, v52, 0x1

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    move/from16 v2, v53

    .line 476
    invoke-static {v2, v12}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move/from16 v3, v71

    .line 477
    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move/from16 v12, v47

    .line 478
    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v47

    add-float v45, v45, v37

    .line 481
    sget-object v9, Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;->ANYWHERE:Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;

    if-ne v9, v11, :cond_38

    float-to-double v14, v5

    move v12, v2

    move/from16 v19, v3

    float-to-double v2, v4

    add-double/2addr v14, v2

    double-to-float v0, v14

    .line 482
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    :goto_22
    move/from16 v48, v58

    move/from16 v49, v59

    goto :goto_24

    :cond_38
    move v12, v2

    move/from16 v19, v3

    float-to-double v2, v0

    float-to-double v14, v5

    add-double/2addr v2, v14

    float-to-double v14, v4

    add-double/2addr v2, v14

    double-to-float v0, v2

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v58, v2

    if-nez v3, :cond_39

    move/from16 v58, v0

    goto :goto_23

    :cond_39
    move/from16 v59, v0

    .line 492
    :goto_23
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 493
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    goto :goto_22

    :goto_24
    move/from16 v42, p1

    move/from16 v33, v4

    move v3, v5

    move-object/from16 p1, v10

    move-object v4, v13

    move/from16 v2, v19

    move/from16 v14, v22

    move/from16 v9, v23

    move-object/from16 v15, v26

    move-object/from16 v37, v56

    move/from16 v10, v57

    move-object/from16 v50, v60

    move/from16 v0, v68

    move-object/from16 v23, v72

    move-object/from16 v26, v74

    move-object/from16 v5, v78

    const/16 v43, 0x1

    move-object/from16 v22, v1

    move v13, v7

    move v7, v12

    move/from16 v12, v24

    move-object/from16 v24, v76

    goto/16 :goto_b

    :cond_3a
    move-object/from16 v54, v11

    move/from16 v11, v47

    move/from16 v2, v53

    move/from16 v79, v71

    .line 498
    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v19

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v20

    cmpl-float v19, v19, v20

    if-lez v19, :cond_3c

    invoke-static/range {v38 .. v38}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v19

    if-eqz v19, :cond_3c

    .line 499
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v1, v74

    const/4 v2, 0x1

    invoke-virtual {v6, v0, v1, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 500
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v1, v76

    invoke-virtual {v6, v0, v1, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 501
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v1, v78

    invoke-virtual {v6, v0, v1, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 503
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3b

    .line 504
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v3, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 506
    :cond_3b
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    move/from16 v0, v36

    .line 508
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->split(I)[Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v0

    .line 510
    invoke-virtual {v6, v13}, Lcom/itextpdf/layout/renderer/TextRenderer;->isStartsWithSplitCharWhiteSpaceAndEndsWithSplitChar(Lcom/itextpdf/layout/splitting/ISplitCharacters;)[Z

    move-result-object v7

    .line 511
    new-instance v8, Lcom/itextpdf/layout/layout/TextLayoutResult;

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v9, 0x0

    aget-object v3, v0, v9

    const/4 v1, 0x1

    aget-object v4, v0, v1

    const/4 v1, 0x3

    move-object v0, v8

    move/from16 v10, p1

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 513
    invoke-virtual {v8, v10}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setContainsPossibleBreak(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v0

    aget-boolean v1, v7, v9

    .line 514
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setStartsWithSplitCharacterWhiteSpace(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v1, v7, v1

    .line 515
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setEndsWithSplitCharacter(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v0

    return-object v0

    :cond_3c
    move/from16 v83, p1

    move-object/from16 v82, v74

    move-object/from16 v81, v76

    move-object/from16 v80, v78

    if-eqz v10, :cond_45

    move/from16 v19, v0

    .line 522
    iget v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    move-object/from16 v69, v1

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_44

    const/4 v0, -0x1

    if-ne v0, v7, :cond_42

    .line 524
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    move/from16 v53, v2

    add-int/lit8 v2, v15, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v6, v0, v3, v1, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getWordBoundsForHyphenation(Lcom/itextpdf/io/font/otf/GlyphLine;III)[I

    move-result-object v20

    if-eqz v20, :cond_41

    .line 526
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    const/4 v1, 0x0

    aget v2, v20, v1

    move/from16 v73, v4

    const/4 v1, 0x1

    aget v4, v20, v1

    invoke-virtual {v0, v2, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->toUnicodeString(II)Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-virtual {v10, v0}, Lcom/itextpdf/layout/hyphenation/HyphenationConfig;->hyphenate(Ljava/lang/String;)Lcom/itextpdf/layout/hyphenation/Hyphenation;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 529
    invoke-virtual {v4}, Lcom/itextpdf/layout/hyphenation/Hyphenation;->length()I

    move-result v0

    sub-int/2addr v0, v1

    move v2, v0

    :goto_25
    if-ltz v2, :cond_40

    .line 530
    invoke-virtual {v4, v2}, Lcom/itextpdf/layout/hyphenation/Hyphenation;->getPreHyphenText(I)Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-virtual {v4, v2}, Lcom/itextpdf/layout/hyphenation/Hyphenation;->getPostHyphenText(I)Ljava/lang/String;

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p1, v2

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    move-object/from16 v22, v4

    const/16 v18, 0x0

    aget v4, v20, v18

    .line 533
    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->toUnicodeString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lcom/itextpdf/layout/hyphenation/HyphenationConfig;->getHyphenSymbol()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->convertToGlyphLine(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v4

    move/from16 v33, v15

    move/from16 v15, v19

    move-object/from16 v0, p0

    move-object/from16 v19, v1

    move-object/from16 v77, v13

    move-object/from16 v13, v69

    move-object v1, v2

    move/from16 v36, p1

    move/from16 p1, v15

    move/from16 v15, v53

    move v2, v4

    move v4, v3

    move/from16 v3, v30

    move/from16 v42, v7

    move/from16 v7, v73

    move v13, v4

    move-object/from16 v4, v28

    move/from16 v47, v9

    move v9, v5

    move-object/from16 v5, v29

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->getGlyphLineWidth(Lcom/itextpdf/io/font/otf/GlyphLine;FFLjava/lang/Float;Ljava/lang/Float;)F

    move-result v0

    add-float v1, v45, v0

    add-float v3, v1, v9

    add-float/2addr v3, v7

    .line 534
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_3f

    .line 537
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3d

    .line 538
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v13, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 540
    :cond_3d
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v4, 0x0

    aget v5, v20, v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 541
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget-object v4, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->copy(II)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v2

    .line 542
    iget-object v3, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v10}, Lcom/itextpdf/layout/hyphenation/HyphenationConfig;->getHyphenSymbol()C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->add(Lcom/itextpdf/io/font/otf/Glyph;)V

    .line 543
    iget v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 544
    iput-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 548
    invoke-static {v15, v12}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move/from16 v3, v79

    .line 549
    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move/from16 v4, v47

    .line 550
    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 553
    sget-object v5, Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;->ANYWHERE:Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;

    move-object/from16 v10, v54

    if-ne v5, v10, :cond_3e

    move v5, v1

    float-to-double v0, v9

    move v15, v2

    move/from16 v22, v3

    float-to-double v2, v7

    add-double/2addr v0, v2

    double-to-float v0, v0

    move-object/from16 v1, v69

    .line 554
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    move-object/from16 v54, v10

    goto :goto_26

    :cond_3e
    move v5, v1

    move v15, v2

    move/from16 v22, v3

    move-object/from16 v1, v69

    float-to-double v2, v0

    move-object/from16 v54, v10

    float-to-double v10, v9

    add-double/2addr v2, v10

    float-to-double v10, v7

    add-double/2addr v2, v10

    double-to-float v0, v2

    .line 557
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 561
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    :goto_26
    const/4 v0, 0x0

    .line 566
    aget v2, v20, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    move v3, v2

    move/from16 v45, v5

    move/from16 v2, v22

    move-object/from16 v0, v54

    const/4 v5, 0x1

    goto/16 :goto_28

    :cond_3f
    move/from16 v4, v47

    move-object/from16 v0, v54

    move-object/from16 v1, v69

    move/from16 v3, v79

    add-int/lit8 v2, v36, -0x1

    move/from16 v19, p1

    move/from16 v73, v7

    move v5, v9

    move v3, v13

    move/from16 v53, v15

    move/from16 v15, v33

    move/from16 v7, v42

    move-object/from16 v13, v77

    move v9, v4

    move-object/from16 v4, v22

    goto/16 :goto_25

    :cond_40
    move/from16 v42, v7

    move v4, v9

    move-object/from16 v77, v13

    move/from16 v33, v15

    move/from16 p1, v19

    move/from16 v15, v53

    move-object/from16 v0, v54

    move-object/from16 v1, v69

    move/from16 v7, v73

    move v13, v3

    move v9, v5

    move/from16 v3, v79

    goto :goto_27

    :cond_41
    move/from16 v42, v7

    move-object/from16 v77, v13

    move/from16 v33, v15

    move/from16 p1, v19

    move/from16 v15, v53

    move-object/from16 v0, v54

    move-object/from16 v1, v69

    move v13, v3

    move v7, v4

    move v4, v9

    move/from16 v3, v79

    move v9, v5

    :goto_27
    move v2, v3

    move v3, v13

    const/4 v5, 0x0

    move v13, v11

    :goto_28
    move v10, v5

    move v11, v13

    move/from16 v5, v42

    move v13, v3

    move v3, v2

    const/4 v2, 0x1

    goto :goto_2b

    :cond_42
    move v15, v2

    move/from16 v42, v7

    move-object/from16 v77, v13

    move/from16 p1, v19

    move-object/from16 v0, v54

    move-object/from16 v1, v69

    move v13, v3

    move v7, v4

    move v4, v9

    move/from16 v3, v79

    move v9, v5

    .line 573
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    move/from16 v5, v42

    if-ne v2, v5, :cond_43

    const/4 v2, 0x1

    add-int/lit8 v10, v46, 0x1

    move/from16 v33, v10

    goto :goto_2a

    :cond_43
    const/4 v2, 0x1

    sub-float v37, v37, v48

    move/from16 v33, v5

    move/from16 v12, v50

    move/from16 v14, v55

    goto :goto_2a

    :cond_44
    move-object/from16 v77, v13

    move/from16 v33, v15

    move/from16 p1, v19

    move-object/from16 v0, v54

    move-object/from16 v1, v69

    goto :goto_29

    :cond_45
    move/from16 p1, v0

    move-object/from16 v77, v13

    move/from16 v33, v15

    move-object/from16 v0, v54

    :goto_29
    move v15, v2

    move v13, v3

    move/from16 v3, v79

    const/4 v2, 0x1

    move/from16 v84, v7

    move v7, v4

    move v4, v9

    move v9, v5

    move/from16 v5, v84

    :goto_2a
    const/4 v10, 0x0

    .line 585
    :goto_2b
    invoke-virtual {v6, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v19

    if-eqz v19, :cond_46

    if-nez v39, :cond_46

    .line 586
    invoke-static/range {v26 .. v26}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    goto :goto_2c

    :cond_46
    const/4 v2, 0x0

    .line 587
    :goto_2c
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v19

    cmpl-float v19, v37, v19

    if-lez v19, :cond_47

    if-nez v43, :cond_47

    if-eqz v10, :cond_49

    :cond_47
    if-nez v44, :cond_49

    const/4 v10, -0x1

    if-ne v10, v5, :cond_4a

    if-eqz v2, :cond_48

    goto :goto_2d

    :cond_48
    move v2, v11

    move v12, v15

    move/from16 v48, v58

    move/from16 v49, v59

    const/4 v10, 0x0

    goto/16 :goto_34

    :cond_49
    const/4 v10, -0x1

    .line 594
    :cond_4a
    :goto_2d
    iget-object v5, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v5, v5, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-ne v5, v10, :cond_4b

    .line 595
    iget-object v5, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput v13, v5, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    :cond_4b
    if-nez v41, :cond_4e

    if-nez v44, :cond_4d

    .line 598
    invoke-static/range {v26 .. v26}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v5

    if-nez v5, :cond_4d

    if-eqz v2, :cond_4c

    goto :goto_2e

    :cond_4c
    const/4 v2, 0x1

    add-int/lit8 v52, v52, 0x1

    move/from16 v13, v52

    goto :goto_2f

    :cond_4d
    :goto_2e
    move/from16 v13, v33

    .line 600
    :cond_4e
    :goto_2f
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v5, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-nez v44, :cond_4f

    .line 601
    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-eq v2, v13, :cond_4f

    const/4 v10, 0x1

    goto :goto_30

    :cond_4f
    const/4 v10, 0x0

    :goto_30
    if-nez v10, :cond_51

    if-nez v44, :cond_50

    .line 602
    invoke-static/range {v26 .. v26}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v2

    if-nez v2, :cond_50

    goto :goto_31

    :cond_50
    sub-float v12, v24, v57

    .line 626
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v0

    mul-float/2addr v12, v0

    div-float v12, v12, v34

    add-float v12, v12, v27

    .line 627
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->getCharWidth(Lcom/itextpdf/io/font/otf/Glyph;FLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)F

    move-result v0

    div-float v0, v0, v34

    add-float v45, v45, v0

    move v2, v12

    move/from16 v12, v24

    goto :goto_32

    .line 603
    :cond_51
    :goto_31
    invoke-static {v15, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 604
    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    .line 605
    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float v45, v45, p1

    .line 607
    sget-object v3, Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;->ANYWHERE:Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;

    if-ne v3, v0, :cond_52

    float-to-double v3, v9

    float-to-double v14, v7

    add-double/2addr v3, v14

    double-to-float v0, v3

    .line 608
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    :goto_32
    move/from16 v48, v58

    move/from16 v49, v59

    goto :goto_34

    :cond_52
    move/from16 v0, p1

    float-to-double v3, v0

    float-to-double v14, v9

    add-double/2addr v3, v14

    float-to-double v14, v7

    add-double/2addr v3, v14

    double-to-float v0, v3

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v58, v3

    if-nez v4, :cond_53

    move/from16 v58, v0

    goto :goto_33

    :cond_53
    move/from16 v59, v0

    .line 619
    :goto_33
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    .line 620
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    goto :goto_32

    .line 630
    :goto_34
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-gt v0, v1, :cond_54

    move-object/from16 v0, v77

    .line 631
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->isStartsWithSplitCharWhiteSpaceAndEndsWithSplitChar(Lcom/itextpdf/layout/splitting/ISplitCharacters;)[Z

    move-result-object v7

    .line 632
    new-instance v8, Lcom/itextpdf/layout/layout/TextLayoutResult;

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v3, 0x0

    const/4 v1, 0x3

    move-object v0, v8

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    move/from16 v1, v83

    .line 634
    invoke-virtual {v8, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setContainsPossibleBreak(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v1, v7, v1

    .line 635
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setStartsWithSplitCharacterWhiteSpace(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v1, v7, v1

    .line 636
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setEndsWithSplitCharacter(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v0

    return-object v0

    :cond_54
    move-object/from16 v0, v77

    move/from16 v1, v83

    .line 638
    new-instance v3, Lcom/itextpdf/layout/layout/TextLayoutResult;

    iget-object v4, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v5, 0x2

    const/4 v14, 0x0

    invoke-direct {v3, v5, v4, v14, v14}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 640
    invoke-virtual {v3, v10}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setWordHasBeenSplit(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v3

    .line 641
    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setContainsPossibleBreak(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v3

    move v10, v1

    move v15, v12

    move v1, v13

    move/from16 v4, v45

    move-object/from16 v5, v60

    move v13, v2

    move/from16 v2, v39

    goto :goto_35

    :cond_55
    move-object v0, v4

    move-object/from16 v80, v5

    move v15, v7

    move/from16 v19, v13

    move-object/from16 v72, v23

    move-object/from16 v81, v24

    move-object/from16 v82, v26

    move/from16 v7, v33

    move/from16 v11, v47

    const/4 v14, 0x0

    move/from16 v23, v9

    move v9, v3

    move v13, v11

    move-object v3, v14

    move/from16 v1, v19

    move/from16 v2, v39

    move/from16 v10, v42

    move/from16 v4, v45

    move-object/from16 v5, v50

    .line 650
    :goto_35
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v11

    cmpl-float v11, v13, v11

    if-lez v11, :cond_57

    .line 651
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v12, 0x1a

    invoke-virtual {v6, v12}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_56

    invoke-static/range {v38 .. v38}, Lcom/itextpdf/layout/renderer/TextRenderer;->isOverflowFit(Lcom/itextpdf/layout/properties/OverflowPropertyValue;)Z

    move-result v11

    if-eqz v11, :cond_56

    .line 652
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    move-object/from16 v11, v82

    const/4 v2, 0x1

    invoke-virtual {v6, v1, v11, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 653
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    move-object/from16 v12, v81

    invoke-virtual {v6, v1, v12, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 654
    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    move-object/from16 v3, v80

    invoke-virtual {v6, v1, v3, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 655
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->isStartsWithSplitCharWhiteSpaceAndEndsWithSplitChar(Lcom/itextpdf/layout/splitting/ISplitCharacters;)[Z

    move-result-object v7

    .line 656
    new-instance v8, Lcom/itextpdf/layout/layout/TextLayoutResult;

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v3, 0x0

    const/4 v1, 0x3

    move-object v0, v8

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 658
    invoke-virtual {v8, v10}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setContainsPossibleBreak(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v1, v7, v1

    .line 659
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setStartsWithSplitCharacterWhiteSpace(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v1, v7, v1

    .line 660
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setEndsWithSplitCharacter(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v0

    return-object v0

    :cond_56
    move-object/from16 v14, v80

    move-object/from16 v12, v81

    move-object/from16 v11, v82

    const/16 v19, 0x1

    goto :goto_36

    :cond_57
    move-object/from16 v14, v80

    move-object/from16 v12, v81

    move-object/from16 v11, v82

    const/16 v19, 0x0

    .line 666
    :goto_36
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v20

    mul-float v15, v15, v20

    div-float v15, v15, v34

    iput v15, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    .line 668
    iget-object v15, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/itextpdf/kernel/geom/Rectangle;->moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 669
    iget-object v15, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    move-object/from16 v77, v0

    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    add-float/2addr v0, v13

    invoke-virtual {v15, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 671
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v15, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v15}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v15

    invoke-static {v15, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 672
    invoke-virtual/range {v35 .. v35}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    sub-float/2addr v0, v13

    invoke-virtual {v8, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 674
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v4, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    add-float/2addr v4, v9

    add-float/2addr v4, v7

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 676
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v6, v0, v11, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyPaddings(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 677
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v6, v0, v12, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 678
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v6, v0, v14, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/properties/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 680
    invoke-direct {v6, v11, v12, v14}, Lcom/itextpdf/layout/renderer/TextRenderer;->increaseYLineOffset([Lcom/itextpdf/layout/properties/UnitValue;[Lcom/itextpdf/layout/borders/Border;[Lcom/itextpdf/layout/properties/UnitValue;)V

    if-nez v3, :cond_59

    .line 683
    new-instance v0, Lcom/itextpdf/layout/layout/TextLayoutResult;

    iget-object v1, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    if-eqz v19, :cond_58

    move-object/from16 v29, v6

    goto :goto_37

    :cond_58
    const/16 v29, 0x0

    :goto_37
    const/16 v25, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v24, v0

    move-object/from16 v26, v1

    invoke-direct/range {v24 .. v29}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 685
    invoke-virtual {v0, v10}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setContainsPossibleBreak(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v3

    move-object/from16 v0, v16

    const/4 v1, 0x1

    goto :goto_3b

    :cond_59
    if-nez v40, :cond_5b

    if-eqz v41, :cond_5a

    goto :goto_38

    .line 692
    :cond_5a
    invoke-virtual {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->split(I)[Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v0

    goto :goto_39

    .line 690
    :cond_5b
    :goto_38
    invoke-direct {v6, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->splitIgnoreFirstNewLine(I)[Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v0

    .line 694
    :goto_39
    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setSplitForcedByNewline(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    const/4 v1, 0x0

    .line 695
    aget-object v2, v0, v1

    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setSplitRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    if-eqz v5, :cond_5c

    .line 697
    aget-object v2, v0, v1

    invoke-direct {v2, v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->saveWordBreakIfNotYetSaved(Lcom/itextpdf/io/font/otf/Glyph;)V

    :cond_5c
    const/4 v1, 0x1

    .line 701
    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    aget-object v4, v0, v1

    iget-object v4, v4, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-eq v2, v4, :cond_5d

    .line 702
    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setOverflowRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_3a

    .line 705
    :cond_5d
    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setStatus(I)V

    :goto_3a
    move-object/from16 v0, v16

    .line 709
    :goto_3b
    invoke-static {v6, v0}, Lcom/itextpdf/layout/renderer/FloatingHelper;->isRendererFloating(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/properties/FloatPropertyValue;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 710
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_5e

    .line 711
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5f

    .line 712
    iget-object v0, v6, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_5e
    move-object/from16 v1, v17

    .line 714
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5f

    .line 715
    invoke-virtual {v3}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5f
    :goto_3c
    move-object/from16 v0, v72

    .line 719
    invoke-virtual {v3, v0}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/layout/MinMaxWidthLayoutResult;

    if-nez v23, :cond_63

    const/4 v0, 0x0

    const/4 v1, 0x3

    :goto_3d
    if-ge v0, v1, :cond_60

    .line 721
    aget v2, v32, v0

    add-float v48, v48, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_60
    move/from16 v2, v48

    move/from16 v4, v49

    const/4 v0, 0x0

    :goto_3e
    if-ge v0, v1, :cond_62

    .line 724
    aget v5, v31, v0

    const/4 v7, 0x0

    cmpg-float v8, v4, v7

    if-gez v8, :cond_61

    add-float/2addr v2, v5

    goto :goto_3f

    :cond_61
    add-float/2addr v4, v5

    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 731
    :cond_62
    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setLeftMinWidth(F)Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 732
    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setRightMinWidth(F)Lcom/itextpdf/layout/layout/TextLayoutResult;

    goto :goto_40

    .line 734
    :cond_63
    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setLeftMinWidth(F)Lcom/itextpdf/layout/layout/TextLayoutResult;

    const/high16 v0, -0x40800000    # -1.0f

    .line 735
    invoke-virtual {v3, v0}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setRightMinWidth(F)Lcom/itextpdf/layout/layout/TextLayoutResult;

    :goto_40
    move-object/from16 v0, v77

    .line 737
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->isStartsWithSplitCharWhiteSpaceAndEndsWithSplitChar(Lcom/itextpdf/layout/splitting/ISplitCharacters;)[Z

    move-result-object v0

    const/4 v1, 0x0

    .line 738
    aget-boolean v1, v0, v1

    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setStartsWithSplitCharacterWhiteSpace(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    move-result-object v1

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    .line 739
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/layout/TextLayoutResult;->setEndsWithSplitCharacter(Z)Lcom/itextpdf/layout/layout/TextLayoutResult;

    return-object v3
.end method

.method public length()I
    .locals 2

    .line 1173
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method protected lineLength()I
    .locals 2

    .line 1384
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveYLineTo(F)V
    .locals 2

    .line 1133
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getYLine()F

    move-result v0

    sub-float/2addr p1, v0

    .line 1135
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method

.method removeReversedRanges()Lcom/itextpdf/layout/renderer/TextRenderer;
    .locals 1

    const/4 v0, 0x0

    .line 1265
    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->reversedRanges:Ljava/util/List;

    return-object p0
.end method

.method resolveFirstPdfFont([Ljava/lang/String;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 4

    .line 1635
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p3, p4}, Lcom/itextpdf/layout/font/FontProvider;->getStrategy(Ljava/lang/String;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelectorStrategy;

    move-result-object v0

    .line 1639
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/layout/font/FontSelectorStrategy;->endOfText()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1640
    invoke-virtual {v0}, Lcom/itextpdf/layout/font/FontSelectorStrategy;->nextGlyphs()Ljava/util/List;

    move-result-object v1

    .line 1641
    invoke-virtual {v0}, Lcom/itextpdf/layout/font/FontSelectorStrategy;->getCurrentFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v2

    .line 1642
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/font/otf/Glyph;

    .line 1643
    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/font/PdfFont;->containsGlyph(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 1648
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->resolveFirstPdfFont([Ljava/lang/String;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    return-object p1
.end method

.method protected resolveFonts(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;)Z"
        }
    .end annotation

    const/16 v0, 0x14

    .line 1529
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 1530
    instance-of v1, v0, Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_0

    .line 1531
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1

    .line 1533
    :cond_0
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_6

    const/16 v1, 0x5b

    .line 1534
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/font/FontProvider;

    const/16 v2, 0x62

    .line 1535
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/font/FontSet;

    .line 1536
    invoke-virtual {v1}, Lcom/itextpdf/layout/font/FontProvider;->getFontSet()Lcom/itextpdf/layout/font/FontSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/font/FontSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itextpdf/layout/font/FontSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1537
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FontProvider and FontSet are empty. Cannot resolve font family name (see ElementPropertyContainer#setFontFamily) without initialized FontProvider (see RootElement#setFontProvider)."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1540
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->createFontCharacteristics()Lcom/itextpdf/layout/font/FontCharacteristics;

    move-result-object v3

    .line 1541
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v4, v0, v3, v2}, Lcom/itextpdf/layout/font/FontProvider;->getStrategy(Ljava/lang/String;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelectorStrategy;

    move-result-object v0

    .line 1543
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 1546
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/layout/font/FontSelectorStrategy;->endOfText()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1547
    new-instance v1, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v0}, Lcom/itextpdf/layout/font/FontSelectorStrategy;->nextGlyphs()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;)V

    .line 1548
    invoke-virtual {v0}, Lcom/itextpdf/layout/font/FontSelectorStrategy;->getCurrentFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v2

    .line 1549
    invoke-static {v1, v2}, Lcom/itextpdf/layout/renderer/TextPreprocessingUtil;->replaceSpecialWhitespaceGlyphs(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v1

    .line 1550
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->createCopy(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v1

    .line 1551
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1544
    :cond_4
    :goto_2
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 p1, 0x1

    return p1

    .line 1556
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid FONT property value type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setIndexOfFirstCharacterToBeForcedToOverflow(I)V
    .locals 0

    .line 1359
    iput p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->indexOfFirstCharacterToBeForcedToOverflow:I

    return-void
.end method

.method protected setProcessedGlyphLineAndFont(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 0

    .line 1561
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 1562
    iput-object p2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/4 p1, 0x0

    .line 1563
    iput-boolean p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    const/4 p1, 0x0

    .line 1564
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    .line 1565
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    const/16 p1, 0x14

    .line 1566
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method setSpecialScriptFirstNotFittingIndex(I)V
    .locals 0

    .line 1351
    iput p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptFirstNotFittingIndex:I

    return-void
.end method

.method setSpecialScriptsWordBreakPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1343
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    return-void
.end method

.method public setText(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 1

    .line 1157
    new-instance v0, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    .line 1158
    invoke-static {v0, p2}, Lcom/itextpdf/layout/renderer/TextPreprocessingUtil;->replaceSpecialWhitespaceGlyphs(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object p1

    .line 1159
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProcessedGlyphLineAndFont(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1145
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->strToBeConverted:Ljava/lang/String;

    .line 1147
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->updateFontAndText()V

    return-void
.end method

.method protected split(I)[Lcom/itextpdf/layout/renderer/TextRenderer;
    .locals 7

    .line 1426
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->createSplitRenderer()Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v0

    .line 1427
    new-instance v1, Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    .line 1428
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iput v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 1429
    iput p1, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 1430
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProcessedGlyphLineAndFont(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 1431
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 1432
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 1433
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1434
    iget v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    iput v1, v0, Lcom/itextpdf/layout/renderer/TextRenderer;->yLineOffset:F

    .line 1435
    iget-boolean v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    iput-boolean v1, v0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    const/4 v1, 0x0

    .line 1436
    iput-boolean v1, v0, Lcom/itextpdf/layout/renderer/TextRenderer;->isLastRendererForModelElement:Z

    .line 1437
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 1439
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->createOverflowRenderer()Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object v2

    .line 1440
    new-instance v3, Lcom/itextpdf/io/font/otf/GlyphLine;

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v3, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    .line 1441
    iput p1, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 1442
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v4, v4, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iput v4, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 1443
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->setProcessedGlyphLineAndFont(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 1444
    iget-boolean v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    iput-boolean v3, v2, Lcom/itextpdf/layout/renderer/TextRenderer;->otfFeaturesApplied:Z

    .line 1445
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v3, v2, Lcom/itextpdf/layout/renderer/TextRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 1446
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 1448
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 1449
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1450
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    .line 1451
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    goto/16 :goto_1

    .line 1452
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 1453
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1454
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1455
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    .line 1457
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1458
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1459
    invoke-virtual {v2, p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    goto :goto_1

    .line 1461
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    invoke-static {v3, p1, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->findPossibleBreaksSplitPosition(Ljava/util/List;IZ)I

    move-result p1

    if-le p1, v5, :cond_2

    .line 1465
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    add-int/lit8 v6, p1, 0x1

    .line 1466
    invoke-interface {v3, v1, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 1465
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    goto :goto_0

    .line 1468
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1469
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    :goto_0
    add-int/2addr p1, v4

    .line 1473
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 1474
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    .line 1475
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, p1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 1474
    invoke-virtual {v2, p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    goto :goto_1

    .line 1477
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1478
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1479
    invoke-virtual {v2, p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    .line 1484
    :cond_4
    :goto_1
    filled-new-array {v0, v2}, [Lcom/itextpdf/layout/renderer/TextRenderer;

    move-result-object p1

    return-object p1
.end method

.method textContainsSpecialScriptGlyphs(Z)Z
    .locals 6

    .line 1303
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1304
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/16 p1, 0x3e

    .line 1311
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/splitting/ISplitCharacters;

    .line 1313
    instance-of p1, p1, Lcom/itextpdf/layout/splitting/BreakAllSplitCharacters;

    if-eqz p1, :cond_2

    .line 1314
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    .line 1317
    :cond_2
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget p1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    :goto_0
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge p1, v2, :cond_6

    .line 1318
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v2, p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_3

    .line 1320
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->codePointIsOfSpecialScript(I)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 1324
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v2, p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1326
    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-char v5, v2, v4

    .line 1327
    invoke-static {v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->codePointIsOfSpecialScript(I)Z

    move-result v5

    if-eqz v5, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1337
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1178
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public trimFirst()V
    .locals 4

    .line 1032
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->updateFontAndText()V

    .line 1034
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1036
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v2, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 1037
    invoke-virtual {v0, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isNewLine(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v2, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    goto :goto_0

    .line 1050
    :cond_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    const/4 v2, 0x0

    .line 1051
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-ne v0, v3, :cond_2

    .line 1052
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1055
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->specialScriptsWordBreakPoints:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method

.method trimLast()F
    .locals 13

    .line 1063
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v0, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x18

    .line 1066
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsUnitValue(I)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v2

    .line 1067
    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1068
    const-class v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 1070
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 1069
    const-string v4, "Property {0} in percents is not supported"

    invoke-static {v4, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0xf

    .line 1072
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v0

    const/16 v3, 0x4e

    .line 1073
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v9

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1074
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-virtual {p0, v4, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->getPropertyAsFloat(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 1076
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    add-int/lit8 v3, v3, -0x1

    move v12, v1

    move v11, v3

    .line 1077
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-lt v11, v3, :cond_4

    .line 1078
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v3, v11}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    .line 1079
    invoke-static {v4}, Lcom/itextpdf/io/util/TextUtil;->isWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 1082
    :cond_2
    invoke-direct {p0, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->saveWordBreakIfNotYetSaved(Lcom/itextpdf/io/font/otf/Glyph;)V

    .line 1084
    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v5

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v3, p0

    move-object v7, v0

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/itextpdf/layout/renderer/TextRenderer;->getCharWidth(Lcom/itextpdf/io/font/otf/Glyph;FLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)F

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    .line 1085
    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v5, v5, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-le v11, v5, :cond_3

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    add-int/lit8 v6, v11, -0x1

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getXAdvance()S

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v6

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/itextpdf/layout/renderer/TextRenderer;->scaleXAdvance(FFLjava/lang/Float;)F

    move-result v5

    div-float/2addr v5, v4

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    sub-float v4, v3, v5

    add-float/2addr v12, v4

    .line 1087
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v4}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v5}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    sub-float/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 1092
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    return v12
.end method
