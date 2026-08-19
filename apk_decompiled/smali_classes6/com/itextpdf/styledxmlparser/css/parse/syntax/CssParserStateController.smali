.class public final Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;
.super Ljava/lang/Object;
.source "CssParserStateController.java"


# static fields
.field private static final CONDITIONAL_GROUP_RULES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_RULES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final atRuleBlockState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private buffer:Ljava/lang/StringBuilder;

.field private final commendEndState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private final commendInnerState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private final commentStartState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private final conditionalGroupAtRuleBlockState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private currentSelector:Ljava/lang/String;

.field private currentState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private isCurrentRuleSupported:Z

.field private nestedAtRules:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;",
            ">;"
        }
    .end annotation
.end field

.field private previousActiveState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private final propertiesState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private final ruleState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private storedPropertiesWithoutSelector:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;>;"
        }
    .end annotation
.end field

.field private styleSheet:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

.field private final unknownState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

.field private uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 100
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "media"

    aput-object v3, v1, v2

    const-string v4, "page"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    const-string v6, "top-left-corner"

    aput-object v6, v1, v4

    const/4 v4, 0x3

    const-string v6, "top-left"

    aput-object v6, v1, v4

    const/4 v4, 0x4

    const-string v6, "top-center"

    aput-object v6, v1, v4

    const/4 v4, 0x5

    const-string v6, "top-right"

    aput-object v6, v1, v4

    const/4 v4, 0x6

    const-string v6, "top-right-corner"

    aput-object v6, v1, v4

    const/4 v4, 0x7

    const-string v6, "bottom-left-corner"

    aput-object v6, v1, v4

    const/16 v4, 0x8

    const-string v6, "bottom-left"

    aput-object v6, v1, v4

    const/16 v4, 0x9

    const-string v6, "bottom-center"

    aput-object v6, v1, v4

    const/16 v4, 0xa

    const-string v6, "bottom-right"

    aput-object v6, v1, v4

    const/16 v4, 0xb

    const-string v6, "bottom-right-corner"

    aput-object v6, v1, v4

    const/16 v4, 0xc

    const-string v6, "left-top"

    aput-object v6, v1, v4

    const/16 v4, 0xd

    const-string v6, "left-middle"

    aput-object v6, v1, v4

    const/16 v4, 0xe

    const-string v6, "left-bottom"

    aput-object v6, v1, v4

    const/16 v4, 0xf

    const-string v6, "right-top"

    aput-object v6, v1, v4

    const/16 v4, 0x10

    const-string v6, "right-middle"

    aput-object v6, v1, v4

    const/16 v4, 0x11

    const-string v6, "right-bottom"

    aput-object v6, v1, v4

    const/16 v4, 0x12

    const-string v6, "font-face"

    aput-object v6, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->SUPPORTED_RULES:Ljava/util/Set;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->CONDITIONAL_GROUP_RULES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 145
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    .line 157
    :cond_0
    new-instance p1, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-direct {p1}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->styleSheet:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    .line 158
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    .line 159
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->storedPropertiesWithoutSelector:Ljava/util/Stack;

    .line 161
    new-instance p1, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentStartState;

    invoke-direct {p1, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentStartState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->commentStartState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 162
    new-instance p1, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentEndState;

    invoke-direct {p1, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentEndState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->commendEndState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 163
    new-instance p1, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentInnerState;

    invoke-direct {p1, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentInnerState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->commendInnerState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 164
    new-instance p1, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;

    invoke-direct {p1, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/UnknownState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->unknownState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 165
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/RuleState;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/RuleState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->ruleState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 166
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/BlockState;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/BlockState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->propertiesState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 167
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/AtRuleBlockState;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/AtRuleBlockState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->atRuleBlockState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 168
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/ConditionalGroupAtRuleBlockState;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/ConditionalGroupAtRuleBlockState;-><init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->conditionalGroupAtRuleBlockState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    .line 170
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    return-void
.end method

.method private currentAtRuleIsConditionalGroupRule()Z
    .locals 2

    .line 508
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->CONDITIONAL_GROUP_RULES:Ljava/util/Set;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->getRuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isCurrentRuleSupported()Z
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->SUPPORTED_RULES:Ljava/util/Set;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->getRuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 495
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    .line 497
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->getRuleName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 496
    const-string v3, "The rule @{0} is unsupported. All selectors in this rule will be ignored."

    invoke-static {v3, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private normalizeDeclarationURIs(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    if-nez v0, :cond_0

    return-void

    .line 427
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 428
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url("

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;-><init>(Ljava/lang/String;)V

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    :goto_1
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 434
    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getType()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->FUNCTION:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    if-ne v5, v6, :cond_6

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 435
    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 436
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v8, 0x4

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 437
    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isBase64Data(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 438
    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 440
    :cond_2
    const-string v4, "\'"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    const-string v4, "\""

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 441
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 443
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 446
    :try_start_0
    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-virtual {v5, v4}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :catch_0
    const-string v5, "url({0})"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 452
    :cond_6
    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 454
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_7

    const/16 v5, 0x20

    .line 455
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 459
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->setExpression(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private processFinishedAtRuleBlock(Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;)V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->addStatementToBody(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->styleSheet:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->addStatement(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    :goto_0
    return-void
.end method

.method private processProperties(Ljava/lang/String;)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->storedPropertiesWithoutSelector:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 411
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->parsePropertyDeclarations(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 412
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->normalizeDeclarationURIs(Ljava/util/List;)V

    .line 413
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->storedPropertiesWithoutSelector:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private processProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 390
    invoke-static {p1, p2}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->parseRuleSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 391
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    .line 392
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->getNormalDeclarations()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->normalizeDeclarationURIs(Ljava/util/List;)V

    .line 393
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->getImportantDeclarations()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->normalizeDeclarationURIs(Ljava/util/List;)V

    goto :goto_0

    .line 395
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    .line 396
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->styleSheet:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-virtual {v0, p2}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->addStatement(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    goto :goto_1

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    invoke-virtual {v0, p2}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->addStatementToBody(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private processSemicolonAtRule(Ljava/lang/String;)V
    .locals 1

    .line 470
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssSemicolonAtRule;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/css/CssSemicolonAtRule;-><init>(Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->styleSheet:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->addStatement(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    return-void
.end method

.method private saveActiveState()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->previousActiveState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    return-void
.end method

.method private setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    return-void
.end method


# virtual methods
.method appendToBuffer(C)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method enterAtRuleBlockState()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->atRuleBlockState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    return-void
.end method

.method enterCommentEndState()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->commendEndState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    return-void
.end method

.method enterCommentInnerState()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->commendInnerState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    return-void
.end method

.method enterCommentStartState()V
    .locals 1

    .line 227
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->saveActiveState()V

    .line 228
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->commentStartState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    return-void
.end method

.method enterConditionalGroupAtRuleBlockState()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->conditionalGroupAtRuleBlockState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    return-void
.end method

.method enterPreviousActiveState()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->previousActiveState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    return-void
.end method

.method enterPropertiesState()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->propertiesState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    return-void
.end method

.method enterRuleState()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->ruleState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    return-void
.end method

.method enterRuleStateBasedOnItsType()V
    .locals 1

    .line 267
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentAtRuleIsConditionalGroupRule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterConditionalGroupAtRuleBlockState()V

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterAtRuleBlockState()V

    :goto_0
    return-void
.end method

.method enterUnknownState()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->unknownState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    return-void
.end method

.method enterUnknownStateIfNestedBlocksFinished()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->unknownState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->setState(Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterRuleStateBasedOnItsType()V

    :goto_0
    return-void
.end method

.method finishAtRuleBlock()V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->storedPropertiesWithoutSelector:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 346
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    .line 347
    iget-boolean v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    if-eqz v2, :cond_0

    .line 348
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->processFinishedAtRuleBlock(Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;)V

    .line 349
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->addBodyCssDeclarations(Ljava/util/List;)V

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    .line 354
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method getBufferContents()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParsingResult()Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->styleSheet:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    return-object v0
.end method

.method public process(C)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentState:Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;

    invoke-interface {v0, p1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;->process(C)V

    return-void
.end method

.method pushBlockPrecedingAtRule()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->nestedAtRules:Ljava/util/Stack;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRuleFactory;->createNestedRule(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->storedPropertiesWithoutSelector:Ljava/util/Stack;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    .line 364
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method resetBuffer()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method storeCurrentProperties()V
    .locals 2

    .line 314
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentSelector:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->processProperties(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentSelector:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method storeCurrentPropertiesWithoutSelector()V
    .locals 2

    .line 325
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->processProperties(Ljava/lang/String;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method storeCurrentSelector()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->currentSelector:Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method storeSemicolonAtRule()V
    .locals 2

    .line 335
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->isCurrentRuleSupported:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->processSemicolonAtRule(Ljava/lang/String;)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method
