.class public Lcom/itextpdf/kernel/font/PdfTrueTypeFont;
.super Lcom/itextpdf/kernel/font/PdfSimpleFont;
.source "PdfTrueTypeFont.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/font/PdfSimpleFont<",
        "Lcom/itextpdf/io/font/TrueTypeFont;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/lang/String;Z)V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->setFontProgram(Lcom/itextpdf/io/font/FontProgram;)V

    .line 74
    iput-boolean p3, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->embedded:Z

    .line 75
    invoke-virtual {p1}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    if-eqz p3, :cond_1

    .line 76
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->allowEmbedding()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "{0} cannot be embedded due to licensing restrictions."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    .line 80
    :cond_1
    :goto_0
    const-string p3, "FontSpecific"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/io/font/TrueTypeFont;->isFontSpecific()Z

    move-result p1

    if-eqz p1, :cond_3

    move-object p2, p3

    :cond_3
    if-eqz p2, :cond_4

    .line 83
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 84
    invoke-static {}, Lcom/itextpdf/io/font/FontEncoding;->createFontSpecificEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    goto :goto_1

    .line 86
    :cond_4
    invoke-static {p2}, Lcom/itextpdf/io/font/FontEncoding;->createFontEncoding(Ljava/lang/String;)Lcom/itextpdf/io/font/FontEncoding;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    :goto_1
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 4

    .line 91
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->newFont:Z

    .line 93
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->subset:Z

    .line 94
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->toUnicode:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-static {v1, v2}, Lcom/itextpdf/kernel/font/DocFontEncoding;->createDocFontEncoding(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    .line 96
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/io/font/constants/StandardFonts;->isStandardFont(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 104
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Widths:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    :try_start_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "I/O exception while creating Font"

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->toUnicode:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-static {p1, v1, v3}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->createFontProgram(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/font/FontEncoding;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/TrueTypeFont;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 114
    :goto_0
    iget-object p1, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    instance-of p1, p1, Lcom/itextpdf/kernel/font/IDocFontProgram;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast p1, Lcom/itextpdf/kernel/font/IDocFontProgram;

    invoke-interface {p1}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getFontFile()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    if-eqz p1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->embedded:Z

    return-void
.end method


# virtual methods
.method protected addFontStream(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 7

    .line 173
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->embedded:Z

    if-eqz v0, :cond_7

    .line 176
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    instance-of v0, v0, Lcom/itextpdf/kernel/font/IDocFontProgram;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/IDocFontProgram;

    invoke-interface {v0}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getFontFileName()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v1, Lcom/itextpdf/kernel/font/IDocFontProgram;

    invoke-interface {v1}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getFontFile()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    goto/16 :goto_4

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->isCff()Z

    move-result v0

    const/4 v1, 0x0

    const-class v2, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;

    if-eqz v0, :cond_1

    .line 180
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontFile3:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontStreamBytes()[B

    move-result-object v3

    .line 183
    array-length v4, v3

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getPdfFontStream([B[I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v3

    .line 184
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v6, "Type1C"

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;
    :try_end_0
    .catch Lcom/itextpdf/kernel/exceptions/PdfException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto/16 :goto_4

    :catch_0
    move-exception v3

    .line 186
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 187
    invoke-virtual {v3}, Lcom/itextpdf/kernel/exceptions/PdfException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 191
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontFile2:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 192
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    const/4 v4, 0x0

    .line 193
    :goto_0
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->usedGlyphs:[B

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 194
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->usedGlyphs:[B

    aget-byte v5, v5, v4

    if-eqz v5, :cond_3

    .line 195
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v5, v4}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_2

    .line 196
    iget-object v6, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v5, v4}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_3

    .line 198
    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/font/TrueTypeFont;

    iget-boolean v5, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->subset:Z

    iget-object v6, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->subsetRanges:Ljava/util/List;

    invoke-virtual {v4, v3, v5, v6}, Lcom/itextpdf/io/font/TrueTypeFont;->updateUsedGlyphs(Ljava/util/SortedSet;ZLjava/util/List;)V

    .line 206
    :try_start_1
    iget-boolean v4, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->subset:Z

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/TrueTypeFont;->getDirectoryOffset()I

    move-result v4

    if-lez v4, :cond_5

    goto :goto_2

    .line 209
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontStreamBytes()[B

    move-result-object v3

    goto :goto_3

    .line 207
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/font/TrueTypeFont;

    iget-boolean v5, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->subset:Z

    invoke-virtual {v4, v3, v5}, Lcom/itextpdf/io/font/TrueTypeFont;->getSubset(Ljava/util/Set;Z)[B

    move-result-object v3

    .line 211
    :goto_3
    array-length v4, v3

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getPdfFontStream([B[I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1
    :try_end_1
    .catch Lcom/itextpdf/kernel/exceptions/PdfException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    .line 213
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 214
    invoke-virtual {v3}, Lcom/itextpdf/kernel/exceptions/PdfException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_4
    if-eqz v1, :cond_7

    .line 219
    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 220
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 221
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    :cond_7
    return-void
.end method

.method public containsGlyph(I)Z
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v3, p1}, Lcom/itextpdf/io/font/FontEncoding;->getUnicodeDifference(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public flush()V
    .locals 4

    .line 145
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->ensureUnderlyingObjectHasIndirectReference()V

    .line 149
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->newFont:Z

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->isCff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type1:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 154
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 156
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->TrueType:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 157
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->subset:Z

    iget-boolean v3, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->embedded:Z

    invoke-static {v1, v2, v3}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->updateSubsetPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 159
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->flushFontData(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 161
    :cond_2
    invoke-super {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->flush()V

    return-void
.end method

.method public getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/font/FontEncoding;->getUnicodeDifference(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->notdefGlyphs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/Glyph;

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    new-instance v0, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;I)V

    .line 125
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->notdefGlyphs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected isBuiltInFont()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    instance-of v0, v0, Lcom/itextpdf/io/font/Type1Font;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/io/font/Type1Font;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/Type1Font;->isBuiltInFont()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 168
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->isBuiltWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
