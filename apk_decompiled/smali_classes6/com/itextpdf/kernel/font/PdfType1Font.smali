.class public Lcom/itextpdf/kernel/font/PdfType1Font;
.super Lcom/itextpdf/kernel/font/PdfSimpleFont;
.source "PdfType1Font.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/font/PdfSimpleFont<",
        "Lcom/itextpdf/io/font/Type1Font;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/itextpdf/io/font/Type1Font;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/font/PdfType1Font;-><init>(Lcom/itextpdf/io/font/Type1Font;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/io/font/Type1Font;Ljava/lang/String;Z)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfType1Font;->setFontProgram(Lcom/itextpdf/io/font/FontProgram;)V

    if-eqz p3, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/itextpdf/io/font/Type1Font;->isBuiltInFont()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->embedded:Z

    .line 61
    const-string p3, "FontSpecific"

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/io/font/Type1Font;->isFontSpecific()Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p2, p3

    :cond_2
    if-eqz p2, :cond_3

    .line 64
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 65
    invoke-static {}, Lcom/itextpdf/io/font/FontEncoding;->createFontSpecificEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    goto :goto_1

    .line 67
    :cond_3
    invoke-static {p2}, Lcom/itextpdf/io/font/FontEncoding;->createFontEncoding(Ljava/lang/String;)Lcom/itextpdf/io/font/FontEncoding;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    :goto_1
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3

    .line 76
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->newFont:Z

    .line 81
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->toUnicode:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-static {v1, v2}, Lcom/itextpdf/kernel/font/DocFontEncoding;->createDocFontEncoding(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    .line 82
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->toUnicode:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-static {p1, v1, v2}, Lcom/itextpdf/kernel/font/DocType1Font;->createFontProgram(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/font/FontEncoding;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/Type1Font;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 84
    iget-object p1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    instance-of p1, p1, Lcom/itextpdf/kernel/font/IDocFontProgram;

    if-eqz p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast p1, Lcom/itextpdf/kernel/font/IDocFontProgram;

    invoke-interface {p1}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getFontFile()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->embedded:Z

    .line 87
    :cond_1
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->subset:Z

    return-void
.end method


# virtual methods
.method protected addFontStream(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 6

    .line 157
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->embedded:Z

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    instance-of v0, v0, Lcom/itextpdf/kernel/font/IDocFontProgram;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/IDocFontProgram;

    .line 160
    invoke-interface {v0}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getFontFileName()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 161
    invoke-interface {v0}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getFontFile()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v2

    .line 160
    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 162
    invoke-interface {v0}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getFontFile()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    .line 163
    invoke-interface {v0}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 164
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/Type1Font;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/Type1Font;->getFontStreamBytes()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 169
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 170
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/Type1Font;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/Type1Font;->getFontStreamLengths()[I

    move-result-object v0

    const/4 v2, 0x0

    .line 171
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 172
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Length"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    aget v2, v0, v2

    invoke-direct {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move v2, v5

    goto :goto_0

    .line 174
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontFile:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 175
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/PdfType1Font;->makeObjectIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 176
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    :cond_2
    :goto_1
    return-void
.end method

.method public containsGlyph(I)Z
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v3, p1}, Lcom/itextpdf/io/font/FontEncoding;->getUnicodeDifference(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public flush()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->ensureUnderlyingObjectHasIndirectReference()V

    .line 104
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->newFont:Z

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/font/PdfType1Font;->flushFontData(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 107
    :cond_1
    invoke-super {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->flush()V

    return-void
.end method

.method public getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/font/FontEncoding;->getUnicodeDifference(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->notdefGlyphs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/Glyph;

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Lcom/itextpdf/io/font/otf/Glyph;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    .line 122
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->notdefGlyphs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object p1, v0

    :goto_0
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected isBuiltInFont()Z
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType1Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/Type1Font;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/Type1Font;->isBuiltInFont()Z

    move-result v0

    return v0
.end method

.method public isSubset()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->subset:Z

    return v0
.end method

.method public setSubset(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/itextpdf/kernel/font/PdfType1Font;->subset:Z

    return-void
.end method
