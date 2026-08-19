.class public Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
.super Ljava/lang/Object;
.source "CssStyleSheet.java"


# instance fields
.field private statements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssStatement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->statements:Ljava/util/List;

    return-void
.end method

.method public static extractStylesFromRuleSets(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssRuleSet;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 146
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    .line 147
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->getNormalDeclarations()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->populateDeclarationsMap(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    .line 150
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->getImportantDeclarations()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->populateDeclarationsMap(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_1

    .line 152
    :cond_1
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 153
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method private static populateDeclarationsMap(Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 167
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/ShorthandResolverFactory;->getShorthandResolver(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;

    move-result-object v1

    if-nez v1, :cond_0

    .line 169
    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->putDeclarationInMapIfValid(Ljava/util/Map;Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;->resolveShorthand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-static {v0, p1}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->populateDeclarationsMap(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static putDeclarationInMapIfValid(Ljava/util/Map;Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ")V"
        }
    .end annotation

    .line 200
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 203
    :cond_0
    const-class p0, Lcom/itextpdf/styledxmlparser/css/ICssResolver;

    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    .line 204
    const-string v0, "Invalid css property declaration: {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addStatement(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->statements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendCssStyleSheet(Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->statements:Ljava/util/List;

    iget-object p1, p1, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->statements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getCssDeclarations(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;

    move-result-object p1

    .line 128
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 129
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    .line 130
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->getNormalDeclarations()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->populateDeclarationsMap(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    .line 133
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->getImportantDeclarations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->populateDeclarationsMap(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_1

    .line 135
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssRuleSet;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->statements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 187
    invoke-virtual {v2, p1, p2}, Lcom/itextpdf/styledxmlparser/css/CssStatement;->getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 189
    :cond_0
    new-instance p1, Lcom/itextpdf/styledxmlparser/CssRuleSetComparator;

    invoke-direct {p1}, Lcom/itextpdf/styledxmlparser/CssRuleSetComparator;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getStatements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssStatement;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->statements:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->statements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 103
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
