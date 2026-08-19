.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;
.super Ljava/lang/Object;
.source "BackgroundShorthandResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBackgroundClipAndBackgroundOriginBoxValues(Ljava/util/List;Ljava/util/Map;Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;",
            ">;)Z"
        }
    .end annotation

    .line 259
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 260
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_CLIP:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 261
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 260
    invoke-static {v0, p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->putPropertyBasedOnType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)Z

    move-result p0

    return p0

    .line 262
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_3

    if-nez v0, :cond_1

    .line 264
    sget-object v4, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_ORIGIN:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_CLIP:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 266
    :goto_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5, p1, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->putPropertyBasedOnType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private static changePropertyType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;Z)Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;
    .locals 1

    .line 319
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION_X:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION_Y:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    if-ne p0, v0, :cond_1

    .line 321
    :cond_0
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 323
    :cond_1
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION_OR_SIZE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    if-ne p0, v0, :cond_3

    if-eqz p1, :cond_2

    .line 324
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_SIZE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    :goto_0
    return-object p0

    .line 327
    :cond_3
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_SIZE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    if-ne p0, v0, :cond_4

    if-nez p1, :cond_4

    .line 328
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->UNDEFINED:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object p0

    .line 330
    :cond_4
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    if-ne p0, v0, :cond_5

    if-eqz p1, :cond_5

    .line 331
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->UNDEFINED:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    :cond_5
    return-object p0
.end method

