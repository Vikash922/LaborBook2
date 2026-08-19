.class public final Lcom/itextpdf/styledxmlparser/css/media/MediaQueryParser;
.super Ljava/lang/Object;
.source "MediaQueryParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseMediaExpression(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;
    .locals 5

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 148
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/16 v0, 0x3a

    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v2

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    .line 164
    :goto_0
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private static parseMediaExpressions(Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 120
    const-string v0, "and"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    array-length v2, p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object v6, p0, v5

    .line 126
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/media/MediaQueryParser;->parseMediaExpression(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;

    move-result-object v6

    if-eqz v6, :cond_2

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected \'and\' while parsing media expression"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_1
    :goto_1
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static parseMediaQueries(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;",
            ">;"
        }
    .end annotation

    .line 66
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 69
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/media/MediaQueryParser;->parseMediaQuery(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 71
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static parseMediaQuery(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;
    .locals 6

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 87
    const-string v0, "only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    move v0, v2

    move v1, v3

    goto :goto_0

    .line 90
    :cond_0
    const-string v0, "not"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    move v1, v2

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v3

    move v1, v0

    :goto_0
    const/16 v4, 0x20

    .line 95
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 96
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, p0

    :goto_1
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 101
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->isValidMediaType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 105
    :cond_3
    invoke-static {p0, v3}, Lcom/itextpdf/styledxmlparser/css/media/MediaQueryParser;->parseMediaExpressions(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    const/4 v4, 0x0

    goto :goto_3

    .line 103
    :cond_4
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/itextpdf/styledxmlparser/css/media/MediaQueryParser;->parseMediaExpressions(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    .line 108
    :goto_3
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;

    invoke-direct {v2, v4, p0, v0, v1}, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;-><init>(Ljava/lang/String;Ljava/util/List;ZZ)V

    return-object v2
.end method
