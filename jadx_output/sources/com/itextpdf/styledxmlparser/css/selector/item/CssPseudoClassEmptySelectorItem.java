package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.node.ICustomElementNode;
import com.itextpdf.styledxmlparser.node.IDocumentNode;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;
import com.itextpdf.styledxmlparser.node.ITextNode;

/* JADX INFO: loaded from: classes6.dex */
class CssPseudoClassEmptySelectorItem extends CssPseudoClassSelectorItem {
    private static final CssPseudoClassEmptySelectorItem instance = new CssPseudoClassEmptySelectorItem();

    private CssPseudoClassEmptySelectorItem() {
        super(CommonCssConstants.EMPTY);
    }

    public static CssPseudoClassEmptySelectorItem getInstance() {
        return instance;
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.CssPseudoClassSelectorItem, com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        if (!(iNode instanceof IElementNode) || (iNode instanceof ICustomElementNode) || (iNode instanceof IDocumentNode)) {
            return false;
        }
        if (iNode.childNodes().isEmpty()) {
            return true;
        }
        for (INode iNode2 : iNode.childNodes()) {
            if (!(iNode2 instanceof ITextNode) || !((ITextNode) iNode2).wholeText().isEmpty()) {
                return false;
            }
        }
        return true;
    }
}
