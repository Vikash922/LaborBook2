package com.itextpdf.styledxmlparser.jsoup.nodes;

import com.itextpdf.styledxmlparser.jsoup.SerializationException;
import com.itextpdf.styledxmlparser.jsoup.helper.Validate;
import com.itextpdf.styledxmlparser.jsoup.internal.StringUtil;
import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class XmlDeclaration extends LeafNode {
    private final boolean isProcessingInstruction;

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    void outerHtmlTail(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }

    public XmlDeclaration(String str, boolean z) {
        Validate.notNull(str);
        this.value = str;
        this.isProcessingInstruction = z;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public String nodeName() {
        return "#declaration";
    }

    public String name() {
        return coreValue();
    }

    public String getWholeDeclaration() {
        StringBuilder sbBorrowBuilder = StringUtil.borrowBuilder();
        try {
            getWholeDeclaration(sbBorrowBuilder, new Document.OutputSettings());
            return StringUtil.releaseBuilder(sbBorrowBuilder).trim();
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    private void getWholeDeclaration(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        for (Attribute attribute : attributes()) {
            if (!attribute.getKey().equals(nodeName())) {
                appendable.append(' ');
                attribute.html(appendable, outputSettings);
            }
        }
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    void outerHtmlHead(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException {
        appendable.append("<").append(this.isProcessingInstruction ? "!" : "?").append(coreValue());
        getWholeDeclaration(appendable, outputSettings);
        appendable.append(this.isProcessingInstruction ? "!" : "?").append(">");
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public String toString() {
        return outerHtml();
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Object clone() {
        return (XmlDeclaration) super.clone();
    }
}
