package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.css.page.PageContextNode;
import com.itextpdf.styledxmlparser.node.INode;

/* JADX INFO: loaded from: classes6.dex */
public class CssPageTypeSelectorItem implements ICssSelectorItem {
    private String pageTypeName;

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public int getSpecificity() {
        return 1048576;
    }

    public CssPageTypeSelectorItem(String str) {
        this.pageTypeName = str;
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        return (iNode instanceof PageContextNode) && !"auto".equals(this.pageTypeName.toLowerCase()) && this.pageTypeName.equals(((PageContextNode) iNode).getPageTypeName());
    }
}