.method private static checkProperties(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 149
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 150
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 152
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 152
    const-string v1, "Invalid css property declaration: {0}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v2

    .line 157
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/ShorthandResolverFactory;->getShorthandResolver(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;->resolveShorthand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static fillMapWithPropertiesTypes(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_COLOR:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_IMAGE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_SIZE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_REPEAT:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_ORIGIN:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_CLIP:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_ATTACHMENT:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static fillNotProcessedProperties(Ljava/util/Map;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;",
            ">;)V"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 304
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_COLOR:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    if-eq v1, v2, :cond_0

    .line 305
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 307
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/resolve/CssDefaults;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 309
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 310
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/resolve/CssDefaults;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static processAllSpecifiedProperties(Ljava/util/List;Ljava/util/Map;Ljava/util/Set;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;",
            ">;)Z"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x2f

    .line 235
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_1

    .line 236
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    if-ge v6, v7, :cond_1

    if-nez v3, :cond_1

    const-string v7, "url("

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "device-cmyk("

    .line 237
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 239
    invoke-static {v5, v6, p1, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->processValueWithSlash(Ljava/lang/String;ILjava/util/Map;Ljava/util/Set;)Z

    move-result v4

    move v3, v2

    goto :goto_0

    .line 241
    :cond_1
    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->resolveBackgroundPropertyType(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    move-result-object v6

    .line 242
    sget-object v7, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_ORIGIN_OR_CLIP:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    if-ne v7, v6, :cond_2

    .line 243
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_2
    invoke-static {v6, v3}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->changePropertyType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;Z)Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    move-result-object v4

    invoke-static {v4, v5, p1, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->putPropertyBasedOnType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)Z

    move-result v4

    :goto_0
    if-nez v4, :cond_0

    return v1

    .line 253
    :cond_3
    invoke-static {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->addBackgroundClipAndBackgroundOriginBoxValues(Ljava/util/List;Ljava/util/Map;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method private static processProperties(Ljava/util/List;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 209
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    const-string p1, "background"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "{0} shorthand property cannot be empty."

    invoke-static {v0, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v1

    .line 214
    :cond_0
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_COLOR:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    const-string p1, "Only the last background can include a background color."

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v1

    .line 218
    :cond_1
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->removeSpacesAroundSlash(Ljava/util/List;)V

    .line 219
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 220
    invoke-static {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->processAllSpecifiedProperties(Ljava/util/List;Ljava/util/Map;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 221
    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->fillNotProcessedProperties(Ljava/util/Map;Ljava/util/Set;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private static processValueWithSlash(Ljava/lang/String;ILjava/util/Map;Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->resolveBackgroundPropertyType(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->changePropertyType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;Z)Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    move-result-object v2

    .line 280
    sget-object v3, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    const-string v4, "Unknown {0} property: \"{1}\"."

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION_OR_SIZE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    if-eq v2, v3, :cond_0

    .line 282
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    const-string p1, "background-position"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v3, 0x1

    add-int/2addr p1, v3

    .line 287
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->resolveBackgroundPropertyType(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->changePropertyType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;Z)Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    move-result-object p1

    .line 290
    sget-object v5, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_SIZE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    if-eq p1, v5, :cond_1

    sget-object v5, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION_OR_SIZE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    if-eq p1, v5, :cond_1

    .line 292
    sget-object p1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "background-size"

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v0

    .line 297
    :cond_1
    invoke-static {v2, v1, p2, p3}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->putPropertyBasedOnType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    invoke-static {p1, p0, p2, p3}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->putPropertyBasedOnType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v3

    :cond_2
    return v0
.end method

.method private static putPropertyBasedOnType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;",
            ">;)Z"
        }
    .end annotation

    .line 348
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->UNDEFINED:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    if-ne p0, v0, :cond_0

    .line 349
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Was not able to define one of the background CSS shorthand properties: {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 354
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 355
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 356
    :cond_1
    invoke-interface {p3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 359
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :goto_0
    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private static removeSpacesAroundSlash(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 167
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-interface {p0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 172
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    .line 176
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-interface {p0, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void

    .line 184
    :cond_3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 185
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_4

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-interface {p0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
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

    .line 85
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isInitialOrInheritOrUnset(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x8

    if-eqz v0, :cond_0

    .line 86
    new-array v0, v9, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v9, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v10, "background-color"

    invoke-direct {v9, v10, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v0, v8

    new-instance v8, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v9, "background-image"

    invoke-direct {v8, v9, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v0, v7

    new-instance v7, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v8, "background-position"

    invoke-direct {v7, v8, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v0, v6

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v7, "background-size"

    invoke-direct {v6, v7, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v0, v5

    new-instance v5, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v6, "background-repeat"

    invoke-direct {v5, v6, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v4

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v5, "background-origin"

    invoke-direct {v4, v5, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v4, "background-clip"

    invoke-direct {v3, v4, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    const-string v3, "background-attachment"

    invoke-direct {v2, v3, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    sget-object p1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "background"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{0} shorthand property cannot be empty."

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 103
    :cond_1
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->extractShorthandProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->fillMapWithPropertiesTypes(Ljava/util/Map;)V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 108
    invoke-static {v10, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->processProperties(Ljava/util/List;Ljava/util/Map;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 112
    :cond_3
    sget-object p1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_COLOR:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    .line 113
    sget-object p1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_COLOR:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    const-string v10, "transparent"

    invoke-interface {v0, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_4
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;->checkProperties(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 120
    :cond_5
    new-array p1, v9, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v9, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    sget-object v10, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_COLOR:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 121
    invoke-static {v10}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_COLOR:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 123
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, p1, v8

    new-instance v8, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    sget-object v9, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_IMAGE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 124
    invoke-static {v9}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_IMAGE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 126
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, p1, v7

    new-instance v7, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    sget-object v8, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 127
    invoke-static {v8}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 129
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, p1, v6

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    sget-object v7, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_SIZE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 130
    invoke-static {v7}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_SIZE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 132
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, p1, v5

    new-instance v5, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    sget-object v6, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_REPEAT:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 133
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_REPEAT:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 135
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, p1, v4

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    sget-object v5, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_ORIGIN:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 136
    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_ORIGIN:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 138
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, p1, v3

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    sget-object v4, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_CLIP:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 139
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_CLIP:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 141
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, p1, v2

    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    sget-object v3, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_ATTACHMENT:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 142
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_ATTACHMENT:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 144
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, p1, v1

    .line 120
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
