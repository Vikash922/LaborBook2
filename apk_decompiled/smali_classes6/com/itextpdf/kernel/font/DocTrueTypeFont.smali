.class public Lcom/itextpdf/kernel/font/DocTrueTypeFont;
.super Lcom/itextpdf/io/font/TrueTypeFont;
.source "DocTrueTypeFont.java"

# interfaces
.implements Lcom/itextpdf/kernel/font/IDocFontProgram;


# instance fields
.field private fontFile:Lcom/itextpdf/kernel/pdf/PdfStream;

.field private fontFileName:Lcom/itextpdf/kernel/pdf/PdfName;

.field private missingWidth:I

.field private subtype:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method private constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->missingWidth:I

    .line 71
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setFontName(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Lcom/itextpdf/kernel/font/FontUtil;->createRandomFontName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setFontName(Ljava/lang/String;)V

    .line 77
    :goto_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    return-void
.end method

.method static createFontProgram(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/font/FontEncoding;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/TrueTypeFont;
    .locals 6

    .line 81
    new-instance v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 82
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->fillFontDescriptor(Lcom/itextpdf/kernel/font/DocTrueTypeFont;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 84
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FirstChar:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 86
    :goto_0
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Widths:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p0

    .line 87
    invoke-virtual {v0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->getMissingWidth()I

    move-result v3

    .line 86
    invoke-static {p0, v1, v3}, Lcom/itextpdf/kernel/font/FontUtil;->convertSimpleWidthsArray(Lcom/itextpdf/kernel/pdf/PdfArray;II)[I

    move-result-object p0

    .line 88
    iput v2, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    move v1, v2

    :goto_1
    const/16 v3, 0x100

    if-ge v2, v3, :cond_4

    .line 91
    new-instance v3, Lcom/itextpdf/io/font/otf/Glyph;

    aget v4, p0, v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v5

    invoke-direct {v3, v2, v4, v5}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    .line 92
    iget-object v4, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/itextpdf/io/font/FontEncoding;->convertToByte(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 95
    iget-object v4, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->unicodeToGlyph:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 97
    invoke-virtual {p2, v2}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->lookup(I)[C

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/otf/Glyph;->setChars([C)V

    .line 99
    :cond_2
    :goto_2
    aget v3, p0, v2

    if-lez v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 101
    iget v3, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    aget v4, p0, v2

    add-int/2addr v3, v4

    iput v3, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 105
    iget p0, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    div-int/2addr p0, v1

    iput p0, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    :cond_5
    return-object v0
.end method

.method static createFontProgram(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/TrueTypeFont;
    .locals 9

    .line 111
    new-instance v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 112
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->fillFontDescriptor(Lcom/itextpdf/kernel/font/DocTrueTypeFont;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    if-eqz v1, :cond_0

    .line 115
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DW:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DW:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 117
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DW:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DW:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3e8

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 124
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/kernel/font/FontUtil;->convertCompositeWidthsArray(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/io/util/IntHashtable;

    move-result-object p0

    .line 125
    iput v2, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    .line 126
    invoke-virtual {p1}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->getCodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 127
    invoke-virtual {p0, v4}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v1

    .line 128
    :goto_2
    new-instance v6, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {p1, v4}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->lookup(I)[C

    move-result-object v7

    invoke-direct {v6, v4, v5, v7}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(II[C)V

    .line 129
    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 130
    iget-object v7, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->unicodeToGlyph:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_3
    iget-object v7, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget v4, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    goto :goto_1

    .line 135
    :cond_4
    iget-object p1, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-eqz p1, :cond_6

    .line 136
    iget p1, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    iget-object v3, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    div-int/2addr p1, v3

    iput p1, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->avgWidth:I

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    .line 140
    :cond_6
    :goto_3
    iget-object p1, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    .line 141
    iget-object p1, v0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/itextpdf/io/font/otf/Glyph;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v1

    :cond_7
    const/4 p0, -0x1

    invoke-direct {v4, v2, v1, p0}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v0
.end method

.method static fillFontDescriptor(Lcom/itextpdf/kernel/font/DocTrueTypeFont;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 8

    if-nez p1, :cond_0

    .line 178
    const-class p0, Lcom/itextpdf/kernel/font/FontUtil;

    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    .line 179
    const-string p1, "Font dictionary does not contain required /FontDescriptor entry."

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 182
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Ascent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setTypoAscender(I)V

    .line 186
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Descent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setTypoDescender(I)V

    .line 190
    :cond_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CapHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setCapHeight(I)V

    .line 194
    :cond_3
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setXHeight(I)V

    .line 198
    :cond_4
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ItalicAngle:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 200
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setItalicAngle(I)V

    .line 202
    :cond_5
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->StemV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 204
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setStemV(I)V

    .line 206
    :cond_6
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->StemH:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 208
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setStemH(I)V

    .line 210
    :cond_7
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontWeight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 212
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setFontWeight(I)V

    .line 214
    :cond_8
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->MissingWidth:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 216
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->missingWidth:I

    .line 219
    :cond_9
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontStretch:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 221
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setFontStretch(Ljava/lang/String;)V

    .line 224
    :cond_a
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontBBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_d

    const/4 v5, 0x4

    .line 226
    new-array v5, v5, [I

    .line 228
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v6

    aput v6, v5, v3

    .line 230
    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v6

    aput v6, v5, v4

    .line 232
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v6

    aput v6, v5, v2

    .line 234
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    aput v0, v5, v1

    .line 235
    aget v6, v5, v3

    aget v7, v5, v2

    if-le v6, v7, :cond_b

    .line 237
    aput v7, v5, v3

    .line 238
    aput v6, v5, v2

    .line 240
    :cond_b
    aget v6, v5, v4

    if-le v6, v0, :cond_c

    .line 242
    aput v0, v5, v4

    .line 243
    aput v6, v5, v1

    .line 245
    :cond_c
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setBbox([I)V

    .line 249
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v0

    if-nez v0, :cond_d

    .line 250
    aget v0, v5, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 251
    aget v5, v5, v4

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float v7, v0, v6

    sub-float/2addr v0, v5

    div-float/2addr v7, v0

    float-to-int v7, v7

    .line 252
    invoke-virtual {p0, v7}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setTypoAscender(I)V

    mul-float/2addr v5, v6

    div-float/2addr v5, v0

    float-to-int v0, v5

    .line 253
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setTypoDescender(I)V

    .line 257
    :cond_d
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontFamily:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 259
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setFontFamily(Ljava/lang/String;)V

    .line 262
    :cond_e
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Flags:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 264
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_f

    .line 266
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setFixedPitch(Z)V

    :cond_f
    const/high16 v5, 0x40000

    and-int/2addr v0, v5

    if-eqz v0, :cond_10

    .line 269
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->setBold(Z)V

    .line 273
    :cond_10
    new-array v0, v1, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->FontFile:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v5, v0, v3

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->FontFile2:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v5, v0, v4

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->FontFile3:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v4, v0, v2

    :goto_0
    if-ge v3, v1, :cond_12

    .line 274
    aget-object v2, v0, v3

    .line 275
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 276
    iput-object v2, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->fontFileName:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 277
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->fontFile:Lcom/itextpdf/kernel/pdf/PdfStream;

    goto :goto_1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_12
    :goto_1
    return-void
.end method


# virtual methods
.method public getFontFile()Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->fontFile:Lcom/itextpdf/kernel/pdf/PdfStream;

    return-object v0
.end method

.method public getFontFileName()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->fontFileName:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getMissingWidth()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->missingWidth:I

    return v0
.end method

.method public getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
