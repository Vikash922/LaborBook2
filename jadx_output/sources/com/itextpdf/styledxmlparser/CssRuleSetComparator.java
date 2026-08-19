package com.itextpdf.styledxmlparser;

import com.itextpdf.styledxmlparser.css.CssRuleSet;
import com.itextpdf.styledxmlparser.css.selector.CssSelectorComparator;
import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public class CssRuleSetComparator implements Comparator<CssRuleSet> {
    private CssSelectorComparator selectorComparator = new CssSelectorComparator();

    @Override // java.util.Comparator
    public int compare(CssRuleSet cssRuleSet, CssRuleSet cssRuleSet2) {
        return this.selectorComparator.compare(cssRuleSet.getSelector(), cssRuleSet2.getSelector());
    }
}
