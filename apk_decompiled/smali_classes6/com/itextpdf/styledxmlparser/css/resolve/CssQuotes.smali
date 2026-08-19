.class public Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;
.super Ljava/lang/Object;
.source "CssQuotes.java"


# static fields
.field private static final EMPTY_QUOTE:Ljava/lang/String; = ""


# instance fields
.field private closeQuotes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private openQuotes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->openQuotes:Ljava/util/ArrayList;

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->closeQuotes:Ljava/util/ArrayList;

    return-void
.end method

.method public static createDefaultQuotes()Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;
    .locals 3

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    const-string v2, "\u00ab"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v2, "\u00bb"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;

    invoke-direct {v2, v0, v1}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public static createQuotes(Ljava/lang/String;Z)Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;
    .locals 7

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_4

    .line 97
    const-string v1, "none"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance p0, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p0

    .line 102
    :cond_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;

    invoke-direct {v1, p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;-><init>(Ljava/lang/String;)V

    move v4, v3

    .line 104
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 105
    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->isString()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    rem-int/lit8 v6, v4, 0x2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 112
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v1, :cond_3

    .line 113
    new-instance p0, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p0

    .line 115
    :cond_3
    const-class v0, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Quote property \"{0}\" is invalid. It should contain even number of <string> values."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 119
    invoke-static {}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->createDefaultQuotes()Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;

    move-result-object p0

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private decreaseDepth(Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)V
    .locals 1

    .line 175
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;->getQuotesDepth()I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;->getQuotesDepth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;->setQuotesDepth(I)V

    :cond_0
    return-void
.end method

.method private getQuote(ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 188
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 189
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    if-gez p1, :cond_1

    .line 192
    const-string p1, ""

    return-object p1

    .line 194
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private increaseDepth(Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)V
    .locals 1

    .line 166
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;->getQuotesDepth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;->setQuotesDepth(I)V

    return-void
.end method


# virtual methods
.method public resolveQuote(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)Ljava/lang/String;
    .locals 2

    .line 143
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;->getQuotesDepth()I

    move-result v0

    .line 144
    const-string v1, "open-quote"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-direct {p0, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->increaseDepth(Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)V

    .line 146
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->openQuotes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->getQuote(ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 147
    :cond_0
    const-string v1, "close-quote"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-direct {p0, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->decreaseDepth(Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)V

    add-int/lit8 v0, v0, -0x1

    .line 149
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->closeQuotes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->getQuote(ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 150
    :cond_1
    const-string v0, "no-open-quote"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 151
    invoke-direct {p0, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->increaseDepth(Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)V

    return-object v1

    .line 153
    :cond_2
    const-string v0, "no-close-quote"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 154
    invoke-direct {p0, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->decreaseDepth(Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)V

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
