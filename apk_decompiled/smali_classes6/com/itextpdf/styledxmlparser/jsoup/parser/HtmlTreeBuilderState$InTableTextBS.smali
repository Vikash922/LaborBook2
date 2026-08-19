.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InTableTextBS;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InTableTextBS"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1197
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V
    .locals 0

    .line 1197
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InTableTextBS;-><init>()V

    return-void
.end method


# virtual methods
.method process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 6

    .line 1205
    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->Character:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 1206
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asCharacter()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object p1

    .line 1207
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->access$2600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    return v3

    .line 1211
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getPendingTableCharacters()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    .line 1214
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getPendingTableCharacters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1215
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getPendingTableCharacters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1216
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->access$2700(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1218
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1219
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableFoster:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1220
    invoke-virtual {p2, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->setFosterInserts(Z)V

    .line 1221
    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    invoke-direct {v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;-><init>()V

    invoke-virtual {v4, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object v1

    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InTableTextBS;->InBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 1222
    invoke-virtual {p2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->setFosterInserts(Z)V

    goto :goto_0

    .line 1224
    :cond_2
    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    invoke-direct {v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;-><init>()V

    invoke-virtual {v4, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object v1

    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InTableTextBS;->InBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)Z

    goto :goto_0

    .line 1227
    :cond_3
    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    invoke-direct {v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;-><init>()V

    invoke-virtual {v4, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;)V

    goto :goto_0

    .line 1229
    :cond_4
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->newPendingTableCharacters()V

    .line 1231
    :cond_5
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->originalState()Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1232
    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1201
    const-string v0, "InTableText"

    return-object v0
.end method
