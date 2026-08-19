package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.node.ICustomElementNode;
import com.itextpdf.styledxmlparser.node.IDocumentNode;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;

/* JADX INFO: loaded from: classes6.dex */
public class CssTagSelectorItem implements ICssSelectorItem {
    private boolean isUniversal;
    private String tagName;

    public CssTagSelectorItem(String str) {
        this.tagName = str.toLowerCase();
        this.isUniversal = "*".equals(str);
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public int getSpecificity() {
        return !this.isUniversal ? 1 : 0;
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        if (!(iNode instanceof IElementNode) || (iNode instanceof ICustomElementNode) || (iNode instanceof IDocumentNode)) {
            return false;
        }
        return this.isUniversal || this.tagName.equals(((IElementNode) iNode).name());
    }

    public String toString() {
        return this.tagName;
    }
}
