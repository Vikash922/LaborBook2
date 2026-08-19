.class public Lcom/itextpdf/io/font/FontEncoding;
.super Ljava/lang/Object;
.source "FontEncoding.java"


# static fields
.field public static final FONT_SPECIFIC:Ljava/lang/String; = "FontSpecific"

.field public static final NOTDEF:Ljava/lang/String; = ".notdef"

.field private static final emptyBytes:[B


# instance fields
.field protected baseEncoding:Ljava/lang/String;

.field protected codeToUnicode:[I

.field protected differences:[Ljava/lang/String;

.field protected fontSpecific:Z

.field protected unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

.field protected unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    new-array v0, v0, [B

    sput-object v0, Lcom/itextpdf/io/font/FontEncoding;->emptyBytes:[B

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/itextpdf/io/util/IntHashtable;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    .line 92
    new-array v0, v1, [I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/itextpdf/io/util/ArrayUtil;->fillWithValue([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    .line 93
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0, v1}, Lcom/itextpdf/io/util/IntHashtable;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/itextpdf/io/font/FontEncoding;->fontSpecific:Z

    return-void
.end method

.method public static createEmptyFontEncoding()Lcom/itextpdf/io/font/FontEncoding;
    .locals 4

    .line 109
    new-instance v0, Lcom/itextpdf/io/font/FontEncoding;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontEncoding;-><init>()V

    const/4 v1, 0x0

    .line 110
    iput-object v1, v0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    const/4 v1, 0x0

    .line 111
    iput-boolean v1, v0, Lcom/itextpdf/io/font/FontEncoding;->fontSpecific:Z

    const/16 v2, 0x100

    .line 112
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    :goto_0
    if-ge v1, v2, :cond_0

    .line 114
    iget-object v3, v0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v3, v1, v1}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createFontEncoding(Ljava/lang/String;)Lcom/itextpdf/io/font/FontEncoding;
    .locals 2

    .line 98
    new-instance v0, Lcom/itextpdf/io/font/FontEncoding;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontEncoding;-><init>()V

    .line 99
    invoke-static {p0}, Lcom/itextpdf/io/font/FontEncoding;->normalizeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    .line 100
    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->fillCustomEncoding()V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->fillNamedEncoding()V

    :goto_0
    return-object v0
.end method

.method public static createFontSpecificEncoding()Lcom/itextpdf/io/font/FontEncoding;
    .locals 3

    .line 125
    new-instance v0, Lcom/itextpdf/io/font/FontEncoding;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontEncoding;-><init>()V

    const/4 v1, 0x1

    .line 126
    iput-boolean v1, v0, Lcom/itextpdf/io/font/FontEncoding;->fontSpecific:Z

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 128
    iget-object v2, v0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v2, v1, v1}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 129
    iget-object v2, v0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aput v1, v2, v1

    .line 130
    iget-object v2, v0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v2, v1, v1}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected static normalizeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 361
    const-string v0, ""

    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 362
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "zapfdingbatsencoding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "winansi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "macromanencoding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "macroman"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "winansiencoding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    return-object p0

    .line 371
    :pswitch_0
    const-string p0, "ZapfDingbats"

    return-object p0

    .line 369
    :pswitch_1
    const-string p0, "MacRoman"

    return-object p0

    .line 366
    :pswitch_2
    const-string p0, "Cp1252"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x431a208e -> :sswitch_5
        -0xa7919f2 -> :sswitch_4
        0x0 -> :sswitch_3
        0xcfe2561 -> :sswitch_2
        0x506e411f -> :sswitch_1
        0x7edb6bac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addSymbol(II)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {p2}, Lcom/itextpdf/io/font/AdobeGlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 150
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aput p2, v0, p1

    .line 151
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    aput-object v1, v0, p1

    .line 152
    iget-object p1, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {p1, p2, p2}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public canDecode(I)Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aget p1, v0, p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canEncode(I)Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/itextpdf/io/util/TextUtil;->isNonPrintable(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/itextpdf/io/util/TextUtil;->isNewLine(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public convertToByte(I)I
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result p1

    return p1
.end method

.method public convertToBytes(Ljava/lang/String;)[B
    .locals 5

    if-eqz p1, :cond_3

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 207
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 209
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/io/font/FontEncoding;->convertToByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    move v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_2
    invoke-static {v0, v2}, Lcom/itextpdf/io/util/ArrayUtil;->shortenArray([BI)[B

    move-result-object p1

    return-object p1

    .line 203
    :cond_3
    :goto_1
    sget-object p1, Lcom/itextpdf/io/font/FontEncoding;->emptyBytes:[B

    return-object p1
.end method

.method protected fillCustomEncoding()V
    .locals 10

    const/16 v0, 0x100

    .line 259
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    .line 260
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, " ,\t\n\r\u000c"

    invoke-direct {v1, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v4, "full"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x10

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 262
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 265
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v7, v7

    .line 266
    invoke-static {v6}, Lcom/itextpdf/io/font/AdobeGlyphList;->nameToUnicode(Ljava/lang/String;)I

    move-result v8

    .line 268
    const-string v9, "\'"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    .line 271
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 273
    :goto_1
    rem-int/2addr v2, v0

    .line 274
    iget-object v9, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v9, v7, v2}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 275
    iget-object v9, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aput v7, v9, v2

    .line 276
    iget-object v9, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    aput-object v6, v9, v2

    .line 277
    iget-object v2, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v5

    .line 284
    :goto_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_4

    if-ge v2, v0, :cond_4

    .line 285
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    const/high16 v7, 0x10000

    rem-int/2addr v6, v7

    .line 287
    invoke-static {v6}, Lcom/itextpdf/io/font/AdobeGlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 289
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "uni"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 291
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v3, v6, v2}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 292
    iget-object v3, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aput v6, v3, v2

    .line 293
    iget-object v3, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    aput-object v7, v3, v2

    .line 294
    iget-object v3, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v3, v6, v6}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v5, v0, :cond_6

    .line 299
    iget-object v1, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    aget-object v2, v1, v5

    if-nez v2, :cond_5

    .line 300
    const-string v2, ".notdef"

    aput-object v2, v1, v5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method protected fillNamedEncoding()V
    .locals 6

    .line 307
    const-string v0, " "

    iget-object v1, p0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 308
    const-string v0, "Cp1252"

    iget-object v1, p0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x100

    if-nez v0, :cond_1

    const-string v0, "MacRoman"

    iget-object v2, p0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 310
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    .line 313
    :cond_1
    :goto_0
    new-array v0, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    int-to-byte v4, v3

    .line 315
    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 317
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_2
    if-ge v2, v1, :cond_5

    .line 320
    aget-char v3, v0, v2

    .line 321
    invoke-static {v3}, Lcom/itextpdf/io/font/AdobeGlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 323
    const-string v4, ".notdef"

    goto :goto_3

    .line 325
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v5, v3, v2}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 326
    iget-object v5, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aput v3, v5, v2

    .line 327
    iget-object v5, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v5, v3, v3}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 329
    :goto_3
    iget-object v3, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 330
    aput-object v4, v3, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected fillStandardEncoding()V
    .locals 5

    .line 336
    sget-object v0, Lcom/itextpdf/io/font/PdfEncodings;->standardEncoding:[I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_2

    .line 338
    aget v2, v0, v1

    .line 339
    invoke-static {v2}, Lcom/itextpdf/io/font/AdobeGlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 341
    const-string v3, ".notdef"

    goto :goto_1

    .line 343
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v4, v2, v1}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 344
    iget-object v4, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aput v2, v4, v1

    .line 345
    iget-object v4, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v4, v2, v2}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 347
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 348
    aput-object v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getBaseEncoding()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getDifference(I)Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getUnicode(I)I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aget p1, v0, p1

    return p1
.end method

.method public getUnicodeDifference(I)I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result p1

    return p1
.end method

.method public hasDifferences()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 1

    .line 255
    invoke-static {p1}, Lcom/itextpdf/io/font/FontEncoding;->normalizeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFontSpecific()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/itextpdf/io/font/FontEncoding;->fontSpecific:Z

    return v0
.end method

.method public setDifference(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 190
    aput-object p2, v0, p1

    :cond_0
    return-void
.end method
