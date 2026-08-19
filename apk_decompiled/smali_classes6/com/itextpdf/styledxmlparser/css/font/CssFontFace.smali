.class public Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;
.super Ljava/lang/Object;
.source "CssFontFace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;,
        Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;
    }
.end annotation


# instance fields
.field private final alias:Ljava/lang/String;

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->alias:Ljava/lang/String;

    .line 175
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->sources:Ljava/util/List;

    return-void
.end method

.method public static create(Ljava/util/List;)Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)",
            "Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;"
        }
    .end annotation

    .line 56
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 57
    const-string v4, "font-family"

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/util/FontFamilySplitterUtil;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 60
    :cond_1
    const-string v4, "src"

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_6

    if-nez v2, :cond_3

    goto :goto_2

    .line 71
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->splitSourcesSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 75
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->create(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 77
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 81
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 82
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :cond_6
    :goto_2
    return-object v0
.end method

.method public static isSupportedFontFormat(Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;)Z
    .locals 2

    .line 136
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$1;->$SwitchMap$com$itextpdf$styledxmlparser$css$font$CssFontFace$FontFormat:[I

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static splitSourcesSequence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 101
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/16 v2, 0x27

    .line 103
    invoke-static {p0, v2, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v3

    const v4, 0x7fffffff

    if-ltz v3, :cond_0

    .line 104
    invoke-static {p0, v2, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v4

    :goto_1
    const/16 v3, 0x22

    .line 105
    invoke-static {p0, v3, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v5

    if-ltz v5, :cond_1

    .line 106
    invoke-static {p0, v3, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v4

    .line 103
    :cond_1
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v3, 0x29

    .line 107
    invoke-static {p0, v3, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 109
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {p0, v3, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v3

    const/4 v2, -0x1

    if-ne v3, v2, :cond_2

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 118
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 121
    :cond_3
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 124
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 125
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getSources()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->sources:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
