.class public abstract Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;
.super Ljava/lang/Object;
.source "TreeBuilder.java"


# instance fields
.field protected baseUri:Ljava/lang/String;

.field protected currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

.field protected doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

.field private end:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

.field protected parser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

.field reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

.field protected settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

.field protected stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation
.end field

.field private start:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

.field tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->start:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    .line 49
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->end:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    return-void
.end method


# virtual methods
.method protected currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method abstract defaultSettings()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;
.end method

.method protected error(Ljava/lang/String;)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->parser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->getErrors()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)V
    .locals 1

    .line 54
    const-string v0, "String input must not be null"

    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const-string v0, "BaseURI must not be null"

    invoke-static {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {p3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 58
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-direct {v0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    .line 59
    invoke-virtual {v0, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->parser(Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    .line 60
    iput-object p3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->parser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    .line 61
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->settings()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    .line 62
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 64
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->getErrors()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x20

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 66
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    return-void
.end method

.method protected isContentForTagData(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method abstract newInstance()Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;
.end method

.method parse(Ljava/io/Reader;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)V

    .line 72
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->runParser()V

    .line 75
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->close()V

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    .line 77
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    .line 78
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 80
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    return-object p1
.end method

.method abstract parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z
.end method

.method protected processEndTag(Ljava/lang/String;)Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->end:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    if-ne v0, v1, :cond_0

    .line 127
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->name(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 129
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method protected processStartTag(Ljava/lang/String;)Z
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->start:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    .line 109
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    if-ne v1, v0, :cond_0

    .line 110
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->name(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method public processStartTag(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->start:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    .line 117
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    if-ne v1, v0, :cond_0

    .line 118
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->nameAttr(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 121
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->nameAttr(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    .line 122
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method protected runParser()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    .line 93
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->EOF:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->read()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    move-result-object v2

    .line 97
    invoke-virtual {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    .line 98
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 100
    iget-object v2, v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    if-ne v2, v1, :cond_0

    return-void
.end method
