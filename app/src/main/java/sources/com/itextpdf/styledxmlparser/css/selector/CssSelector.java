package com.itextpdf.styledxmlparser.css.selector;

import com.itextpdf.styledxmlparser.css.parse.CssSelectorParser;
import com.itextpdf.styledxmlparser.css.pseudo.CssPseudoElementNode;
import com.itextpdf.styledxmlparser.css.selector.item.CssPseudoElementSelectorItem;
import com.itextpdf.styledxmlparser.css.selector.item.CssSeparatorSelectorItem;
import com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class CssSelector extends AbstractCssSelector {
    public CssSelector(List<ICssSelectorItem> list) {
        super(list);
    }

    public CssSelector(String str) {
        this(CssSelectorParser.parseSelectorItems(str));
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.ICssSelector
    public boolean matches(INode iNode) {
        return matches(iNode, this.selectorItems.size() - 1);
    }

    private boolean matches(INode iNode, int i) {
        INode iNode2;
        INode iNodeParentNode;
        if (!(iNode instanceof IElementNode)) {
            return false;
        }
        if (i < 0) {
            return true;
        }
        boolean z = iNode instanceof CssPseudoElementNode;
        for (int i2 = i; i2 >= 0; i2--) {
            if (z && (this.selectorItems.get(i) instanceof CssPseudoElementSelectorItem) && i2 < i) {
                iNode = iNode.parentNode();
                z = false;
            }
            ICssSelectorItem iCssSelectorItem = this.selectorItems.get(i2);
            if (iCssSelectorItem instanceof CssSeparatorSelectorItem) {
                char separator = ((CssSeparatorSelectorItem) iCssSelectorItem).getSeparator();
                if (separator == ' ') {
                    for (INode iNodeParentNode2 = iNode.parentNode(); iNodeParentNode2 != null; iNodeParentNode2 = iNodeParentNode2.parentNode()) {
                        if (matches(iNodeParentNode2, i2 - 1)) {
                            return true;
                        }
                    }
                    return false;
                }
                if (separator != '+') {
                    if (separator == '>') {
                        return matches(iNode.parentNode(), i2 - 1);
                    }
                    if (separator == '~' && (iNodeParentNode = iNode.parentNode()) != null) {
                        for (int iIndexOf = iNodeParentNode.childNodes().indexOf(iNode) - 1; iIndexOf >= 0; iIndexOf--) {
                            if (matches(iNodeParentNode.childNodes().get(iIndexOf), i2 - 1)) {
                                return true;
                            }
                        }
                    }
                    return false;
                }
                INode iNodeParentNode3 = iNode.parentNode();
                if (iNodeParentNode3 == null) {
                    return false;
                }
                int iIndexOf2 = iNodeParentNode3.childNodes().indexOf(iNode);
                int i3 = iIndexOf2 - 1;
                while (true) {
                    if (i3 < 0) {
                        iNode2 = null;
                        break;
                    }
                    if (iNodeParentNode3.childNodes().get(i3) instanceof IElementNode) {
                        iNode2 = iNodeParentNode3.childNodes().get(i3);
                        break;
                    }
                    i3--;
                }
                return iNode2 != null && iIndexOf2 > 0 && matches(iNode2, i2 - 1);
            }
            if (!iCssSelectorItem.matches(iNode)) {
                return false;
            }
        }
        return true;
    }
}
