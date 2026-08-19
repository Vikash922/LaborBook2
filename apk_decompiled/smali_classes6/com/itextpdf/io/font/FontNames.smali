.class public Lcom/itextpdf/io/font/FontNames;
.super Ljava/lang/Object;
.source "FontNames.java"


# instance fields
.field protected allNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private allowEmbedding:Z

.field private cidFontName:Ljava/lang/String;

.field private familyName:[[Ljava/lang/String;

.field private fontName:Ljava/lang/String;

.field private fontStretch:Ljava/lang/String;

.field private fullName:[[Ljava/lang/String;

.field private macStyle:I

.field private style:Ljava/lang/String;

.field private subfamily:[[Ljava/lang/String;

.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/io/font/FontNames;->style:Ljava/lang/String;

    const/16 v0, 0x190

    .line 71
    iput v0, p0, Lcom/itextpdf/io/font/FontNames;->weight:I

    .line 73
    const-string v0, "Normal"

    iput-object v0, p0, Lcom/itextpdf/io/font/FontNames;->fontStretch:Ljava/lang/String;

    return-void
.end method

.method private listToArray(Ljava/util/List;)[[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)[[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 235
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    .line 236
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 237
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public allowEmbedding()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/itextpdf/io/font/FontNames;->allowEmbedding:Z

    return v0
.end method

.method public getCidFontName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->cidFontName:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyName()[[Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->familyName:[[Ljava/lang/String;

    return-object v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getFontStretch()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->fontStretch:Ljava/lang/String;

    return-object v0
.end method

.method public getFontWeight()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->weight:I

    return v0
.end method

.method public getFullName()[[Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->fullName:[[Ljava/lang/String;

    return-object v0
.end method

.method protected getMacStyle()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    return v0
.end method

.method public getNames(I)[[Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->allNames:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/FontNames;->listToArray(Ljava/util/List;)[[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, [[Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getSubfamily()Ljava/lang/String;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/itextpdf/io/font/FontNames;->subfamily:[[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public isBold()Z
    .locals 2

    .line 149
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCondensed()Z
    .locals 1

    .line 169
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExtended()Z
    .locals 1

    .line 173
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 153
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOutline()Z
    .locals 1

    .line 161
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShadow()Z
    .locals 1

    .line 165
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnderline()Z
    .locals 1

    .line 157
    iget v0, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setAllNames(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->allNames:Ljava/util/Map;

    return-void
.end method

.method protected setAllowEmbedding(Z)V
    .locals 0

    .line 231
    iput-boolean p1, p0, Lcom/itextpdf/io/font/FontNames;->allowEmbedding:Z

    return-void
.end method

.method protected setCidFontName(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->cidFontName:Ljava/lang/String;

    return-void
.end method

.method protected setFamilyName(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    .line 201
    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object p1, v2, v0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/itextpdf/io/font/FontNames;->familyName:[[Ljava/lang/String;

    return-void
.end method

.method protected setFamilyName([[Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->familyName:[[Ljava/lang/String;

    return-void
.end method

.method protected setFontName(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->fontName:Ljava/lang/String;

    return-void
.end method

.method protected setFontStretch(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->fontStretch:Ljava/lang/String;

    return-void
.end method

.method protected setFontWeight(I)V
    .locals 0

    .line 123
    invoke-static {p1}, Lcom/itextpdf/io/font/constants/FontWeights;->normalizeFontWeight(I)I

    move-result p1

    iput p1, p0, Lcom/itextpdf/io/font/FontNames;->weight:I

    return-void
.end method

.method protected setFullName(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    .line 185
    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object p1, v2, v0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/itextpdf/io/font/FontNames;->fullName:[[Ljava/lang/String;

    return-void
.end method

.method protected setFullName([[Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->fullName:[[Ljava/lang/String;

    return-void
.end method

.method protected setMacStyle(I)V
    .locals 0

    .line 223
    iput p1, p0, Lcom/itextpdf/io/font/FontNames;->macStyle:I

    return-void
.end method

.method protected setStyle(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->style:Ljava/lang/String;

    return-void
.end method

.method protected setSubfamily(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    .line 209
    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object p1, v2, v0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/itextpdf/io/font/FontNames;->subfamily:[[Ljava/lang/String;

    return-void
.end method

.method protected setSubfamily([[Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/itextpdf/io/font/FontNames;->subfamily:[[Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 244
    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
