package com.itextpdf.styledxmlparser.css.selector;

import com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractCssSelector implements ICssSelector {
    protected List<ICssSelectorItem> selectorItems;

    public AbstractCssSelector(List<ICssSelectorItem> list) {
        this.selectorItems = list;
    }

    public List<ICssSelectorItem> getSelectorItems() {
        return Collections.unmodifiableList(this.selectorItems);
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.ICssSelector
    public int calculateSpecificity() {
        Iterator<ICssSelectorItem> it = this.selectorItems.iterator();
        int specificity = 0;
        while (it.hasNext()) {
            specificity += it.next().getSpecificity();
        }
        return specificity;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<ICssSelectorItem> it = this.selectorItems.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
        }
        return sb.toString();
    }
}
