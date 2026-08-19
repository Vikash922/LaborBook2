package com.itextpdf.styledxmlparser.css;

import com.itextpdf.commons.utils.MessageFormatUtil;

/* JADX INFO: loaded from: classes6.dex */
public class CssSemicolonAtRule extends CssAtRule {
    private String ruleParams;

    public CssSemicolonAtRule(String str) {
        super(CssNestedAtRuleFactory.extractRuleNameFromDeclaration(str.trim()));
        this.ruleParams = str.trim().substring(this.ruleName.length()).trim();
    }

    public String toString() {
        return MessageFormatUtil.format("@{0} {1};", this.ruleName, this.ruleParams);
    }
}
