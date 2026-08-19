package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.node.ICustomElementNode;
import com.itextpdf.styledxmlparser.node.IDocumentNode;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;

/* JADX INFO: loaded from: classes6.dex */
class CssPseudoClassDisabledSelectorItem extends CssPseudoClassSelectorItem {
    private static final CssPseudoClassDisabledSelectorItem instance = new CssPseudoClassDisabledSelectorItem();

    public static CssPseudoClassDisabledSelectorItem getInstance() {
        return instance;
    }

    private CssPseudoClassDisabledSelectorItem() {
        super("disabled");
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.CssPseudoClassSelectorItem, com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        return (!(iNode instanceof IElementNode) || (iNode instanceof ICustomElementNode) || (iNode instanceof IDocumentNode) || ((IElementNode) iNode).getAttribute("disabled") == null) ? false : true;
    }
}
