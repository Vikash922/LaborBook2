.class public Lcom/itextpdf/kernel/font/PdfType3Font;
.super Lcom/itextpdf/kernel/font/PdfSimpleFont;
.source "PdfType3Font.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/font/PdfSimpleFont<",
        "Lcom/itextpdf/kernel/font/Type3Font;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FONT_MATRIX:[D

.field private static final FONT_BBOX_LLX:I = 0x0

.field private static final FONT_BBOX_LLY:I = 0x1

.field private static final FONT_BBOX_URX:I = 0x2

.field private static final FONT_BBOX_URY:I = 0x3


# instance fields
.field private fontMatrix:[D

.field private glyphSpaceNormalizationFactor:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 110
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/kernel/font/PdfType3Font;->DEFAULT_FONT_MATRIX:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3f50624dd2f1a9fcL    # 0.001
        0x0
        0x0
        0x3f50624dd2f1a9fcL    # 0.001
        0x0
        0x0
    .end array-data
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 9

    .line 164
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 112
    sget-object v0, Lcom/itextpdf/kernel/font/PdfType3Font;->DEFAULT_FONT_MATRIX:[D

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontMatrix:[D

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->subset:Z

    .line 166
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->embedded:Z

    .line 167
    new-instance v0, Lcom/itextpdf/kernel/font/Type3Font;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/font/Type3Font;-><init>(Z)V

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 168
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->toUnicode:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-static {v0, v2}, Lcom/itextpdf/kernel/font/DocFontEncoding;->createDocFontEncoding(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    .line 170
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->readFontMatrix()[D

    move-result-object v0

    .line 171
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->readFontBBox()[D

    move-result-object v2

    .line 172
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/font/PdfType3Font;->readWidths(Lcom/itextpdf/kernel/pdf/PdfDictionary;)[D

    move-result-object v3

    .line 174
    aget-wide v4, v0, v1

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/kernel/font/PdfType3Font;->setGlyphSpaceNormalizationFactor(D)V

    .line 176
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->CharProcs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    .line 177
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 178
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Differences:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v4, :cond_1

    if-nez v5, :cond_2

    .line 180
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v6

    const-string v7, "Type 3 font issue. Font cannot be initialized correctly."

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 182
    :cond_2
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/itextpdf/kernel/font/PdfType3Font;->fillFontDescriptor(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 184
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/font/PdfType3Font;->normalize1000UnitsToGlyphSpaceUnits([D)V

    .line 185
    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/font/PdfType3Font;->normalizeGlyphSpaceUnitsTo1000Units([D)V

    .line 186
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/font/PdfType3Font;->normalizeGlyphSpaceUnitsTo1000Units([D)V

    .line 188
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/font/PdfType3Font;->initializeUsedGlyphs(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result p1

    .line 189
    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontMatrix:[D

    .line 190
    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/font/PdfType3Font;->initializeFontBBox([D)V

    .line 191
    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/font/PdfType3Font;->initializeTypoAscenderDescender([D)V

    const/16 v0, 0x100

    .line 193
    new-array v2, v0, [I

    .line 194
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_3

    add-int v6, p1, v1

    if-ge v6, v0, :cond_3

    .line 195
    aget-wide v7, v3, v1

    double-to-int v7, v7

    aput v7, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 197
    :cond_3
    invoke-direct {p0, v5, v4, v2}, Lcom/itextpdf/kernel/font/PdfType3Font;->addGlyphsFromDifferences(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDictionary;[I)V

    .line 198
    invoke-direct {p0, v4, v2}, Lcom/itextpdf/kernel/font/PdfType3Font;->addGlyphsFromCharProcs(Lcom/itextpdf/kernel/pdf/PdfDictionary;[I)V

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p4}, Lcom/itextpdf/kernel/font/PdfType3Font;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V

    .line 153
    iget-object p1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast p1, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/font/Type3Font;->setFontName(Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast p1, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/font/Type3Font;->setFontFamily(Ljava/lang/String;)V

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/font/PdfType3Font;->setGlyphSpaceNormalizationFactor(D)V

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V
    .locals 1

    .line 134
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;-><init>()V

    .line 112
    sget-object v0, Lcom/itextpdf/kernel/font/PdfType3Font;->DEFAULT_FONT_MATRIX:[D

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontMatrix:[D

    .line 135
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfType3Font;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->subset:Z

    .line 137
    iput-boolean p1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->embedded:Z

    .line 138
    new-instance p1, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/font/Type3Font;-><init>(Z)V

    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 139
    invoke-static {}, Lcom/itextpdf/io/font/FontEncoding;->createEmptyFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/font/PdfType3Font;->setGlyphSpaceNormalizationFactor(D)V

    return-void
.end method

.method private addGlyphsFromCharProcs(Lcom/itextpdf/kernel/pdf/PdfDictionary;[I)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getToUnicode()Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 484
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getToUnicode()Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->createReverseMapping()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 487
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 488
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/io/font/AdobeGlyphList;->nameToUnicode(Ljava/lang/String;)I

    move-result v6

    .line 490
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v3, v6}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    .line 491
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v3, v6}, Lcom/itextpdf/io/font/FontEncoding;->convertToByte(I)I

    move-result v3

    :goto_2
    move v5, v3

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    .line 492
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 493
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_3
    if-eq v5, v4, :cond_2

    .line 495
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    if-nez v3, :cond_2

    .line 496
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/font/Type3Font;

    aget v7, p2, v5

    new-instance v9, Lcom/itextpdf/kernel/font/Type3Glyph;

    .line 497
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-direct {v9, v2, v3}, Lcom/itextpdf/kernel/font/Type3Glyph;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const/4 v8, 0x0

    .line 496
    invoke-virtual/range {v4 .. v9}, Lcom/itextpdf/kernel/font/Type3Font;->addGlyph(III[ILcom/itextpdf/kernel/font/Type3Glyph;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private addGlyphsFromDifferences(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfDictionary;[I)V
    .locals 8

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    move v7, v0

    .line 443
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 444
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    move v7, v1

    goto :goto_1

    :cond_1
    const/16 v2, 0xff

    if-le v7, v2, :cond_2

    goto :goto_1

    .line 450
    :cond_2
    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 451
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v2, v7}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v3

    .line 452
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v2, v7, v1}, Lcom/itextpdf/io/font/FontEncoding;->setDifference(ILjava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/font/Type3Font;

    aget v4, p3, v7

    new-instance v6, Lcom/itextpdf/kernel/font/Type3Glyph;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v5, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v5

    invoke-direct {v6, v1, v5}, Lcom/itextpdf/kernel/font/Type3Glyph;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const/4 v5, 0x0

    move-object v1, v2

    move v2, v7

    .line 455
    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/kernel/font/Type3Font;->addGlyph(III[ILcom/itextpdf/kernel/font/Type3Glyph;)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private fillFontDescriptor(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 633
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CapHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 635
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v0

    .line 636
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/font/PdfType3Font;->normalizeGlyphSpaceUnitsTo1000Units(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfType3Font;->setCapHeight(I)V

    .line 638
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ItalicAngle:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 640
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfType3Font;->setItalicAngle(I)V

    .line 642
    :cond_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontWeight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 644
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfType3Font;->setFontWeight(I)V

    .line 647
    :cond_3
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontStretch:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 649
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfType3Font;->setFontStretch(Ljava/lang/String;)V

    .line 652
    :cond_4
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontName:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 654
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfType3Font;->setFontName(Ljava/lang/String;)V

    .line 657
    :cond_5
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontFamily:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 659
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfType3Font;->setFontFamily(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private flushFontData()V
    .locals 14

    .line 503
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/font/Type3Font;->getNumberOfGlyphs()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    .line 506
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xff

    if-gt v3, v4, :cond_3

    .line 509
    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v4, v3}, Lcom/itextpdf/io/font/FontEncoding;->canDecode(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 510
    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v4, v3}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/font/PdfType3Font;->getType3Glyph(I)Lcom/itextpdf/kernel/font/Type3Glyph;

    move-result-object v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/font/Type3Font;->getType3GlyphByCode(I)Lcom/itextpdf/kernel/font/Type3Glyph;

    move-result-object v4

    :cond_1
    if-eqz v4, :cond_2

    .line 516
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v6, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v6, v3}, Lcom/itextpdf/io/font/FontEncoding;->getDifference(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/itextpdf/kernel/font/Type3Glyph;->getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 517
    invoke-virtual {v4}, Lcom/itextpdf/kernel/font/Type3Glyph;->getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 520
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->CharProcs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 522
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontMatrix()[D

    move-result-object v0

    .line 523
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontMetrics;->getBbox()[I

    move-result-object v3

    .line 524
    aget v4, v3, v2

    int-to-double v4, v4

    aget v6, v3, v1

    int-to-double v6, v6

    const/4 v8, 0x2

    aget v9, v3, v8

    int-to-double v9, v9

    const/4 v11, 0x3

    aget v3, v3, v11

    int-to-double v12, v3

    const/4 v3, 0x4

    new-array v3, v3, [D

    aput-wide v4, v3, v2

    aput-wide v6, v3, v1

    aput-wide v9, v3, v8

    aput-wide v12, v3, v11

    .line 528
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/font/PdfType3Font;->normalizeGlyphSpaceUnitsTo1000Units([D)V

    .line 529
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/font/PdfType3Font;->normalize1000UnitsToGlyphSpaceUnits([D)V

    .line 531
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FontMatrix:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {v1, v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 532
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontBBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 533
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    .line 534
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type3:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-super {p0, v0, v1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->flushFontData(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 535
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Widths:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfType3Font;->makeObjectIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    .line 537
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void

    .line 504
    :cond_4
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "No glyphs defined for type3 font."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFirstEmptyCode()I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/font/FontEncoding;->canDecode(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getFontMatrix()[D
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontMatrix:[D

    return-object v0
.end method

.method private initializeFontBBox([D)V
    .locals 6

    .line 601
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    double-to-int v1, v1

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    double-to-int v2, v2

    const/4 v3, 0x2

    aget-wide v3, p1, v3

    double-to-int v3, v3

    const/4 v4, 0x3

    aget-wide v4, p1, v4

    double-to-int p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/itextpdf/io/font/FontMetrics;->setBbox(IIII)V

    return-void
.end method

.method private initializeTypoAscenderDescender([D)V
    .locals 3

    .line 596
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    const/4 v1, 0x3

    aget-wide v1, p1, v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/font/Type3Font;->setTypoAscender(I)V

    .line 597
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    const/4 v1, 0x1

    aget-wide v1, p1, v1

    double-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->setTypoDescender(I)V

    return-void
.end method

.method private initializeUsedGlyphs(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I
    .locals 4

    .line 557
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FirstChar:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/font/PdfType3Font;->normalizeFirstLastChar(Lcom/itextpdf/kernel/pdf/PdfNumber;I)I

    move-result v0

    .line 558
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->LastChar:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p1

    const/16 v1, 0xff

    invoke-direct {p0, p1, v1}, Lcom/itextpdf/kernel/font/PdfType3Font;->normalizeFirstLastChar(Lcom/itextpdf/kernel/pdf/PdfNumber;I)I

    move-result p1

    move v1, v0

    :goto_0
    if-gt v1, p1, :cond_0

    .line 561
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->usedGlyphs:[B

    const/4 v3, 0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private normalize1000UnitsToGlyphSpaceUnits(D)D
    .locals 2

    .line 626
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getGlyphSpaceNormalizationFactor()D

    move-result-wide v0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private normalize1000UnitsToGlyphSpaceUnits([D)V
    .locals 3

    const/4 v0, 0x0

    .line 620
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 621
    aget-wide v1, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/kernel/font/PdfType3Font;->normalize1000UnitsToGlyphSpaceUnits(D)D

    move-result-wide v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private normalizeFirstLastChar(Lcom/itextpdf/kernel/pdf/PdfNumber;I)I
    .locals 1

    if-nez p1, :cond_0

    return p2

    .line 665
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result p1

    if-ltz p1, :cond_2

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    :cond_2
    :goto_0
    return p2
.end method

.method private normalizeGlyphSpaceUnitsTo1000Units(D)D
    .locals 2

    .line 616
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getGlyphSpaceNormalizationFactor()D

    move-result-wide v0

    mul-double/2addr p1, v0

    return-wide p1
.end method

.method private normalizeGlyphSpaceUnitsTo1000Units([D)V
    .locals 3

    const/4 v0, 0x0

    .line 610
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 611
    aget-wide v1, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/kernel/font/PdfType3Font;->normalizeGlyphSpaceUnitsTo1000Units(D)D

    move-result-wide v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readFontBBox()[D
    .locals 14

    .line 567
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontBBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 569
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x1

    .line 570
    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v6

    const/4 v8, 0x2

    .line 571
    invoke-virtual {v0, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x3

    .line 572
    invoke-virtual {v0, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v12

    .line 574
    new-array v0, v1, [D

    aput-wide v3, v0, v2

    aput-wide v6, v0, v5

    aput-wide v9, v0, v8

    aput-wide v12, v0, v11

    return-object v0

    .line 577
    :cond_0
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private readFontMatrix()[D
    .locals 5

    .line 581
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontMatrix:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    .line 586
    new-array v1, v1, [D

    const/4 v2, 0x0

    .line 587
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 588
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 583
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Missing required field {0} in font dictionary."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontMatrix:Lcom/itextpdf/kernel/pdf/PdfName;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 584
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object v0

    throw v0
.end method

.method private readWidths(Lcom/itextpdf/kernel/pdf/PdfDictionary;)[D
    .locals 4

    .line 541
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Widths:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 547
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 548
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 549
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 550
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v2

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    :goto_1
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 543
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Missing required field {0} in font dictionary."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Widths:Lcom/itextpdf/kernel/pdf/PdfName;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 544
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method protected addFontStream(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    return-void
.end method

.method public addGlyph(CIIIII)Lcom/itextpdf/kernel/font/Type3Glyph;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    .line 314
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/kernel/font/PdfType3Font;->getType3Glyph(I)Lcom/itextpdf/kernel/font/Type3Glyph;

    move-result-object v5

    if-eqz v5, :cond_0

    return-object v5

    .line 318
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFirstEmptyCode()I

    move-result v5

    .line 319
    new-instance v14, Lcom/itextpdf/kernel/font/Type3Glyph;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v7

    move/from16 v15, p2

    int-to-float v8, v15

    int-to-float v9, v1

    int-to-float v10, v2

    int-to-float v11, v3

    int-to-float v12, v4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/font/Type3Font;->isColorized()Z

    move-result v13

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lcom/itextpdf/kernel/font/Type3Glyph;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;FFFFFZ)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/font/Type3Font;

    filled-new-array/range {p3 .. p6}, [I

    move-result-object v10

    move v7, v5

    move/from16 v8, p1

    move/from16 v9, p2

    move-object v11, v14

    invoke-virtual/range {v6 .. v11}, Lcom/itextpdf/kernel/font/Type3Font;->addGlyph(III[ILcom/itextpdf/kernel/font/Type3Glyph;)V

    .line 321
    iget-object v6, v0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    move/from16 v7, p1

    invoke-virtual {v6, v5, v7}, Lcom/itextpdf/io/font/FontEncoding;->addSymbol(II)Z

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/font/Type3Font;->isColorized()Z

    move-result v5

    if-nez v5, :cond_2

    .line 324
    iget-object v5, v0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontProgram;->countOfGlyphs()I

    move-result v5

    if-nez v5, :cond_1

    .line 325
    iget-object v5, v0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/itextpdf/io/font/FontMetrics;->setBbox(IIII)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v5, v0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontMetrics;->getBbox()[I

    move-result-object v5

    const/4 v6, 0x0

    .line 328
    aget v6, v5, v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v6, 0x1

    .line 329
    aget v6, v5, v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v6, 0x2

    .line 330
    aget v6, v5, v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v6, 0x3

    .line 331
    aget v5, v5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 332
    iget-object v5, v0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/itextpdf/io/font/FontMetrics;->setBbox(IIII)V

    :cond_2
    :goto_0
    return-object v14
.end method

.method protected buildWidthsArray(II)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 7

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    .line 406
    new-array v0, v0, [D

    move v1, p1

    :goto_0
    if-gt v1, p2, :cond_3

    sub-int v2, v1, p1

    .line 409
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->usedGlyphs:[B

    aget-byte v3, v3, v1

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    .line 410
    aput-wide v4, v0, v2

    goto :goto_2

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v3

    const/4 v6, -0x1

    if-le v3, v6, :cond_1

    .line 413
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/font/PdfType3Font;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_2

    .line 414
    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v3

    int-to-double v4, v3

    :cond_2
    aput-wide v4, v0, v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    :cond_3
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/font/PdfType3Font;->normalize1000UnitsToGlyphSpaceUnits([D)V

    .line 418
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    return-object p1
.end method

.method public containsGlyph(I)Z
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x21

    if-ge p1, v0, :cond_1

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/font/FontEncoding;->getUnicodeDifference(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public flush()V
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->ensureUnderlyingObjectHasIndirectReference()V

    .line 363
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->flushFontData()V

    .line 364
    invoke-super {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->flush()V

    return-void
.end method

.method protected getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 426
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    return-object v0
.end method

.method protected getFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 7

    if-eqz p1, :cond_2

    .line 369
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 370
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 371
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfType3Font;->makeObjectIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    .line 372
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 374
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v1

    .line 376
    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getCapHeight()I

    move-result v2

    .line 377
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->CapHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    int-to-double v5, v2

    invoke-direct {p0, v5, v6}, Lcom/itextpdf/kernel/font/PdfType3Font;->normalize1000UnitsToGlyphSpaceUnits(D)D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 378
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ItalicAngle:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getItalicAngle()F

    move-result v1

    float-to-double v4, v1

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 380
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v1

    .line 381
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FontWeight:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontWeight()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 382
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FontName:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 383
    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    array-length p1, p1

    const/4 v3, 0x4

    if-lt p1, v3, :cond_0

    .line 384
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->FontFamily:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontProgram;->getPdfFontFlags()I

    move-result p1

    .line 389
    sget v1, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Symbolic:I

    sget v2, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Nonsymbolic:I

    or-int/2addr v1, v2

    not-int v1, v1

    and-int/2addr p1, v1

    .line 391
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Symbolic:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Nonsymbolic:I

    :goto_0
    or-int/2addr p1, v1

    .line 394
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Flags:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0

    .line 396
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 397
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 398
    const-class p1, Lcom/itextpdf/kernel/font/PdfType3Font;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 399
    const-string v0, "Type 3 font issue. Font Descriptor is required for tagged PDF. FontName shall be specified."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x21

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 341
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/font/FontEncoding;->getUnicodeDifference(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    if-nez v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->notdefGlyphs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/Glyph;

    if-nez v0, :cond_2

    .line 345
    new-instance v0, Lcom/itextpdf/io/font/otf/Glyph;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    .line 346
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->notdefGlyphs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method final getGlyphSpaceNormalizationFactor()D
    .locals 2

    .line 430
    iget-wide v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->glyphSpaceNormalizationFactor:D

    return-wide v0
.end method

.method public getNumberOfGlyphs()I
    .locals 1

    .line 294
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/font/Type3Font;->getNumberOfGlyphs()I

    move-result v0

    return v0
.end method

.method public getType3Glyph(I)Lcom/itextpdf/kernel/font/Type3Glyph;
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType3Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->getType3Glyph(I)Lcom/itextpdf/kernel/font/Type3Glyph;

    move-result-object p1

    return-object p1
.end method

.method public isEmbedded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSubset()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCapHeight(I)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->setCapHeight(I)V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->setFontFamily(Ljava/lang/String;)V

    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->setFontName(Ljava/lang/String;)V

    return-void
.end method

.method public setFontStretch(Ljava/lang/String;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->setFontStretch(Ljava/lang/String;)V

    return-void
.end method

.method public setFontWeight(I)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->setFontWeight(I)V

    return-void
.end method

.method final setGlyphSpaceNormalizationFactor(D)V
    .locals 0

    .line 434
    iput-wide p1, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->glyphSpaceNormalizationFactor:D

    return-void
.end method

.method public setItalicAngle(I)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->setItalicAngle(I)V

    return-void
.end method

.method public setPdfFontFlags(I)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType3Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v0, Lcom/itextpdf/kernel/font/Type3Font;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/font/Type3Font;->setPdfFontFlags(I)V

    return-void
.end method
