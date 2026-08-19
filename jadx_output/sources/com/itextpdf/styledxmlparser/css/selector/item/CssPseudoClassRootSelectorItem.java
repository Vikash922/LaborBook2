package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.node.ICustomElementNode;
import com.itextpdf.styledxmlparser.node.IDocumentNode;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;

/* JADX INFO: loaded from: classes6.dex */
class CssPseudoClassRootSelectorItem extends CssPseudoClassSelectorItem {
    private static final CssPseudoClassRootSelectorItem instance = new CssPseudoClassRootSelectorItem();

    private CssPseudoClassRootSelectorItem() {
        super(CommonCssConstants.ROOT);
    }

    public static CssPseudoClassRootSelectorItem getInstance() {
        return instance;
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.CssPseudoClassSelectorItem, com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        if (!(iNode instanceof IElementNode) || (iNode instanceof ICustomElementNode) || (iNode instanceof IDocumentNode)) {
            return false;
        }
        return iNode.parentNode() instanceof IDocumentNode;
    }
}
