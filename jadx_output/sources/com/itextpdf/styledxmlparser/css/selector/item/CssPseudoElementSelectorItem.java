package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.css.pseudo.CssPseudoElementNode;
import com.itextpdf.styledxmlparser.node.INode;

/* JADX INFO: loaded from: classes6.dex */
public class CssPseudoElementSelectorItem implements ICssSelectorItem {
    private String pseudoElementName;

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public int getSpecificity() {
        return 1;
    }

    public CssPseudoElementSelectorItem(String str) {
        this.pseudoElementName = str;
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        return (iNode instanceof CssPseudoElementNode) && ((CssPseudoElementNode) iNode).getPseudoElementName().equals(this.pseudoElementName);
    }

    public String toString() {
        return "::" + this.pseudoElementName;
    }
}
