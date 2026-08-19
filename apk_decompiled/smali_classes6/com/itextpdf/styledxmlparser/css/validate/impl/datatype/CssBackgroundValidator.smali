.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;
.super Ljava/lang/Object;
.source "CssBackgroundValidator.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;


# static fields
.field private static final MAX_AMOUNT_OF_VALUES:I = 0x2


# instance fields
.field private final backgroundProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    return-void
.end method

.method private checkMultiValuePositionXY(Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 92
    const-string v0, "background-position-x"

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "background-position-y"

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 94
    :cond_1
    :goto_0
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_POSITION_VALUES:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-ne p2, v1, :cond_2

    return v2

    .line 97
    :cond_2
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_POSITION_VALUES:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    if-ne p2, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method

.method private isMultiValueAllowedForThisType()Z
    .locals 2

    .line 103
    const-string v0, "background-origin"

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "background-clip"

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "background-image"

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "background-attachment"

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isMultiValueAllowedForThisValue(Ljava/lang/String;)Z
    .locals 1

    .line 110
    const-string v0, "repeat-x"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "repeat-y"

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cover"

    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "contain"

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "center"

    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPropertyValueCorrespondsPropertyType(Ljava/lang/String;)Z
    .locals 6

    .line 119
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->resolveBackgroundPropertyType(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    move-result-object p1

    .line 120
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->UNDEFINED:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 126
    :cond_1
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    const-string v3, "background-position-y"

    const-string v4, "background-position-x"

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 127
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 128
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v2

    .line 131
    :cond_3
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_ORIGIN_OR_CLIP:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    if-ne p1, v0, :cond_5

    const-string v0, "background-clip"

    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "background-origin"

    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    return v2

    .line 136
    :cond_5
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION_OR_SIZE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 137
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 138
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "background-size"

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    return v1
.end method

.method private isValidProperty(Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 79
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->isPropertyValueCorrespondsPropertyType(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->isMultiValueAllowedForThisType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->isMultiValueAllowedForThisValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->checkMultiValuePositionXY(Ljava/util/List;I)Z

    move-result p1

    return p1

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 60
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isInitialOrInheritOrUnset(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 64
    :cond_1
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->extractShorthandProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 66
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    goto :goto_1

    :cond_3
    move v3, v0

    .line 69
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 70
    invoke-direct {p0, v1, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->isValidProperty(Ljava/util/List;I)Z

    move-result v4

    if-nez v4, :cond_4

    return v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    return v2
.end method
