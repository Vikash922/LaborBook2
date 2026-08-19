.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderShorthandResolver;
.super Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;
.source "BorderShorthandResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPrefix()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "border"

    return-object v0
.end method

.method public resolveShorthand(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    .line 74
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;->resolveShorthand(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 77
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/ShorthandResolverFactory;->getShorthandResolver(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;->resolveShorthand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 81
    :cond_0
    const-class v2, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderShorthandResolver;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 83
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 82
    const-string v3, "Cannot find a shorthand resolver for the \"{0}\" property. Expected border-width, border-style or border-color properties."

    invoke-static {v3, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method
