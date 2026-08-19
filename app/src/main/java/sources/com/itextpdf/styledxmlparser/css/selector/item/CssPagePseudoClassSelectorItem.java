package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.css.page.PageContextNode;
import com.itextpdf.styledxmlparser.node.INode;

/* JADX INFO: loaded from: classes6.dex */
public class CssPagePseudoClassSelectorItem implements ICssSelectorItem {
    private boolean isSpreadPseudoClass;
    private String pagePseudoClass;

    public CssPagePseudoClassSelectorItem(String str) {
        this.isSpreadPseudoClass = str.equals("left") || str.equals("right");
        this.pagePseudoClass = str;
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public int getSpecificity() {
        return this.isSpreadPseudoClass ? 1 : 1024;
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        if (iNode instanceof PageContextNode) {
            return ((PageContextNode) iNode).getPageClasses().contains(this.pagePseudoClass);
        }
        return false;
    }
}
