package com.itextpdf.styledxmlparser.css.parse.syntax;

/* JADX INFO: loaded from: classes6.dex */
class ConditionalGroupAtRuleBlockState implements IParserState {
    private CssParserStateController controller;

    ConditionalGroupAtRuleBlockState(CssParserStateController cssParserStateController) {
        this.controller = cssParserStateController;
    }

    @Override // com.itextpdf.styledxmlparser.css.parse.syntax.IParserState
    public void process(char c) {
        if (c == '/') {
            this.controller.enterCommentStartState();
            return;
        }
        if (c == '@') {
            this.controller.enterRuleState();
            return;
        }
        if (c == '{') {
            this.controller.storeCurrentSelector();
            this.controller.enterPropertiesState();
        } else if (c == '}') {
            this.controller.finishAtRuleBlock();
            this.controller.enterUnknownStateIfNestedBlocksFinished();
        } else {
            this.controller.appendToBuffer(c);
        }
    }
}
