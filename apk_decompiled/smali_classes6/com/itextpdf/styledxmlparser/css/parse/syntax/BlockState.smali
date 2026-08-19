.class Lcom/itextpdf/styledxmlparser/css/parse/syntax/BlockState;
.super Ljava/lang/Object;
.source "BlockState.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/parse/syntax/IParserState;


# instance fields
.field private controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;


# direct methods
.method constructor <init>(Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/BlockState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    return-void
.end method


# virtual methods
.method public process(C)V
    .locals 1

    const/16 v0, 0x7d

    if-ne p1, v0, :cond_0

    .line 70
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/BlockState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->storeCurrentProperties()V

    .line 71
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/BlockState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterUnknownStateIfNestedBlocksFinished()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_1

    .line 73
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/BlockState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterCommentStartState()V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/BlockState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->appendToBuffer(C)V

    :goto_0
    return-void
.end method
