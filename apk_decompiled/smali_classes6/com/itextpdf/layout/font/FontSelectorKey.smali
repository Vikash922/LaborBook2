.class final Lcom/itextpdf/layout/font/FontSelectorKey;
.super Ljava/lang/Object;
.source "FontSelectorKey.java"


# instance fields
.field private fc:Lcom/itextpdf/layout/font/FontCharacteristics;

.field private fontFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)V
    .locals 1
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

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorKey;->fontFamilies:Ljava/util/List;

    .line 59
    iput-object p2, p0, Lcom/itextpdf/layout/font/FontSelectorKey;->fc:Lcom/itextpdf/layout/font/FontCharacteristics;

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

    if-eqz p1, :cond_4

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    check-cast p1, Lcom/itextpdf/layout/font/FontSelectorKey;

    .line 68
    iget-object v2, p0, Lcom/itextpdf/layout/font/FontSelectorKey;->fontFamilies:Ljava/util/List;

    iget-object v3, p1, Lcom/itextpdf/layout/font/FontSelectorKey;->fontFamilies:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/itextpdf/layout/font/FontSelectorKey;->fc:Lcom/itextpdf/layout/font/FontCharacteristics;

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/itextpdf/layout/font/FontSelectorKey;->fc:Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 69
    invoke-virtual {v2, p1}, Lcom/itextpdf/layout/font/FontCharacteristics;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/itextpdf/layout/font/FontSelectorKey;->fc:Lcom/itextpdf/layout/font/FontCharacteristics;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorKey;->fontFamilies:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget-object v2, p0, Lcom/itextpdf/layout/font/FontSelectorKey;->fc:Lcom/itextpdf/layout/font/FontCharacteristics;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itextpdf/layout/font/FontCharacteristics;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
