.class public Lcom/itextpdf/layout/splitting/DefaultSplitCharacters;
.super Ljava/lang/Object;
.source "DefaultSplitCharacters.java"

# interfaces
.implements Lcom/itextpdf/layout/splitting/ISplitCharacters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isADigitChar(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z
    .locals 0

    .line 74
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object p1

    const/4 p2, 0x0

    aget-char p1, p1, p2

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public isSplitCharacter(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z
    .locals 5

    .line 55
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 58
    :cond_0
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v0

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-nez p2, :cond_1

    if-ne v0, v2, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v4, p2, :cond_1

    add-int/2addr p2, v3

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/splitting/DefaultSplitCharacters;->isADigitChar(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/16 p1, 0x20

    if-le v0, p1, :cond_6

    if-eq v0, v2, :cond_6

    const/16 p1, 0x2010

    if-eq v0, p1, :cond_6

    const/16 p1, 0x2002

    if-lt v0, p1, :cond_2

    const/16 p1, 0x200b

    if-le v0, p1, :cond_6

    :cond_2
    const/16 p1, 0x2e80

    if-lt v0, p1, :cond_3

    const p1, 0xd7a0

    if-lt v0, p1, :cond_6

    :cond_3
    const p1, 0xf900

    if-lt v0, p1, :cond_4

    const p1, 0xfb00

    if-lt v0, p1, :cond_6

    :cond_4
    const p1, 0xfe30

    if-lt v0, p1, :cond_5

    const p1, 0xfe50

    if-lt v0, p1, :cond_6

    :cond_5
    const p1, 0xff61

    if-lt v0, p1, :cond_7

    const p1, 0xffa0

    if-ge v0, p1, :cond_7

    :cond_6
    move v1, v3

    :cond_7
    return v1
.end method
