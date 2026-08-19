package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.node.INode;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class CssSeparatorSelectorItem implements ICssSelectorItem {
    private char separator;

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public int getSpecificity() {
        return 0;
    }

    public CssSeparatorSelectorItem(char c) {
        this.separator = c;
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        throw new IllegalStateException("Separator item is not supposed to be matched against an element");
    }

    public char getSeparator() {
        return this.separator;
    }

    public String toString() {
        char c = this.separator;
        return c == ' ' ? StringUtils.SPACE : MessageFormatUtil.format(" {0} ", Character.valueOf(c));
    }
}
