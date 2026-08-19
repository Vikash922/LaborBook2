package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.node.ICustomElementNode;
import com.itextpdf.styledxmlparser.node.IDocumentNode;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;

/* JADX INFO: loaded from: classes6.dex */
public class CssIdSelectorItem implements ICssSelectorItem {

    /* JADX INFO: renamed from: id */
    private String f3309id;

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public int getSpecificity() {
        return 1048576;
    }

    public CssIdSelectorItem(String str) {
        this.f3309id = str;
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        if (!(iNode instanceof IElementNode) || (iNode instanceof ICustomElementNode) || (iNode instanceof IDocumentNode)) {
            return false;
        }
        return this.f3309id.equals(((IElementNode) iNode).getAttribute("id"));
    }

    public String toString() {
        return "#" + this.f3309id;
    }
}
