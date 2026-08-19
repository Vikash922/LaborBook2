package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.css.parse.CssSelectorParser;
import com.itextpdf.styledxmlparser.css.selector.ICssSelector;
import com.itextpdf.styledxmlparser.node.ICustomElementNode;
import com.itextpdf.styledxmlparser.node.IDocumentNode;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class CssPseudoClassNotSelectorItem extends CssPseudoClassSelectorItem {
    private ICssSelector argumentsSelector;

    CssPseudoClassNotSelectorItem(ICssSelector iCssSelector) {
        super("not", iCssSelector.toString());
        this.argumentsSelector = iCssSelector;
    }

    public List<ICssSelectorItem> getArgumentsSelector() {
        return CssSelectorParser.parseSelectorItems(this.arguments);
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.CssPseudoClassSelectorItem, com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        if (!(iNode instanceof IElementNode) || (iNode instanceof ICustomElementNode) || (iNode instanceof IDocumentNode)) {
            return false;
        }
        return !this.argumentsSelector.matches(iNode);
    }
}
