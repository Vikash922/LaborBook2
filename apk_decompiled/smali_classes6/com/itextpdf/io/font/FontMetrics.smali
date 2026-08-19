.class public Lcom/itextpdf/io/font/FontMetrics;
.super Ljava/lang/Object;
.source "FontMetrics.java"


# instance fields
.field private advanceWidthMax:I

.field private ascender:I

.field private bbox:[I

.field private capHeight:I

.field private descender:I

.field private glyphWidths:[I

.field private isFixedPitch:Z

.field private italicAngle:F

.field private lineGap:I

.field protected normalizationCoef:F

.field private numOfGlyphs:I

.field private stemH:I

.field private stemV:I

.field private strikeoutPosition:I

.field private strikeoutSize:I

.field private subscriptOffset:I

.field private subscriptSize:I

.field private superscriptOffset:I

.field private superscriptSize:I

.field private typoAscender:I

.field private typoDescender:I

.field private underlinePosition:I

.field private underlineThickness:I

.field private unitsPerEm:I

.field private winAscender:I

.field private winDescender:I

.field private xHeight:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    const/16 v0, 0x3e8

    .line 53
    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->unitsPerEm:I

    const/16 v1, 0x320

    .line 59
    iput v1, p0, Lcom/itextpdf/io/font/FontMetrics;->typoAscender:I

    const/16 v1, -0xc8

    .line 61
    iput v1, p0, Lcom/itextpdf/io/font/FontMetrics;->typoDescender:I

    const/16 v2, 0x2bc

    .line 63
    iput v2, p0, Lcom/itextpdf/io/font/FontMetrics;->capHeight:I

    const/4 v2, 0x0

    .line 65
    iput v2, p0, Lcom/itextpdf/io/font/FontMetrics;->xHeight:I

    const/4 v3, 0x0

    .line 67
    iput v3, p0, Lcom/itextpdf/io/font/FontMetrics;->italicAngle:F

    const/16 v3, -0x32

    const/16 v4, 0x384

    .line 70
    filled-new-array {v3, v1, v0, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/FontMetrics;->bbox:[I

    const/16 v0, -0x64

    .line 84
    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->underlinePosition:I

    const/16 v0, 0x32

    .line 86
    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->underlineThickness:I

    const/16 v0, 0x50

    .line 100
    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->stemV:I

    .line 102
    iput v2, p0, Lcom/itextpdf/io/font/FontMetrics;->stemH:I

    return-void
.end method


# virtual methods
.method public getAdvanceWidthMax()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->advanceWidthMax:I

    return v0
.end method

.method public getAscender()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->ascender:I

    return v0
.end method

.method public getBbox()[I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/itextpdf/io/font/FontMetrics;->bbox:[I

    return-object v0
.end method

.method public getCapHeight()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->capHeight:I

    return v0
.end method

.method public getDescender()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->descender:I

    return v0
.end method

.method public getGlyphWidths()[I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/itextpdf/io/font/FontMetrics;->glyphWidths:[I

    return-object v0
.end method

.method public getItalicAngle()F
    .locals 1

    .line 161
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->italicAngle:F

    return v0
.end method

.method public getLineGap()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->lineGap:I

    return v0
.end method

.method public getNumberOfGlyphs()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->numOfGlyphs:I

    return v0
.end method

.method public getStemH()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->stemH:I

    return v0
.end method

.method public getStemV()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->stemV:I

    return v0
.end method

.method public getStrikeoutPosition()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->strikeoutPosition:I

    return v0
.end method

.method public getStrikeoutSize()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->strikeoutSize:I

    return v0
.end method

.method public getSubscriptOffset()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->subscriptOffset:I

    return v0
.end method

.method public getSubscriptSize()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->subscriptSize:I

    return v0
.end method

.method public getSuperscriptOffset()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->superscriptOffset:I

    return v0
.end method

.method public getSuperscriptSize()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->superscriptSize:I

    return v0
.end method

.method public getTypoAscender()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->typoAscender:I

    return v0
.end method

.method public getTypoDescender()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->typoDescender:I

    return v0
.end method

.method public getUnderlinePosition()I
    .locals 2

    .line 200
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->underlinePosition:I

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->underlineThickness:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getUnderlineThickness()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->underlineThickness:I

    return v0
.end method

.method public getUnitsPerEm()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->unitsPerEm:I

    return v0
.end method

.method public getWinAscender()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->winAscender:I

    return v0
.end method

.method public getWinDescender()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->winDescender:I

    return v0
.end method

.method public getXHeight()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->xHeight:I

    return v0
.end method

.method public isFixedPitch()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/itextpdf/io/font/FontMetrics;->isFixedPitch:Z

    return v0
.end method

.method protected setAdvanceWidthMax(I)V
    .locals 1

    int-to-float p1, p1

    .line 329
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->advanceWidthMax:I

    return-void
.end method

.method protected setAscender(I)V
    .locals 1

    int-to-float p1, p1

    .line 309
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->ascender:I

    return-void
.end method

.method public setBbox(IIII)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/itextpdf/io/font/FontMetrics;->bbox:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 170
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 171
    aput p3, v0, p1

    const/4 p1, 0x3

    .line 172
    aput p4, v0, p1

    return-void
.end method

.method protected setCapHeight(I)V
    .locals 1

    int-to-float p1, p1

    .line 297
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->capHeight:I

    return-void
.end method

.method protected setDescender(I)V
    .locals 1

    int-to-float p1, p1

    .line 313
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->descender:I

    return-void
.end method

.method protected setGlyphWidths([I)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/itextpdf/io/font/FontMetrics;->glyphWidths:[I

    return-void
.end method

.method protected setIsFixedPitch(Z)V
    .locals 0

    .line 374
    iput-boolean p1, p0, Lcom/itextpdf/io/font/FontMetrics;->isFixedPitch:Z

    return-void
.end method

.method protected setItalicAngle(F)V
    .locals 0

    .line 305
    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->italicAngle:F

    return-void
.end method

.method protected setLineGap(I)V
    .locals 1

    int-to-float p1, p1

    .line 317
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->lineGap:I

    return-void
.end method

.method protected setNumberOfGlyphs(I)V
    .locals 0

    .line 256
    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->numOfGlyphs:I

    return-void
.end method

.method protected setStemH(I)V
    .locals 0

    .line 370
    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->stemH:I

    return-void
.end method

.method public setStemV(I)V
    .locals 0

    .line 366
    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->stemV:I

    return-void
.end method

.method protected setStrikeoutPosition(I)V
    .locals 1

    int-to-float p1, p1

    .line 341
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->strikeoutPosition:I

    return-void
.end method

.method protected setStrikeoutSize(I)V
    .locals 1

    int-to-float p1, p1

    .line 345
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->strikeoutSize:I

    return-void
.end method

.method protected setSubscriptOffset(I)V
    .locals 1

    int-to-float p1, p1

    .line 353
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->subscriptOffset:I

    return-void
.end method

.method protected setSubscriptSize(I)V
    .locals 1

    int-to-float p1, p1

    .line 349
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->subscriptSize:I

    return-void
.end method

.method protected setSuperscriptOffset(I)V
    .locals 1

    int-to-float p1, p1

    .line 361
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->superscriptOffset:I

    return-void
.end method

.method protected setSuperscriptSize(I)V
    .locals 0

    .line 357
    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->superscriptSize:I

    return-void
.end method

.method protected setTypoAscender(I)V
    .locals 1

    int-to-float p1, p1

    .line 272
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->typoAscender:I

    return-void
.end method

.method protected setTypoDescender(I)V
    .locals 1

    int-to-float p1, p1

    .line 284
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->typoDescender:I

    return-void
.end method

.method protected setUnderlinePosition(I)V
    .locals 1

    int-to-float p1, p1

    .line 333
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->underlinePosition:I

    return-void
.end method

.method protected setUnderlineThickness(I)V
    .locals 0

    .line 337
    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->underlineThickness:I

    return-void
.end method

.method protected setUnitsPerEm(I)V
    .locals 1

    .line 244
    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->unitsPerEm:I

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 245
    iput v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    return-void
.end method

.method protected setWinAscender(I)V
    .locals 1

    int-to-float p1, p1

    .line 321
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->winAscender:I

    return-void
.end method

.method protected setWinDescender(I)V
    .locals 1

    int-to-float p1, p1

    .line 325
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->winDescender:I

    return-void
.end method

.method protected setXHeight(I)V
    .locals 1

    int-to-float p1, p1

    .line 301
    iget v0, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/itextpdf/io/font/FontMetrics;->xHeight:I

    return-void
.end method

.method protected updateBbox(FFFF)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/itextpdf/io/font/FontMetrics;->bbox:[I

    iget v1, p0, Lcom/itextpdf/io/font/FontMetrics;->normalizationCoef:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v2, 0x0

    aput p1, v0, v2

    mul-float/2addr p2, v1

    float-to-int p1, p2

    const/4 p2, 0x1

    .line 250
    aput p1, v0, p2

    mul-float/2addr p3, v1

    float-to-int p1, p3

    const/4 p2, 0x2

    .line 251
    aput p1, v0, p2

    mul-float/2addr p4, v1

    float-to-int p1, p4

    const/4 p2, 0x3

    .line 252
    aput p1, v0, p2

    return-void
.end method
