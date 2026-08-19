.class public Lcom/itextpdf/io/font/TrueTypeFont;
.super Lcom/itextpdf/io/font/FontProgram;
.source "TrueTypeFont.java"


# instance fields
.field protected bBoxes:[[I

.field private fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

.field private fontStreamBytes:[B

.field private gdefTable:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

.field private gposTable:Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;

.field private gsubTable:Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;

.field protected isVertical:Z

.field protected kerning:Lcom/itextpdf/io/util/IntHashtable;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontProgram;-><init>()V

    .line 87
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->kerning:Lcom/itextpdf/io/util/IntHashtable;

    .line 98
    new-instance v0, Lcom/itextpdf/io/font/FontNames;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontNames;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    return-void
.end method

.method private constructor <init>(Lcom/itextpdf/io/font/OpenTypeParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontProgram;-><init>()V

    .line 87
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->kerning:Lcom/itextpdf/io/util/IntHashtable;

    .line 92
    iput-object p1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/OpenTypeParser;->loadTables(Z)V

    .line 94
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->initializeFontProperties()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/font/OpenTypeParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>(Lcom/itextpdf/io/font/OpenTypeParser;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/io/font/OpenTypeParser;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>(Lcom/itextpdf/io/font/OpenTypeParser;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/font/OpenTypeParser;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>(Lcom/itextpdf/io/font/OpenTypeParser;)V

    return-void
.end method

.method constructor <init>([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/io/font/OpenTypeParser;-><init>([BI)V

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>(Lcom/itextpdf/io/font/OpenTypeParser;)V

    return-void
.end method

.method private initializeFontProperties()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->getHeadTable()Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/OpenTypeParser;->getHheaTable()Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    move-result-object v1

    .line 269
    iget-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/OpenTypeParser;->getOs_2Table()Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    move-result-object v2

    .line 270
    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/OpenTypeParser;->getPostTable()Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    move-result-object v3

    .line 271
    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/OpenTypeParser;->getCmapTable()Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->fontSpecific:Z

    iput-boolean v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->isFontSpecific:Z

    .line 272
    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget v5, v0, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->unitsPerEm:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/OpenTypeParser;->readKerning(I)Lcom/itextpdf/io/util/IntHashtable;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->kerning:Lcom/itextpdf/io/util/IntHashtable;

    .line 273
    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget v5, v0, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->unitsPerEm:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/OpenTypeParser;->readBbox(I)[[I

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->bBoxes:[[I

    .line 276
    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/OpenTypeParser;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    .line 279
    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v5, v0, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->unitsPerEm:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontMetrics;->setUnitsPerEm(I)V

    .line 280
    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v5, v0, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->xMin:S

    int-to-float v5, v5

    iget-short v6, v0, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->yMin:S

    int-to-float v6, v6

    iget-short v7, v0, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->xMax:S

    int-to-float v7, v7

    iget-short v0, v0, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->yMax:S

    int-to-float v0, v0

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/itextpdf/io/font/FontMetrics;->updateBbox(FFFF)V

    .line 281
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/OpenTypeParser;->readNumGlyphs()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/FontMetrics;->setNumberOfGlyphs(I)V

    .line 282
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/OpenTypeParser;->getGlyphWidthsByIndex()[I

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/FontMetrics;->setGlyphWidths([I)V

    .line 283
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v4, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoAscender:S

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/FontMetrics;->setTypoAscender(I)V

    .line 284
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v4, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoDescender:S

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/FontMetrics;->setTypoDescender(I)V

    .line 285
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v4, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sCapHeight:I

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/FontMetrics;->setCapHeight(I)V

    .line 286
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v4, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sxHeight:I

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/FontMetrics;->setXHeight(I)V

    .line 287
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v4, v3, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->italicAngle:F

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/FontMetrics;->setItalicAngle(F)V

    .line 288
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v4, v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->Ascender:S

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/FontMetrics;->setAscender(I)V

    .line 289
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v4, v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->Descender:S

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/FontMetrics;->setDescender(I)V

    .line 290
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v4, v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->LineGap:S

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/FontMetrics;->setLineGap(I)V

    .line 291
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v4, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWinAscent:I

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/FontMetrics;->setWinAscender(I)V

    .line 292
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v4, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWinDescent:I

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/FontMetrics;->setWinDescender(I)V

    .line 293
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v1, v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->advanceWidthMax:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setAdvanceWidthMax(I)V

    .line 294
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v1, v3, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->underlinePosition:I

    iget v4, v3, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->underlineThickness:I

    sub-int/2addr v1, v4

    const/4 v4, 0x2

    div-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setUnderlinePosition(I)V

    .line 295
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v1, v3, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->underlineThickness:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setUnderlineThickness(I)V

    .line 296
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v1, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->yStrikeoutPosition:S

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setStrikeoutPosition(I)V

    .line 297
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v1, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->yStrikeoutSize:S

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setStrikeoutSize(I)V

    .line 298
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v1, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySubscriptYOffset:S

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setSubscriptOffset(I)V

    .line 299
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v1, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySubscriptYSize:S

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setSubscriptSize(I)V

    .line 300
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v1, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySuperscriptYOffset:S

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setSuperscriptOffset(I)V

    .line 301
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v1, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySuperscriptYSize:S

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setSuperscriptSize(I)V

    .line 302
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-boolean v1, v3, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->isFixedPitch:Z

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setIsFixedPitch(Z)V

    .line 305
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 307
    iget-object v5, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontIdentification:Lcom/itextpdf/io/font/FontIdentification;

    aget-object v0, v0, v3

    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Lcom/itextpdf/io/font/FontIdentification;->setTtfVersion(Ljava/lang/String;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v5, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontIdentification:Lcom/itextpdf/io/font/FontIdentification;

    aget-object v0, v0, v3

    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Lcom/itextpdf/io/font/FontIdentification;->setTtfVersion(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0xc

    .line 314
    new-array v0, v0, [B

    .line 315
    iget-short v1, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sFamilyClass:S

    int-to-byte v1, v1

    const/4 v5, 0x1

    aput-byte v1, v0, v5

    .line 316
    iget-short v1, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sFamilyClass:S

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 317
    iget-object v1, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->panose:[B

    const/16 v2, 0xa

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontIdentification:Lcom/itextpdf/io/font/FontIdentification;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/font/FontIdentification;->setPanose([B)V

    .line 320
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getActiveCmap()Ljava/util/Map;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/OpenTypeParser;->getGlyphWidthsByIndex()[I

    move-result-object v1

    .line 322
    iget-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontMetrics;->getNumberOfGlyphs()I

    move-result v2

    .line 323
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->unicodeToGlyph:Ljava/util/Map;

    .line 324
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    .line 325
    iput v3, p0, Lcom/itextpdf/io/font/TrueTypeFont;->avgWidth:I

    .line 327
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->isCff()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 328
    new-instance v4, Lcom/itextpdf/io/font/CFFFontSubset;

    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontStreamBytes()[B

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/itextpdf/io/font/CFFFontSubset;-><init>([B)V

    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 330
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 331
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    aget v8, v8, v3

    if-lt v8, v2, :cond_3

    .line 333
    const-class v7, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-static {v7}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v7

    .line 335
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v9, v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 334
    const-string v9, "Font {0} has invalid glyph: {1}"

    invoke-static {v9, v8}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 340
    :cond_3
    iget-object v9, p0, Lcom/itextpdf/io/font/TrueTypeFont;->bBoxes:[[I

    if-eqz v9, :cond_4

    aget-object v9, v9, v8

    goto :goto_2

    :cond_4
    move-object v9, v5

    :goto_2
    if-eqz v4, :cond_5

    .line 341
    invoke-virtual {v4}, Lcom/itextpdf/io/font/CFFFontSubset;->isCID()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 342
    invoke-virtual {v4, v8}, Lcom/itextpdf/io/font/CFFFontSubset;->getCidForGlyphId(I)I

    move-result v10

    .line 343
    new-instance v11, Lcom/itextpdf/io/font/GidAwareGlyph;

    aget v12, v1, v8

    invoke-direct {v11, v10, v12, v7, v9}, Lcom/itextpdf/io/font/GidAwareGlyph;-><init>(III[I)V

    .line 344
    invoke-virtual {v11, v8}, Lcom/itextpdf/io/font/GidAwareGlyph;->setGid(I)V

    move v8, v10

    goto :goto_3

    .line 348
    :cond_5
    new-instance v11, Lcom/itextpdf/io/font/otf/Glyph;

    aget v10, v1, v8

    invoke-direct {v11, v8, v10, v7, v9}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III[I)V

    .line 351
    :goto_3
    iget-object v9, p0, Lcom/itextpdf/io/font/TrueTypeFont;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v7, p0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 355
    iget-object v7, p0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_6
    iget v7, p0, Lcom/itextpdf/io/font/TrueTypeFont;->avgWidth:I

    invoke-virtual {v11}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/itextpdf/io/font/TrueTypeFont;->avgWidth:I

    goto/16 :goto_1

    .line 359
    :cond_7
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->fixSpaceIssue()V

    move v0, v3

    .line 360
    :goto_4
    array-length v2, v1

    if-ge v0, v2, :cond_9

    .line 361
    iget-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    .line 364
    :cond_8
    new-instance v2, Lcom/itextpdf/io/font/otf/Glyph;

    aget v4, v1, v0

    const/4 v5, -0x1

    invoke-direct {v2, v0, v4, v5}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    .line 365
    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->avgWidth:I

    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v2

    add-int/2addr v4, v2

    iput v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->avgWidth:I

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 369
    :cond_9
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_a

    .line 370
    iget v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->avgWidth:I

    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->avgWidth:I

    .line 373
    :cond_a
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->readGdefTable()V

    .line 374
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->readGsubTable()V

    .line 375
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->readGposTable()V

    .line 377
    iput-boolean v3, p0, Lcom/itextpdf/io/font/TrueTypeFont;->isVertical:Z

    return-void
.end method

.method private static toCompactRange(Ljava/util/List;)[I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;)[I"
        }
    .end annotation

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move v3, v2

    .line 457
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 458
    aget v4, v1, v3

    add-int/lit8 v5, v3, 0x1

    aget v6, v1, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aget v6, v1, v3

    aget v5, v1, v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const v6, 0xffff

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    move p0, v2

    .line 461
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-ge p0, v1, :cond_6

    add-int/lit8 v1, p0, 0x1

    move v4, v1

    .line 462
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 463
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 464
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 465
    aget v7, v5, v2

    aget v8, v6, v2

    if-lt v7, v8, :cond_2

    aget v9, v6, v3

    if-le v7, v9, :cond_3

    :cond_2
    aget v9, v5, v3

    if-lt v9, v8, :cond_4

    aget v9, v6, v3

    if-gt v7, v9, :cond_4

    .line 466
    :cond_3
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v5, v2

    .line 467
    aget v7, v5, v3

    aget v6, v6, v3

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v5, v3

    .line 468
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    :cond_4
    add-int/2addr v4, v3

    goto :goto_2

    :cond_5
    move p0, v1

    goto :goto_1

    .line 473
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    new-array p0, p0, [I

    move v1, v2

    .line 474
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 475
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    mul-int/lit8 v5, v1, 0x2

    .line 476
    aget v6, v4, v2

    aput v6, p0, v5

    add-int/2addr v5, v3

    .line 477
    aget v4, v4, v3

    aput v4, p0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 414
    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    return-void
.end method

.method public getActiveCmap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->getCmapTable()Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    move-result-object v0

    .line 143
    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmapExt:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 144
    iget-object v0, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmapExt:Ljava/util/Map;

    return-object v0

    .line 145
    :cond_0
    iget-boolean v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->fontSpecific:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap31:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 146
    iget-object v0, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap31:Ljava/util/Map;

    return-object v0

    .line 147
    :cond_1
    iget-boolean v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->fontSpecific:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap10:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 148
    iget-object v0, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap10:Ljava/util/Map;

    return-object v0

    .line 149
    :cond_2
    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap31:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 150
    iget-object v0, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap31:Ljava/util/Map;

    return-object v0

    .line 152
    :cond_3
    iget-object v0, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap10:Ljava/util/Map;

    return-object v0
.end method

.method public getCodePagesSupported()[Ljava/lang/String;
    .locals 15

    .line 386
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->getOs_2Table()Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    move-result-object v0

    iget v0, v0, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ulCodePageRange2:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/OpenTypeParser;->getOs_2Table()Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    move-result-object v2

    iget v2, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ulCodePageRange1:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    move v5, v2

    move v6, v5

    move-wide v7, v3

    :goto_0
    const-wide/16 v9, 0x0

    const/16 v11, 0x40

    const/4 v12, 0x1

    if-ge v5, v11, :cond_1

    and-long v13, v0, v7

    cmp-long v9, v13, v9

    if-eqz v9, :cond_0

    .line 390
    invoke-static {v5}, Lcom/itextpdf/io/font/constants/TrueTypeCodePages;->get(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    shl-long/2addr v7, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 394
    :cond_1
    new-array v5, v6, [Ljava/lang/String;

    move-wide v6, v3

    move v3, v2

    :goto_1
    if-ge v2, v11, :cond_3

    and-long v13, v0, v6

    cmp-long v4, v13, v9

    if-eqz v4, :cond_2

    .line 398
    invoke-static {v2}, Lcom/itextpdf/io/font/constants/TrueTypeCodePages;->get(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 399
    invoke-static {v2}, Lcom/itextpdf/io/font/constants/TrueTypeCodePages;->get(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    move v3, v4

    :cond_2
    shl-long/2addr v6, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v5
.end method

.method public getDirectoryOffset()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget v0, v0, Lcom/itextpdf/io/font/OpenTypeParser;->directoryOffset:I

    return v0
.end method

.method public getFontStreamBytes()[B
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontStreamBytes:[B

    if-eqz v0, :cond_0

    return-object v0

    .line 160
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->isCff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->readCffFont()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontStreamBytes:[B

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->getFullFont()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontStreamBytes:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontStreamBytes:[B

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 166
    iput-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontStreamBytes:[B

    .line 167
    new-instance v1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getGdefTable()Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gdefTable:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    return-object v0
.end method

.method public getGposTable()Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gposTable:Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;

    return-object v0
.end method

.method public getGsubTable()Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gsubTable:Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;

    return-object v0
.end method

.method public getKerning(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/font/otf/Glyph;)I
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->kerning:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    invoke-virtual {p2}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getPdfFontFlags()I
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->isFixedPitch()Z

    move-result v0

    .line 178
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->isFontSpecific()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    :goto_0
    or-int/2addr v0, v1

    .line 179
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->isItalic()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x40

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->isBold()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontWeight()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_3

    :cond_2
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public getSubset(Ljava/util/Set;Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)[B"
        }
    .end annotation

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/font/OpenTypeParser;->getSubset(Ljava/util/Set;Z)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 214
    new-instance p2, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "I/O exception."

    invoke-direct {p2, v0, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public hasKernPairs()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->kerning:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0}, Lcom/itextpdf/io/util/IntHashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v0, v0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isCff()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->isCff()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$mapGlyphsCidsToGids$0$com-itextpdf-io-font-TrueTypeFont(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 232
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/TrueTypeFont;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    .line 233
    instance-of v1, v0, Lcom/itextpdf/io/font/GidAwareGlyph;

    if-eqz v1, :cond_0

    .line 234
    check-cast v0, Lcom/itextpdf/io/font/GidAwareGlyph;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/GidAwareGlyph;->getGid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public mapGlyphsCidsToGids(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 230
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/itextpdf/io/font/TrueTypeFont$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/font/TrueTypeFont$$ExternalSyntheticLambda0;-><init>(Lcom/itextpdf/io/font/TrueTypeFont;)V

    .line 231
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 238
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method protected readGdefTable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v0, v0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "GDEF"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    new-instance v2, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v3, v3, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v0, v0, v1

    invoke-direct {v2, v3, v0}, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)V

    iput-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gdefTable:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    goto :goto_0

    .line 246
    :cond_0
    new-instance v0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    iget-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v2, v2, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gdefTable:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gdefTable:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->readTable()V

    return-void
.end method

.method protected readGposTable()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v0, v0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "GPOS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    .line 261
    new-instance v7, Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;

    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v2, v1, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v1, 0x0

    aget v3, v0, v1

    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gdefTable:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    iget-object v5, p0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getUnitsPerEm()I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;ILcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;Ljava/util/Map;I)V

    iput-object v7, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gposTable:Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;

    :cond_0
    return-void
.end method

.method protected readGsubTable()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v0, v0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "GSUB"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    .line 254
    new-instance v7, Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;

    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v2, v1, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v1, 0x0

    aget v3, v0, v1

    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gdefTable:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    iget-object v5, p0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getUnitsPerEm()I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;ILcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;Ljava/util/Map;I)V

    iput-object v7, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gsubTable:Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;

    :cond_0
    return-void
.end method

.method public updateUsedGlyphs(Ljava/util/SortedSet;ZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/util/List<",
            "[I>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 429
    invoke-static {p3}, Lcom/itextpdf/io/font/TrueTypeFont;->toCompactRange(Ljava/util/List;)[I

    move-result-object p2

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x2

    .line 431
    new-array p2, p2, [I

    aput v0, p2, v0

    const p3, 0xffff

    const/4 v1, 0x1

    aput p3, p2, v1

    goto :goto_0

    .line 433
    :cond_1
    new-array p2, v0, [I

    .line 436
    :goto_0
    array-length p3, p2

    if-ge v0, p3, :cond_4

    .line 437
    aget p3, p2, v0

    add-int/lit8 v1, v0, 0x1

    .line 438
    aget v1, p2, v1

    :goto_1
    if-gt p3, v1, :cond_3

    .line 440
    invoke-virtual {p0, p3}, Lcom/itextpdf/io/font/TrueTypeFont;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 441
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    return-void
.end method
