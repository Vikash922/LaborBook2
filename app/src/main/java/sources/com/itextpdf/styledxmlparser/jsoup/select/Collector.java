package com.itextpdf.styledxmlparser.jsoup.select;

import com.itextpdf.styledxmlparser.jsoup.nodes.Element;
import com.itextpdf.styledxmlparser.jsoup.nodes.Node;
import com.itextpdf.styledxmlparser.jsoup.select.NodeFilter;

/* JADX INFO: loaded from: classes6.dex */
public class Collector {
    private Collector() {
    }

    public static Elements collect(Evaluator evaluator, Element element) {
        Elements elements = new Elements();
        NodeTraversor.traverse(new Accumulator(element, elements, evaluator), element);
        return elements;
    }

    private static class Accumulator implements NodeVisitor {
        private final Elements elements;
        private final Evaluator eval;
        private final Element root;

        @Override // com.itextpdf.styledxmlparser.jsoup.select.NodeVisitor
        public void tail(Node node, int i) {
        }

        Accumulator(Element element, Elements elements, Evaluator evaluator) {
            this.root = element;
            this.elements = elements;
            this.eval = evaluator;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.NodeVisitor
        public void head(Node node, int i) {
            if (node instanceof Element) {
                Element element = (Element) node;
                if (this.eval.matches(this.root, element)) {
                    this.elements.add(element);
                }
            }
        }
    }

    public static Element findFirst(Evaluator evaluator, Element element) {
        FirstFinder firstFinder = new FirstFinder(element, evaluator);
        NodeTraversor.filter(firstFinder, element);
        return firstFinder.match;
    }

    private static class FirstFinder implements NodeFilter {
        private final Evaluator eval;
        Element match = null;
        private final Element root;

        FirstFinder(Element element, Evaluator evaluator) {
            this.root = element;
            this.eval = evaluator;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.NodeFilter
        public NodeFilter.FilterResult head(Node node, int i) {
            if (node instanceof Element) {
                Element element = (Element) node;
                if (this.eval.matches(this.root, element)) {
                    this.match = element;
                    return NodeFilter.FilterResult.STOP;
                }
            }
            return NodeFilter.FilterResult.CONTINUE;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.NodeFilter
        public NodeFilter.FilterResult tail(Node node, int i) {
            return NodeFilter.FilterResult.CONTINUE;
        }
    }
}
