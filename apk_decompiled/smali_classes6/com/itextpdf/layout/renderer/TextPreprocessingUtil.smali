.class public final Lcom/itextpdf/layout/renderer/TextPreprocessingUtil;
.super Ljava/lang/Object;
.source "TextPreprocessingUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static replaceSpecialWhitespaceGlyphs(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 9

    if-eqz p0, :cond_9

    .line 43
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->isFixedPitch()Z

    move-result v0

    const/16 v1, 0x20

    .line 44
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v1

    .line 47
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GlyphLine;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_9

    .line 49
    invoke-virtual {p0, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    .line 54
    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v6

    if-gtz v6, :cond_7

    .line 55
    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v6

    const/16 v7, 0x9

    const/4 v8, 0x1

    if-eq v6, v7, :cond_6

    const/16 v7, 0x2009

    if-eq v6, v7, :cond_4

    const/16 v7, 0x2002

    if-eq v6, v7, :cond_2

    const/16 v7, 0x2003

    if-eq v6, v7, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_1

    :goto_1
    move v6, v3

    goto :goto_3

    :cond_1
    rsub-int v6, v1, 0x3e8

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    rsub-int v6, v1, 0x1f4

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    rsub-int v6, v1, 0xc8

    goto :goto_3

    :cond_6
    mul-int/lit8 v6, v1, 0x3

    goto :goto_3

    :cond_7
    :goto_2
    move v6, v3

    move v8, v6

    :goto_3
    if-eqz v8, :cond_8

    .line 83
    new-instance v7, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v5

    invoke-direct {v7, p1, v5}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;I)V

    int-to-short v5, v6

    .line 85
    invoke-virtual {v7, v5}, Lcom/itextpdf/io/font/otf/Glyph;->setXAdvance(S)V

    .line 86
    invoke-virtual {p0, v4, v7}, Lcom/itextpdf/io/font/otf/GlyphLine;->set(ILcom/itextpdf/io/font/otf/Glyph;)Lcom/itextpdf/io/font/otf/Glyph;

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    return-object p0
.end method
