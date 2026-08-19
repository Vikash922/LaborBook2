package com.itextpdf.styledxmlparser.css.selector;

import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public class CssSelectorComparator implements Comparator<ICssSelector> {
    @Override // java.util.Comparator
    public int compare(ICssSelector iCssSelector, ICssSelector iCssSelector2) {
        return iCssSelector.calculateSpecificity() - iCssSelector2.calculateSpecificity();
    }
}
