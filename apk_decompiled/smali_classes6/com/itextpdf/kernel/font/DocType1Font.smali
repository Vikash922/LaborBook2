.class Lcom/itextpdf/kernel/font/DocType1Font;
.super Lcom/itextpdf/io/font/Type1Font;
.source "DocType1Font.java"

# interfaces
.implements Lcom/itextpdf/kernel/font/IDocFontProgram;


# instance fields
.field private fontFile:Lcom/itextpdf/kernel/pdf/PdfStream;

.field private fontFileName:Lcom/itextpdf/kernel/pdf/PdfName;

.field private missingWidth:I

.field private subtype:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/Type1Font;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lcom/itextpdf/kernel/font/DocType1Font;->missingWidth:I

    return-void
.end method

.method static createFontProgram(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/font/FontEncoding;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/Type1Font;
    .locals 6

    .line 74
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lcom/itextpdf/kernel/font/FontUtil;->createRandomFontName()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 86
    :try_start_0
    invoke-static {v0, v1}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/Type1Font;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    return-object v1

    .line 94
    :cond_1
    new-instance v1, Lcom/itextpdf/kernel/font/DocType1Font;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/font/DocType1Font;-><init>(Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    :cond_2
    iput-object v2, v1, Lcom/itextpdf/kernel/font/DocType1Font;->subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 97
    invoke-static {v1, v0}, Lcom/itextpdf/kernel/font/DocType1Font;->fillFontDescriptor(Lcom/itextpdf/kernel/font/DocType1Font;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 99
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FirstChar:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v2

    .line 101
    :goto_2
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Widths:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/font/DocType1Font;->getMissingWidth()I

    move-result v3

    invoke-static {p0, v0, v3}, Lcom/itextpdf/kernel/font/FontUtil;->convertSimpleWidthsArray(Lcom/itextpdf/kernel/pdf/PdfArray;II)[I

    move-result-object p0

    .line 102
    iput v2, v1, Lcom/itextpdf/kernel/font/DocType1Font;->avgWidth:I

    move v0, v2

    :goto_3
    const/16 v3, 0x100

    if-ge v2, v3, :cond_7

    .line 105
    new-instance v3, Lcom/itextpdf/io/font/otf/Glyph;

    aget v4, p0, v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v5

    invoke-direct {v3, v2, v4, v5}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    .line 106
    iget-object v4, v1, Lcom/itextpdf/kernel/font/DocType1Font;->codeToGlyph:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 109
    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/itextpdf/io/font/FontEncoding;->convertToByte(I)I

    move-result v4

    if-ne v4, v2, :cond_5

    .line 110
    iget-object v4, v1, Lcom/itextpdf/kernel/font/DocType1Font;->unicodeToGlyph:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    if-eqz p2, :cond_5

    .line 113
    invoke-virtual {p2, v2}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->lookup(I)[C

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/otf/Glyph;->setChars([C)V

    .line 115
    :cond_5
    :goto_4
    aget v3, p0, v2

    if-lez v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 117
    iget v3, v1, Lcom/itextpdf/kernel/font/DocType1Font;->avgWidth:I

    aget v4, p0, v2

    add-int/2addr v3, v4

    iput v3, v1, Lcom/itextpdf/kernel/font/DocType1Font;->avgWidth:I

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    .line 121
    iget p0, v1, Lcom/itextpdf/kernel/font/DocType1Font;->avgWidth:I

    div-int/2addr p0, v0

    iput p0, v1, Lcom/itextpdf/kernel/font/DocType1Font;->avgWidth:I

    :cond_8
    return-object v1
.end method

.method static fillFontDescriptor(Lcom/itextpdf/kernel/font/DocType1Font;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 8

    if-nez p1, :cond_0

    .line 158
    const-class p0, Lcom/itextpdf/kernel/font/FontUtil;

    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    .line 159
    const-string p1, "Font dictionary does not contain required /FontDescriptor entry."

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 162
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Ascent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocType1Font;->setTypoAscender(I)V

    .line 166
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Descent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocType1Font;->setTypoDescender(I)V

    .line 170
    :cond_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CapHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocType1Font;->setCapHeight(I)V

    .line 174
    :cond_3
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 176
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocType1Font;->setXHeight(I)V

    .line 178
    :cond_4
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ItalicAngle:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 180
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocType1Font;->setItalicAngle(I)V

    .line 182
    :cond_5
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->StemV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 184
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocType1Font;->setStemV(I)V

    .line 186
    :cond_6
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->StemH:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 188
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocType1Font;->setStemH(I)V

    .line 190
    :cond_7
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontWeight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 192
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocType1Font;->setFontWeight(I)V

    .line 194
    :cond_8
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->MissingWidth:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 196
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/font/DocType1Font;->missingWidth:I

    .line 199
    :cond_9
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontStretch:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 201
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocType1Font;->setFontStretch(Ljava/lang/String;)V

    .line 204
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

    .line 207
    new-array v5, v5, [I

    .line 209
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v6

    aput v6, v5, v3

    .line 211
    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v6

    aput v6, v5, v4

    .line 213
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v6

    aput v6, v5, v2

    .line 215
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    aput v0, v5, v1

    .line 217
    aget v6, v5, v3

    aget v7, v5, v2

    if-le v6, v7, :cond_b

    .line 219
    aput v7, v5, v3

    .line 220
    aput v6, v5, v2

    .line 222
    :cond_b
    aget v6, v5, v4

    if-le v6, v0, :cond_c

    .line 224
    aput v0, v5, v4

    .line 225
    aput v6, v5, v1

    .line 227
    :cond_c
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/font/DocType1Font;->setBbox([I)V

    .line 231
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocType1Font;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocType1Font;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v0

    if-nez v0, :cond_d

    .line 232
    aget v0, v5, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocType1Font;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 233
    aget v5, v5, v4

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocType1Font;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

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

    .line 234
    invoke-virtual {p0, v7}, Lcom/itextpdf/kernel/font/DocType1Font;->setTypoAscender(I)V

    mul-float/2addr v5, v6

    div-float/2addr v5, v0

    float-to-int v0, v5

    .line 235
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocType1Font;->setTypoDescender(I)V

    .line 239
    :cond_d
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontFamily:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 241
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/DocType1Font;->setFontFamily(Ljava/lang/String;)V

    .line 244
    :cond_e
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Flags:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 246
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_f

    .line 248
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/font/DocType1Font;->setFixedPitch(Z)V

    :cond_f
    const/high16 v5, 0x40000

    and-int/2addr v0, v5

    if-eqz v0, :cond_10

    .line 251
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/font/DocType1Font;->setBold(Z)V

    .line 255
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

    .line 256
    aget-object v2, v0, v3

    .line 257
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 258
    iput-object v2, p0, Lcom/itextpdf/kernel/font/DocType1Font;->fontFileName:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 259
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/font/DocType1Font;->fontFile:Lcom/itextpdf/kernel/pdf/PdfStream;

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

    .line 128
    iget-object v0, p0, Lcom/itextpdf/kernel/font/DocType1Font;->fontFile:Lcom/itextpdf/kernel/pdf/PdfStream;

    return-object v0
.end method

.method public getFontFileName()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/itextpdf/kernel/font/DocType1Font;->fontFileName:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getMissingWidth()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/itextpdf/kernel/font/DocType1Font;->missingWidth:I

    return v0
.end method

.method public getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/itextpdf/kernel/font/DocType1Font;->subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
