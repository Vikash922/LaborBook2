package com.itextpdf.styledxmlparser.css.parse.syntax;

/* JADX INFO: loaded from: classes6.dex */
class AtRuleBlockState implements IParserState {
    private CssParserStateController controller;

    AtRuleBlockState(CssParserStateController cssParserStateController) {
        this.controller = cssParserStateController;
    }

    @Override // com.itextpdf.styledxmlparser.css.parse.syntax.IParserState
    public void process(char c) {
        if (c == '/') {
            this.controller.enterCommentStartState();
            return;
        }
        if (c == '@') {
            this.controller.storeCurrentPropertiesWithoutSelector();
            this.controller.enterRuleState();
        } else {
            if (c == '}') {
                this.controller.storeCurrentPropertiesWithoutSelector();
                this.controller.finishAtRuleBlock();
                this.controller.enterUnknownStateIfNestedBlocksFinished();
                return;
            }
            this.controller.appendToBuffer(c);
        }
    }
}
