.class public final Lcom/itextpdf/io/util/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charToString(C)Ljava/lang/String;
    .locals 0

    .line 221
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static charsetIsSupported(Ljava/lang/String;)Z
    .locals 0

    .line 306
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static convertFromUtf32([III)Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p1, p2, :cond_0

    .line 201
    aget v1, p0, p1

    invoke-static {v1}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32ToCharArray(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertFromUtf32(I)[C
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    if-ge p0, v2, :cond_0

    int-to-char p0, p0

    .line 183
    new-array v0, v0, [C

    aput-char p0, v0, v1

    return-object v0

    :cond_0
    sub-int/2addr p0, v2

    .line 186
    div-int/lit16 v2, p0, 0x400

    const v3, 0xd800

    add-int/2addr v2, v3

    int-to-char v2, v2

    rem-int/lit16 p0, p0, 0x400

    const v3, 0xdc00

    add-int/2addr p0, v3

    int-to-char p0, p0

    const/4 v3, 0x2

    new-array v3, v3, [C

    aput-char v2, v3, v1

    aput-char p0, v3, v0

    return-object v3
.end method

.method public static convertFromUtf32ToCharArray(I)[C
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    if-ge p0, v2, :cond_0

    int-to-char p0, p0

    .line 214
    new-array v0, v0, [C

    aput-char p0, v0, v1

    return-object v0

    :cond_0
    sub-int/2addr p0, v2

    .line 217
    div-int/lit16 v2, p0, 0x400

    const v3, 0xd800

    add-int/2addr v2, v3

    int-to-char v2, v2

    rem-int/lit16 p0, p0, 0x400

    const v3, 0xdc00

    add-int/2addr p0, v3

    int-to-char p0, p0

    const/4 v3, 0x2

    new-array v3, v3, [C

    aput-char v2, v3, v1

    aput-char p0, v3, v0

    return-object v3
.end method

.method public static convertToUtf32(CC)I
    .locals 1

    const v0, 0xd800

    sub-int/2addr p0, v0

    mul-int/lit16 p0, p0, 0x400

    add-int/2addr p0, p1

    add-int/lit16 p0, p0, 0x2400

    return p0
.end method

.method public static convertToUtf32(Ljava/lang/String;I)I
    .locals 2

    .line 154
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xd800

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    add-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x2400

    return v0
.end method

.method public static convertToUtf32([CI)I
    .locals 2

    .line 143
    aget-char v0, p0, p1

    const v1, 0xd800

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 p1, p1, 0x1

    aget-char p0, p0, p1

    add-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x2400

    return v0
.end method

.method public static convertToUtf32(Ljava/lang/String;)[I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 161
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 163
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 164
    invoke-static {p0, v1}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-static {p0, v1}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_2
    invoke-static {v0}, Lcom/itextpdf/io/util/ArrayUtil;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p0

    return-object p0
.end method

.method public static highSurrogate(I)C
    .locals 1

    ushr-int/lit8 p0, p0, 0xa

    const v0, 0xd7c0

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static isCarriageReturnFollowedByLineFeed(Lcom/itextpdf/io/font/otf/GlyphLine;I)Z
    .locals 3

    .line 257
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GlyphLine;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GlyphLine;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-gt p1, v0, :cond_0

    .line 259
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    add-int/2addr p1, v1

    .line 260
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p0

    const/16 p1, 0xa

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isLetterOrDigit(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 0

    .line 294
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p0

    return p0
.end method

.method public static isMark(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p0

    const/16 v0, 0x1c0

    .line 301
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result p0

    shr-int p0, v0, p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNewLine(C)Z
    .locals 0

    .line 243
    invoke-static {p0}, Lcom/itextpdf/io/util/TextUtil;->isNewLine(I)Z

    move-result p0

    return p0
.end method

.method public static isNewLine(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNewLine(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 0

    .line 231
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p0

    .line 232
    invoke-static {p0}, Lcom/itextpdf/io/util/TextUtil;->isNewLine(I)Z

    move-result p0

    return p0
.end method

.method public static isNonBreakingHyphen(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 1

    const/16 v0, 0x2011

    .line 274
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNonPrintable(I)Z
    .locals 1

    .line 286
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorable(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xad

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSpace(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 0

    .line 278
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p0

    return p0
.end method

.method public static isSpaceOrWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSurrogateHigh(C)Z
    .locals 1

    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdbff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSurrogateLow(C)Z
    .locals 1

    const v0, 0xdc00

    if-lt p0, v0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSurrogatePair(Ljava/lang/String;I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-gt p1, v0, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isSurrogateHigh(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/itextpdf/io/util/TextUtil;->isSurrogateLow(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSurrogatePair([CI)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 118
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-gt p1, v0, :cond_0

    aget-char v0, p0, p1

    .line 119
    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isSurrogateHigh(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget-char p0, p0, p1

    .line 120
    invoke-static {p0}, Lcom/itextpdf/io/util/TextUtil;->isSurrogateLow(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUni0020(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 0

    .line 270
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result p0

    return p0
.end method

.method public static isWhitespaceOrNonPrintable(I)Z
    .locals 1

    .line 290
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itextpdf/io/util/TextUtil;->isNonPrintable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static lowSurrogate(I)C
    .locals 1

    and-int/lit16 p0, p0, 0x3ff

    const v0, 0xdc00

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method
