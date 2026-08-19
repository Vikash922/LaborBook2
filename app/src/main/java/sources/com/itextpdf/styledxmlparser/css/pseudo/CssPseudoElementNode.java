package com.itextpdf.styledxmlparser.css.pseudo;

import com.itextpdf.styledxmlparser.css.CssContextNode;
import com.itextpdf.styledxmlparser.node.IAttribute;
import com.itextpdf.styledxmlparser.node.IAttributes;
import com.itextpdf.styledxmlparser.node.ICustomElementNode;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class CssPseudoElementNode extends CssContextNode implements IElementNode, ICustomElementNode {
    private String pseudoElementName;
    private String pseudoElementTagName;

    @Override // com.itextpdf.styledxmlparser.node.IElementNode
    public List<Map<String, String>> getAdditionalHtmlStyles() {
        return null;
    }

    @Override // com.itextpdf.styledxmlparser.node.IElementNode
    public String getAttribute(String str) {
        return null;
    }

    @Override // com.itextpdf.styledxmlparser.node.IElementNode
    public String getLang() {
        return null;
    }

    public CssPseudoElementNode(INode iNode, String str) {
        super(iNode);
        this.pseudoElementName = str;
        this.pseudoElementTagName = CssPseudoElementUtil.createPseudoElementTagName(str);
    }

    public String getPseudoElementName() {
        return this.pseudoElementName;
    }

    @Override // com.itextpdf.styledxmlparser.node.IElementNode
    public String name() {
        return this.pseudoElementTagName;
    }

    @Override // com.itextpdf.styledxmlparser.node.IElementNode
    public IAttributes getAttributes() {
        return new AttributesStub();
    }

    @Override // com.itextpdf.styledxmlparser.node.IElementNode
    public void addAdditionalHtmlStyles(Map<String, String> map) {
        throw new UnsupportedOperationException();
    }

    private static class AttributesStub implements IAttributes {
        @Override // com.itextpdf.styledxmlparser.node.IAttributes
        public String getAttribute(String str) {
            return null;
        }

        @Override // com.itextpdf.styledxmlparser.node.IAttributes
        public int size() {
            return 0;
        }

        private AttributesStub() {
        }

        @Override // com.itextpdf.styledxmlparser.node.IAttributes
        public void setAttribute(String str, String str2) {
            throw new UnsupportedOperationException();
        }

        @Override // java.lang.Iterable
        public Iterator<IAttribute> iterator() {
            return Collections.emptyIterator();
        }
    }
}
