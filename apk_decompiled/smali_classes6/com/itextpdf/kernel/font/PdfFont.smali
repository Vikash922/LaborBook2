.class public abstract Lcom/itextpdf/kernel/font/PdfFont;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfFont.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field protected static final EMPTY_BYTES:[B

.field public static final SIMPLE_FONT_MAX_CHAR_CODE_VALUE:I = 0xff


# instance fields
.field protected embedded:Z

.field protected fontProgram:Lcom/itextpdf/io/font/FontProgram;

.field protected newFont:Z

.field protected notdefGlyphs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;"
        }
    .end annotation
.end field

.field protected subset:Z

.field protected subsetRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    new-array v0, v0, [B

    sput-object v0, Lcom/itextpdf/kernel/font/PdfFont;->EMPTY_BYTES:[B

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 103
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->notdefGlyphs:Ljava/util/Map;

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->newFont:Z

    const/4 v1, 0x0

    .line 90
    iput-boolean v1, p0, Lcom/itextpdf/kernel/font/PdfFont;->embedded:Z

    .line 94
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->subset:Z

    .line 104
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 98
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 80
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfFont;->notdefGlyphs:Ljava/util/Map;

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/itextpdf/kernel/font/PdfFont;->newFont:Z

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->embedded:Z

    .line 94
    iput-boolean p1, p0, Lcom/itextpdf/kernel/font/PdfFont;->subset:Z

    .line 99
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method protected static updateSubsetPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 507
    invoke-static {p0}, Lcom/itextpdf/kernel/font/FontUtil;->addRandomSubsetPrefixForFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addSubsetRange([I)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->subsetRanges:Ljava/util/List;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->subsetRanges:Ljava/util/List;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->subsetRanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 422
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->setSubset(Z)V

    return-void
.end method

.method public abstract appendAnyGlyph(Ljava/lang/String;ILjava/util/List;)I
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
.end method

.method public appendDecodedCodesToGlyphsList(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfString;)Z
    .locals 0
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

    const/4 p1, 0x0

    return p1
.end method

.method public abstract appendGlyphs(Ljava/lang/String;IILjava/util/List;)I
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
.end method

.method public containsGlyph(I)Z
    .locals 3

    .line 123
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->isFontSpecific()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result p1

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 129
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result p1

    if-lez p1, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public abstract convertToBytes(Lcom/itextpdf/io/font/otf/Glyph;)[B
.end method

.method public abstract convertToBytes(Lcom/itextpdf/io/font/otf/GlyphLine;)[B
.end method

.method public abstract convertToBytes(Ljava/lang/String;)[B
.end method

.method public abstract createGlyphLine(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/GlyphLine;
.end method

.method public abstract decode(Lcom/itextpdf/kernel/pdf/PdfString;)Ljava/lang/String;
.end method

.method public abstract decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;
.end method

.method public flush()V
    .locals 0

    .line 486
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->flush()V

    return-void
.end method

.method public getAscent(IF)I
    .locals 2

    .line 363
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 367
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getBbox()[I

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    .line 368
    aget v1, p1, v1

    if-lez v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result p1

    if-lez p1, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v0

    :cond_2
    :goto_0
    int-to-float p1, v0

    mul-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public getAscent(Ljava/lang/String;F)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 331
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 333
    invoke-static {p1, v0}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    invoke-static {p1, v0}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 339
    :goto_1
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 341
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getBbox()[I

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    .line 342
    aget v3, v2, v3

    if-le v3, v1, :cond_1

    move v1, v3

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    .line 344
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 345
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    int-to-float p1, v1

    mul-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public abstract getContentWidth(Lcom/itextpdf/kernel/pdf/PdfString;)F
.end method

.method public getDescent(IF)I
    .locals 2

    .line 307
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 311
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getBbox()[I

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 312
    aget v1, p1, v1

    if-gez v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 314
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result p1

    if-gez p1, :cond_2

    .line 315
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v0

    :cond_2
    :goto_0
    int-to-float p1, v0

    mul-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public getDescent(Ljava/lang/String;F)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 276
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 278
    invoke-static {p1, v0}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    invoke-static {p1, v0}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 284
    :goto_1
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 286
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getBbox()[I

    move-result-object v2

    if-eqz v2, :cond_1

    .line 287
    aget v4, v2, v3

    if-ge v4, v1, :cond_1

    move v1, v4

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 290
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v1

    :cond_2
    :goto_2
    add-int/2addr v0, v3

    goto :goto_0

    :cond_3
    int-to-float p1, v1

    mul-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method protected abstract getFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
.end method

.method public getFontProgram()Lcom/itextpdf/io/font/FontProgram;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    return-object v0
.end method

.method public abstract getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;
.end method

.method protected getPdfFontStream([B[I)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 524
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 525
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfFont;->makeObjectIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    const/4 p1, 0x0

    .line 526
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_0

    .line 527
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Length"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    aget p1, p2, p1

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move p1, v3

    goto :goto_0

    :cond_0
    return-object v0

    .line 522
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Font embedding issue."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getWidth(IF)F
    .locals 0

    .line 228
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    return p1
.end method

.method public getWidth(Ljava/lang/String;F)F
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    return p1
.end method

.method public getWidth(I)I
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getWidth(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 239
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 241
    invoke-static {p1, v0}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-static {p1, v0}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 247
    :goto_1
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 249
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isBuiltWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEmbedded()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->embedded:Z

    return v0
.end method

.method public isSubset()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfFont;->subset:Z

    return v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method makeObjectIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)Z
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    const/4 p1, 0x1

    return p1

    .line 545
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/kernel/font/PdfFont;->markObjectAsIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setSubset(Z)V
    .locals 0

    .line 405
    iput-boolean p1, p0, Lcom/itextpdf/kernel/font/PdfFont;->subset:Z

    return-void
.end method

.method public splitString(Ljava/lang/String;FF)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v5, v2

    .line 431
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 432
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 433
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v1

    .line 436
    :cond_0
    invoke-virtual {p0, v6, p2}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(IF)F

    move-result v7

    add-float/2addr v5, v7

    cmpl-float v8, v5, p3

    if-gez v8, :cond_1

    const/16 v8, 0xa

    if-ne v6, v8, :cond_4

    :cond_1
    if-ge v3, v4, :cond_2

    .line 439
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v4, 0x1

    move v3, v1

    move v5, v2

    move v1, v4

    goto :goto_1

    :cond_2
    if-eq v3, v1, :cond_3

    .line 444
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    move v5, v7

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v3, 0x1

    .line 448
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v1, 0x1

    move v5, v2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PdfFont{fontProgram="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeText(Lcom/itextpdf/io/font/otf/GlyphLine;IILcom/itextpdf/kernel/pdf/PdfOutputStream;)V
.end method

.method public abstract writeText(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfOutputStream;)V
.end method
