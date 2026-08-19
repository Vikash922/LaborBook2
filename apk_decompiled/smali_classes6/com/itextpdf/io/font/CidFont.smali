.class public Lcom/itextpdf/io/font/CidFont;
.super Lcom/itextpdf/io/font/FontProgram;
.source "CidFont.java"


# instance fields
.field private compatibleCmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fontName:Ljava/lang/String;

.field private pdfFontFlags:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontProgram;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/itextpdf/io/font/CidFont;->fontName:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/itextpdf/io/font/CidFont;->compatibleCmaps:Ljava/util/Set;

    .line 66
    new-instance p2, Lcom/itextpdf/io/font/FontNames;

    invoke-direct {p2}, Lcom/itextpdf/io/font/FontNames;-><init>()V

    iput-object p2, p0, Lcom/itextpdf/io/font/CidFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    .line 67
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/CidFont;->initializeCidFontNameAndStyle(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/itextpdf/io/font/CidFontProperties;->getAllFonts()Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/itextpdf/io/font/CidFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 72
    invoke-direct {p0, p2}, Lcom/itextpdf/io/font/CidFont;->initializeCidFontProperties(Ljava/util/Map;)V

    return-void

    .line 70
    :cond_0
    new-instance p2, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "There is no such predefined font: {0}"

    invoke-direct {p2, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p1

    throw p1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontProgram;-><init>()V

    .line 76
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/CidFont;->initializeCidFontNameAndStyle(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p3}, Lcom/itextpdf/io/font/CidFont;->initializeCidFontProperties(Ljava/util/Map;)V

    .line 78
    iput-object p2, p0, Lcom/itextpdf/io/font/CidFont;->compatibleCmaps:Ljava/util/Set;

    return-void
.end method

.method private static getCompatibleUniMap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 158
    invoke-static {}, Lcom/itextpdf/io/font/CidFontProperties;->getRegistryNames()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "_Uni"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v0
.end method

.method private initializeCidFontNameAndStyle(Ljava/lang/String;)V
    .locals 5

    .line 110
    invoke-static {p1}, Lcom/itextpdf/io/font/CidFont;->trimFontStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 112
    iget-object v1, p0, Lcom/itextpdf/io/font/CidFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/font/FontNames;->setFontName(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/itextpdf/io/font/CidFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/font/FontNames;->setStyle(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CidFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontNames;->setFontName(Ljava/lang/String;)V

    .line 117
    :goto_0
    iget-object p1, p0, Lcom/itextpdf/io/font/CidFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    iget-object v0, p0, Lcom/itextpdf/io/font/CidFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v2, v4

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/itextpdf/io/font/FontNames;->setFullName([[Ljava/lang/String;)V

    return-void
.end method

.method private initializeCidFontProperties(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/itextpdf/io/font/CidFont;->fontIdentification:Lcom/itextpdf/io/font/FontIdentification;

    const-string v1, "Panose"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontIdentification;->setPanose(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/itextpdf/io/font/CidFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    const-string v1, "ItalicAngle"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setItalicAngle(F)V

    .line 123
    iget-object v0, p0, Lcom/itextpdf/io/font/CidFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    const-string v1, "CapHeight"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setCapHeight(I)V

    .line 124
    iget-object v0, p0, Lcom/itextpdf/io/font/CidFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    const-string v1, "Ascent"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setTypoAscender(I)V

    .line 125
    iget-object v0, p0, Lcom/itextpdf/io/font/CidFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    const-string v1, "Descent"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setTypoDescender(I)V

    .line 126
    iget-object v0, p0, Lcom/itextpdf/io/font/CidFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    const-string v1, "StemV"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontMetrics;->setStemV(I)V

    .line 127
    const-string v0, "Flags"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/CidFont;->pdfFontFlags:I

    .line 128
    const-string v0, "FontBBox"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " []\r\n\t\u000c"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 131
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 132
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 133
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 134
    iget-object v4, p0, Lcom/itextpdf/io/font/CidFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    int-to-float v0, v0

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-virtual {v4, v0, v2, v3, v1}, Lcom/itextpdf/io/font/FontMetrics;->updateBbox(FFFF)V

    .line 135
    const-string v0, "Registry"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/io/font/CidFont;->registry:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/itextpdf/io/font/CidFont;->registry:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/io/font/CidFont;->getCompatibleUniMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    const-string v1, "W"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/io/util/IntHashtable;

    .line 139
    invoke-static {v0}, Lcom/itextpdf/io/font/FontCache;->getCid2UniCmap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapCidUni;

    move-result-object v0

    const/4 v1, 0x0

    .line 140
    iput v1, p0, Lcom/itextpdf/io/font/CidFont;->avgWidth:I

    .line 141
    invoke-virtual {v0}, Lcom/itextpdf/io/font/cmap/CMapCidUni;->getCids()[I

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget v4, v2, v1

    .line 142
    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/cmap/CMapCidUni;->lookup(I)I

    move-result v5

    .line 143
    invoke-virtual {p1, v4}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1, v4}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v6

    goto :goto_1

    :cond_0
    const/16 v6, 0x3e8

    .line 144
    :goto_1
    new-instance v7, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-direct {v7, v4, v6, v5}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    .line 145
    iget v6, p0, Lcom/itextpdf/io/font/CidFont;->avgWidth:I

    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v8

    add-int/2addr v6, v8

    iput v6, p0, Lcom/itextpdf/io/font/CidFont;->avgWidth:I

    .line 146
    iget-object v6, p0, Lcom/itextpdf/io/font/CidFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v4, p0, Lcom/itextpdf/io/font/CidFont;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CidFont;->fixSpaceIssue()V

    .line 150
    iget-object p1, p0, Lcom/itextpdf/io/font/CidFont;->codeToGlyph:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 151
    iget p1, p0, Lcom/itextpdf/io/font/CidFont;->avgWidth:I

    iget-object v0, p0, Lcom/itextpdf/io/font/CidFont;->codeToGlyph:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    div-int/2addr p1, v0

    iput p1, p0, Lcom/itextpdf/io/font/CidFont;->avgWidth:I

    :cond_2
    return-void
.end method


# virtual methods
.method public compatibleWith(Ljava/lang/String;)Z
    .locals 2

    .line 82
    const-string v0, "Identity-H"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "Identity-V"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CidFont;->compatibleCmaps:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public getKerning(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/font/otf/Glyph;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getPdfFontFlags()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/itextpdf/io/font/CidFont;->pdfFontFlags:I

    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/itextpdf/io/font/CidFont;->fontName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFontSpecific()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
