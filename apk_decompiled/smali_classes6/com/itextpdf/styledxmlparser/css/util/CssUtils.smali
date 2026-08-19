.class public Lcom/itextpdf/styledxmlparser/css/util/CssUtils;
.super Ljava/lang/Object;
.source "CssUtils.java"


# static fields
.field private static final EPSILON:F = 1.0E-6f

.field private static final QUANTITY_OF_PARAMS_WITH_FALLBACK_OR_TYPE:I = 0x2

.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addRange(Lcom/itextpdf/layout/font/RangeBuilder;Ljava/lang/String;)Z
    .locals 4

    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 408
    const-string v0, "[uU]\\+[0-9a-fA-F?]{1,6}(-[0-9a-fA-F]{1,6})?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 409
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 410
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    .line 411
    aget-object v0, p1, v1

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    aget-object v0, p1, v1

    const/16 v2, 0x30

    const/16 v3, 0x3f

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    aget-object p1, p1, v1

    const/16 v1, 0x46

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->addRange(Lcom/itextpdf/layout/font/RangeBuilder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 414
    :cond_0
    aget-object p1, p1, v1

    invoke-static {p0, p1, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->addRange(Lcom/itextpdf/layout/font/RangeBuilder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 417
    :cond_1
    aget-object v0, p1, v1

    aget-object p1, p1, v2

    invoke-static {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->addRange(Lcom/itextpdf/layout/font/RangeBuilder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method private static addRange(Lcom/itextpdf/layout/font/RangeBuilder;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x10

    .line 424
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    .line 425
    invoke-static {p2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    if-gt p1, p2, :cond_1

    const v0, 0x10ffff

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/font/RangeBuilder;->addRange(II)Lcom/itextpdf/layout/font/RangeBuilder;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static compareFloats(DD)Z
    .locals 0

    sub-double/2addr p0, p2

    .line 323
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    cmpg-double p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static compareFloats(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 334
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static convertPtsToPx(D)D
    .locals 2

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static convertPtsToPx(F)F
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p0, v0

    return p0
.end method

.method public static convertPxToPts(D)D
    .locals 2

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static convertPxToPts(F)F
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static extractAttributeValue(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/node/IElementNode;)Ljava/lang/String;
    .locals 7

    .line 265
    const-string v0, "attr("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 266
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "attr"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    add-int/2addr v2, v3

    if-le v0, v2, :cond_5

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 270
    new-array v0, v3, [Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;

    const/16 v5, 0x22

    invoke-direct {v4, v5}, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;-><init>(C)V

    const/4 v5, 0x0

    aput-object v4, v0, v5

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;

    const/16 v6, 0x27

    invoke-direct {v4, v6}, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;-><init>(C)V

    aput-object v4, v0, v2

    const/16 v4, 0x2c

    invoke-static {p0, v4, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->splitString(Ljava/lang/String;C[Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;)Ljava/util/List;

    move-result-object p0

    .line 272
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    return-object v1

    .line 275
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 276
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->extractFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 278
    :goto_0
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 v4, 0x20

    new-array v6, v5, [Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;

    invoke-static {p0, v4, v6}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->splitString(Ljava/lang/String;C[Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;)Ljava/util/List;

    move-result-object p0

    .line 279
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    return-object v1

    .line 282
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 283
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->extractTypeOfAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    :cond_3
    move-object v2, v1

    .line 288
    :cond_4
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 289
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->isAttributeNameValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 290
    invoke-static {p0, v2, v0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/node/IElementNode;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method private static extractFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 441
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 447
    :cond_2
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->extractUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractShorthandProperties(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;

    invoke-direct {v2, p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getType()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->COMMA:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    if-ne v3, v4, :cond_0

    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    goto :goto_1

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :goto_1
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object p0

    goto :goto_0

    .line 197
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static extractTypeOfAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 451
    const-string v0, "url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "string"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static extractUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 240
    const-string v0, "url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 241
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "("

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 242
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 244
    :cond_0
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x22

    .line 245
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static findNextUnescapedChar(Ljava/lang/String;CI)I
    .locals 3

    .line 304
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return v0

    :cond_0
    move v0, p2

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 309
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    sub-int v0, p2, v0

    .line 312
    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result p2

    :goto_1
    return p2
.end method

.method private static getAttributeValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/node/IElementNode;)Ljava/lang/String;
    .locals 0

    .line 460
    invoke-interface {p3, p0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 461
    const-string p3, "url"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 462
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->extractUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    .line 464
    const-string p0, ""

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    if-eqz p0, :cond_4

    .line 466
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, p0

    :cond_4
    :goto_1
    return-object p2
.end method

.method private static isAttributeNameValid(Ljava/lang/String;)Z
    .locals 1

    .line 435
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ")"

    .line 436
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStyleSheetLink(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z
    .locals 2

    .line 401
    const-string v0, "link"

    invoke-interface {p0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rel"

    .line 403
    invoke-interface {p0, v0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "stylesheet"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static normalizeCssProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssPropertyNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static parseBlendMode(Ljava/lang/String;)Lcom/itextpdf/layout/properties/BlendMode;
    .locals 1

    if-nez p0, :cond_0

    .line 135
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->NORMAL:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 138
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "difference"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "exclusion"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "color-burn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "multiply"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "lighten"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "color"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xd

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "hue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xb

    goto :goto_1

    :sswitch_7
    const-string v0, "color-dodge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_8
    const-string v0, "saturation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xc

    goto :goto_1

    :sswitch_9
    const-string v0, "screen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_a
    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xf

    goto :goto_1

    :sswitch_b
    const-string v0, "overlay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_c
    const-string v0, "soft-light"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_d
    const-string v0, "darken"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_e
    const-string v0, "hard-light"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_f
    const-string v0, "luminosity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xe

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 171
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->NORMAL:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 168
    :pswitch_0
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->LUMINOSITY:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 166
    :pswitch_1
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->COLOR:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 164
    :pswitch_2
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->SATURATION:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 162
    :pswitch_3
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->HUE:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 160
    :pswitch_4
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->EXCLUSION:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 158
    :pswitch_5
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->DIFFERENCE:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 156
    :pswitch_6
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->SOFT_LIGHT:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 154
    :pswitch_7
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->HARD_LIGHT:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 152
    :pswitch_8
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->COLOR_BURN:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 150
    :pswitch_9
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->COLOR_DODGE:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 148
    :pswitch_a
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->LIGHTEN:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 146
    :pswitch_b
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->DARKEN:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 144
    :pswitch_c
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->OVERLAY:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 142
    :pswitch_d
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->SCREEN:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    .line 140
    :pswitch_e
    sget-object p0, Lcom/itextpdf/layout/properties/BlendMode;->MULTIPLY:Lcom/itextpdf/layout/properties/BlendMode;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7e67fe3f -> :sswitch_f
        -0x5519924c -> :sswitch_e
        -0x4fcf0961 -> :sswitch_d
        -0x4a5e0a4d -> :sswitch_c
        -0x410bbbb0 -> :sswitch_b
        -0x3df94319 -> :sswitch_a
        -0x361a3f94 -> :sswitch_9
        -0xdbd042e -> :sswitch_8
        -0x72feb13 -> :sswitch_7
        0x194f8 -> :sswitch_6
        0x5a72f63 -> :sswitch_5
        0xa2a543f -> :sswitch_4
        0x26f8a624 -> :sswitch_3
        0x4a1669f9 -> :sswitch_2
        0x6487bdce -> :sswitch_1
        0x6704b53d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseUnicodeRange(Ljava/lang/String;)Lcom/itextpdf/layout/font/Range;
    .locals 4

    .line 344
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 345
    new-instance v0, Lcom/itextpdf/layout/font/RangeBuilder;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/RangeBuilder;-><init>()V

    .line 346
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 347
    invoke-static {v0, v3}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->addRange(Lcom/itextpdf/layout/font/RangeBuilder;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/layout/font/RangeBuilder;->create()Lcom/itextpdf/layout/font/Range;

    move-result-object p0

    return-object p0
.end method

.method public static removeDoubleSpacesAndTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 219
    const-string v0, "\\s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 222
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs splitString(Ljava/lang/String;C[Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C[",
            "Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 100
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 102
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 104
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 105
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 107
    array-length v5, p2

    move v6, v1

    move v7, v6

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v8, p2, v6

    if-ne v4, p1, :cond_3

    if-nez v7, :cond_2

    .line 109
    invoke-virtual {v8}, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->isEscaped()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    move v7, v1

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v7, 0x1

    goto :goto_3

    .line 111
    :cond_3
    invoke-virtual {v8, v4}, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;->processCharacter(C)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-ne v4, p1, :cond_5

    if-nez v7, :cond_5

    .line 115
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_6
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 121
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0
.end method

.method public static splitStringWithComma(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 87
    new-array v0, v0, [Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;-><init>(CC)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x2c

    invoke-static {p0, v1, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->splitString(Ljava/lang/String;C[Lcom/itextpdf/styledxmlparser/css/util/EscapeGroup;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
