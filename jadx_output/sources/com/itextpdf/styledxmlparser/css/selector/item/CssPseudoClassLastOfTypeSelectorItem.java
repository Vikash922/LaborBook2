package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.node.ICustomElementNode;
import com.itextpdf.styledxmlparser.node.IDocumentNode;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class CssPseudoClassLastOfTypeSelectorItem extends CssPseudoClassChildSelectorItem {
    private static final CssPseudoClassLastOfTypeSelectorItem instance = new CssPseudoClassLastOfTypeSelectorItem();

    private CssPseudoClassLastOfTypeSelectorItem() {
        super(CommonCssConstants.LAST_OF_TYPE);
    }

    public static CssPseudoClassLastOfTypeSelectorItem getInstance() {
        return instance;
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.CssPseudoClassSelectorItem, com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        if (!(iNode instanceof IElementNode) || (iNode instanceof ICustomElementNode) || (iNode instanceof IDocumentNode)) {
            return false;
        }
        List<INode> allSiblingsOfNodeType = getAllSiblingsOfNodeType(iNode);
        return !allSiblingsOfNodeType.isEmpty() && iNode.equals(allSiblingsOfNodeType.get(allSiblingsOfNodeType.size() - 1));
    }
}
