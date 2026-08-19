.class Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;
.super Ljava/lang/Object;
.source "FontSelector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/font/FontSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PdfFontComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/itextpdf/layout/font/FontInfo;",
        ">;"
    }
.end annotation


# instance fields
.field fontFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fontStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontFamilies:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontStyles:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontFamilies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontStyles:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->parseFontStyle(Ljava/lang/String;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontCharacteristics;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontStyles:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static characteristicsSimilarity(Ljava/lang/String;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontInfo;Z)I
    .locals 8

    .line 178
    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontInfo;->getDescriptor()Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->isBold()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFontWeight()I

    move-result v1

    const/16 v4, 0x1f4

    if-le v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 180
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->isItalic()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getItalicAngle()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v3

    .line 181
    :goto_3
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->isMonospace()Z

    move-result v5

    .line 188
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontCharacteristics;->isMonospace()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v5, :cond_4

    const/4 v2, 0x5

    goto :goto_4

    :cond_4
    const/4 v2, -0x5

    :goto_4
    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_5

    :cond_5
    if-eqz v5, :cond_6

    const/4 v3, -0x1

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    if-nez v2, :cond_a

    .line 203
    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 204
    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    .line 205
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFamilyNameLowerCase()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 206
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFamilyNameLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 207
    :cond_7
    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    add-int/lit8 v3, v3, 0xd

    goto :goto_6

    :cond_9
    if-nez p3, :cond_a

    return v3

    .line 217
    :cond_a
    :goto_6
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFontWeight()I

    move-result p0

    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontCharacteristics;->getFontWeight()S

    move-result p2

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 218
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFontWeight()I

    move-result p2

    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontCharacteristics;->getFontWeight()S

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ne p0, p2, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    sub-int/2addr p0, p2

    const/16 p2, 0x12c

    if-lt p0, p2, :cond_c

    add-int/lit8 v3, v3, -0x1

    .line 224
    :cond_c
    :goto_7
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontCharacteristics;->isBold()Z

    move-result p0

    if-eqz p0, :cond_e

    if-eqz v1, :cond_d

    add-int/lit8 v3, v3, 0x5

    goto :goto_8

    :cond_d
    add-int/lit8 v3, v3, -0x5

    goto :goto_8

    :cond_e
    if-eqz v1, :cond_f

    add-int/lit8 v3, v3, -0x3

    .line 236
    :cond_f
    :goto_8
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontCharacteristics;->isItalic()Z

    move-result p0

    if-eqz p0, :cond_11

    if-eqz v4, :cond_10

    add-int/lit8 v3, v3, 0x5

    goto :goto_9

    :cond_10
    add-int/lit8 v3, v3, -0x5

    goto :goto_9

    :cond_11
    if-eqz v4, :cond_12

    add-int/lit8 v3, v3, -0x3

    :cond_12
    :goto_9
    return v3
.end method

.method private static parseFontStyle(Ljava/lang/String;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontCharacteristics;
    .locals 2

    if-nez p1, :cond_0

    .line 147
    new-instance p1, Lcom/itextpdf/layout/font/FontCharacteristics;

    invoke-direct {p1}, Lcom/itextpdf/layout/font/FontCharacteristics;-><init>()V

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontCharacteristics;->isUndefined()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    const-string v0, "bold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/font/FontCharacteristics;->setBoldFlag(Z)Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 153
    :cond_1
    const-string v0, "italic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "oblique"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 154
    :cond_2
    invoke-virtual {p1, v1}, Lcom/itextpdf/layout/font/FontCharacteristics;->setItalicFlag(Z)Lcom/itextpdf/layout/font/FontCharacteristics;

    :cond_3
    return-object p1
.end method


# virtual methods
.method public compare(Lcom/itextpdf/layout/font/FontInfo;Lcom/itextpdf/layout/font/FontInfo;)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 132
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontFamilies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    if-nez v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontStyles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 134
    iget-object v3, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontFamilies:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 136
    const-string v4, "monospace"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 137
    invoke-virtual {v2, v5}, Lcom/itextpdf/layout/font/FontCharacteristics;->setMonospaceFlag(Z)Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 139
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->fontFamilies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v5, v0

    .line 140
    :goto_1
    invoke-static {v3, v2, p2, v5}, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->characteristicsSimilarity(Ljava/lang/String;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontInfo;Z)I

    move-result v4

    invoke-static {v3, v2, p1, v5}, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->characteristicsSimilarity(Ljava/lang/String;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontInfo;Z)I

    move-result v2

    sub-int v2, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 109
    check-cast p1, Lcom/itextpdf/layout/font/FontInfo;

    check-cast p2, Lcom/itextpdf/layout/font/FontInfo;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;->compare(Lcom/itextpdf/layout/font/FontInfo;Lcom/itextpdf/layout/font/FontInfo;)I

    move-result p1

    return p1
.end method
