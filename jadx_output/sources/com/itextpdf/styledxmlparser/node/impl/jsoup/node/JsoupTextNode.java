package com.itextpdf.styledxmlparser.node.impl.jsoup.node;

import com.itextpdf.styledxmlparser.jsoup.nodes.TextNode;
import com.itextpdf.styledxmlparser.node.ITextNode;

/* JADX INFO: loaded from: classes6.dex */
public class JsoupTextNode extends JsoupNode implements ITextNode {
    private TextNode textNode;

    public JsoupTextNode(TextNode textNode) {
        super(textNode);
        this.textNode = textNode;
    }

    @Override // com.itextpdf.styledxmlparser.node.ITextNode
    public String wholeText() {
        return this.textNode.getWholeText();
    }
}
