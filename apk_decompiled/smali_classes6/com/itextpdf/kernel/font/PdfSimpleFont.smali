.class public abstract Lcom/itextpdf/kernel/font/PdfSimpleFont;
.super Lcom/itextpdf/kernel/font/PdfFont;
.source "PdfSimpleFont.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/itextpdf/io/font/FontProgram;",
        ">",
        "Lcom/itextpdf/kernel/font/PdfFont;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

.field protected forceWidthsOutput:Z

.field protected toUnicode:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

.field protected usedGlyphs:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfFont;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->forceWidthsOutput:Z

    const/16 v0, 0x100

    .line 85
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->usedGlyphs:[B

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 94
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->forceWidthsOutput:Z

    const/16 v0, 0x100

    .line 85
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->usedGlyphs:[B

    .line 95
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ToUnicode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/kernel/font/FontUtil;->processToUnicode(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->toUnicode:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    return-void
.end method

.method private isAppendableGlyph(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 1

    .line 183
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p1

    invoke-static {p1}, Lcom/itextpdf/io/util/TextUtil;->isWhitespaceOrNonPrintable(I)Z

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


# virtual methods
.method protected abstract addFontStream(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method public appendAnyGlyph(Ljava/lang/String;ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)I"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 170
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public appendDecodedCodesToGlyphsList(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfString;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfString;",
            ")Z"
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v0

    .line 307
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object p2

    .line 308
    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_6

    aget-byte v5, p2, v4

    and-int/lit16 v5, v5, 0xff

    .line 311
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getToUnicode()Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 312
    invoke-virtual {v6, v5}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->lookup(I)[C

    move-result-object v7

    if-eqz v7, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 314
    invoke-virtual {v6, v5}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->lookup(I)[C

    move-result-object v8

    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v8

    if-nez v8, :cond_3

    .line 316
    new-instance v8, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-direct {v8, v7}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;)V

    .line 317
    invoke-virtual {v6, v5}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->lookup(I)[C

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/itextpdf/io/font/otf/Glyph;->setChars([C)V

    move-object v7, v8

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 320
    :cond_1
    invoke-virtual {v0, v5}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v6

    const/4 v8, -0x1

    if-le v6, v8, :cond_2

    .line 322
    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v7

    goto :goto_1

    .line 323
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->getBaseEncoding()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 324
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v7

    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 328
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 330
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 331
    invoke-interface {v2}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 332
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find glyph with the following code: {0}"

    invoke-static {v6, v5}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_5
    move v2, v3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method

.method public appendGlyphs(Ljava/lang/String;IILjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)I"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    if-gt p2, p3, :cond_3

    .line 135
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 137
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gt p2, p3, :cond_3

    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->containsGlyph(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->isAppendableGlyph(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    :cond_1
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    if-nez v0, :cond_3

    .line 149
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isWhitespaceOrNonPrintable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method protected buildWidthsArray(II)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 4

    .line 507
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_3

    .line 509
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->usedGlyphs:[B

    aget-byte v1, v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 510
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_2

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    .line 513
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    .line 514
    :goto_1
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v2

    :cond_2
    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public convertToBytes(Lcom/itextpdf/io/font/otf/Glyph;)[B
    .locals 5

    const/4 v0, 0x1

    .line 241
    new-array v1, v0, [B

    .line 242
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    goto :goto_0

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/itextpdf/io/font/FontEncoding;->convertToByte(I)I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    .line 251
    :goto_0
    iget-object p1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->usedGlyphs:[B

    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    aput-byte v0, p1, v2

    return-object v1

    .line 248
    :cond_1
    sget-object p1, Lcom/itextpdf/kernel/font/PdfSimpleFont;->EMPTY_BYTES:[B

    return-object p1
.end method

.method public convertToBytes(Lcom/itextpdf/io/font/otf/GlyphLine;)[B
    .locals 7

    if-eqz p1, :cond_4

    .line 216
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 218
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    move v3, v1

    .line 219
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 220
    invoke-virtual {p1, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    :cond_0
    move v1, v2

    move v3, v1

    .line 223
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 224
    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {p1, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 225
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {p1, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontEncoding;->convertToByte(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    move v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_2
    invoke-static {v0, v3}, Lcom/itextpdf/io/util/ArrayUtil;->shortenArray([BI)[B

    move-result-object p1

    .line 230
    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_3

    aget-byte v1, p1, v2

    .line 231
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->usedGlyphs:[B

    and-int/lit16 v1, v1, 0xff

    const/4 v4, 0x1

    aput-byte v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object p1

    .line 235
    :cond_4
    sget-object p1, Lcom/itextpdf/kernel/font/PdfSimpleFont;->EMPTY_BYTES:[B

    return-object p1
.end method

.method public convertToBytes(Ljava/lang/String;)[B
    .locals 5

    .line 206
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontEncoding;->convertToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 207
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 208
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->usedGlyphs:[B

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x1

    aput-byte v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public createGlyphLine(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 4

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 112
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 120
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    :cond_3
    new-instance p1, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {p1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public decode(Lcom/itextpdf/kernel/pdf/PdfString;)Ljava/lang/String;
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 2

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->appendDecodedCodesToGlyphsList(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfString;)Z

    .line 296
    new-instance p1, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {p1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method protected flushFontData(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 9

    .line 370
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    .line 377
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->usedGlyphs:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v2, v1

    :goto_2
    if-lt v2, v0, :cond_4

    .line 380
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->usedGlyphs:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-le v0, v1, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v1, v2

    .line 386
    :goto_4
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->isSubset()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->isEmbedded()Z

    move-result v2

    if-nez v2, :cond_a

    .line 388
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->usedGlyphs:[B

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    move v0, p2

    .line 389
    :goto_5
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->usedGlyphs:[B

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 392
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v2, v0}, Lcom/itextpdf/io/font/FontEncoding;->canDecode(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 393
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->usedGlyphs:[B

    aput-byte v3, v2, v0

    goto :goto_6

    .line 394
    :cond_7
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontEncoding;->hasDifferences()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v2, v0}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 395
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->usedGlyphs:[B

    aput-byte v3, v2, v0

    goto :goto_6

    .line 397
    :cond_8
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->usedGlyphs:[B

    aput-byte p2, v2, v0

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    move v0, p2

    .line 401
    :cond_a
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontEncoding;->hasDifferences()Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v0

    .line 403
    :goto_7
    const-string v4, ".notdef"

    if-gt v2, v1, :cond_c

    .line 404
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v5, v2}, Lcom/itextpdf/io/font/FontEncoding;->getDifference(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    move v0, v2

    goto :goto_8

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    :goto_8
    move v2, v1

    :goto_9
    if-lt v2, v0, :cond_e

    .line 410
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v5, v2}, Lcom/itextpdf/io/font/FontEncoding;->getDifference(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    move v1, v2

    goto :goto_a

    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 415
    :cond_e
    :goto_a
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 416
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 417
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move v5, v0

    move v6, v3

    :goto_b
    if-gt v5, v1, :cond_11

    .line 420
    iget-object v7, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->usedGlyphs:[B

    aget-byte v7, v7, v5

    if-eqz v7, :cond_10

    if-eqz v6, :cond_f

    .line 422
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v6, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    move v6, p2

    .line 425
    :cond_f
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v8, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v8, v5}, Lcom/itextpdf/io/font/FontEncoding;->getDifference(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_c

    :cond_10
    move v6, v3

    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 430
    :cond_11
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Differences:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, p2, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 431
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_e

    .line 432
    :cond_12
    iget-object p2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {p2}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result p2

    if-nez p2, :cond_14

    .line 433
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontEncoding;->getBaseEncoding()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cp1252"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->WinAnsiEncoding:Lcom/itextpdf/kernel/pdf/PdfName;

    goto :goto_d

    :cond_13
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->MacRomanEncoding:Lcom/itextpdf/kernel/pdf/PdfName;

    :goto_d
    invoke-virtual {p2, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 438
    :cond_14
    :goto_e
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->isForceWidthsOutput()Z

    move-result p2

    if-nez p2, :cond_15

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->isBuiltInFont()Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {p2}, Lcom/itextpdf/io/font/FontEncoding;->hasDifferences()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 439
    :cond_15
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FirstChar:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p2, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 440
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->LastChar:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p2, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 441
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->buildWidthsArray(II)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p2

    .line 442
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Widths:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 444
    :cond_16
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->isBuiltInFont()Z

    move-result p2

    if-nez p2, :cond_17

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    goto :goto_f

    :cond_17
    const/4 p1, 0x0

    :goto_f
    if-eqz p1, :cond_18

    .line 446
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 447
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 448
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush()V

    :cond_18
    return-void
.end method

.method public getContentWidth(Lcom/itextpdf/kernel/pdf/PdfString;)F
    .locals 3

    .line 344
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object p1

    .line 345
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v2, :cond_0

    .line 346
    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected getFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 6

    .line 469
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    .line 470
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v1

    .line 471
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 472
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->makeObjectIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    .line 473
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 474
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FontName:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v4, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 475
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Ascent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 476
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->CapHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getCapHeight()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 477
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Descent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 478
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->FontBBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getBbox()[I

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/io/util/ArrayUtil;->cloneArray([I)[I

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([I)V

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 479
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->ItalicAngle:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getItalicAngle()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 480
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->StemV:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getStemV()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 481
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getXHeight()I

    move-result p1

    if-lez p1, :cond_0

    .line 482
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->XHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getXHeight()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 484
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getStemH()I

    move-result p1

    if-lez p1, :cond_1

    .line 485
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->StemH:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getStemH()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 487
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontWeight()I

    move-result p1

    if-lez p1, :cond_2

    .line 488
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->FontWeight:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontWeight()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 490
    :cond_2
    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_3

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    array-length p1, p1

    const/4 v3, 0x4

    if-lt p1, v3, :cond_3

    .line 491
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->FontFamily:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-direct {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 494
    :cond_3
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->addFontStream(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 495
    iget-object p1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontProgram;->getPdfFontFlags()I

    move-result p1

    .line 497
    sget v0, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Symbolic:I

    sget v1, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Nonsymbolic:I

    or-int/2addr v0, v1

    not-int v0, v0

    and-int/2addr p1, v0

    .line 499
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Symbolic:I

    goto :goto_0

    :cond_4
    sget v0, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Nonsymbolic:I

    :goto_0
    or-int/2addr p1, v0

    .line 502
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Flags:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v2
.end method

.method public getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    return-object v0
.end method

.method public getToUnicode()Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->toUnicode:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    return-object v0
.end method

.method protected isBuiltInFont()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->isBuiltWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    .line 105
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/FontEncoding;->isBuiltWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isForceWidthsOutput()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->forceWidthsOutput:Z

    return v0
.end method

.method protected setFontProgram(Lcom/itextpdf/io/font/FontProgram;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 523
    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    return-void
.end method

.method public setForceWidthsOutput(Z)V
    .locals 0

    .line 366
    iput-boolean p1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->forceWidthsOutput:Z

    return-void
.end method

.method public writeText(Lcom/itextpdf/io/font/otf/GlyphLine;IILcom/itextpdf/kernel/pdf/PdfOutputStream;)V
    .locals 7

    sub-int v0, p3, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 257
    new-array v0, v0, [B

    .line 260
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    if-gt p2, p3, :cond_2

    add-int/lit8 v4, v2, 0x1

    .line 262
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 p2, p2, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_1
    if-gt p2, p3, :cond_2

    .line 266
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    .line 267
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    .line 268
    iget-object v6, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/itextpdf/io/font/FontEncoding;->convertToByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    move v2, v5

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 272
    :cond_2
    invoke-static {v0, v2}, Lcom/itextpdf/io/util/ArrayUtil;->shortenArray([BI)[B

    move-result-object p1

    .line 273
    array-length p2, p1

    :goto_2
    if-ge v3, p2, :cond_3

    aget-byte p3, p1, v3

    .line 274
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->usedGlyphs:[B

    and-int/lit16 p3, p3, 0xff

    aput-byte v1, v0, p3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 276
    :cond_3
    invoke-static {p4, p1}, Lcom/itextpdf/io/util/StreamUtil;->writeEscapedString(Ljava/io/OutputStream;[B)V

    return-void
.end method

.method public writeText(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfOutputStream;)V
    .locals 0

    .line 281
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->convertToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2, p1}, Lcom/itextpdf/io/util/StreamUtil;->writeEscapedString(Ljava/io/OutputStream;[B)V

    return-void
.end method
