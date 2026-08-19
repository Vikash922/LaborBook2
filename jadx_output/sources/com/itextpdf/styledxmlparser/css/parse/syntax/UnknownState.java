package com.itextpdf.styledxmlparser.css.parse.syntax;

/* JADX INFO: loaded from: classes6.dex */
class UnknownState implements IParserState {
    private CssParserStateController controller;

    UnknownState(CssParserStateController cssParserStateController) {
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
            return;
        }
        if ((c == '-' && this.controller.getBufferContents().endsWith("<!-")) || (c == '>' && this.controller.getBufferContents().endsWith("--"))) {
            this.controller.resetBuffer();
            return;
        }
        if ((c == '[' && this.controller.getBufferContents().endsWith("<![CDATA")) || (c == '>' && this.controller.getBufferContents().endsWith("]]"))) {
            this.controller.resetBuffer();
        } else {
            this.controller.appendToBuffer(c);
        }
    }
}
