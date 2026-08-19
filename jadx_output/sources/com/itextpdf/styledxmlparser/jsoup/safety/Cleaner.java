package com.itextpdf.styledxmlparser.jsoup.safety;

import com.itextpdf.styledxmlparser.jsoup.helper.Validate;
import com.itextpdf.styledxmlparser.jsoup.nodes.Attribute;
import com.itextpdf.styledxmlparser.jsoup.nodes.Attributes;
import com.itextpdf.styledxmlparser.jsoup.nodes.DataNode;
import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import com.itextpdf.styledxmlparser.jsoup.nodes.Element;
import com.itextpdf.styledxmlparser.jsoup.nodes.Node;
import com.itextpdf.styledxmlparser.jsoup.nodes.TextNode;
import com.itextpdf.styledxmlparser.jsoup.parser.ParseErrorList;
import com.itextpdf.styledxmlparser.jsoup.parser.Parser;
import com.itextpdf.styledxmlparser.jsoup.parser.Tag;
import com.itextpdf.styledxmlparser.jsoup.select.NodeTraversor;
import com.itextpdf.styledxmlparser.jsoup.select.NodeVisitor;

/* JADX INFO: loaded from: classes6.dex */
public class Cleaner {
    private final Safelist safelist;

    public Cleaner(Safelist safelist) {
        Validate.notNull(safelist);
        this.safelist = safelist;
    }

    @Deprecated
    public Cleaner(Whitelist whitelist) {
        Validate.notNull(whitelist);
        this.safelist = whitelist;
    }

    public Document clean(Document document) {
        Validate.notNull(document);
        Document documentCreateShell = Document.createShell(document.baseUri());
        copySafeNodes(document.body(), documentCreateShell.body());
        documentCreateShell.outputSettings((Document.OutputSettings) document.outputSettings().clone());
        return documentCreateShell;
    }

    public boolean isValid(Document document) {
        Validate.notNull(document);
        return copySafeNodes(document.body(), Document.createShell(document.baseUri()).body()) == 0 && document.head().childNodes().isEmpty();
    }

    public boolean isValidBodyHtml(String str) {
        Document documentCreateShell = Document.createShell("");
        Document documentCreateShell2 = Document.createShell("");
        ParseErrorList parseErrorListTracking = ParseErrorList.tracking(1);
        documentCreateShell2.body().insertChildren(0, Parser.parseFragment(str, documentCreateShell2.body(), "", parseErrorListTracking));
        return copySafeNodes(documentCreateShell2.body(), documentCreateShell.body()) == 0 && parseErrorListTracking.isEmpty();
    }

    private final class CleaningVisitor implements NodeVisitor {
        private Element destination;
        int numDiscarded = 0;
        private final Element root;

        CleaningVisitor(Element element, Element element2) {
            this.root = element;
            this.destination = element2;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.NodeVisitor
        public void head(Node node, int i) {
            if (node instanceof Element) {
                Element element = (Element) node;
                if (Cleaner.this.safelist.isSafeTag(element.normalName())) {
                    ElementMeta elementMetaCreateSafeElement = Cleaner.this.createSafeElement(element);
                    Element element2 = elementMetaCreateSafeElement.f3316el;
                    this.destination.appendChild(element2);
                    this.numDiscarded += elementMetaCreateSafeElement.numAttribsDiscarded;
                    this.destination = element2;
                    return;
                }
                if (node != this.root) {
                    this.numDiscarded++;
                    return;
                }
                return;
            }
            if (node instanceof TextNode) {
                this.destination.appendChild(new TextNode(((TextNode) node).getWholeText()));
            } else if ((node instanceof DataNode) && Cleaner.this.safelist.isSafeTag(node.parent().nodeName())) {
                this.destination.appendChild(new DataNode(((DataNode) node).getWholeData()));
            } else {
                this.numDiscarded++;
            }
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.NodeVisitor
        public void tail(Node node, int i) {
            if ((node instanceof Element) && Cleaner.this.safelist.isSafeTag(node.nodeName())) {
                this.destination = (Element) this.destination.parent();
            }
        }
    }

    private int copySafeNodes(Element element, Element element2) {
        CleaningVisitor cleaningVisitor = new CleaningVisitor(element, element2);
        NodeTraversor.traverse(cleaningVisitor, element);
        return cleaningVisitor.numDiscarded;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ElementMeta createSafeElement(Element element) {
        String strTagName = element.tagName();
        Attributes attributes = new Attributes();
        Element element2 = new Element(Tag.valueOf(strTagName), element.baseUri(), attributes);
        int i = 0;
        for (Attribute attribute : element.attributes()) {
            if (this.safelist.isSafeAttribute(strTagName, element, attribute)) {
                attributes.put(attribute);
            } else {
                i++;
            }
        }
        attributes.addAll(this.safelist.getEnforcedAttributes(strTagName));
        return new ElementMeta(element2, i);
    }

    private static class ElementMeta {

        /* JADX INFO: renamed from: el */
        Element f3316el;
        int numAttribsDiscarded;

        ElementMeta(Element element, int i) {
            this.f3316el = element;
            this.numAttribsDiscarded = i;
        }
    }
}
