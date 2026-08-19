package com.itextpdf.styledxmlparser.jsoup.select;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes6.dex */
abstract class StructuralEvaluator extends Evaluator {
    Evaluator evaluator;

    StructuralEvaluator() {
    }

    static class Root extends Evaluator {
        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element == element2;
        }

        Root() {
        }
    }

    static class Has extends StructuralEvaluator {
        public Has(Evaluator evaluator) {
            this.evaluator = evaluator;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (Element element3 : element2.getAllElements()) {
                if (element3 != element2 && this.evaluator.matches(element2, element3)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return MessageFormatUtil.format(":has({0})", this.evaluator);
        }
    }

    static class Not extends StructuralEvaluator {
        public Not(Evaluator evaluator) {
            this.evaluator = evaluator;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return !this.evaluator.matches(element, element2);
        }

        public String toString() {
            return MessageFormatUtil.format(":not({0})", this.evaluator);
        }
    }

    static class Parent extends StructuralEvaluator {
        public Parent(Evaluator evaluator) {
            this.evaluator = evaluator;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element == element2) {
                return false;
            }
            for (Element element3 = (Element) element2.parent(); element3 != null; element3 = (Element) element3.parent()) {
                if (this.evaluator.matches(element, element3)) {
                    return true;
                }
                if (element3 == element) {
                    break;
                }
            }
            return false;
        }

        public String toString() {
            return MessageFormatUtil.format("{0} ", this.evaluator);
        }
    }

    static class ImmediateParent extends StructuralEvaluator {
        public ImmediateParent(Evaluator evaluator) {
            this.evaluator = evaluator;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element element3;
            return (element == element2 || (element3 = (Element) element2.parent()) == null || !this.evaluator.matches(element, element3)) ? false : true;
        }

        public String toString() {
            return MessageFormatUtil.format("{0} > ", this.evaluator);
        }
    }

    static class PreviousSibling extends StructuralEvaluator {
        public PreviousSibling(Evaluator evaluator) {
            this.evaluator = evaluator;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element == element2) {
                return false;
            }
            for (Element elementPreviousElementSibling = element2.previousElementSibling(); elementPreviousElementSibling != null; elementPreviousElementSibling = elementPreviousElementSibling.previousElementSibling()) {
                if (this.evaluator.matches(element, elementPreviousElementSibling)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return MessageFormatUtil.format("{0} ~ ", this.evaluator);
        }
    }

    static class ImmediatePreviousSibling extends StructuralEvaluator {
        public ImmediatePreviousSibling(Evaluator evaluator) {
            this.evaluator = evaluator;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element elementPreviousElementSibling;
            return (element == element2 || (elementPreviousElementSibling = element2.previousElementSibling()) == null || !this.evaluator.matches(element, elementPreviousElementSibling)) ? false : true;
        }

        public String toString() {
            return MessageFormatUtil.format("{0} + ", this.evaluator);
        }
    }
}
