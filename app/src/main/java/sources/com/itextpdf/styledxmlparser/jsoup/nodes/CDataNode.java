package com.itextpdf.styledxmlparser.jsoup.nodes;

import com.itextpdf.styledxmlparser.jsoup.UncheckedIOException;
import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class CDataNode extends TextNode {
    public CDataNode(String str) {
        super(str);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.TextNode, com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public String nodeName() {
        return "#cdata";
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.TextNode
    public String text() {
        return getWholeText();
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.TextNode, com.itextpdf.styledxmlparser.jsoup.nodes.Node
    void outerHtmlHead(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException {
        appendable.append("<![CDATA[").append(getWholeText());
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.TextNode, com.itextpdf.styledxmlparser.jsoup.nodes.Node
    void outerHtmlTail(Appendable appendable, int i, Document.OutputSettings outputSettings) {
        try {
            appendable.append("]]>");
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.TextNode, com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Object clone() {
        return (CDataNode) super.clone();
    }
}
