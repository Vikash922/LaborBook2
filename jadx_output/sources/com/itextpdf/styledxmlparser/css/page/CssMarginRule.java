package com.itextpdf.styledxmlparser.css.page;

import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.CssNestedAtRule;
import com.itextpdf.styledxmlparser.css.selector.CssPageMarginBoxSelector;
import com.itextpdf.styledxmlparser.css.selector.ICssSelector;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class CssMarginRule extends CssNestedAtRule {
    private List<ICssSelector> pageSelectors;

    public CssMarginRule(String str) {
        super(str, "");
    }

    @Override // com.itextpdf.styledxmlparser.css.CssNestedAtRule
    public void addBodyCssDeclarations(List<CssDeclaration> list) {
        Iterator<ICssSelector> it = this.pageSelectors.iterator();
        while (it.hasNext()) {
            this.body.add(new CssNonStandardRuleSet(new CssPageMarginBoxSelector(getRuleName(), it.next()), list));
        }
    }

    void setPageSelectors(List<ICssSelector> list) {
        this.pageSelectors = new ArrayList(list);
    }
}
