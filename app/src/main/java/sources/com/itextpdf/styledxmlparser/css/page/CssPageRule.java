package com.itextpdf.styledxmlparser.css.page;

import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.CssNestedAtRule;
import com.itextpdf.styledxmlparser.css.CssStatement;
import com.itextpdf.styledxmlparser.css.selector.CssPageSelector;
import com.itextpdf.styledxmlparser.css.selector.ICssSelector;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class CssPageRule extends CssNestedAtRule {
    private List<ICssSelector> pageSelectors;

    public CssPageRule(String str) {
        super("page", str);
        this.pageSelectors = new ArrayList();
        String[] strArrSplit = str.split(",");
        for (int i = 0; i < strArrSplit.length; i++) {
            strArrSplit[i] = CssUtils.removeDoubleSpacesAndTrim(strArrSplit[i]);
        }
        for (String str2 : strArrSplit) {
            this.pageSelectors.add(new CssPageSelector(str2));
        }
    }

    @Override // com.itextpdf.styledxmlparser.css.CssNestedAtRule
    public void addBodyCssDeclarations(List<CssDeclaration> list) {
        Iterator<ICssSelector> it = this.pageSelectors.iterator();
        while (it.hasNext()) {
            this.body.add(new CssNonStandardRuleSet(it.next(), list));
        }
    }

    @Override // com.itextpdf.styledxmlparser.css.CssNestedAtRule
    public void addStatementToBody(CssStatement cssStatement) {
        if (cssStatement instanceof CssMarginRule) {
            ((CssMarginRule) cssStatement).setPageSelectors(this.pageSelectors);
        }
        this.body.add(cssStatement);
    }

    @Override // com.itextpdf.styledxmlparser.css.CssNestedAtRule
    public void addStatementsToBody(Collection<CssStatement> collection) {
        Iterator<CssStatement> it = collection.iterator();
        while (it.hasNext()) {
            addStatementToBody(it.next());
        }
    }
}
