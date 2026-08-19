package com.itextpdf.styledxmlparser.css.parse.syntax;

/* JADX INFO: loaded from: classes6.dex */
class CommentInnerState implements IParserState {
    private CssParserStateController controller;

    CommentInnerState(CssParserStateController cssParserStateController) {
        this.controller = cssParserStateController;
    }

    @Override // com.itextpdf.styledxmlparser.css.parse.syntax.IParserState
    public void process(char c) {
        if (c == '*') {
            this.controller.enterCommentEndState();
        }
    }
}
