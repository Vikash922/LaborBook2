.class public Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;
.super Ljava/lang/Object;
.source "QueryParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final AttributeEvals:[Ljava/lang/String;

.field private static final NTH_AB:Ljava/util/regex/Pattern;

.field private static final NTH_B:Ljava/util/regex/Pattern;

.field private static final combinators:[Ljava/lang/String;


# instance fields
.field private final evals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;",
            ">;"
        }
    .end annotation
.end field

.field private final query:Ljava/lang/String;

.field private final tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    .line 39
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, ","

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, ">"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "+"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "~"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, " "

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    const/4 v1, 0x6

    .line 40
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "="

    aput-object v2, v1, v3

    const-string v2, "!="

    aput-object v2, v1, v4

    const-string v2, "^="

    aput-object v2, v1, v5

    const-string v2, "$="

    aput-object v2, v1, v6

    const-string v2, "*="

    aput-object v2, v1, v7

    const-string v2, "~="

    aput-object v2, v1, v0

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    .line 322
    const-string v0, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->NTH_AB:Ljava/util/regex/Pattern;

    .line 323
    const-string v0, "([+-])?(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->NTH_B:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 51
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    return-void
.end method

.method private allElements()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AllElements;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AllElements;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private byAttribute()V
    .locals 4

    .line 271
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 272
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeToAny([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 276
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    const-string v0, "^"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeStarting;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeStarting;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Attribute;

    invoke-direct {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Attribute;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 282
    :cond_1
    const-string v2, "="

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 285
    :cond_2
    const-string v2, "!="

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueNot;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_3
    const-string v2, "^="

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 289
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueStarting;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueStarting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :cond_4
    const-string v2, "$="

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 292
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueEnding;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueEnding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_5
    const-string v2, "*="

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 295
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueContaining;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueContaining;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :cond_6
    const-string v2, "~="

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 298
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 300
    :cond_7
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->query:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Could not parse attribute query \'{0}\': unexpected token at \'{1}\'"

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private byClass()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Class;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Class;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private byId()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Id;

    invoke-direct {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private byTag()V
    .locals 8

    .line 255
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeElementSelector()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 259
    const-string v1, "*|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ":"

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    new-instance v6, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Tag;

    invoke-direct {v6, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$TagEndsWith;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$TagEndsWith;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    aput-object v6, v5, v0

    invoke-direct {v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;-><init>([Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_0
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Tag;

    invoke-direct {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private combinator(C)V
    .locals 10

    .line 106
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 107
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->consumeSubQuery()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 115
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    .line 117
    instance-of v5, v1, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;

    if-eqz v5, :cond_1

    if-eq p1, v2, :cond_1

    .line 118
    move-object v5, v1

    check-cast v5, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->rightMostEvaluator()Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object v5

    move v6, v4

    move-object v9, v5

    move-object v5, v1

    move-object v1, v9

    goto :goto_0

    .line 124
    :cond_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;

    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-direct {v1, v5}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    :cond_1
    move-object v5, v1

    move v6, v3

    .line 126
    :goto_0
    iget-object v7, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    const/16 v7, 0x20

    const/4 v8, 0x2

    if-eq p1, v7, :cond_7

    const/16 v7, 0x3e

    if-eq p1, v7, :cond_6

    const/16 v7, 0x7e

    if-eq p1, v7, :cond_5

    const/16 v7, 0x2b

    if-eq p1, v7, :cond_4

    if-ne p1, v2, :cond_3

    .line 144
    instance-of p1, v1, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;

    if-eqz p1, :cond_2

    .line 145
    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;

    goto :goto_1

    .line 147
    :cond_2
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;

    invoke-direct {p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;-><init>()V

    .line 148
    invoke-virtual {p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->add(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    move-object v1, p1

    .line 150
    :goto_1
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->add(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    goto :goto_3

    .line 154
    :cond_3
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown combinator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 137
    :cond_4
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;

    new-array v2, v8, [Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    new-instance v7, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;

    invoke-direct {v7, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;-><init>([Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    goto :goto_2

    .line 140
    :cond_5
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;

    new-array v2, v8, [Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    new-instance v7, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$PreviousSibling;

    invoke-direct {v7, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$PreviousSibling;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;-><init>([Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    goto :goto_2

    .line 131
    :cond_6
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;

    new-array v2, v8, [Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    new-instance v7, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$ImmediateParent;

    invoke-direct {v7, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$ImmediateParent;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;-><init>([Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    goto :goto_2

    .line 134
    :cond_7
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;

    new-array v2, v8, [Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    new-instance v7, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Parent;

    invoke-direct {v7, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Parent;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;-><init>([Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    :goto_2
    move-object v1, p1

    :goto_3
    if-eqz v6, :cond_8

    .line 158
    move-object p1, v5

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;

    invoke-virtual {p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->replaceRightMostEvaluator(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    goto :goto_4

    :cond_8
    move-object v5, v1

    .line 160
    :goto_4
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private consumeIndex()I
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Index must be numeric"

    invoke-static {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 361
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private consumeSubQuery()Ljava/lang/String;
    .locals 5

    .line 164
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 166
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v2, "("

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const/16 v3, 0x28

    const/16 v4, 0x29

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v2, "["

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const/16 v3, 0x5b

    const/16 v4, 0x5d

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    sget-object v2, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private contains(Z)V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    if-eqz p1, :cond_0

    const-string v1, ":containsOwn"

    goto :goto_0

    :cond_0
    const-string v1, ":contains"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    const-string v1, ":contains(text) query must not be empty"

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 378
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsOwnText;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsOwnText;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 380
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsText;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsText;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method private containsData()V
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":containsData"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    const-string v1, ":containsData(text) query must not be empty"

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsData;

    invoke-direct {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsData;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private cssNthChild(ZZ)V
    .locals 8

    .line 326
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->NTH_AB:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 328
    sget-object v2, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->NTH_B:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 330
    const-string v3, "odd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    goto :goto_2

    .line 333
    :cond_0
    const-string v3, "even"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    move v5, v6

    goto :goto_2

    .line 336
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-string v4, ""

    const-string v7, "^\\+"

    if-eqz v3, :cond_4

    const/4 v0, 0x3

    .line 337
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    const/4 v2, 0x4

    .line 338
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    move v4, v0

    goto :goto_2

    .line 339
    :cond_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 341
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v6

    :goto_2
    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    .line 347
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance p2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthLastOfType;

    invoke-direct {p2, v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthLastOfType;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 349
    :cond_5
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance p2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthOfType;

    invoke-direct {p2, v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthOfType;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    .line 352
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance p2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthLastChild;

    invoke-direct {p2, v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthLastChild;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 354
    :cond_7
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance p2, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthChild;

    invoke-direct {p2, v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsNthChild;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void

    .line 343
    :cond_8
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;

    const-string p2, "Could not parse nth-index \'{0}\': unexpected format"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private findElements()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->byId()V

    goto/16 :goto_1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->byClass()V

    goto/16 :goto_1

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, "*|"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->byAttribute()V

    goto/16 :goto_1

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->allElements()V

    goto/16 :goto_1

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":lt("

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->indexLessThan()V

    goto/16 :goto_1

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":gt("

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->indexGreaterThan()V

    goto/16 :goto_1

    .line 193
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":eq("

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->indexEquals()V

    goto/16 :goto_1

    .line 195
    :cond_7
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":has("

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 196
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->has()V

    goto/16 :goto_1

    .line 197
    :cond_8
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":contains("

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 198
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->contains(Z)V

    goto/16 :goto_1

    .line 199
    :cond_9
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v2, ":containsOwn("

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    .line 200
    invoke-direct {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->contains(Z)V

    goto/16 :goto_1

    .line 201
    :cond_a
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":containsData("

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 202
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->containsData()V

    goto/16 :goto_1

    .line 203
    :cond_b
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":matches("

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 204
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->matches(Z)V

    goto/16 :goto_1

    .line 205
    :cond_c
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":matchesOwn("

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 206
    invoke-direct {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->matches(Z)V

    goto/16 :goto_1

    .line 207
    :cond_d
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":not("

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 208
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->not()V

    goto/16 :goto_1

    .line 209
    :cond_e
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":nth-child("

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 210
    invoke-direct {p0, v1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_1

    .line 211
    :cond_f
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":nth-last-child("

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 212
    invoke-direct {p0, v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_1

    .line 213
    :cond_10
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v3, ":nth-of-type("

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 214
    invoke-direct {p0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_1

    .line 215
    :cond_11
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":nth-last-of-type("

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 216
    invoke-direct {p0, v2, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_1

    .line 217
    :cond_12
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":first-child"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 218
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsFirstChild;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsFirstChild;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 219
    :cond_13
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":last-child"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 220
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsLastChild;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsLastChild;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 221
    :cond_14
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":first-of-type"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 222
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsFirstOfType;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsFirstOfType;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 223
    :cond_15
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":last-of-type"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 224
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsLastOfType;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsLastOfType;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 225
    :cond_16
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":only-child"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 226
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsOnlyChild;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsOnlyChild;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    :cond_17
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":only-of-type"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 228
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsOnlyOfType;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsOnlyOfType;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :cond_18
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":empty"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 230
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsEmpty;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsEmpty;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    :cond_19
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":root"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 232
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsRoot;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsRoot;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    :cond_1a
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":matchText"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 234
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$MatchText;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$MatchText;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :cond_1b
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->query:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Could not parse query \'{0}\': unexpected token at \'{1}\'"

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 184
    :cond_1c
    :goto_0
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->byTag()V

    :goto_1
    return-void
.end method

.method private has()V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":has"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    .line 368
    const-string v1, ":has(el) subselect must not be empty"

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Has;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Has;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private indexEquals()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEquals;

    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEquals;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private indexGreaterThan()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexGreaterThan;

    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexGreaterThan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private indexLessThan()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexLessThan;

    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexLessThan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private matches(Z)V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    if-eqz p1, :cond_0

    const-string v1, ":matchesOwn"

    goto :goto_0

    :cond_0
    const-string v1, ":matches"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    .line 395
    const-string v1, ":matches(regex) query must not be empty"

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 398
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$MatchesOwn;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$MatchesOwn;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 400
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Matches;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Matches;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method private not()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const-string v1, ":not"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    .line 407
    const-string v1, ":not(selector) subselect must not be empty"

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Not;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Not;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .locals 2

    .line 65
    :try_start_0
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse()Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 68
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method parse()Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 79
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Root;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Root;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->combinator(C)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->findElements()V

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    sget-object v2, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->tq:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokenQueue;->consume()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->combinator(C)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/16 v0, 0x20

    .line 93
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->combinator(C)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->findElements()V

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 100
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    return-object v0

    .line 102
    :cond_4
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->query:Ljava/lang/String;

    return-object v0
.end method
