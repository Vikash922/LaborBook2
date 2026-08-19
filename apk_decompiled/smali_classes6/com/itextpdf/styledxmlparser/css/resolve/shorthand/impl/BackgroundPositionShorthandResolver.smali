.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;
.super Ljava/lang/Object;
.source "BackgroundPositionShorthandResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final POSITION_VALUES_MAX_COUNT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkProperty(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    .line 105
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 104
    const-string p1, "Invalid css property declaration: {0}"

    invoke-static {p1, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static parseCenter(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 229
    const-string v0, "background-position-x"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 230
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 233
    :cond_0
    const-string v0, "background-position-y"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 234
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static parseHorizontal(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 207
    const-string v0, "background-position-x"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 208
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 211
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "center"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    const-string v1, "background-position-y"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 213
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static parseLargeNumericValue(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 180
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->typeOfValue(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->HORIZONTAL_POSITION:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    const/4 v2, 0x1

    const-string v3, " "

    if-ne v0, v1, :cond_0

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    const-string v0, "background-position-x"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 185
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->typeOfValue(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    move-result-object p0

    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->VERTICAL_POSITION:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    if-ne p0, v0, :cond_1

    .line 186
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    const-string v0, "background-position-y"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 186
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static parseNonNumericValue(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$1;->$SwitchMap$com$itextpdf$styledxmlparser$css$resolve$shorthand$impl$BackgroundPositionShorthandResolver$BackgroundPositionType:[I

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->typeOfValue(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 200
    :cond_0
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parseCenter(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0

    .line 198
    :cond_1
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parseVertical(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0

    .line 196
    :cond_2
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parseHorizontal(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private static parseNumericValue(ILjava/util/List;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 143
    const-string v0, "background-position-x"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "background-position-y"

    .line 144
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 v0, p0, -0x1

    .line 150
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p2, p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parseLargeNumericValue(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 145
    :cond_2
    :goto_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parseShortNumericValue(ILjava/util/List;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static parsePositionShorthand(Ljava/util/List;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 128
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    invoke-static {v1, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parseNonNumericValue(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_1
    move v0, v2

    .line 133
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 134
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->typeOfValue(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    move-result-object v1

    sget-object v3, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->NUMERIC:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    if-ne v1, v3, :cond_2

    .line 135
    invoke-static {v0, p0, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parseNumericValue(ILjava/util/List;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static parseShortNumericValue(ILjava/util/List;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 159
    :cond_0
    const-string v0, "background-position-x"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    return v2

    .line 163
    :cond_1
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    .line 166
    :cond_2
    const-string v1, "background-position-y"

    if-nez p0, :cond_4

    add-int/2addr p0, v3

    .line 167
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->typeOfValue(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    move-result-object p0

    sget-object p1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->CENTER:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    if-ne p0, p1, :cond_3

    .line 168
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string p0, "center"

    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_3
    return v2

    .line 174
    :cond_4
    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method private static parseVertical(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 221
    const-string v0, "background-position-y"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 222
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static typeOfValue(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;
    .locals 1

    .line 241
    const-string v0, "left"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "right"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    const-string v0, "top"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "bottom"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 247
    :cond_1
    const-string v0, "center"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 248
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->CENTER:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    return-object p0

    .line 250
    :cond_2
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->NUMERIC:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    return-object p0

    .line 245
    :cond_3
    :goto_0
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->VERTICAL_POSITION:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    return-object p0

    .line 242
    :cond_4
    :goto_1
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->HORIZONTAL_POSITION:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    return-object p0
.end method

.method private static updateValue(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 112
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 113
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 114
    const-string p1, "center"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",center"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 120
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public resolveShorthand(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isInitialOrInheritOrUnset(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "background-position-y"

    const-string v5, "background-position-x"

    if-eqz v0, :cond_0

    .line 57
    new-array v0, v3, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v3, v5, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v2, v4, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v6, "background-position"

    const-string v7, "{0} shorthand property cannot be empty."

    if-eqz v0, :cond_1

    .line 63
    sget-object p1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 68
    :cond_1
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->extractShorthandProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 69
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 71
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 73
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 74
    sget-object p1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 75
    invoke-static {v7, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 79
    :cond_2
    invoke-static {v10, v9}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->parsePositionShorthand(Ljava/util/List;Ljava/util/Map;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 80
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Invalid css property declaration: {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 85
    :cond_3
    invoke-static {v8, v9, v5}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->updateValue(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 86
    invoke-static {v8, v9, v4}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->updateValue(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 87
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 89
    :cond_4
    invoke-static {v8, v5}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->checkProperty(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 90
    invoke-static {v8, v4}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;->checkProperty(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 94
    :cond_5
    new-array p1, v3, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 96
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v5, v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, p1, v2

    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 98
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v4, v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, p1, v1

    .line 94
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 91
    :cond_6
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
