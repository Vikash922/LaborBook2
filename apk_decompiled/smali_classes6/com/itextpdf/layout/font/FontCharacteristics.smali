.class public final Lcom/itextpdf/layout/font/FontCharacteristics;
.super Ljava/lang/Object;
.source "FontCharacteristics.java"


# instance fields
.field private fontWeight:S

.field private isBold:Z

.field private isItalic:Z

.field private isMonospace:Z

.field private undefined:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isItalic:Z

    .line 48
    iput-boolean v0, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isBold:Z

    const/16 v1, 0x190

    .line 49
    iput-short v1, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->fontWeight:S

    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->undefined:Z

    .line 51
    iput-boolean v0, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isMonospace:Z

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/font/FontCharacteristics;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/itextpdf/layout/font/FontCharacteristics;-><init>()V

    .line 58
    iget-boolean v0, p1, Lcom/itextpdf/layout/font/FontCharacteristics;->isItalic:Z

    iput-boolean v0, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isItalic:Z

    .line 59
    iget-boolean v0, p1, Lcom/itextpdf/layout/font/FontCharacteristics;->isBold:Z

    iput-boolean v0, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isBold:Z

    .line 60
    iget-short v0, p1, Lcom/itextpdf/layout/font/FontCharacteristics;->fontWeight:S

    iput-short v0, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->fontWeight:S

    .line 61
    iget-boolean p1, p1, Lcom/itextpdf/layout/font/FontCharacteristics;->undefined:Z

    iput-boolean p1, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->undefined:Z

    return-void
.end method

.method private modified()V
    .locals 1

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->undefined:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    check-cast p1, Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 150
    iget-boolean v2, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isItalic:Z

    iget-boolean v3, p1, Lcom/itextpdf/layout/font/FontCharacteristics;->isItalic:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isBold:Z

    iget-boolean v3, p1, Lcom/itextpdf/layout/font/FontCharacteristics;->isBold:Z

    if-ne v2, v3, :cond_2

    iget-short v2, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->fontWeight:S

    iget-short p1, p1, Lcom/itextpdf/layout/font/FontCharacteristics;->fontWeight:S

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getFontWeight()S
    .locals 1

    .line 132
    iget-short v0, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->fontWeight:S

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 157
    iget-boolean v0, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isItalic:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 158
    iget-boolean v1, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isBold:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 159
    iget-short v1, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->fontWeight:S

    add-int/2addr v0, v1

    return v0
.end method

.method public isBold()Z
    .locals 2

    .line 124
    iget-boolean v0, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isBold:Z

    if-nez v0, :cond_1

    iget-short v0, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->fontWeight:S

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isItalic:Z

    return v0
.end method

.method public isMonospace()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isMonospace:Z

    return v0
.end method

.method public isUndefined()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->undefined:Z

    return v0
.end method

.method public setBoldFlag(Z)Lcom/itextpdf/layout/font/FontCharacteristics;
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isBold:Z

    if-eqz p1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/itextpdf/layout/font/FontCharacteristics;->modified()V

    :cond_0
    return-object p0
.end method

.method public setFontStyle(Ljava/lang/String;)Lcom/itextpdf/layout/font/FontCharacteristics;
    .locals 1

    if-eqz p1, :cond_2

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 109
    const-string v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isItalic:Z

    goto :goto_0

    .line 111
    :cond_0
    const-string v0, "italic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "oblique"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isItalic:Z

    .line 115
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isItalic:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/itextpdf/layout/font/FontCharacteristics;->modified()V

    :cond_3
    return-object p0
.end method

.method public setFontWeight(Ljava/lang/String;)Lcom/itextpdf/layout/font/FontCharacteristics;
    .locals 0

    .line 80
    invoke-static {p1}, Lcom/itextpdf/layout/font/FontCharacteristicsUtils;->parseFontWeight(Ljava/lang/String;)S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/font/FontCharacteristics;->setFontWeight(S)Lcom/itextpdf/layout/font/FontCharacteristics;

    move-result-object p1

    return-object p1
.end method

.method public setFontWeight(S)Lcom/itextpdf/layout/font/FontCharacteristics;
    .locals 0

    if-lez p1, :cond_0

    .line 73
    invoke-static {p1}, Lcom/itextpdf/layout/font/FontCharacteristicsUtils;->normalizeFontWeight(S)S

    move-result p1

    iput-short p1, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->fontWeight:S

    .line 74
    invoke-direct {p0}, Lcom/itextpdf/layout/font/FontCharacteristics;->modified()V

    :cond_0
    return-object p0
.end method

.method public setItalicFlag(Z)Lcom/itextpdf/layout/font/FontCharacteristics;
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isItalic:Z

    if-eqz p1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/itextpdf/layout/font/FontCharacteristics;->modified()V

    :cond_0
    return-object p0
.end method

.method public setMonospaceFlag(Z)Lcom/itextpdf/layout/font/FontCharacteristics;
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/itextpdf/layout/font/FontCharacteristics;->isMonospace:Z

    if-eqz p1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/itextpdf/layout/font/FontCharacteristics;->modified()V

    :cond_0
    return-object p0
.end method
