package com.itextpdf.styledxmlparser.css.parse.syntax;

/* JADX INFO: loaded from: classes6.dex */
class CommentStartState implements IParserState {
    private CssParserStateController controller;

    CommentStartState(CssParserStateController cssParserStateController) {
        this.controller = cssParserStateController;
    }

    @Override // com.itextpdf.styledxmlparser.css.parse.syntax.IParserState
    public void process(char c) {
        if (c == '*') {
            this.controller.enterCommentInnerState();
            return;
        }
        this.controller.appendToBuffer('/');
        this.controller.appendToBuffer(c);
        this.controller.enterPreviousActiveState();
    }
}
