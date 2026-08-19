package com.itextpdf.styledxmlparser.jsoup.nodes;

import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilder;
import com.itextpdf.styledxmlparser.jsoup.parser.Parser;

/* JADX INFO: loaded from: classes6.dex */
final class NodeUtils {
    NodeUtils() {
    }

    static Document.OutputSettings outputSettings(Node node) {
        Document documentOwnerDocument = node.ownerDocument();
        if (documentOwnerDocument == null) {
            documentOwnerDocument = new Document("");
        }
        return documentOwnerDocument.outputSettings();
    }

    static Parser parser(Node node) {
        Document documentOwnerDocument = node.ownerDocument();
        return (documentOwnerDocument == null || documentOwnerDocument.parser() == null) ? new Parser(new HtmlTreeBuilder()) : documentOwnerDocument.parser();
    }
}
