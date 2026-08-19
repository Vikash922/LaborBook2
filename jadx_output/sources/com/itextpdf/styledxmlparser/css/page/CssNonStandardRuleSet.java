package com.itextpdf.styledxmlparser.css.page;

import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.CssRuleSet;
import com.itextpdf.styledxmlparser.css.selector.ICssSelector;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class CssNonStandardRuleSet extends CssRuleSet {
    public CssNonStandardRuleSet(ICssSelector iCssSelector, List<CssDeclaration> list) {
        super(iCssSelector, list);
    }

    @Override // com.itextpdf.styledxmlparser.css.CssRuleSet
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < getNormalDeclarations().size(); i++) {
            if (i > 0) {
                sb.append(";\n");
            }
            sb.append(getNormalDeclarations().get(i).toString());
        }
        for (int i2 = 0; i2 < getImportantDeclarations().size(); i2++) {
            if (i2 > 0 || getNormalDeclarations().size() > 0) {
                sb.append(";\n");
            }
            sb.append(getImportantDeclarations().get(i2).toString()).append(" !important");
        }
        return sb.toString();
    }
}
