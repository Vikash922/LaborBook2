.class Lcom/itextpdf/kernel/font/DocFontEncoding;
.super Lcom/itextpdf/io/font/FontEncoding;
.source "DocFontEncoding.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontEncoding;-><init>()V

    return-void
.end method

.method public static createDocFontEncoding(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/FontEncoding;
    .locals 2

    const/16 v0, 0x100

    if-eqz p0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/io/font/FontEncoding;->createFontEncoding(Ljava/lang/String;)Lcom/itextpdf/io/font/FontEncoding;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    new-instance v1, Lcom/itextpdf/kernel/font/DocFontEncoding;

    invoke-direct {v1}, Lcom/itextpdf/kernel/font/DocFontEncoding;-><init>()V

    .line 77
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v1, Lcom/itextpdf/kernel/font/DocFontEncoding;->differences:[Ljava/lang/String;

    .line 78
    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BaseEncoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/itextpdf/kernel/font/DocFontEncoding;->fillBaseEncoding(Lcom/itextpdf/kernel/font/DocFontEncoding;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 79
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Differences:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/itextpdf/kernel/font/DocFontEncoding;->fillDifferences(Lcom/itextpdf/kernel/font/DocFontEncoding;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)V

    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    .line 84
    new-instance p0, Lcom/itextpdf/kernel/font/DocFontEncoding;

    invoke-direct {p0}, Lcom/itextpdf/kernel/font/DocFontEncoding;-><init>()V

    .line 85
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/kernel/font/DocFontEncoding;->differences:[Ljava/lang/String;

    .line 86
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/font/DocFontEncoding;->fillDifferences(Lcom/itextpdf/kernel/font/DocFontEncoding;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)V

    return-object p0

    .line 89
    :cond_2
    invoke-static {}, Lcom/itextpdf/io/font/FontEncoding;->createFontSpecificEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object p0

    return-object p0
.end method

.method private static fillBaseEncoding(Lcom/itextpdf/kernel/font/DocFontEncoding;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/font/DocFontEncoding;->baseEncoding:Ljava/lang/String;

    .line 97
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->MacRomanEncoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->WinAnsiEncoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Symbol:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 98
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ZapfDingbats:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocFontEncoding;->fillStandardEncoding()V

    goto :goto_2

    .line 100
    :cond_2
    :goto_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->MacRomanEncoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    const-string p1, "MacRoman"

    goto :goto_1

    .line 102
    :cond_3
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Symbol:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    const-string p1, "Symbol"

    goto :goto_1

    .line 104
    :cond_4
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ZapfDingbats:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 105
    const-string p1, "ZapfDingbats"

    goto :goto_1

    .line 104
    :cond_5
    const-string p1, "Cp1252"

    .line 107
    :goto_1
    iput-object p1, p0, Lcom/itextpdf/kernel/font/DocFontEncoding;->baseEncoding:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/DocFontEncoding;->fillNamedEncoding()V

    :goto_2
    return-void
.end method

.method private static fillDifferences(Lcom/itextpdf/kernel/font/DocFontEncoding;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)V
    .locals 8

    .line 157
    invoke-virtual {p1}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->createDirectMapping()Lcom/itextpdf/io/util/IntHashtable;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/itextpdf/io/util/IntHashtable;->getKeys()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 159
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v4

    .line 160
    invoke-static {v4}, Lcom/itextpdf/io/font/AdobeGlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v5

    .line 161
    iget-object v6, p0, Lcom/itextpdf/kernel/font/DocFontEncoding;->codeToUnicode:[I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v4, v6, v7

    .line 162
    iget-object v6, p0, Lcom/itextpdf/kernel/font/DocFontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v4, v7}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 163
    iget-object v6, p0, Lcom/itextpdf/kernel/font/DocFontEncoding;->differences:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput-object v5, v6, v3

    .line 164
    iget-object v3, p0, Lcom/itextpdf/kernel/font/DocFontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v3, v4, v4}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static fillDifferences(Lcom/itextpdf/kernel/font/DocFontEncoding;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)V
    .locals 5

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->createDirectMapping()Lcom/itextpdf/io/util/IntHashtable;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {p2}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    :goto_0
    if-eqz p1, :cond_5

    const/4 v0, 0x0

    move v1, v0

    .line 120
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 121
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    goto :goto_3

    :cond_1
    const/16 v3, 0xff

    if-le v1, v3, :cond_2

    .line 125
    const-class v3, Lcom/itextpdf/kernel/font/DocFontEncoding;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 126
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 127
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 126
    const-string v4, "Document Font has illegal differences array. Entry {0} references a glyph ID over 255 and will be ignored."

    invoke-static {v4, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_3

    .line 134
    :cond_2
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v2}, Lcom/itextpdf/io/font/AdobeGlyphList;->nameToUnicode(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 137
    iget-object v4, p0, Lcom/itextpdf/kernel/font/DocFontEncoding;->codeToUnicode:[I

    aput v3, v4, v1

    .line 138
    iget-object v4, p0, Lcom/itextpdf/kernel/font/DocFontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v4, v3, v1}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 139
    iget-object v4, p0, Lcom/itextpdf/kernel/font/DocFontEncoding;->differences:[Ljava/lang/String;

    aput-object v2, v4, v1

    .line 140
    iget-object v2, p0, Lcom/itextpdf/kernel/font/DocFontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v2, v3, v3}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    goto :goto_2

    .line 142
    :cond_3
    invoke-virtual {p2, v1}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 143
    invoke-virtual {p2, v1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v3

    .line 144
    iget-object v4, p0, Lcom/itextpdf/kernel/font/DocFontEncoding;->codeToUnicode:[I

    aput v3, v4, v1

    .line 145
    iget-object v4, p0, Lcom/itextpdf/kernel/font/DocFontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v4, v3, v1}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 146
    iget-object v4, p0, Lcom/itextpdf/kernel/font/DocFontEncoding;->differences:[Ljava/lang/String;

    aput-object v2, v4, v1

    .line 147
    iget-object v2, p0, Lcom/itextpdf/kernel/font/DocFontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v2, v3, v3}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method
