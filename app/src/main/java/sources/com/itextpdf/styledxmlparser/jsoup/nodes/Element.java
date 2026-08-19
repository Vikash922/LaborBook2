package com.itextpdf.styledxmlparser.jsoup.nodes;

import com.itextpdf.styledxmlparser.CommonAttributeConstants;
import com.itextpdf.styledxmlparser.jsoup.helper.ChangeNotifyingArrayList;
import com.itextpdf.styledxmlparser.jsoup.helper.Validate;
import com.itextpdf.styledxmlparser.jsoup.internal.Normalizer;
import com.itextpdf.styledxmlparser.jsoup.internal.StringUtil;
import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import com.itextpdf.styledxmlparser.jsoup.parser.Tag;
import com.itextpdf.styledxmlparser.jsoup.select.Collector;
import com.itextpdf.styledxmlparser.jsoup.select.Elements;
import com.itextpdf.styledxmlparser.jsoup.select.Evaluator;
import com.itextpdf.styledxmlparser.jsoup.select.NodeFilter;
import com.itextpdf.styledxmlparser.jsoup.select.NodeTraversor;
import com.itextpdf.styledxmlparser.jsoup.select.NodeVisitor;
import com.itextpdf.styledxmlparser.jsoup.select.QueryParser;
import com.itextpdf.styledxmlparser.jsoup.select.Selector;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import kotlin.text.Typography;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class Element extends Node {
    private Attributes attributes;
    List<Node> childNodes;
    private WeakReference<List<Element>> shadowChildrenRef;
    private Tag tag;
    private static final List<Element> EmptyChildren = Collections.emptyList();
    private static final Pattern ClassSplit = Pattern.compile("\\s+");
    private static final String BaseUriKey = Attributes.internalKey("baseUri");

    public Element(String str) {
        this(Tag.valueOf(str), "", null);
    }

    public Element(Tag tag, String str, Attributes attributes) {
        Validate.notNull(tag);
        this.childNodes = EmptyNodes;
        this.attributes = attributes;
        this.tag = tag;
        if (str != null) {
            setBaseUri(str);
        }
    }

    public Element(Tag tag, String str) {
        this(tag, str, null);
    }

    protected boolean hasChildNodes() {
        return this.childNodes != EmptyNodes;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    protected List<Node> ensureChildNodes() {
        if (this.childNodes == EmptyNodes) {
            this.childNodes = new NodeList(this, 4);
        }
        return this.childNodes;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    protected boolean hasAttributes() {
        return this.attributes != null;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Attributes attributes() {
        if (this.attributes == null) {
            this.attributes = new Attributes();
        }
        return this.attributes;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public String baseUri() {
        return searchUpForAttribute(this, BaseUriKey);
    }

    private static String searchUpForAttribute(Element element, String str) {
        while (element != null) {
            Attributes attributes = element.attributes;
            if (attributes != null && attributes.hasKey(str)) {
                return element.attributes.get(str);
            }
            element = (Element) element.parent();
        }
        return "";
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    protected void doSetBaseUri(String str) {
        attributes().put(BaseUriKey, str);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public int childNodeSize() {
        return this.childNodes.size();
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public String nodeName() {
        return this.tag.getName();
    }

    public String tagName() {
        return this.tag.getName();
    }

    public String normalName() {
        return this.tag.normalName();
    }

    public Element tagName(String str) {
        Validate.notEmpty(str, "Tag name must not be empty.");
        this.tag = Tag.valueOf(str, NodeUtils.parser(this).settings());
        return this;
    }

    public Tag tag() {
        return this.tag;
    }

    public boolean isBlock() {
        return this.tag.isBlock();
    }

    /* JADX INFO: renamed from: id */
    public String m2671id() {
        Attributes attributes = this.attributes;
        return attributes != null ? attributes.getIgnoreCase("id") : "";
    }

    /* JADX INFO: renamed from: id */
    public Element m2670id(String str) {
        Validate.notNull(str);
        attr("id", str);
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node attr(String str, String str2) {
        super.attr(str, str2);
        return this;
    }

    public Element attr(String str, boolean z) {
        attributes().put(str, z);
        return this;
    }

    public Map<String, String> dataset() {
        return attributes().dataset();
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public final Node parent() {
        return this.parentNode;
    }

    public Elements parents() {
        Elements elements = new Elements();
        accumulateParents(this, elements);
        return elements;
    }

    private static void accumulateParents(Element element, Elements elements) {
        Element element2 = (Element) element.parent();
        if (element2 == null || element2.tagName().equals("#root")) {
            return;
        }
        elements.add(element2);
        accumulateParents(element2, elements);
    }

    public Element child(int i) {
        return childElementsList().get(i);
    }

    public int childrenSize() {
        return childElementsList().size();
    }

    public Elements children() {
        return new Elements(childElementsList());
    }

    List<Element> childElementsList() {
        List<Element> list;
        if (childNodeSize() == 0) {
            return EmptyChildren;
        }
        WeakReference<List<Element>> weakReference = this.shadowChildrenRef;
        if (weakReference != null && (list = weakReference.get()) != null) {
            return list;
        }
        int size = this.childNodes.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            Node node = this.childNodes.get(i);
            if (node instanceof Element) {
                arrayList.add((Element) node);
            }
        }
        this.shadowChildrenRef = new WeakReference<>(arrayList);
        return arrayList;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    void nodelistChanged() {
        super.nodelistChanged();
        this.shadowChildrenRef = null;
    }

    public List<TextNode> textNodes() {
        ArrayList arrayList = new ArrayList();
        for (Node node : this.childNodes) {
            if (node instanceof TextNode) {
                arrayList.add((TextNode) node);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public List<DataNode> dataNodes() {
        ArrayList arrayList = new ArrayList();
        for (Node node : this.childNodes) {
            if (node instanceof DataNode) {
                arrayList.add((DataNode) node);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Elements select(String str) {
        return Selector.select(str, this);
    }

    public Elements select(Evaluator evaluator) {
        return Selector.select(evaluator, this);
    }

    public Element selectFirst(String str) {
        return Selector.selectFirst(str, this);
    }

    public Element selectFirst(Evaluator evaluator) {
        return Collector.findFirst(evaluator, this);
    }

    /* JADX INFO: renamed from: is */
    public boolean m2673is(String str) {
        return m2672is(QueryParser.parse(str));
    }

    /* JADX INFO: renamed from: is */
    public boolean m2672is(Evaluator evaluator) {
        return evaluator.matches((Element) root(), this);
    }

    public Element closest(String str) {
        return closest(QueryParser.parse(str));
    }

    public Element closest(Evaluator evaluator) {
        Validate.notNull(evaluator);
        Element element = (Element) root();
        Element element2 = this;
        while (!evaluator.matches(element, element2)) {
            element2 = (Element) element2.parent();
            if (element2 == null) {
                return null;
            }
        }
        return element2;
    }

    public Element appendChild(Node node) {
        Validate.notNull(node);
        reparentChild(node);
        ensureChildNodes();
        this.childNodes.add(node);
        node.setSiblingIndex(this.childNodes.size() - 1);
        return this;
    }

    public Element appendChildren(Collection<? extends Node> collection) {
        insertChildren(-1, collection);
        return this;
    }

    public Element appendTo(Element element) {
        Validate.notNull(element);
        element.appendChild(this);
        return this;
    }

    public Element prependChild(Node node) {
        Validate.notNull(node);
        addChildren(0, node);
        return this;
    }

    public Element prependChildren(Collection<? extends Node> collection) {
        insertChildren(0, collection);
        return this;
    }

    public Element insertChildren(int i, Collection<? extends Node> collection) {
        Validate.notNull(collection, "Children collection to be inserted must not be null.");
        int iChildNodeSize = childNodeSize();
        if (i < 0) {
            i += iChildNodeSize + 1;
        }
        Validate.isTrue(i >= 0 && i <= iChildNodeSize, "Insert position out of bounds.");
        addChildren(i, (Node[]) new ArrayList(collection).toArray(new Node[0]));
        return this;
    }

    public Element insertChildren(int i, Node... nodeArr) {
        Validate.notNull(nodeArr, "Children collection to be inserted must not be null.");
        int iChildNodeSize = childNodeSize();
        if (i < 0) {
            i += iChildNodeSize + 1;
        }
        Validate.isTrue(i >= 0 && i <= iChildNodeSize, "Insert position out of bounds.");
        addChildren(i, nodeArr);
        return this;
    }

    public Element insertChild(int i, Node node) {
        return insertChildren(i, node);
    }

    public Element appendElement(String str) {
        Element element = new Element(Tag.valueOf(str, NodeUtils.parser(this).settings()), baseUri());
        appendChild(element);
        return element;
    }

    public Element prependElement(String str) {
        Element element = new Element(Tag.valueOf(str, NodeUtils.parser(this).settings()), baseUri());
        prependChild(element);
        return element;
    }

    public Element appendText(String str) {
        Validate.notNull(str);
        appendChild(new TextNode(str));
        return this;
    }

    public Element prependText(String str) {
        Validate.notNull(str);
        prependChild(new TextNode(str));
        return this;
    }

    public Element append(String str) {
        Validate.notNull(str);
        addChildren((Node[]) NodeUtils.parser(this).parseFragmentInput(str, this, baseUri()).toArray(new Node[0]));
        return this;
    }

    public Element prepend(String str) {
        Validate.notNull(str);
        addChildren(0, (Node[]) NodeUtils.parser(this).parseFragmentInput(str, this, baseUri()).toArray(new Node[0]));
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node before(String str) {
        return super.before(str);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node before(Node node) {
        return super.before(node);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node after(String str) {
        return super.after(str);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node after(Node node) {
        return super.after(node);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node empty() {
        this.childNodes.clear();
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node wrap(String str) {
        return super.wrap(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0033, code lost:
    
        if (r3.get(0) == r5) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String cssSelector() {
        /*
            r5 = this;
            java.lang.String r0 = r5.m2671id()
            int r0 = r0.length()
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L36
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = "#"
            r0.<init>(r3)
            java.lang.String r3 = r5.m2671id()
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r0 = r0.toString()
            com.itextpdf.styledxmlparser.jsoup.nodes.Document r3 = r5.ownerDocument()
            if (r3 == 0) goto L35
            com.itextpdf.styledxmlparser.jsoup.select.Elements r3 = r3.select(r0)
            int r4 = r3.size()
            if (r4 != r2) goto L36
            java.lang.Object r3 = r3.get(r1)
            if (r3 != r5) goto L36
        L35:
            return r0
        L36:
            java.lang.String r0 = r5.tagName()
            r3 = 58
            r4 = 124(0x7c, float:1.74E-43)
            java.lang.String r0 = r0.replace(r3, r4)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r0)
            java.util.Set r0 = r5.classNames()
            java.lang.String r4 = "."
            java.lang.String r0 = com.itextpdf.styledxmlparser.jsoup.internal.StringUtil.join(r0, r4)
            int r4 = r0.length()
            if (r4 <= 0) goto L60
            r4 = 46
            java.lang.StringBuilder r4 = r3.append(r4)
            r4.append(r0)
        L60:
            com.itextpdf.styledxmlparser.jsoup.nodes.Node r0 = r5.parent()
            if (r0 == 0) goto Lb8
            com.itextpdf.styledxmlparser.jsoup.nodes.Node r0 = r5.parent()
            boolean r0 = r0 instanceof com.itextpdf.styledxmlparser.jsoup.nodes.Document
            if (r0 == 0) goto L6f
            goto Lb8
        L6f:
            java.lang.String r0 = " > "
            r3.insert(r1, r0)
            com.itextpdf.styledxmlparser.jsoup.nodes.Node r0 = r5.parent()
            com.itextpdf.styledxmlparser.jsoup.nodes.Element r0 = (com.itextpdf.styledxmlparser.jsoup.nodes.Element) r0
            java.lang.String r1 = r3.toString()
            com.itextpdf.styledxmlparser.jsoup.select.Elements r1 = r0.select(r1)
            int r1 = r1.size()
            if (r1 <= r2) goto L9e
            int r1 = r5.elementSiblingIndex()
            int r1 = r1 + r2
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Object[] r1 = new java.lang.Object[]{r1}
            java.lang.String r2 = ":nth-child({0})"
            java.lang.String r1 = com.itextpdf.commons.utils.MessageFormatUtil.format(r2, r1)
            r3.append(r1)
        L9e:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r0 = r0.cssSelector()
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r1 = r3.toString()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        Lb8:
            java.lang.String r0 = r3.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.styledxmlparser.jsoup.nodes.Element.cssSelector():java.lang.String");
    }

    public Elements siblingElements() {
        if (this.parentNode == null) {
            return new Elements(0);
        }
        List<Element> listChildElementsList = ((Element) parent()).childElementsList();
        Elements elements = new Elements(listChildElementsList.size() - 1);
        for (Element element : listChildElementsList) {
            if (element != this) {
                elements.add(element);
            }
        }
        return elements;
    }

    public Element nextElementSibling() {
        if (this.parentNode == null) {
            return null;
        }
        List<Element> listChildElementsList = ((Element) parent()).childElementsList();
        int iIndexInList = indexInList(this, listChildElementsList) + 1;
        if (listChildElementsList.size() > iIndexInList) {
            return listChildElementsList.get(iIndexInList);
        }
        return null;
    }

    public Elements nextElementSiblings() {
        return nextElementSiblings(true);
    }

    public Element previousElementSibling() {
        List<Element> listChildElementsList;
        int iIndexInList;
        if (this.parentNode != null && (iIndexInList = indexInList(this, (listChildElementsList = ((Element) parent()).childElementsList()))) > 0) {
            return listChildElementsList.get(iIndexInList - 1);
        }
        return null;
    }

    public Elements previousElementSiblings() {
        return nextElementSiblings(false);
    }

    private Elements nextElementSiblings(boolean z) {
        Elements elements = new Elements();
        if (this.parentNode == null) {
            return elements;
        }
        elements.add(this);
        return z ? elements.nextAll() : elements.prevAll();
    }

    public Element firstElementSibling() {
        Element element = (Element) parent();
        if (element == null) {
            return this;
        }
        List<Element> listChildElementsList = element.childElementsList();
        return listChildElementsList.size() > 1 ? listChildElementsList.get(0) : this;
    }

    public int elementSiblingIndex() {
        Element element = (Element) parent();
        if (element == null) {
            return 0;
        }
        return indexInList(this, element.childElementsList());
    }

    public Element lastElementSibling() {
        Element element = (Element) parent();
        if (element == null) {
            return this;
        }
        List<Element> listChildElementsList = element.childElementsList();
        return listChildElementsList.size() > 1 ? listChildElementsList.get(listChildElementsList.size() - 1) : this;
    }

    private static <E extends Element> int indexInList(Element element, List<E> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i) == element) {
                return i;
            }
        }
        return 0;
    }

    public Elements getElementsByTag(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.Tag(Normalizer.normalize(str)), this);
    }

    public Element getElementById(String str) {
        Validate.notEmpty(str);
        Elements elementsCollect = Collector.collect(new Evaluator.C3540Id(str), this);
        if (elementsCollect.size() > 0) {
            return elementsCollect.get(0);
        }
        return null;
    }

    public Elements getElementsByClass(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.Class(str), this);
    }

    public Elements getElementsByAttribute(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.Attribute(str.trim()), this);
    }

    public Elements getElementsByAttributeStarting(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.AttributeStarting(str.trim()), this);
    }

    public Elements getElementsByAttributeValue(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValue(str, str2), this);
    }

    public Elements getElementsByAttributeValueNot(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueNot(str, str2), this);
    }

    public Elements getElementsByAttributeValueStarting(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueStarting(str, str2), this);
    }

    public Elements getElementsByAttributeValueEnding(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueEnding(str, str2), this);
    }

    public Elements getElementsByAttributeValueContaining(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueContaining(str, str2), this);
    }

    public Elements getElementsByAttributeValueMatching(String str, Pattern pattern) {
        return Collector.collect(new Evaluator.AttributeWithValueMatching(str, pattern), this);
    }

    public Elements getElementsByAttributeValueMatching(String str, String str2) {
        try {
            return getElementsByAttributeValueMatching(str, Pattern.compile(str2));
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException("Pattern syntax error: " + str2, e);
        }
    }

    public Elements getElementsByIndexLessThan(int i) {
        return Collector.collect(new Evaluator.IndexLessThan(i), this);
    }

    public Elements getElementsByIndexGreaterThan(int i) {
        return Collector.collect(new Evaluator.IndexGreaterThan(i), this);
    }

    public Elements getElementsByIndexEquals(int i) {
        return Collector.collect(new Evaluator.IndexEquals(i), this);
    }

    public Elements getElementsContainingText(String str) {
        return Collector.collect(new Evaluator.ContainsText(str), this);
    }

    public Elements getElementsContainingOwnText(String str) {
        return Collector.collect(new Evaluator.ContainsOwnText(str), this);
    }

    public Elements getElementsMatchingText(Pattern pattern) {
        return Collector.collect(new Evaluator.Matches(pattern), this);
    }

    public Elements getElementsMatchingText(String str) {
        try {
            return getElementsMatchingText(Pattern.compile(str));
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException("Pattern syntax error: " + str, e);
        }
    }

    public Elements getElementsMatchingOwnText(Pattern pattern) {
        return Collector.collect(new Evaluator.MatchesOwn(pattern), this);
    }

    public Elements getElementsMatchingOwnText(String str) {
        try {
            return getElementsMatchingOwnText(Pattern.compile(str));
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException("Pattern syntax error: " + str, e);
        }
    }

    public Elements getAllElements() {
        return Collector.collect(new Evaluator.AllElements(), this);
    }

    public String text() {
        StringBuilder sbBorrowBuilder = StringUtil.borrowBuilder();
        NodeTraversor.traverse(new TextNodeVisitor(sbBorrowBuilder), this);
        return StringUtil.releaseBuilder(sbBorrowBuilder).trim();
    }

    public String wholeText() {
        StringBuilder sbBorrowBuilder = StringUtil.borrowBuilder();
        NodeTraversor.traverse(new WholeTextNodeVisitor(sbBorrowBuilder), this);
        return StringUtil.releaseBuilder(sbBorrowBuilder);
    }

    public String ownText() {
        StringBuilder sbBorrowBuilder = StringUtil.borrowBuilder();
        ownText(sbBorrowBuilder);
        return StringUtil.releaseBuilder(sbBorrowBuilder).trim();
    }

    private void ownText(StringBuilder sb) {
        for (Node node : this.childNodes) {
            if (node instanceof TextNode) {
                appendNormalisedText(sb, (TextNode) node);
            } else if (node instanceof Element) {
                appendWhitespaceIfBr((Element) node, sb);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void appendNormalisedText(StringBuilder sb, TextNode textNode) {
        String wholeText = textNode.getWholeText();
        if (preserveWhitespace(textNode.parentNode) || (textNode instanceof CDataNode)) {
            sb.append(wholeText);
        } else {
            StringUtil.appendNormalisedWhitespace(sb, wholeText, TextNode.lastCharIsWhitespace(sb));
        }
    }

    private static void appendWhitespaceIfBr(Element element, StringBuilder sb) {
        if (!element.tag.getName().equals("br") || TextNode.lastCharIsWhitespace(sb)) {
            return;
        }
        sb.append(StringUtils.SPACE);
    }

    static boolean preserveWhitespace(Node node) {
        if (node instanceof Element) {
            Element element = (Element) node;
            int i = 0;
            while (!element.tag.preserveWhitespace()) {
                element = (Element) element.parent();
                i++;
                if (i >= 6 || element == null) {
                }
            }
            return true;
        }
        return false;
    }

    public Element text(String str) {
        Validate.notNull(str);
        empty();
        Document documentOwnerDocument = ownerDocument();
        if (documentOwnerDocument != null && documentOwnerDocument.parser().isContentForTagData(normalName())) {
            appendChild(new DataNode(str));
        } else {
            appendChild(new TextNode(str));
        }
        return this;
    }

    public boolean hasText() {
        for (Node node : this.childNodes) {
            if (node instanceof TextNode) {
                if (!((TextNode) node).isBlank()) {
                    return true;
                }
            } else if ((node instanceof Element) && ((Element) node).hasText()) {
                return true;
            }
        }
        return false;
    }

    public String data() {
        StringBuilder sbBorrowBuilder = StringUtil.borrowBuilder();
        for (Node node : this.childNodes) {
            if (node instanceof DataNode) {
                sbBorrowBuilder.append(((DataNode) node).getWholeData());
            } else if (node instanceof Comment) {
                sbBorrowBuilder.append(((Comment) node).getData());
            } else if (node instanceof Element) {
                sbBorrowBuilder.append(((Element) node).data());
            } else if (node instanceof CDataNode) {
                sbBorrowBuilder.append(((CDataNode) node).getWholeText());
            }
        }
        return StringUtil.releaseBuilder(sbBorrowBuilder);
    }

    public String className() {
        return attr(CommonAttributeConstants.CLASS).trim();
    }

    public Set<String> classNames() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(ClassSplit.split(className())));
        linkedHashSet.remove("");
        return linkedHashSet;
    }

    public Element classNames(Set<String> set) {
        Validate.notNull(set);
        if (set.isEmpty()) {
            attributes().remove(CommonAttributeConstants.CLASS);
        } else {
            attributes().put(CommonAttributeConstants.CLASS, StringUtil.join(set, StringUtils.SPACE));
        }
        return this;
    }

    public boolean hasClass(String str) {
        Attributes attributes = this.attributes;
        if (attributes == null) {
            return false;
        }
        String ignoreCase = attributes.getIgnoreCase(CommonAttributeConstants.CLASS);
        int length = ignoreCase.length();
        int length2 = str.length();
        if (length != 0 && length >= length2) {
            if (length == length2) {
                return str.equalsIgnoreCase(ignoreCase);
            }
            boolean z = false;
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (Character.isWhitespace(ignoreCase.charAt(i2))) {
                    if (!z) {
                        continue;
                    } else {
                        if (i2 - i == length2 && ignoreCase.regionMatches(true, i, str, 0, length2)) {
                            return true;
                        }
                        z = false;
                    }
                } else if (!z) {
                    i = i2;
                    z = true;
                }
            }
            if (z && length - i == length2) {
                return ignoreCase.regionMatches(true, i, str, 0, length2);
            }
        }
        return false;
    }

    public Element addClass(String str) {
        Validate.notNull(str);
        Set<String> setClassNames = classNames();
        setClassNames.add(str);
        classNames(setClassNames);
        return this;
    }

    public Element removeClass(String str) {
        Validate.notNull(str);
        Set<String> setClassNames = classNames();
        setClassNames.remove(str);
        classNames(setClassNames);
        return this;
    }

    public Element toggleClass(String str) {
        Validate.notNull(str);
        Set<String> setClassNames = classNames();
        if (setClassNames.contains(str)) {
            setClassNames.remove(str);
        } else {
            setClassNames.add(str);
        }
        classNames(setClassNames);
        return this;
    }

    public String val() {
        if (normalName().equals("textarea")) {
            return text();
        }
        return attr("value");
    }

    public Element val(String str) {
        if (normalName().equals("textarea")) {
            text(str);
        } else {
            attr("value", str);
        }
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    void outerHtmlHead(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException {
        if (outputSettings.prettyPrint() && isFormatAsBlock(outputSettings) && !isInlineable(outputSettings) && (!(appendable instanceof StringBuilder) || ((StringBuilder) appendable).length() > 0)) {
            indent(appendable, i, outputSettings);
        }
        appendable.append(Typography.less).append(tagName());
        Attributes attributes = this.attributes;
        if (attributes != null) {
            attributes.html(appendable, outputSettings);
        }
        if (this.childNodes.isEmpty() && this.tag.isSelfClosing()) {
            if (outputSettings.syntax() == Document.OutputSettings.Syntax.html && this.tag.isEmpty()) {
                appendable.append(Typography.greater);
                return;
            } else {
                appendable.append(" />");
                return;
            }
        }
        appendable.append(Typography.greater);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    void outerHtmlTail(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException {
        if (this.childNodes.isEmpty() && this.tag.isSelfClosing()) {
            return;
        }
        if (outputSettings.prettyPrint() && !this.childNodes.isEmpty() && (this.tag.formatAsBlock() || (outputSettings.outline() && (this.childNodes.size() > 1 || (this.childNodes.size() == 1 && !(this.childNodes.get(0) instanceof TextNode)))))) {
            indent(appendable, i, outputSettings);
        }
        appendable.append("</").append(tagName()).append(Typography.greater);
    }

    public String html() {
        StringBuilder sbBorrowBuilder = StringUtil.borrowBuilder();
        html(sbBorrowBuilder);
        String strReleaseBuilder = StringUtil.releaseBuilder(sbBorrowBuilder);
        return NodeUtils.outputSettings(this).prettyPrint() ? strReleaseBuilder.trim() : strReleaseBuilder;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Appendable html(Appendable appendable) {
        int size = this.childNodes.size();
        for (int i = 0; i < size; i++) {
            this.childNodes.get(i).outerHtml(appendable);
        }
        return appendable;
    }

    public Element html(String str) {
        empty();
        append(str);
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Object clone() {
        return (Element) super.clone();
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node shallowClone() {
        Tag tag = this.tag;
        String strBaseUri = baseUri();
        Attributes attributes = this.attributes;
        return new Element(tag, strBaseUri, (Attributes) (attributes == null ? null : attributes.clone()));
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    protected Node doClone(Node node) {
        Element element = (Element) super.doClone(node);
        Attributes attributes = this.attributes;
        element.attributes = (Attributes) (attributes != null ? attributes.clone() : null);
        NodeList nodeList = new NodeList(element, this.childNodes.size());
        element.childNodes = nodeList;
        nodeList.addAll(this.childNodes);
        return element;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node clearAttributes() {
        if (this.attributes != null) {
            super.clearAttributes();
            this.attributes = null;
        }
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node removeAttr(String str) {
        return (Element) super.removeAttr(str);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node root() {
        return (Element) super.root();
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node traverse(NodeVisitor nodeVisitor) {
        return (Element) super.traverse(nodeVisitor);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Node filter(NodeFilter nodeFilter) {
        return (Element) super.filter(nodeFilter);
    }

    private static final class NodeList extends ChangeNotifyingArrayList<Node> {
        private final Element owner;

        NodeList(Element element, int i) {
            super(i);
            this.owner = element;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.helper.ChangeNotifyingArrayList
        public void onContentsChanged() {
            this.owner.nodelistChanged();
        }
    }

    private boolean isFormatAsBlock(Document.OutputSettings outputSettings) {
        Element element = (Element) parent();
        return this.tag.formatAsBlock() || (element != null && element.tag().formatAsBlock()) || outputSettings.outline();
    }

    private boolean isInlineable(Document.OutputSettings outputSettings) {
        Element element = (Element) parent();
        return (!tag().isInline() || tag().isEmpty() || (element != null && !element.isBlock()) || previousSibling() == null || outputSettings.outline()) ? false : true;
    }

    private static final class TextNodeVisitor implements NodeVisitor {
        private StringBuilder accum;

        TextNodeVisitor(StringBuilder sb) {
            this.accum = sb;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.NodeVisitor
        public void head(Node node, int i) {
            if (node instanceof TextNode) {
                Element.appendNormalisedText(this.accum, (TextNode) node);
            } else if (node instanceof Element) {
                Element element = (Element) node;
                if (this.accum.length() > 0) {
                    if ((element.isBlock() || element.tag.getName().equals("br")) && !TextNode.lastCharIsWhitespace(this.accum)) {
                        this.accum.append(' ');
                    }
                }
            }
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.NodeVisitor
        public void tail(Node node, int i) {
            if ((node instanceof Element) && ((Element) node).isBlock() && (node.nextSibling() instanceof TextNode) && !TextNode.lastCharIsWhitespace(this.accum)) {
                this.accum.append(' ');
            }
        }
    }

    private static final class WholeTextNodeVisitor implements NodeVisitor {
        private StringBuilder accum;

        @Override // com.itextpdf.styledxmlparser.jsoup.select.NodeVisitor
        public void tail(Node node, int i) {
        }

        WholeTextNodeVisitor(StringBuilder sb) {
            this.accum = sb;
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.select.NodeVisitor
        public void head(Node node, int i) {
            if (node instanceof TextNode) {
                this.accum.append(((TextNode) node).getWholeText());
            }
        }
    }
}
