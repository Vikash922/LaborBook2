package com.itextpdf.styledxmlparser.jsoup.nodes;

import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import com.itextpdf.styledxmlparser.jsoup.parser.Tag;

/* JADX INFO: loaded from: classes6.dex */
public class PseudoTextElement extends Element {
    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Element, com.itextpdf.styledxmlparser.jsoup.nodes.Node
    void outerHtmlHead(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Element, com.itextpdf.styledxmlparser.jsoup.nodes.Node
    void outerHtmlTail(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }

    public PseudoTextElement(Tag tag, String str, Attributes attributes) {
        super(tag, str, attributes);
    }
}
