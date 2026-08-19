package com.itextpdf.styledxmlparser.jsoup.nodes;

import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import com.itextpdf.styledxmlparser.jsoup.parser.ParseSettings;
import com.itextpdf.styledxmlparser.jsoup.parser.Parser;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class Comment extends LeafNode {
    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    void outerHtmlTail(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }

    public Comment(String str) {
        this.value = str;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public String nodeName() {
        return "#comment";
    }

    public String getData() {
        return coreValue();
    }

    public Comment setData(String str) {
        coreValue(str);
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    void outerHtmlHead(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException {
        if (outputSettings.prettyPrint() && ((siblingIndex() == 0 && (this.parentNode instanceof Element) && ((Element) this.parentNode).tag().formatAsBlock()) || outputSettings.outline())) {
            indent(appendable, i, outputSettings);
        }
        appendable.append("<!--").append(getData()).append("-->");
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public String toString() {
        return outerHtml();
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Object clone() {
        return (Comment) super.clone();
    }

    public boolean isXmlDeclaration() {
        return isXmlDeclarationData(getData());
    }

    private static boolean isXmlDeclarationData(String str) {
        return str.length() > 1 && (str.startsWith("!") || str.startsWith("?"));
    }

    public XmlDeclaration asXmlDeclaration() {
        String data = getData();
        String strSubstring = data.substring(1, data.length() - 1);
        if (isXmlDeclarationData(strSubstring)) {
            return null;
        }
        Document input = Parser.htmlParser().settings(ParseSettings.preserveCase).parseInput("<" + strSubstring + ">", baseUri());
        if (input.body().children().size() <= 0) {
            return null;
        }
        Element elementChild = input.body().child(0);
        XmlDeclaration xmlDeclaration = new XmlDeclaration(NodeUtils.parser(input).settings().normalizeTag(elementChild.tagName()), data.startsWith("!"));
        xmlDeclaration.attributes().addAll(elementChild.attributes());
        return xmlDeclaration;
    }
}
