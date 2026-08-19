.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/ListStyleShorthandResolver;
.super Ljava/lang/Object;
.source "ListStyleShorthandResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;


# static fields
.field private static final LIST_STYLE_POSITION_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIST_STYLE_TYPE_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 64
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "disc"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "armenian"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "circle"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v6, "cjk-ideographic"

    aput-object v6, v1, v2

    const/4 v2, 0x4

    const-string v6, "decimal"

    aput-object v6, v1, v2

    const/4 v2, 0x5

    const-string v6, "decimal-leading-zero"

    aput-object v6, v1, v2

    const/4 v2, 0x6

    const-string v6, "georgian"

    aput-object v6, v1, v2

    const/4 v2, 0x7

    const-string v6, "hebrew"

    aput-object v6, v1, v2

    const/16 v2, 0x8

    const-string v6, "hiragana"

    aput-object v6, v1, v2

    const/16 v2, 0x9

    const-string v6, "hiragana-iroha"

    aput-object v6, v1, v2

    const/16 v2, 0xa

    const-string v6, "lower-alpha"

    aput-object v6, v1, v2

    const/16 v2, 0xb

    const-string v6, "lower-greek"

    aput-object v6, v1, v2

    const/16 v2, 0xc

    const-string v6, "lower-latin"

    aput-object v6, v1, v2

    const/16 v2, 0xd

    const-string v6, "lower-roman"

    aput-object v6, v1, v2

    const/16 v2, 0xe

    const-string v6, "none"

    aput-object v6, v1, v2

    const/16 v2, 0xf

    const-string v6, "square"

    aput-object v6, v1, v2

    const/16 v2, 0x10

    const-string v6, "upper-alpha"

    aput-object v6, v1, v2

    const/16 v2, 0x11

    const-string v6, "upper-latin"

    aput-object v6, v1, v2

    const/16 v2, 0x12

    const-string v6, "upper-roman"

    aput-object v6, v1, v2

    .line 65
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/ListStyleShorthandResolver;->LIST_STYLE_TYPE_VALUES:Ljava/util/Set;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "inside"

    aput-object v2, v1, v3

    const-string v2, "outside"

    aput-object v2, v1, v4

    .line 89
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/ListStyleShorthandResolver;->LIST_STYLE_POSITION_VALUES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveShorthand(Ljava/lang/String;)Ljava/util/List;
    .locals 9
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

    .line 99
    const-string v0, "initial"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "list-style-image"

    const-string v3, "list-style-position"

    const-string v4, "list-style-type"

    const/4 v5, 0x0

    if-nez v1, :cond_9

    const-string v1, "inherit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 106
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->extractShorthandProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v5, v1

    move-object v6, v5

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 113
    const-string v8, "url("

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->isCssLinearGradientValue(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "none"

    .line 114
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v1, :cond_2

    goto :goto_1

    .line 116
    :cond_2
    sget-object v8, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/ListStyleShorthandResolver;->LIST_STYLE_TYPE_VALUES:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v1, v7

    goto :goto_0

    .line 118
    :cond_3
    sget-object v8, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/ListStyleShorthandResolver;->LIST_STYLE_POSITION_VALUES:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v5, v7

    goto :goto_0

    :cond_4
    :goto_1
    move-object v6, v7

    goto :goto_0

    .line 123
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance v7, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v1, :cond_6

    move-object v1, v0

    :cond_6
    invoke-direct {v7, v4, v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v5, :cond_7

    move-object v5, v0

    :cond_7
    invoke-direct {v1, v3, v5}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    move-object v0, v6

    :goto_2
    invoke-direct {v1, v2, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_9
    :goto_3
    const/4 v0, 0x3

    .line 100
    new-array v0, v0, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v1, v4, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v1, v3, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    aput-object v1, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
