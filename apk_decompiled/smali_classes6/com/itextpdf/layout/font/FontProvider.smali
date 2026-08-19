.class public Lcom/itextpdf/layout/font/FontProvider;
.super Ljava/lang/Object;
.source "FontProvider.java"


# static fields
.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "Helvetica"


# instance fields
.field protected final defaultFontFamily:Ljava/lang/String;

.field private final fontSelectorCache:Lcom/itextpdf/layout/font/FontSelectorCache;

.field private final fontSet:Lcom/itextpdf/layout/font/FontSet;

.field protected final pdfFonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            "Lcom/itextpdf/kernel/font/PdfFont;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    new-instance v0, Lcom/itextpdf/layout/font/FontSet;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;-><init>(Lcom/itextpdf/layout/font/FontSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/font/FontSet;)V
    .locals 1

    .line 98
    const-string v0, "Helvetica"

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/font/FontProvider;-><init>(Lcom/itextpdf/layout/font/FontSet;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/font/FontSet;Ljava/lang/String;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance p1, Lcom/itextpdf/layout/font/FontSet;

    invoke-direct {p1}, Lcom/itextpdf/layout/font/FontSet;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->pdfFonts:Ljava/util/Map;

    .line 126
    new-instance v0, Lcom/itextpdf/layout/font/FontSelectorCache;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/font/FontSelectorCache;-><init>(Lcom/itextpdf/layout/font/FontSet;)V

    iput-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSelectorCache:Lcom/itextpdf/layout/font/FontSelectorCache;

    .line 127
    iput-object p2, p0, Lcom/itextpdf/layout/font/FontProvider;->defaultFontFamily:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 114
    new-instance v0, Lcom/itextpdf/layout/font/FontSet;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontSet;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/layout/font/FontProvider;-><init>(Lcom/itextpdf/layout/font/FontSet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addDirectory(Ljava/lang/String;)I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/font/FontSet;->addDirectory(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public addFont(Lcom/itextpdf/io/font/FontProgram;)Z
    .locals 1

    .line 168
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/font/FontProvider;->getDefaultEncoding(Lcom/itextpdf/io/font/FontProgram;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result p1

    return p1
.end method

.method public addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result p1

    return p1
.end method

.method public addFont(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result p1

    return p1
.end method

.method public addFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/itextpdf/layout/font/FontSet;->addFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result p1

    return p1
.end method

.method public addFont([B)Z
    .locals 1

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont([BLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addFont([BLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont([BLjava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result p1

    return p1
.end method

.method public addFont([BLjava/lang/String;Lcom/itextpdf/layout/font/Range;)Z
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/itextpdf/layout/font/FontSet;->addFont([BLjava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result p1

    return p1
.end method

.method public addStandardPdfFonts()I
    .locals 1

    .line 298
    const-string v0, "Courier"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 299
    const-string v0, "Courier-Bold"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 300
    const-string v0, "Courier-BoldOblique"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 301
    const-string v0, "Courier-Oblique"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 302
    const-string v0, "Helvetica"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 303
    const-string v0, "Helvetica-Bold"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 304
    const-string v0, "Helvetica-BoldOblique"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 305
    const-string v0, "Helvetica-Oblique"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 306
    const-string v0, "Symbol"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 307
    const-string v0, "Times-Roman"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 308
    const-string v0, "Times-Bold"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 309
    const-string v0, "Times-BoldItalic"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 310
    const-string v0, "Times-Italic"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 311
    const-string v0, "ZapfDingbats"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    const/16 v0, 0xe

    return v0
.end method

.method public addSystemFonts()I
    .locals 9

    const/4 v0, 0x6

    .line 268
    new-array v1, v0, [Ljava/lang/String;

    .line 269
    invoke-static {}, Lcom/itextpdf/commons/utils/FileUtil;->getFontsDir()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/usr/share/X11/fonts"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "/usr/X/lib/X11/fonts"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v6, "/usr/openwin/lib/X11/fonts"

    aput-object v6, v1, v2

    const/4 v2, 0x4

    const-string v6, "/usr/share/fonts"

    aput-object v6, v1, v2

    const/4 v2, 0x5

    const-string v6, "/usr/X11R6/lib/X11/fonts"

    aput-object v6, v1, v2

    move v2, v3

    move v6, v2

    :goto_0
    if-ge v2, v0, :cond_0

    .line 276
    aget-object v7, v1, v2

    .line 277
    iget-object v8, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v8, v7, v4}, Lcom/itextpdf/layout/font/FontSet;->addDirectory(Ljava/lang/String;Z)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/Library/Fonts"

    aput-object v1, v0, v3

    const-string v1, "/System/Library/Fonts"

    aput-object v1, v0, v4

    move v1, v3

    :goto_1
    if-ge v1, v5, :cond_1

    .line 284
    aget-object v2, v0, v1

    .line 285
    iget-object v4, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v4, v2, v3}, Lcom/itextpdf/layout/font/FontSet;->addDirectory(Ljava/lang/String;Z)I

    move-result v2

    add-int/2addr v6, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v6
.end method

.method protected createFontSelector(Ljava/util/Collection;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            ")",
            "Lcom/itextpdf/layout/font/FontSelector;"
        }
    .end annotation

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 479
    iget-object p2, p0, Lcom/itextpdf/layout/font/FontProvider;->defaultFontFamily:Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance p2, Lcom/itextpdf/layout/font/FontSelector;

    invoke-direct {p2, p1, v0, p3}, Lcom/itextpdf/layout/font/FontSelector;-><init>(Ljava/util/Collection;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)V

    return-object p2
.end method

.method public getDefaultCacheFlag()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultEmbeddingFlag()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultEncoding(Lcom/itextpdf/io/font/FontProgram;)Ljava/lang/String;
    .locals 0

    .line 342
    instance-of p1, p1, Lcom/itextpdf/io/font/Type1Font;

    if-eqz p1, :cond_0

    .line 343
    const-string p1, "Cp1252"

    return-object p1

    .line 345
    :cond_0
    const-string p1, "Identity-H"

    return-object p1
.end method

.method public getDefaultFontFamily()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->defaultFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public final getFontSelector(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontSelector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            ")",
            "Lcom/itextpdf/layout/font/FontSelector;"
        }
    .end annotation

    .line 432
    new-instance v0, Lcom/itextpdf/layout/font/FontSelectorKey;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/layout/font/FontSelectorKey;-><init>(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)V

    .line 433
    iget-object v1, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSelectorCache:Lcom/itextpdf/layout/font/FontSelectorCache;

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/font/FontSelectorCache;->get(Lcom/itextpdf/layout/font/FontSelectorKey;)Lcom/itextpdf/layout/font/FontSelector;

    move-result-object v1

    if-nez v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v1}, Lcom/itextpdf/layout/font/FontSet;->getFonts()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/itextpdf/layout/font/FontProvider;->createFontSelector(Ljava/util/Collection;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontSelector;

    move-result-object v1

    .line 436
    iget-object p1, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSelectorCache:Lcom/itextpdf/layout/font/FontSelectorCache;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/font/FontSelectorCache;->put(Lcom/itextpdf/layout/font/FontSelectorKey;Lcom/itextpdf/layout/font/FontSelector;)V

    :cond_0
    return-object v1
.end method

.method public final getFontSelector(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            "Lcom/itextpdf/layout/font/FontSet;",
            ")",
            "Lcom/itextpdf/layout/font/FontSelector;"
        }
    .end annotation

    .line 456
    new-instance v0, Lcom/itextpdf/layout/font/FontSelectorKey;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/layout/font/FontSelectorKey;-><init>(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)V

    .line 457
    iget-object v1, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSelectorCache:Lcom/itextpdf/layout/font/FontSelectorCache;

    invoke-virtual {v1, v0, p3}, Lcom/itextpdf/layout/font/FontSelectorCache;->get(Lcom/itextpdf/layout/font/FontSelectorKey;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelector;

    move-result-object v1

    if-nez v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v1, p3}, Lcom/itextpdf/layout/font/FontSet;->getFonts(Lcom/itextpdf/layout/font/FontSet;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/itextpdf/layout/font/FontProvider;->createFontSelector(Ljava/util/Collection;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontSelector;

    move-result-object v1

    .line 460
    iget-object p1, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSelectorCache:Lcom/itextpdf/layout/font/FontSelectorCache;

    invoke-virtual {p1, v0, v1, p3}, Lcom/itextpdf/layout/font/FontSelectorCache;->put(Lcom/itextpdf/layout/font/FontSelectorKey;Lcom/itextpdf/layout/font/FontSelector;Lcom/itextpdf/layout/font/FontSet;)V

    :cond_0
    return-object v1
.end method

.method public getFontSet()Lcom/itextpdf/layout/font/FontSet;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    return-object v0
.end method

.method public getPdfFont(Lcom/itextpdf/layout/font/FontInfo;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1

    const/4 v0, 0x0

    .line 491
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/font/FontProvider;->getPdfFont(Lcom/itextpdf/layout/font/FontInfo;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    return-object p1
.end method

.method public getPdfFont(Lcom/itextpdf/layout/font/FontInfo;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->pdfFonts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object p2, p0, Lcom/itextpdf/layout/font/FontProvider;->pdfFonts:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/font/PdfFont;

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 508
    invoke-virtual {p2, p1}, Lcom/itextpdf/layout/font/FontSet;->getFontProgram(Lcom/itextpdf/layout/font/FontInfo;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    .line 511
    iget-object p2, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {p2, p1}, Lcom/itextpdf/layout/font/FontSet;->getFontProgram(Lcom/itextpdf/layout/font/FontInfo;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p2

    :cond_2
    if-nez p2, :cond_4

    .line 516
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontInfo;->getFontData()[B

    move-result-object p2

    if-eqz p2, :cond_3

    .line 517
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontInfo;->getFontData()[B

    move-result-object p2

    invoke-virtual {p0}, Lcom/itextpdf/layout/font/FontProvider;->getDefaultCacheFlag()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont([BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p2

    goto :goto_1

    .line 519
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontInfo;->getFontName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/itextpdf/layout/font/FontProvider;->getDefaultCacheFlag()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p2

    .line 522
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontInfo;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 523
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 524
    :cond_5
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/font/FontProvider;->getDefaultEncoding(Lcom/itextpdf/io/font/FontProgram;)Ljava/lang/String;

    move-result-object v0

    .line 527
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/layout/font/FontProvider;->getDefaultEmbeddingFlag()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->PREFER_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->PREFER_NOT_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    .line 530
    :goto_2
    invoke-static {p2, v0, v1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->pdfFonts:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :catch_0
    move-exception p1

    .line 542
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "I/O exception while creating Font"

    invoke-direct {p2, v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getStrategy(Ljava/lang/String;Ljava/util/List;)Lcom/itextpdf/layout/font/FontSelectorStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/layout/font/FontSelectorStrategy;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/font/FontProvider;->getStrategy(Ljava/lang/String;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontSelectorStrategy;

    move-result-object p1

    return-object p1
.end method

.method public getStrategy(Ljava/lang/String;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontSelectorStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            ")",
            "Lcom/itextpdf/layout/font/FontSelectorStrategy;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 404
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/layout/font/FontProvider;->getStrategy(Ljava/lang/String;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelectorStrategy;

    move-result-object p1

    return-object p1
.end method

.method public getStrategy(Ljava/lang/String;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelectorStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            "Lcom/itextpdf/layout/font/FontSet;",
            ")",
            "Lcom/itextpdf/layout/font/FontSelectorStrategy;"
        }
    .end annotation

    .line 389
    new-instance v0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;

    invoke-virtual {p0, p2, p3, p4}, Lcom/itextpdf/layout/font/FontProvider;->getFontSelector(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelector;

    move-result-object p2

    invoke-direct {v0, p1, p2, p0, p4}, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;-><init>(Ljava/lang/String;Lcom/itextpdf/layout/font/FontSelector;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontSet;)V

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->pdfFonts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
