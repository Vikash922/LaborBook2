package com.itextpdf.styledxmlparser.css.selector;

import com.itextpdf.styledxmlparser.css.page.PageMarginBoxContextNode;
import com.itextpdf.styledxmlparser.node.INode;

/* JADX INFO: loaded from: classes6.dex */
public class CssPageMarginBoxSelector implements ICssSelector {
    private String pageMarginBoxName;
    private ICssSelector pageSelector;

    public CssPageMarginBoxSelector(String str, ICssSelector iCssSelector) {
        this.pageMarginBoxName = str;
        this.pageSelector = iCssSelector;
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.ICssSelector
    public int calculateSpecificity() {
        return this.pageSelector.calculateSpecificity();
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.ICssSelector
    public boolean matches(INode iNode) {
        if (!(iNode instanceof PageMarginBoxContextNode) || !this.pageMarginBoxName.equals(((PageMarginBoxContextNode) iNode).getMarginBoxName())) {
            return false;
        }
        return this.pageSelector.matches(iNode.parentNode());
    }
}
