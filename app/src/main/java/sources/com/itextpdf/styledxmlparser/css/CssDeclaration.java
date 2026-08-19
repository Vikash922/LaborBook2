package com.itextpdf.styledxmlparser.css;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.util.CssUtils;

/* JADX INFO: loaded from: classes6.dex */
public class CssDeclaration {
    private String expression;
    private String property;

    public CssDeclaration(String str, String str2) {
        this.property = resolveAlias(CssUtils.normalizeCssProperty(str));
        this.expression = CssUtils.normalizeCssProperty(str2);
    }

    public String toString() {
        return MessageFormatUtil.format("{0}: {1}", this.property, this.expression);
    }

    public String getProperty() {
        return this.property;
    }

    public String getExpression() {
        return this.expression;
    }

    public void setExpression(String str) {
        this.expression = str;
    }

    String resolveAlias(String str) {
        return CommonCssConstants.WORDWRAP.equals(str) ? CommonCssConstants.OVERFLOW_WRAP : str;
    }
}
