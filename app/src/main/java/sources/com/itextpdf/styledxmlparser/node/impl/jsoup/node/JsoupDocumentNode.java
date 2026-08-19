package com.itextpdf.styledxmlparser.node.impl.jsoup.node;

import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import com.itextpdf.styledxmlparser.node.IDocumentNode;

/* JADX INFO: loaded from: classes6.dex */
public class JsoupDocumentNode extends JsoupElementNode implements IDocumentNode {
    private Document document;

    public JsoupDocumentNode(Document document) {
        super(document);
        this.document = document;
    }

    public Document getDocument() {
        return this.document;
    }
}
