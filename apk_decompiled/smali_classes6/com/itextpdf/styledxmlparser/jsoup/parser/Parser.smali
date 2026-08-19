.class public Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field private errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

.field private settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

.field private treeBuilder:Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;


# direct methods
.method private constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->treeBuilder:Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->newInstance()Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->treeBuilder:Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    .line 62
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    .line 63
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    iget-object p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->treeBuilder:Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    .line 48
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->defaultSettings()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    .line 49
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->noTracking()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    return-void
.end method

.method public static htmlParser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
    .locals 2

    .line 240
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;-><init>()V

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 2

    .line 150
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 151
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;)V

    invoke-virtual {v0, v1, p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 4

    .line 208
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    .line 210
    invoke-static {p0, v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 211
    new-array v2, p1, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 212
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lez v2, :cond_0

    .line 213
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->remove()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 215
    :cond_0
    array-length v2, p0

    :goto_1
    if-ge p1, v2, :cond_1

    aget-object v3, p0, p1

    .line 216
    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 166
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;)V

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 182
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;)V

    .line 183
    iput-object p3, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    .line 184
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parseXmlFragment(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;-><init>()V

    .line 196
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->parseFragment(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-direct {v1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->noTracking()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)V

    .line 229
    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->unescapeEntities(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static xmlParser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
    .locals 2

    .line 249
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;-><init>()V

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;)V

    return-object v0
.end method


# virtual methods
.method public getErrors()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    return-object v0
.end method

.method public getTreeBuilder()Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->treeBuilder:Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    return-object v0
.end method

.method public isContentForTagData(Ljava/lang/String;)Z
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->getTreeBuilder()Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->isContentForTagData(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isTrackErrors()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->getMaxSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newInstance()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
    .locals 1

    .line 57
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)V

    return-object v0
.end method

.method public parseFragmentInput(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->treeBuilder:Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseInput(Ljava/io/Reader;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->treeBuilder:Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    invoke-virtual {v0, p1, p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method public parseInput(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->treeBuilder:Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method public setTrackErrors(I)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
    .locals 0

    if-lez p1, :cond_0

    .line 111
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->tracking(I)Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->noTracking()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    return-object p0
.end method

.method public setTreeBuilder(Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->treeBuilder:Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    .line 93
    iput-object p0, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->parser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    return-object p0
.end method

.method public settings()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    return-object v0
.end method

.method public settings(Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    return-object p0
.end method
