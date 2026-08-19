.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;
.super Ljava/lang/Object;
.source "FontShorthandResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;


# static fields
.field private static final FONT_SIZE_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FONT_WEIGHT_NOT_DEFAULT_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNSUPPORTED_VALUES_OF_FONT_SHORTHAND:Ljava/util/Set;
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
    .locals 14

    .line 68
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "caption"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "icon"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "menu"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "message-box"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "small-caption"

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-string v3, "status-bar"

    const/4 v9, 0x5

    aput-object v3, v2, v9

    .line 69
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;->UNSUPPORTED_VALUES_OF_FONT_SHORTHAND:Ljava/util/Set;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "bold"

    aput-object v3, v2, v4

    const-string v3, "bolder"

    aput-object v3, v2, v5

    const-string v3, "lighter"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    const-string v3, "200"

    aput-object v3, v2, v8

    const-string v3, "300"

    aput-object v3, v2, v9

    const-string v3, "400"

    aput-object v3, v2, v1

    const-string v3, "500"

    const/4 v10, 0x7

    aput-object v3, v2, v10

    const-string v3, "600"

    const/16 v11, 0x8

    aput-object v3, v2, v11

    const-string v3, "700"

    const/16 v12, 0x9

    aput-object v3, v2, v12

    const/16 v3, 0xa

    const-string v13, "800"

    aput-object v13, v2, v3

    const/16 v3, 0xb

    const-string v13, "900"

    aput-object v13, v2, v3

    .line 80
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;->FONT_WEIGHT_NOT_DEFAULT_VALUES:Ljava/util/Set;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "medium"

    aput-object v3, v2, v4

    const-string v3, "xx-small"

    aput-object v3, v2, v5

    const-string v3, "x-small"

    aput-object v3, v2, v6

    const-string v3, "small"

    aput-object v3, v2, v7

    const-string v3, "large"

    aput-object v3, v2, v8

    const-string v3, "x-large"

    aput-object v3, v2, v9

    const-string v3, "xx-large"

    aput-object v3, v2, v1

    const-string v1, "smaller"

    aput-object v1, v2, v10

    const-string v1, "larger"

    aput-object v1, v2, v11

    .line 89
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;->FONT_SIZE_VALUES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFontProperties(Ljava/lang/String;)Ljava/util/List;
    .locals 7
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

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 171
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 172
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_0

    xor-int/lit8 v3, v3, 0x1

    .line 175
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v6, 0x27

    if-ne v5, v6, :cond_1

    xor-int/lit8 v4, v4, 0x1

    .line 178
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 179
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 185
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method


# virtual methods
.method public resolveShorthand(Ljava/lang/String;)Ljava/util/List;
    .locals 22
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

    move-object/from16 v0, p1

    .line 106
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;->UNSUPPORTED_VALUES_OF_FONT_SHORTHAND:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-class v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 108
    const-string v2, "The \"{0}\" value of CSS shorthand property \"font\" is not supported"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 110
    :cond_0
    const-string v1, "initial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "font-family"

    const-string v5, "line-height"

    const-string v7, "font-size"

    const-string v9, "font-weight"

    const-string v11, "font-variant"

    const-string v12, "font-style"

    const/4 v13, 0x6

    const/4 v15, 0x0

    if-nez v2, :cond_10

    const-string v2, "inherit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_8

    .line 128
    :cond_1
    const-string v2, "\\s*,\\s*"

    const-string v4, ","

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p0

    invoke-direct {v2, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;->getFontProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v6, v21

    check-cast v6, Ljava/lang/String;

    const/16 v8, 0x2f

    .line 130
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 131
    const-string v10, "italic"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "oblique"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    .line 133
    :cond_2
    const-string v10, "small-caps"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v16, v6

    goto :goto_0

    .line 135
    :cond_3
    sget-object v10, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;->FONT_WEIGHT_NOT_DEFAULT_VALUES:Ljava/util/Set;

    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object/from16 v17, v6

    goto :goto_0

    :cond_4
    if-lez v8, :cond_5

    .line 138
    invoke-virtual {v6, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    .line 139
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v6, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v6

    move-object/from16 v18, v10

    goto :goto_0

    .line 140
    :cond_5
    sget-object v8, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;->FONT_SIZE_VALUES:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isMetricValue(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 141
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumber(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    move-object/from16 v20, v6

    goto :goto_0

    :cond_7
    :goto_1
    move-object/from16 v18, v6

    goto :goto_0

    :cond_8
    :goto_2
    move-object v4, v6

    goto :goto_0

    .line 148
    :cond_9
    new-array v0, v13, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v4, :cond_a

    move-object v4, v1

    :cond_a
    invoke-direct {v6, v12, v4}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v0, v15

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v16, :cond_b

    move-object v6, v1

    goto :goto_3

    :cond_b
    move-object/from16 v6, v16

    :goto_3
    invoke-direct {v4, v11, v6}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v4, v0, v6

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v17, :cond_c

    move-object v6, v1

    goto :goto_4

    :cond_c
    move-object/from16 v6, v17

    :goto_4
    invoke-direct {v4, v9, v6}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v4, v0, v6

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v18, :cond_d

    move-object v6, v1

    goto :goto_5

    :cond_d
    move-object/from16 v6, v18

    :goto_5
    invoke-direct {v4, v7, v6}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v4, v0, v6

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v19, :cond_e

    move-object v6, v1

    goto :goto_6

    :cond_e
    move-object/from16 v6, v19

    :goto_6
    invoke-direct {v4, v5, v6}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v4, v0, v5

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    if-nez v20, :cond_f

    goto :goto_7

    :cond_f
    move-object/from16 v1, v20

    :goto_7
    invoke-direct {v4, v3, v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_10
    :goto_8
    move-object/from16 v2, p0

    .line 111
    new-array v1, v13, [Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v4, v12, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v15

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v4, v11, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v4, v1, v6

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v4, v9, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v4, v1, v6

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v4, v7, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v4, v1, v6

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v4, v5, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v4, v1, v5

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-direct {v4, v3, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    aput-object v4, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
