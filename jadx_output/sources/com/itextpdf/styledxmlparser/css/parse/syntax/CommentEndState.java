package com.itextpdf.styledxmlparser.css.parse.syntax;

/* JADX INFO: loaded from: classes6.dex */
class CommentEndState implements IParserState {
    private CssParserStateController controller;

    CommentEndState(CssParserStateController cssParserStateController) {
        this.controller = cssParserStateController;
    }

    @Override // com.itextpdf.styledxmlparser.css.parse.syntax.IParserState
    public void process(char c) {
        if (c == '/') {
            this.controller.enterPreviousActiveState();
        } else {
            if (c == '*') {
                return;
            }
            this.controller.enterCommentInnerState();
        }
    }
}
