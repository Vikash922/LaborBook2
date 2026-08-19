.class final Lcom/itextpdf/layout/font/FontCharacteristicsUtils;
.super Ljava/lang/Object;
.source "FontCharacteristicsUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static normalizeFontWeight(S)S
    .locals 1

    const/16 v0, 0x64

    .line 50
    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    int-to-short p0, p0

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x384

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method static parseFontWeight(Ljava/lang/String;)S
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_3

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v1, "normal"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "bold"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, Lcom/itextpdf/layout/font/FontCharacteristicsUtils;->normalizeFontWeight(S)S

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0

    :cond_1
    const/16 p0, 0x2bc

    return p0

    :cond_2
    const/16 p0, 0x190

    return p0

    :cond_3
    :goto_0
    return v0
.end method
