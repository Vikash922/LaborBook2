.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/TextDecorationShorthandResolver;
.super Ljava/lang/Object;
.source "TextDecorationShorthandResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;


# static fields
.field private static final TEXT_DECORATION_LINE_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_DECORATION_STYLE_VALUES:Ljava/util/Set;
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
    .locals 8

    .line 38
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "underline"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "overline"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "line-through"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "blink"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 39
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/TextDecorationShorthandResolver;->TEXT_DECORATION_LINE_VALUES:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "solid"

    aput-object v3, v2, v4

    const-string v3, "double"

    aput-object v3, v2, v5

    const-string v3, "dotted"

    aput-object v3, v2, v6

    const-string v3, "dashed"

    aput-object v3, v2, v7

    const-string v3, "wavy"

    aput-object v3, v2, v1

    .line 47
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/TextDecorationShorthandResolver;->TEXT_DECORATION_STYLE_VALUES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 57
    const-string v0, "initial"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "text-decoration-color"

    const-string v3, "text-decoration-style"

    const/4 v4, 0x0

    const-string v5, "text-decoration-line"

    if-nez v1, :cond_a

    const-string v1, "inherit"

    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 67
    :cond_0
    const-string v1, "\\s+(?![^\\(]*\\))"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    array-length v6, p1

    const/4 v7, 0x0

    move-object v8, v7

    :goto_0
    if-ge v4, v6, :cond_5

    aget-object v9, p1, v4

    .line 76
    sget-object v10, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/TextDecorationShorthandResolver;->TEXT_DECORATION_LINE_VALUES:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "none"

    .line 77
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    sget-object v10, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/TextDecorationShorthandResolver;->TEXT_DECORATION_STYLE_VALUES:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v7, v9

    goto :goto_2

    .line 81
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    move-object v8, v9

    goto :goto_2

    .line 78
    :cond_3
    :goto_1
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 88
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v1, v5, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 90
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 92
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 94
    :cond_7
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v4}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_4
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v7, :cond_8

    move-object v7, v0

    :cond_8
    invoke-direct {v1, v3, v7}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    move-object v0, v8

    :goto_5
    invoke-direct {v1, v2, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_a
    :goto_6
    const/4 v0, 0x3

    .line 59
    new-array v0, v0, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v1, v5, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

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
