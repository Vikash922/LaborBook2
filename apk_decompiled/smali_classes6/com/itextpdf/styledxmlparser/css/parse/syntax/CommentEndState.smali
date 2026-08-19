.class Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentEndState;
.super Ljava/lang/Object;
.source "CommentEndState.java"

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
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentEndState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    return-void
.end method


# virtual methods
.method public process(C)V
    .locals 1

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_0

    .line 70
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentEndState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterPreviousActiveState()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CommentEndState;->controller:Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->enterCommentInnerState()V

    :goto_0
    return-void
.end method
