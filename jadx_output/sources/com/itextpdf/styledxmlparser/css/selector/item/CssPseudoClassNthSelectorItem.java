package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.node.ICustomElementNode;
import com.itextpdf.styledxmlparser.node.IDocumentNode;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.List;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes6.dex */
class CssPseudoClassNthSelectorItem extends CssPseudoClassChildSelectorItem {
    private int nthA;
    private int nthB;

    CssPseudoClassNthSelectorItem(String str, String str2) {
        super(str, str2);
        getNthArguments();
    }

    @Override // com.itextpdf.styledxmlparser.css.selector.item.CssPseudoClassSelectorItem, com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem
    public boolean matches(INode iNode) {
        if (!(iNode instanceof IElementNode) || (iNode instanceof ICustomElementNode) || (iNode instanceof IDocumentNode)) {
            return false;
        }
        List<INode> allSiblings = getAllSiblings(iNode);
        return !allSiblings.isEmpty() && resolveNth(iNode, allSiblings);
    }

    protected void getNthArguments() {
        if (this.arguments.matches("((-|\\+)?[0-9]*n(\\s*(-|\\+)\\s*[0-9]+)?|(-|\\+)?[0-9]+|odd|even)")) {
            if (this.arguments.equals("odd")) {
                this.nthA = 2;
                this.nthB = 1;
                return;
            }
            if (this.arguments.equals("even")) {
                this.nthA = 2;
                this.nthB = 0;
                return;
            }
            int iIndexOf = this.arguments.indexOf(110);
            if (iIndexOf == -1) {
                this.nthA = 0;
                this.nthB = Integer.parseInt(this.arguments);
                return;
            }
            String strTrim = this.arguments.substring(0, iIndexOf).trim();
            if (strTrim.isEmpty()) {
                this.nthA = 0;
            } else if (strTrim.length() == 1 && !Character.isDigit(strTrim.charAt(0))) {
                this.nthA = strTrim.equals(Marker.ANY_NON_NULL_MARKER) ? 1 : -1;
            } else {
                this.nthA = Integer.parseInt(strTrim);
            }
            String strTrim2 = this.arguments.substring(iIndexOf + 1).trim();
            if (!strTrim2.isEmpty()) {
                this.nthB = Integer.parseInt(strTrim2.charAt(0) + strTrim2.substring(1).trim());
                return;
            } else {
                this.nthB = 0;
                return;
            }
        }
        this.nthA = 0;
        this.nthB = 0;
    }

    protected boolean resolveNth(INode iNode, List<INode> list) {
        if (!list.contains(iNode)) {
            return false;
        }
        int i = this.nthA;
        if (i > 0) {
            int iIndexOf = (list.indexOf(iNode) + 1) - this.nthB;
            return iIndexOf >= 0 && iIndexOf % this.nthA == 0;
        }
        if (i >= 0) {
            return (list.indexOf(iNode) + 1) - this.nthB == 0;
        }
        int iIndexOf2 = (list.indexOf(iNode) + 1) - this.nthB;
        return iIndexOf2 <= 0 && iIndexOf2 % this.nthA == 0;
    }
}
