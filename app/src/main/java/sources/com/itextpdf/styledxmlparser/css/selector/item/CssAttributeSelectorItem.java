package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.node.ICustomElementNode;
import com.itextpdf.styledxmlparser.node.IDocumentNode;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public class CssAttributeSelectorItem implements ICssSelectorItem {
    private char matchSymbol;
    private String property;
    private String value;

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public int getSpecificity() {
        return 1024;
    }

    public CssAttributeSelectorItem(String str) {
        this.matchSymbol = (char) 0;
        this.value = null;
        int iIndexOf = str.indexOf(61);
        if (iIndexOf == -1) {
            this.property = str.substring(1, str.length() - 1);
            return;
        }
        int i = iIndexOf + 1;
        if (str.charAt(i) == '\"' || str.charAt(i) == '\'') {
            this.value = str.substring(iIndexOf + 2, str.length() - 2);
        } else {
            this.value = str.substring(i, str.length() - 1);
        }
        int i2 = iIndexOf - 1;
        char cCharAt = str.charAt(i2);
        this.matchSymbol = cCharAt;
        if ("~^$*|".indexOf(cCharAt) == -1) {
            this.matchSymbol = (char) 0;
            this.property = str.substring(1, iIndexOf);
        } else {
            this.property = str.substring(1, i2);
        }
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        String attribute;
        if (!(iNode instanceof IElementNode) || (iNode instanceof ICustomElementNode) || (iNode instanceof IDocumentNode) || (attribute = ((IElementNode) iNode).getAttribute(this.property)) == null) {
            return false;
        }
        String str = this.value;
        if (str == null) {
            return true;
        }
        char c = this.matchSymbol;
        if (c == 0) {
            return str.equals(attribute);
        }
        if (c == '$') {
            return str.length() > 0 && attribute.endsWith(this.value);
        }
        if (c == '*') {
            return str.length() > 0 && attribute.contains(this.value);
        }
        if (c == '^') {
            return str.length() > 0 && attribute.startsWith(this.value);
        }
        if (c != '|') {
            if (c != '~') {
                return false;
            }
            return Pattern.compile(MessageFormatUtil.format("(^{0}\\s+)|(\\s+{1}\\s+)|(\\s+{2}$)", str, str, str)).matcher(attribute).matches();
        }
        if (str.length() <= 0 || !attribute.startsWith(this.value)) {
            return false;
        }
        return attribute.length() == this.value.length() || attribute.charAt(this.value.length()) == '-';
    }

    public String toString() {
        if (this.value == null) {
            return MessageFormatUtil.format("[{0}]", this.property);
        }
        String str = this.property;
        char c = this.matchSymbol;
        return MessageFormatUtil.format("[{0}{1}=\"{2}\"]", str, c == 0 ? "" : String.valueOf(c), this.value);
    }
}
