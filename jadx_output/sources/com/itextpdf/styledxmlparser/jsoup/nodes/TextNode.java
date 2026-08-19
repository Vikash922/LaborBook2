package com.itextpdf.styledxmlparser.jsoup.nodes;

import com.itextpdf.styledxmlparser.jsoup.helper.Validate;
import com.itextpdf.styledxmlparser.jsoup.internal.StringUtil;
import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class TextNode extends LeafNode {
    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    void outerHtmlTail(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }

    public TextNode(String str) {
        this.value = str;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public String nodeName() {
        return "#text";
    }

    public String text() {
        return StringUtil.normaliseWhitespace(getWholeText());
    }

    public TextNode text(String str) {
        coreValue(str);
        return this;
    }

    public String getWholeText() {
        return coreValue();
    }

    public boolean isBlank() {
        return StringUtil.isBlank(coreValue());
    }

    public TextNode splitText(int i) {
        String strCoreValue = coreValue();
        Validate.isTrue(i >= 0, "Split offset must be not be negative");
        Validate.isTrue(i < strCoreValue.length(), "Split offset must not be greater than current text length");
        String strSubstring = strCoreValue.substring(0, i);
        String strSubstring2 = strCoreValue.substring(i);
        text(strSubstring);
        TextNode textNode = new TextNode(strSubstring2);
        if (parent() != null) {
            parent().addChildren(siblingIndex() + 1, textNode);
        }
        return textNode;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    void outerHtmlHead(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException {
        boolean zPrettyPrint = outputSettings.prettyPrint();
        if (zPrettyPrint && ((siblingIndex() == 0 && (this.parentNode instanceof Element) && ((Element) this.parentNode).tag().formatAsBlock() && !isBlank()) || (outputSettings.outline() && siblingNodes().size() > 0 && !isBlank()))) {
            indent(appendable, i, outputSettings);
        }
        Entities.escape(appendable, coreValue(), outputSettings, false, zPrettyPrint && !Element.preserveWhitespace(this.parentNode), zPrettyPrint && (this.parentNode instanceof Document));
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public String toString() {
        return outerHtml();
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Object clone() {
        return (TextNode) super.clone();
    }

    public static TextNode createFromEncoded(String str) {
        return new TextNode(Entities.unescape(str));
    }

    static String normaliseWhitespace(String str) {
        return StringUtil.normaliseWhitespace(str);
    }

    static String stripLeadingWhitespace(String str) {
        return str.replaceFirst("^\\s+", "");
    }

    static boolean lastCharIsWhitespace(StringBuilder sb) {
        return sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ';
    }
}
