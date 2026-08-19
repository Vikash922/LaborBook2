.class public final Lcom/itextpdf/styledxmlparser/css/parse/CssPageSelectorParser;
.super Ljava/lang/Object;
.source "CssPageSelectorParser.java"


# static fields
.field private static final PAGE_SELECTOR_PATTERN_STR:Ljava/lang/String; = "(^-?[_a-zA-Z][\\w-]*)|(:(?i)(left|right|first|blank))"

.field private static final selectorPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-string v0, "(^-?[_a-zA-Z][\\w-]*)|(:(?i)(left|right|first|blank))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/parse/CssPageSelectorParser;->selectorPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseSelectorItems(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/parse/CssPageSelectorParser;->selectorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 75
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_0

    .line 78
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPagePseudoClassSelectorItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPagePseudoClassSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPageTypeSelectorItem;

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPageTypeSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
