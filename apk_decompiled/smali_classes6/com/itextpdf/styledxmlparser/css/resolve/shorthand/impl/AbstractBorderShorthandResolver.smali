.class public abstract Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;
.super Ljava/lang/Object;
.source "AbstractBorderShorthandResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;


# static fields
.field private static final _0_COLOR:Ljava/lang/String; = "{0}-color"

.field private static final _0_STYLE:Ljava/lang/String; = "{0}-style"

.field private static final _0_WIDTH:Ljava/lang/String; = "{0}-width"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getPrefix()Ljava/lang/String;
.end method

.method public resolveShorthand(Ljava/lang/String;)Ljava/util/List;
    .locals 11
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

    .line 87
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;->getPrefix()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{0}-width"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;->getPrefix()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{0}-style"

    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;->getPrefix()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "{0}-color"

    invoke-static {v3, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 91
    const-string v3, "initial"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_c

    const-string v4, "inherit"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_5

    .line 98
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->extractShorthandProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 104
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 105
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_3

    .line 111
    :cond_2
    sget-object v10, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BORDER_WIDTH_VALUES:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v9}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumber(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 112
    invoke-static {v9}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isMetricValue(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v9}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    .line 114
    :cond_3
    sget-object v10, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BORDER_STYLE_VALUES:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "auto"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_1

    .line 116
    :cond_4
    invoke-static {v9}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isColorProperty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v8, v9

    goto :goto_0

    :cond_5
    :goto_1
    move-object v7, v9

    goto :goto_0

    :cond_6
    :goto_2
    move-object v6, v9

    goto :goto_0

    .line 106
    :cond_7
    :goto_3
    const-class v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 107
    const-string v1, "Invalid css property declaration: {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 121
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v6, :cond_9

    move-object v6, v3

    :cond_9
    invoke-direct {v4, v0, v6}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v7, :cond_a

    move-object v7, v3

    :cond_a
    invoke-direct {v0, v1, v7}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v8, :cond_b

    goto :goto_4

    :cond_b
    move-object v3, v8

    :goto_4
    invoke-direct {v0, v2, v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_c
    :goto_5
    const/4 v3, 0x3

    .line 92
    new-array v3, v3, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v4, v0, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v5

    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-object v0, v3, v1

    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v0, v2, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    aput-object v0, v3, p1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
