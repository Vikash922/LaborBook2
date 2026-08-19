.class public final Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;
.super Ljava/lang/Object;
.source "CssSelectorParser.java"


# static fields
.field private static final LEGACY_PSEUDO_ELEMENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SELECTOR_PATTERN_STR:Ljava/lang/String; = "(\\*)|([_a-zA-Z][\\w-]*)|(\\.[_a-zA-Z][\\w-]*)|(#[_a-z][\\w-]*)|(\\[[_a-zA-Z][\\w-]*(([~^$*|])?=((\"[^\"]+\")|([^\"]+)|(\'[^\']+\')|(\"\")|(\'\')))?\\])|(::?[a-zA-Z-]*)|( )|(\\+)|(>)|(~)"

.field private static final selectorPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 78
    const-string v1, "first-line"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v1, "first-letter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v1, "before"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v1, "after"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;->LEGACY_PSEUDO_ELEMENTS:Ljava/util/Set;

    .line 94
    const-string v0, "(\\*)|([_a-zA-Z][\\w-]*)|(\\.[_a-zA-Z][\\w-]*)|(#[_a-z][\\w-]*)|(\\[[_a-zA-Z][\\w-]*(([~^$*|])?=((\"[^\"]+\")|([^\"]+)|(\'[^\']+\')|(\"\")|(\'\')))?\\])|(::?[a-zA-Z-]*)|( )|(\\+)|(>)|(~)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;->selectorPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendPseudoSelector(Ljava/util/List;Ljava/lang/String;Ljava/util/regex/Matcher;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-static {p1, p2, p3}, Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;->handleBracketsOfPseudoSelector(Ljava/lang/String;Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    const-string p2, "::"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 190
    new-instance p2, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_0
    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    sget-object p2, Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;->LEGACY_PSEUDO_ELEMENTS:Ljava/util/Set;

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 192
    new-instance p2, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;->create(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 200
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 196
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported pseudo css selector: {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 197
    invoke-static {p2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static handleBracketsOfPseudoSelector(Ljava/lang/String;Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 213
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 214
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_5

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-lez v4, :cond_4

    .line 217
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 218
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 220
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 222
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_3

    .line 223
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v1, v1, 0x1

    invoke-static {p2, v5, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v1

    :cond_3
    :goto_1
    add-int/2addr v1, v3

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    .line 228
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    return-object p0
.end method

.method public static parseSelectorItems(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;->selectorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    move v3, v2

    .line 112
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 113
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-eq v5, v6, :cond_5

    const/16 v8, 0x23

    if-eq v5, v8, :cond_4

    const/16 v8, 0x2b

    if-eq v5, v8, :cond_5

    const/16 v8, 0x2e

    if-eq v5, v8, :cond_3

    const/16 v8, 0x3a

    if-eq v5, v8, :cond_2

    const/16 v8, 0x3e

    if-eq v5, v8, :cond_5

    const/16 v8, 0x5b

    if-eq v5, v8, :cond_1

    const/16 v8, 0x7e

    if-eq v5, v8, :cond_5

    if-nez v3, :cond_0

    .line 157
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;

    invoke-direct {v3, v4}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v7

    goto :goto_1

    .line 154
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid selector string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_1
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;

    invoke-direct {v5, v4}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_2
    invoke-static {v0, v4, v1, p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;->appendPseudoSelector(Ljava/util/List;Ljava/lang/String;Ljava/util/regex/Matcher;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_3
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/selector/item/CssClassSelectorItem;

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssClassSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 117
    :cond_4
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/selector/item/CssIdSelectorItem;

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssIdSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_9

    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;

    .line 138
    new-instance v8, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;

    invoke-direct {v8, v5}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;-><init>(C)V

    .line 139
    instance-of v5, v4, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;

    if-eqz v5, :cond_8

    .line 140
    invoke-virtual {v8}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;->getSeparator()C

    move-result v5

    if-ne v5, v6, :cond_6

    goto/16 :goto_1

    .line 142
    :cond_6
    check-cast v4, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;->getSeparator()C

    move-result v5

    if-ne v5, v6, :cond_7

    .line 143
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-interface {v0, v4, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 145
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;->getSeparator()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v8}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;->getSeparator()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Invalid selector description. Two consequent characters occurred: {0}, {1}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 148
    :cond_8
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 133
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 135
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 133
    const-string v1, "Invalid token detected at the beginning of the selector string: \"{0}\""

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_b

    return-object v0

    .line 163
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Selector declaration is invalid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
