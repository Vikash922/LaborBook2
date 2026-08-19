.class public Lcom/itextpdf/layout/splitting/KeepAllSplitCharacters;
.super Ljava/lang/Object;
.source "KeepAllSplitCharacters.java"

# interfaces
.implements Lcom/itextpdf/layout/splitting/ISplitCharacters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isADigitChar(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object p0

    const/4 p1, 0x0

    aget-char p0, p0, p1

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public isSplitCharacter(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z
    .locals 5

    .line 34
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v0

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-nez p2, :cond_1

    if-ne v0, v2, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v4, p2, :cond_1

    add-int/2addr p2, v3

    invoke-static {p1, p2}, Lcom/itextpdf/layout/splitting/KeepAllSplitCharacters;->isADigitChar(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/16 p1, 0x20

    if-le v0, p1, :cond_2

    if-eq v0, v2, :cond_2

    const/16 p1, 0x2010

    if-eq v0, p1, :cond_2

    const/16 p1, 0x2002

    if-lt v0, p1, :cond_3

    const/16 p1, 0x200b

    if-gt v0, p1, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    return v1
.end method
