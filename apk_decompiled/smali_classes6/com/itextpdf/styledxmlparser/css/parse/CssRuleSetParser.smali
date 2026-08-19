.class public final Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;
.super Ljava/lang/Object;
.source "CssRuleSetParser.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSemicolonPosition(Ljava/lang/String;I)I
    .locals 5

    .line 178
    const-string v0, ";"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 179
    const-string v2, ")"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 180
    const-string v2, "("

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ge p1, v0, :cond_1

    if-lez v1, :cond_1

    :goto_0
    add-int/lit8 v4, p1, 0x1

    .line 185
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ge v4, v1, :cond_1

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    move p1, v4

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v0, v3, :cond_2

    if-le v0, p1, :cond_2

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 189
    invoke-static {p0, v1}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->getSemicolonPosition(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public static parsePropertyDeclarations(Ljava/lang/String;)Ljava/util/List;
    .locals 8
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

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    const-string v1, "/*"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 84
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->parsePropertyDeclarations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    const-string v2, "*/"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_3

    add-int/lit8 v1, v1, 0x2

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->parsePropertyDeclarations(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 90
    :cond_0
    invoke-static {p0, v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->getSemicolonPosition(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    .line 92
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->splitCssProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 94
    new-instance v6, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v7, v5, v2

    aget-object v4, v5, v4

    invoke-direct {v6, v7, v4}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 96
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {p0, v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->getSemicolonPosition(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 99
    :cond_2
    const-string v1, "[\\n\\r\\t ]"

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 100
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->splitCssProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 102
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    aget-object v2, p0, v2

    aget-object p0, p0, v4

    invoke-direct {v1, v2, p0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static parseRuleSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssRuleSet;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->parsePropertyDeclarations(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 126
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 127
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->removeDoubleSpacesAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v2

    .line 128
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_1
    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    .line 133
    :try_start_0
    new-instance v4, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    new-instance v5, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;

    invoke-direct {v5, v3}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, p1}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;-><init>(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Ljava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 135
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->logger:Lorg/slf4j/Logger;

    const-string v2, "Error while parsing css selector: {0}"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    return-object v0
.end method

.method private static splitCssProperty(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    .line 157
    new-array v0, v0, [Ljava/lang/String;

    .line 158
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 160
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->logger:Lorg/slf4j/Logger;

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 160
    const-string v2, "Invalid css property declaration: {0}"

    invoke-static {v2, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 165
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method
