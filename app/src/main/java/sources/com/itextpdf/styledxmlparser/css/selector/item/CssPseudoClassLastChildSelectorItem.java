package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.node.ICustomElementNode;
import com.itextpdf.styledxmlparser.node.IDocumentNode;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class CssPseudoClassLastChildSelectorItem extends CssPseudoClassChildSelectorItem {
    private static final CssPseudoClassLastChildSelectorItem instance = new CssPseudoClassLastChildSelectorItem();

    private CssPseudoClassLastChildSelectorItem() {
        super(CommonCssConstants.LAST_CHILD);
    }

    public static CssPseudoClassLastChildSelectorItem getInstance() {
        return instance;
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.CssPseudoClassSelectorItem, com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        if (!(iNode instanceof IElementNode) || (iNode instanceof ICustomElementNode) || (iNode instanceof IDocumentNode)) {
            return false;
        }
        List<INode> allSiblings = getAllSiblings(iNode);
        return !allSiblings.isEmpty() && iNode.equals(allSiblings.get(allSiblings.size() - 1));
    }
}
