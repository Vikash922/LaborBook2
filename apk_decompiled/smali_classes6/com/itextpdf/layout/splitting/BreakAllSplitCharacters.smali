.class public Lcom/itextpdf/layout/splitting/BreakAllSplitCharacters;
.super Ljava/lang/Object;
.source "BreakAllSplitCharacters.java"

# interfaces
.implements Lcom/itextpdf/layout/splitting/ISplitCharacters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSplitCharacter(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z
    .locals 4

    .line 36
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne v0, p2, :cond_0

    return v1

    .line 40
    :cond_0
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 44
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v2

    add-int/2addr p2, v1

    .line 46
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    .line 51
    :cond_2
    invoke-static {p1}, Lcom/itextpdf/io/util/TextUtil;->isLetterOrDigit(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result p2

    .line 52
    invoke-static {p1}, Lcom/itextpdf/io/util/TextUtil;->isMark(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result p1

    const/16 v3, 0x20

    if-le v2, v3, :cond_4

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2010

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2002

    if-lt v2, v3, :cond_3

    const/16 v3, 0x200b

    if-gt v2, v3, :cond_3

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    if-eqz p1, :cond_5

    .line 59
    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isNonBreakingHyphen(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
