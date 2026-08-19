package com.itextpdf.styledxmlparser.css.parse.syntax;

/* JADX INFO: loaded from: classes6.dex */
class RuleState implements IParserState {
    private CssParserStateController controller;

    RuleState(CssParserStateController cssParserStateController) {
        this.controller = cssParserStateController;
    }

    @Override // com.itextpdf.styledxmlparser.css.parse.syntax.IParserState
    public void process(char c) {
        if (c == '{') {
            this.controller.pushBlockPrecedingAtRule();
            this.controller.enterRuleStateBasedOnItsType();
        } else if (c == ';') {
            this.controller.storeSemicolonAtRule();
            this.controller.enterUnknownState();
        } else {
            this.controller.appendToBuffer(c);
        }
    }
}
