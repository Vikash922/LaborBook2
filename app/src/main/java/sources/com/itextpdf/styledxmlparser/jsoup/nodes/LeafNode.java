package com.itextpdf.styledxmlparser.jsoup.nodes;

import com.itextpdf.styledxmlparser.jsoup.helper.Validate;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class LeafNode extends Node {
    Object value;

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public int childNodeSize() {
        return 0;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    protected void doSetBaseUri(String str) {
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node empty() {
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    protected final boolean hasAttributes() {
        return this.value instanceof Attributes;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public final Attributes attributes() {
        ensureAttributes();
        return (Attributes) this.value;
    }

    private void ensureAttributes() {
        if (hasAttributes()) {
            return;
        }
        Object obj = this.value;
        Attributes attributes = new Attributes();
        this.value = attributes;
        if (obj != null) {
            attributes.put(nodeName(), (String) obj);
        }
    }

    String coreValue() {
        return attr(nodeName());
    }

    void coreValue(String str) {
        attr(nodeName(), str);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public String attr(String str) {
        Validate.notNull(str);
        if (hasAttributes()) {
            return super.attr(str);
        }
        return str.equals(nodeName()) ? (String) this.value : "";
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node attr(String str, String str2) {
        if (!hasAttributes() && str.equals(nodeName())) {
            this.value = str2;
        } else {
            ensureAttributes();
            super.attr(str, str2);
        }
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public boolean hasAttr(String str) {
        ensureAttributes();
        return super.hasAttr(str);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node removeAttr(String str) {
        ensureAttributes();
        return super.removeAttr(str);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public String absUrl(String str) {
        ensureAttributes();
        return super.absUrl(str);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public String baseUri() {
        return hasParent() ? parent().baseUri() : "";
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    protected List<Node> ensureChildNodes() {
        return EmptyNodes;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    protected Node doClone(Node node) {
        LeafNode leafNode = (LeafNode) super.doClone(node);
        if (hasAttributes()) {
            leafNode.value = ((Attributes) this.value).clone();
        }
        return leafNode;
    }
}
