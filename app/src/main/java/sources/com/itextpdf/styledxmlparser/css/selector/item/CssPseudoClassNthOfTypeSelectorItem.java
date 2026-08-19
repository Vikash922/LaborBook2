package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.node.ICustomElementNode;
import com.itextpdf.styledxmlparser.node.IDocumentNode;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class CssPseudoClassNthOfTypeSelectorItem extends CssPseudoClassNthSelectorItem {
    public CssPseudoClassNthOfTypeSelectorItem(String str) {
        super(CommonCssConstants.NTH_OF_TYPE, str);
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.CssPseudoClassNthSelectorItem, com.itextpdf.styledxmlparser.css.selector.item.CssPseudoClassSelectorItem, com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        if (!(iNode instanceof IElementNode) || (iNode instanceof ICustomElementNode) || (iNode instanceof IDocumentNode)) {
            return false;
        }
        List<INode> allSiblingsOfNodeType = getAllSiblingsOfNodeType(iNode);
        return !allSiblingsOfNodeType.isEmpty() && resolveNth(iNode, allSiblingsOfNodeType);
    }
}
