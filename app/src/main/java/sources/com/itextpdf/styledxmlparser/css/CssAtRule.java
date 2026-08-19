package com.itextpdf.styledxmlparser.css;

/* JADX INFO: loaded from: classes6.dex */
public abstract class CssAtRule extends CssStatement {
    String ruleName;

    CssAtRule(String str) {
        this.ruleName = str;
    }

    public String getRuleName() {
        return this.ruleName;
    }
}
