package com.itextpdf.styledxmlparser.css.selector;

import com.itextpdf.styledxmlparser.css.page.PageContextNode;
import com.itextpdf.styledxmlparser.css.parse.CssPageSelectorParser;
import com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class CssPageSelector extends AbstractCssSelector {
    public CssPageSelector(String str) {
        super(CssPageSelectorParser.parseSelectorItems(str));
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.ICssSelector
    public boolean matches(INode iNode) {
        if (!(iNode instanceof PageContextNode)) {
            return false;
        }
        Iterator<ICssSelectorItem> it = this.selectorItems.iterator();
        while (it.hasNext()) {
            if (!it.next().matches(iNode)) {
                return false;
            }
        }
        return true;
    }
}
