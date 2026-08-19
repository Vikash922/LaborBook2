package com.itextpdf.styledxmlparser.css.parse.syntax;

/* JADX INFO: loaded from: classes6.dex */
class BlockState implements IParserState {
    private CssParserStateController controller;

    BlockState(CssParserStateController cssParserStateController) {
        this.controller = cssParserStateController;
    }

    @Override // com.itextpdf.styledxmlparser.css.parse.syntax.IParserState
    public void process(char c) {
        if (c == '}') {
            this.controller.storeCurrentProperties();
            this.controller.enterUnknownStateIfNestedBlocksFinished();
        } else if (c == '/') {
            this.controller.enterCommentStartState();
        } else {
            this.controller.appendToBuffer(c);
        }
    }
}
