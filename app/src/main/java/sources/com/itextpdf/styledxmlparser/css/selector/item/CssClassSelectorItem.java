package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.CommonAttributeConstants;
import com.itextpdf.styledxmlparser.node.ICustomElementNode;
import com.itextpdf.styledxmlparser.node.IDocumentNode;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class CssClassSelectorItem implements ICssSelectorItem {
    private String className;

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public int getSpecificity() {
        return 1024;
    }

    public CssClassSelectorItem(String str) {
        this.className = str;
    }

    public String toString() {
        return "." + this.className;
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        String attribute;
        if ((iNode instanceof IElementNode) && !(iNode instanceof ICustomElementNode) && !(iNode instanceof IDocumentNode) && (attribute = ((IElementNode) iNode).getAttribute(CommonAttributeConstants.CLASS)) != null && attribute.length() > 0) {
            for (String str : attribute.split(StringUtils.SPACE)) {
                if (this.className.equals(str.trim())) {
                    return true;
                }
            }
        }
        return false;
    }
}
