.class public Lcom/itextpdf/kernel/font/Type3Font;
.super Lcom/itextpdf/io/font/FontProgram;
.source "Type3Font.java"


# instance fields
.field private colorized:Z

.field private flags:I

.field private final type3Glyphs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/kernel/font/Type3Glyph;",
            ">;"
        }
    .end annotation
.end field

.field private final type3GlyphsWithoutUnicode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/kernel/font/Type3Glyph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontProgram;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/font/Type3Font;->type3Glyphs:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/font/Type3Font;->type3GlyphsWithoutUnicode:Ljava/util/Map;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/itextpdf/kernel/font/Type3Font;->flags:I

    .line 77
    iput-boolean p1, p0, Lcom/itextpdf/kernel/font/Type3Font;->colorized:Z

    .line 78
    new-instance p1, Lcom/itextpdf/io/font/FontNames;

    invoke-direct {p1}, Lcom/itextpdf/io/font/FontNames;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/font/Type3Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    .line 79
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/Type3Font;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object p1

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/itextpdf/io/font/FontMetrics;->setBbox(IIII)V

    return-void
.end method

.method private recalculateAverageWidth()V
    .locals 6

    .line 262
    iget-object v0, p0, Lcom/itextpdf/kernel/font/Type3Font;->codeToGlyph:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/itextpdf/kernel/font/Type3Font;->codeToGlyph:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/font/otf/Glyph;

    .line 264
    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    .line 270
    :cond_2
    div-int v2, v3, v0

    :goto_1
    iput v2, p0, Lcom/itextpdf/kernel/font/Type3Font;->avgWidth:I

    return-void
.end method

.method private removeGlyphFromMappings(I)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/itextpdf/kernel/font/Type3Font;->codeToGlyph:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/Glyph;

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v0

    if-gez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/itextpdf/kernel/font/Type3Font;->type3GlyphsWithoutUnicode:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 255
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/kernel/font/Type3Font;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object p1, p0, Lcom/itextpdf/kernel/font/Type3Font;->type3Glyphs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method addGlyph(III[ILcom/itextpdf/kernel/font/Type3Glyph;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/itextpdf/kernel/font/Type3Font;->codeToGlyph:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->removeGlyphFromMappings(I)V

    .line 235
    :cond_0
    new-instance v0, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III[I)V

    .line 236
    iget-object p3, p0, Lcom/itextpdf/kernel/font/Type3Font;->codeToGlyph:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-gez p2, :cond_1

    .line 238
    iget-object p2, p0, Lcom/itextpdf/kernel/font/Type3Font;->type3GlyphsWithoutUnicode:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/kernel/font/Type3Font;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object p1, p0, Lcom/itextpdf/kernel/font/Type3Font;->type3Glyphs:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :goto_0
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/Type3Font;->recalculateAverageWidth()V

    return-void
.end method

.method public getKerning(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/font/otf/Glyph;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getNumberOfGlyphs()I
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/itextpdf/kernel/font/Type3Font;->type3Glyphs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/kernel/font/Type3Font;->type3GlyphsWithoutUnicode:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPdfFontFlags()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/itextpdf/kernel/font/Type3Font;->flags:I

    return v0
.end method

.method public getType3Glyph(I)Lcom/itextpdf/kernel/font/Type3Glyph;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/itextpdf/kernel/font/Type3Font;->type3Glyphs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/font/Type3Glyph;

    return-object p1
.end method

.method public getType3GlyphByCode(I)Lcom/itextpdf/kernel/font/Type3Glyph;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/itextpdf/kernel/font/Type3Font;->type3GlyphsWithoutUnicode:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Glyph;

    if-nez v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/itextpdf/kernel/font/Type3Font;->codeToGlyph:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/itextpdf/kernel/font/Type3Font;->type3Glyphs:Ljava/util/Map;

    iget-object v1, p0, Lcom/itextpdf/kernel/font/Type3Font;->codeToGlyph:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Glyph;

    :cond_0
    return-object v0
.end method

.method public isColorized()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/Type3Font;->colorized:Z

    return v0
.end method

.method public isFontSpecific()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setCapHeight(I)V
    .locals 0

    .line 191
    invoke-super {p0, p1}, Lcom/itextpdf/io/font/FontProgram;->setCapHeight(I)V

    return-void
.end method

.method protected setFontFamily(Ljava/lang/String;)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Lcom/itextpdf/io/font/FontProgram;->setFontFamily(Ljava/lang/String;)V

    return-void
.end method

.method protected setFontName(Ljava/lang/String;)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Lcom/itextpdf/io/font/FontProgram;->setFontName(Ljava/lang/String;)V

    return-void
.end method

.method protected setFontStretch(Ljava/lang/String;)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Lcom/itextpdf/io/font/FontProgram;->setFontStretch(Ljava/lang/String;)V

    return-void
.end method

.method protected setFontWeight(I)V
    .locals 0

    .line 171
    invoke-super {p0, p1}, Lcom/itextpdf/io/font/FontProgram;->setFontWeight(I)V

    return-void
.end method

.method protected setItalicAngle(I)V
    .locals 0

    .line 200
    invoke-super {p0, p1}, Lcom/itextpdf/io/font/FontProgram;->setItalicAngle(I)V

    return-void
.end method

.method setPdfFontFlags(I)V
    .locals 0

    .line 228
    iput p1, p0, Lcom/itextpdf/kernel/font/Type3Font;->flags:I

    return-void
.end method

.method protected setTypoAscender(I)V
    .locals 0

    .line 209
    invoke-super {p0, p1}, Lcom/itextpdf/io/font/FontProgram;->setTypoAscender(I)V

    return-void
.end method

.method protected setTypoDescender(I)V
    .locals 0

    .line 218
    invoke-super {p0, p1}, Lcom/itextpdf/io/font/FontProgram;->setTypoDescender(I)V

    return-void
.end method
