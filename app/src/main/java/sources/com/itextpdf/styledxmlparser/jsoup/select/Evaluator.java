package com.itextpdf.styledxmlparser.jsoup.select;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.jsoup.helper.Validate;
import com.itextpdf.styledxmlparser.jsoup.internal.Normalizer;
import com.itextpdf.styledxmlparser.jsoup.nodes.Comment;
import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import com.itextpdf.styledxmlparser.jsoup.nodes.DocumentType;
import com.itextpdf.styledxmlparser.jsoup.nodes.Element;
import com.itextpdf.styledxmlparser.jsoup.nodes.Node;
import com.itextpdf.styledxmlparser.jsoup.nodes.PseudoTextElement;
import com.itextpdf.styledxmlparser.jsoup.nodes.TextNode;
import com.itextpdf.styledxmlparser.jsoup.nodes.XmlDeclaration;
import java.util.Iterator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Evaluator {
    public abstract boolean matches(Element element, Element element2);

    protected Evaluator() {
    }

    public static final class Tag extends Evaluator {
        private final String tagName;

        public Tag(String str) {
            this.tagName = str;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.normalName().equals(this.tagName);
        }

        public String toString() {
            return MessageFormatUtil.format("{0}", this.tagName);
        }
    }

    public static final class TagEndsWith extends Evaluator {
        private final String tagName;

        public TagEndsWith(String str) {
            this.tagName = str;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.normalName().endsWith(this.tagName);
        }

        public String toString() {
            return MessageFormatUtil.format("{0}", this.tagName);
        }
    }

    /* JADX INFO: renamed from: com.itextpdf.styledxmlparser.jsoup.select.Evaluator$Id */
    public static final class C3540Id extends Evaluator {

        /* JADX INFO: renamed from: id */
        private final String f3319id;

        public C3540Id(String str) {
            this.f3319id = str;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return this.f3319id.equals(element2.m2671id());
        }

        public String toString() {
            return MessageFormatUtil.format("#{0}", this.f3319id);
        }
    }

    public static final class Class extends Evaluator {
        private final String className;

        public Class(String str) {
            this.className = str;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasClass(this.className);
        }

        public String toString() {
            return MessageFormatUtil.format(".{0}", this.className);
        }
    }

    public static final class Attribute extends Evaluator {
        private final String key;

        public Attribute(String str) {
            this.key = str;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.key);
        }

        public String toString() {
            return MessageFormatUtil.format("[{0}]", this.key);
        }
    }

    public static final class AttributeStarting extends Evaluator {
        private final String keyPrefix;

        public AttributeStarting(String str) {
            Validate.notEmpty(str);
            this.keyPrefix = Normalizer.lowerCase(str);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Iterator<com.itextpdf.styledxmlparser.jsoup.nodes.Attribute> it = element2.attributes().asList().iterator();
            while (it.hasNext()) {
                if (Normalizer.lowerCase(it.next().getKey()).startsWith(this.keyPrefix)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return MessageFormatUtil.format("[^{0}]", this.keyPrefix);
        }
    }

    public static final class AttributeWithValue extends AttributeKeyPair {
        public AttributeWithValue(String str, String str2) {
            super(str, str2);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.key) && this.value.equalsIgnoreCase(element2.attr(this.key).trim());
        }

        public String toString() {
            return MessageFormatUtil.format("[{0}={1}]", this.key, this.value);
        }
    }

    public static final class AttributeWithValueNot extends AttributeKeyPair {
        public AttributeWithValueNot(String str, String str2) {
            super(str, str2);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return !this.value.equalsIgnoreCase(element2.attr(this.key));
        }

        public String toString() {
            return MessageFormatUtil.format("[{0}!={1}]", this.key, this.value);
        }
    }

    public static final class AttributeWithValueStarting extends AttributeKeyPair {
        public AttributeWithValueStarting(String str, String str2) {
            super(str, str2, false);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.key) && Normalizer.lowerCase(element2.attr(this.key)).startsWith(this.value);
        }

        public String toString() {
            return MessageFormatUtil.format("[{0}^={1}]", this.key, this.value);
        }
    }

    public static final class AttributeWithValueEnding extends AttributeKeyPair {
        public AttributeWithValueEnding(String str, String str2) {
            super(str, str2, false);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.key) && Normalizer.lowerCase(element2.attr(this.key)).endsWith(this.value);
        }

        public String toString() {
            return MessageFormatUtil.format("[{0}$={1}]", this.key, this.value);
        }
    }

    public static final class AttributeWithValueContaining extends AttributeKeyPair {
        public AttributeWithValueContaining(String str, String str2) {
            super(str, str2);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.key) && Normalizer.lowerCase(element2.attr(this.key)).contains(this.value);
        }

        public String toString() {
            return MessageFormatUtil.format("[{0}*={1}]", this.key, this.value);
        }
    }

    public static final class AttributeWithValueMatching extends Evaluator {
        String key;
        Pattern pattern;

        public AttributeWithValueMatching(String str, Pattern pattern) {
            this.key = Normalizer.normalize(str);
            this.pattern = pattern;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.key) && this.pattern.matcher(element2.attr(this.key)).find();
        }

        public String toString() {
            return MessageFormatUtil.format("[{0}~={1}]", this.key, this.pattern.toString());
        }
    }

    public static abstract class AttributeKeyPair extends Evaluator {
        String key;
        String value;

        public AttributeKeyPair(String str, String str2) {
            this(str, str2, true);
        }

        public AttributeKeyPair(String str, String str2, boolean z) {
            Validate.notEmpty(str);
            Validate.notEmpty(str2);
            this.key = Normalizer.normalize(str);
            boolean z2 = (str2.startsWith("'") && str2.endsWith("'")) || (str2.startsWith("\"") && str2.endsWith("\""));
            str2 = z2 ? str2.substring(1, str2.length() - 1) : str2;
            this.value = z ? Normalizer.normalize(str2) : Normalizer.normalize(str2, z2);
        }
    }

    public static final class AllElements extends Evaluator {
        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return true;
        }

        public String toString() {
            return "*";
        }
    }

    public static final class IndexLessThan extends IndexEvaluator {
        public IndexLessThan(int i) {
            super(i);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element != element2 && element2.elementSiblingIndex() < this.index;
        }

        public String toString() {
            return MessageFormatUtil.format(":lt({0})", Integer.valueOf(this.index));
        }
    }

    public static final class IndexGreaterThan extends IndexEvaluator {
        public IndexGreaterThan(int i) {
            super(i);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.elementSiblingIndex() > this.index;
        }

        public String toString() {
            return MessageFormatUtil.format(":gt({0})", Integer.valueOf(this.index));
        }
    }

    public static final class IndexEquals extends IndexEvaluator {
        public IndexEquals(int i) {
            super(i);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.elementSiblingIndex() == this.index;
        }

        public String toString() {
            return MessageFormatUtil.format(":eq({0})", Integer.valueOf(this.index));
        }
    }

    public static final class IsLastChild extends Evaluator {
        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element element3 = (Element) element2.parent();
            return (element3 == null || (element3 instanceof Document) || element2.elementSiblingIndex() != element3.children().size() - 1) ? false : true;
        }

        public String toString() {
            return ":last-child";
        }
    }

    public static final class IsFirstOfType extends IsNthOfType {
        public IsFirstOfType() {
            super(0, 1);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator.CssNthEvaluator
        public String toString() {
            return ":first-of-type";
        }
    }

    public static final class IsLastOfType extends IsNthLastOfType {
        public IsLastOfType() {
            super(0, 1);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator.CssNthEvaluator
        public String toString() {
            return ":last-of-type";
        }
    }

    public static abstract class CssNthEvaluator extends Evaluator {

        /* JADX INFO: renamed from: a */
        protected final int f3317a;

        /* JADX INFO: renamed from: b */
        protected final int f3318b;

        protected abstract int calculatePosition(Element element, Element element2);

        protected abstract String getPseudoClass();

        public CssNthEvaluator(int i, int i2) {
            this.f3317a = i;
            this.f3318b = i2;
        }

        public CssNthEvaluator(int i) {
            this(0, i);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element element3 = (Element) element2.parent();
            if (element3 == null || (element3 instanceof Document)) {
                return false;
            }
            int iCalculatePosition = calculatePosition(element, element2);
            int i = this.f3317a;
            if (i == 0) {
                return iCalculatePosition == this.f3318b;
            }
            int i2 = this.f3318b;
            return (iCalculatePosition - i2) * i >= 0 && (iCalculatePosition - i2) % i == 0;
        }

        public String toString() {
            if (this.f3317a == 0) {
                return MessageFormatUtil.format(":{0}({1})", getPseudoClass(), Integer.valueOf(this.f3318b));
            }
            if (this.f3318b == 0) {
                return MessageFormatUtil.format(":{0}({1}n)", getPseudoClass(), Integer.valueOf(this.f3317a));
            }
            return MessageFormatUtil.format(":{0}({1}n{2})", getPseudoClass(), Integer.valueOf(this.f3317a), Integer.valueOf(this.f3318b));
        }
    }

    public static final class IsNthChild extends CssNthEvaluator {
        public IsNthChild(int i, int i2) {
            super(i, i2);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator.CssNthEvaluator
        protected int calculatePosition(Element element, Element element2) {
            return element2.elementSiblingIndex() + 1;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator.CssNthEvaluator
        protected String getPseudoClass() {
            return CommonCssConstants.NTH_CHILD;
        }
    }

    public static final class IsNthLastChild extends CssNthEvaluator {
        public IsNthLastChild(int i, int i2) {
            super(i, i2);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator.CssNthEvaluator
        protected int calculatePosition(Element element, Element element2) {
            Element element3 = (Element) element2.parent();
            if (element3 == null) {
                return 0;
            }
            return element3.children().size() - element2.elementSiblingIndex();
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator.CssNthEvaluator
        protected String getPseudoClass() {
            return CommonCssConstants.NTH_LAST_CHILD;
        }
    }

    public static class IsNthOfType extends CssNthEvaluator {
        public IsNthOfType(int i, int i2) {
            super(i, i2);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator.CssNthEvaluator
        protected int calculatePosition(Element element, Element element2) {
            Element element3 = (Element) element2.parent();
            int i = 0;
            if (element3 == null) {
                return 0;
            }
            for (Element element4 : element3.children()) {
                if (element4.tag().equals(element2.tag())) {
                    i++;
                }
                if (element4 == element2) {
                    break;
                }
            }
            return i;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator.CssNthEvaluator
        protected String getPseudoClass() {
            return CommonCssConstants.NTH_OF_TYPE;
        }
    }

    public static class IsNthLastOfType extends CssNthEvaluator {
        public IsNthLastOfType(int i, int i2) {
            super(i, i2);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator.CssNthEvaluator
        protected int calculatePosition(Element element, Element element2) {
            Element element3 = (Element) element2.parent();
            int i = 0;
            if (element3 == null) {
                return 0;
            }
            Elements elementsChildren = element3.children();
            for (int iElementSiblingIndex = element2.elementSiblingIndex(); iElementSiblingIndex < elementsChildren.size(); iElementSiblingIndex++) {
                if (elementsChildren.get(iElementSiblingIndex).tag().equals(element2.tag())) {
                    i++;
                }
            }
            return i;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator.CssNthEvaluator
        protected String getPseudoClass() {
            return CommonCssConstants.NTH_LAST_OF_TYPE;
        }
    }

    public static final class IsFirstChild extends Evaluator {
        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element element3 = (Element) element2.parent();
            return (element3 == null || (element3 instanceof Document) || element2.elementSiblingIndex() != 0) ? false : true;
        }

        public String toString() {
            return ":first-child";
        }
    }

    public static final class IsRoot extends Evaluator {
        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element instanceof Document) {
                element = element.child(0);
            }
            return element2 == element;
        }

        public String toString() {
            return ":root";
        }
    }

    public static final class IsOnlyChild extends Evaluator {
        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element element3 = (Element) element2.parent();
            return (element3 == null || (element3 instanceof Document) || !element2.siblingElements().isEmpty()) ? false : true;
        }

        public String toString() {
            return ":only-child";
        }
    }

    public static final class IsOnlyOfType extends Evaluator {
        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element element3 = (Element) element2.parent();
            if (element3 == null || (element3 instanceof Document)) {
                return false;
            }
            Iterator<Element> it = element3.children().iterator();
            int i = 0;
            while (it.hasNext()) {
                if (it.next().tag().equals(element2.tag())) {
                    i++;
                }
            }
            return i == 1;
        }

        public String toString() {
            return ":only-of-type";
        }
    }

    public static final class IsEmpty extends Evaluator {
        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (Node node : element2.childNodes()) {
                if (!(node instanceof Comment) && !(node instanceof XmlDeclaration) && !(node instanceof DocumentType)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return ":empty";
        }
    }

    public static abstract class IndexEvaluator extends Evaluator {
        int index;

        public IndexEvaluator(int i) {
            this.index = i;
        }
    }

    public static final class ContainsText extends Evaluator {
        private final String searchText;

        public ContainsText(String str) {
            this.searchText = Normalizer.lowerCase(str);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return Normalizer.lowerCase(element2.text()).contains(this.searchText);
        }

        public String toString() {
            return MessageFormatUtil.format(":contains({0})", this.searchText);
        }
    }

    public static final class ContainsData extends Evaluator {
        private final String searchText;

        public ContainsData(String str) {
            this.searchText = Normalizer.lowerCase(str);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return Normalizer.lowerCase(element2.data()).contains(this.searchText);
        }

        public String toString() {
            return MessageFormatUtil.format(":containsData({0})", this.searchText);
        }
    }

    public static final class ContainsOwnText extends Evaluator {
        private final String searchText;

        public ContainsOwnText(String str) {
            this.searchText = Normalizer.lowerCase(str);
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return Normalizer.lowerCase(element2.ownText()).contains(this.searchText);
        }

        public String toString() {
            return MessageFormatUtil.format(":containsOwn({0})", this.searchText);
        }
    }

    public static final class Matches extends Evaluator {
        private final Pattern pattern;

        public Matches(Pattern pattern) {
            this.pattern = pattern;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return this.pattern.matcher(element2.text()).find();
        }

        public String toString() {
            return MessageFormatUtil.format(":matches({0})", this.pattern);
        }
    }

    public static final class MatchesOwn extends Evaluator {
        private final Pattern pattern;

        public MatchesOwn(Pattern pattern) {
            this.pattern = pattern;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return this.pattern.matcher(element2.ownText()).find();
        }

        public String toString() {
            return MessageFormatUtil.format(":matchesOwn({0})", this.pattern);
        }
    }

    public static final class MatchText extends Evaluator {
        @Override // com.itextpdf.styledxmlparser.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element2 instanceof PseudoTextElement) {
                return true;
            }
            for (TextNode textNode : element2.textNodes()) {
                PseudoTextElement pseudoTextElement = new PseudoTextElement(com.itextpdf.styledxmlparser.jsoup.parser.Tag.valueOf(element2.tagName()), element2.baseUri(), element2.attributes());
                textNode.replaceWith(pseudoTextElement);
                pseudoTextElement.appendChild(textNode);
            }
            return false;
        }

        public String toString() {
            return ":matchText";
        }
    }
}
