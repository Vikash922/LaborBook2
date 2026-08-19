.class public abstract Lcom/itextpdf/io/font/FontProgram;
.super Ljava/lang/Object;
.source "FontProgram.java"


# static fields
.field public static final DEFAULT_WIDTH:I = 0x3e8

.field public static final UNITS_NORMALIZATION:I = 0x3e8


# instance fields
.field protected avgWidth:I

.field protected codeToGlyph:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;"
        }
    .end annotation
.end field

.field protected encodingScheme:Ljava/lang/String;

.field protected fontIdentification:Lcom/itextpdf/io/font/FontIdentification;

.field protected fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

.field protected fontNames:Lcom/itextpdf/io/font/FontNames;

.field protected isFontSpecific:Z

.field protected registry:Ljava/lang/String;

.field protected unicodeToGlyph:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->codeToGlyph:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->unicodeToGlyph:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/itextpdf/io/font/FontMetrics;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    .line 68
    new-instance v0, Lcom/itextpdf/io/font/FontIdentification;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontIdentification;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontIdentification:Lcom/itextpdf/io/font/FontIdentification;

    .line 76
    const-string v0, "FontSpecific"

    iput-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->encodingScheme:Ljava/lang/String;

    return-void
.end method

.method static trimFontStyle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_0
    const-string v0, ",Bold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :cond_1
    const-string v0, ",Italic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 194
    :cond_2
    const-string v0, ",BoldItalic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xb

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method


# virtual methods
.method public countOfGlyphs()I
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->codeToGlyph:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/io/font/FontProgram;->unicodeToGlyph:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected fixSpaceIssue()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->unicodeToGlyph:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/Glyph;

    if-eqz v0, :cond_0

    .line 312
    iget-object v1, p0, Lcom/itextpdf/io/font/FontProgram;->codeToGlyph:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getAvgWidth()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/itextpdf/io/font/FontProgram;->avgWidth:I

    return v0
.end method

.method public getCharBBox(I)[I
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getBbox()[I

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getFontIdentification()Lcom/itextpdf/io/font/FontIdentification;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontIdentification:Lcom/itextpdf/io/font/FontIdentification;

    return-object v0
.end method

.method public getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    return-object v0
.end method

.method public getFontNames()Lcom/itextpdf/io/font/FontNames;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    return-object v0
.end method

.method public getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/io/font/otf/Glyph;

    return-object p1
.end method

.method public getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->codeToGlyph:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/io/font/otf/Glyph;

    return-object p1
.end method

.method public getKerning(II)I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/io/font/otf/Glyph;

    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/io/font/FontProgram;->getKerning(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/font/otf/Glyph;)I

    move-result p1

    return p1
.end method

.method public abstract getKerning(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/font/otf/Glyph;)I
.end method

.method public abstract getPdfFontFlags()I
.end method

.method public getRegistry()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->registry:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth(I)I
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasKernPairs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isFontSpecific()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/itextpdf/io/font/FontProgram;->isFontSpecific:Z

    return v0
.end method

.method protected setBbox([I)V
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/itextpdf/io/font/FontMetrics;->setBbox(IIII)V

    return-void
.end method

.method protected setBold(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getMacStyle()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/FontNames;->setMacStyle(I)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontNames;->getMacStyle()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/FontNames;->setMacStyle(I)V

    :goto_0
    return-void
.end method

.method protected setCapHeight(I)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontMetrics;->setCapHeight(I)V

    return-void
.end method

.method protected setFixedPitch(Z)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontMetrics;->setIsFixedPitch(Z)V

    return-void
.end method

.method protected setFontFamily(Ljava/lang/String;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontNames;->setFamilyName(Ljava/lang/String;)V

    return-void
.end method

.method protected setFontName(Ljava/lang/String;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontNames;->setFontName(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFullName()[[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontNames;->setFullName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setFontStretch(Ljava/lang/String;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontNames;->setFontStretch(Ljava/lang/String;)V

    return-void
.end method

.method protected setFontWeight(I)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontNames;->setFontWeight(I)V

    return-void
.end method

.method protected setItalicAngle(I)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontMetrics;->setItalicAngle(F)V

    return-void
.end method

.method protected setRegistry(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/itextpdf/io/font/FontProgram;->registry:Ljava/lang/String;

    return-void
.end method

.method protected setStemH(I)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontMetrics;->setStemH(I)V

    return-void
.end method

.method protected setStemV(I)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontMetrics;->setStemV(I)V

    return-void
.end method

.method protected setTypoAscender(I)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontMetrics;->setTypoAscender(I)V

    return-void
.end method

.method protected setTypoDescender(I)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontMetrics;->setTypoDescender(I)V

    return-void
.end method

.method protected setXHeight(I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/itextpdf/io/font/FontProgram;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontMetrics;->setXHeight(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 318
    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
