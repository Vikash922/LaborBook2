package com.itextpdf.styledxmlparser.jsoup.nodes;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.itextpdf.forms.xfdf.XfdfConstants;
import com.itextpdf.styledxmlparser.jsoup.helper.DataUtil;
import com.itextpdf.styledxmlparser.jsoup.helper.Validate;
import com.itextpdf.styledxmlparser.jsoup.internal.StringUtil;
import com.itextpdf.styledxmlparser.jsoup.nodes.Entities;
import com.itextpdf.styledxmlparser.jsoup.parser.ParseSettings;
import com.itextpdf.styledxmlparser.jsoup.parser.Parser;
import com.itextpdf.styledxmlparser.jsoup.parser.Tag;
import com.itextpdf.styledxmlparser.jsoup.select.Elements;
import com.itextpdf.styledxmlparser.jsoup.select.Evaluator;
import firebase.com.protolitewrapper.BuildConfig;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class Document extends Element {
    private static final Evaluator titleEval = new Evaluator.Tag("title");
    private final String location;
    private OutputSettings outputSettings;
    private Parser parser;
    private QuirksMode quirksMode;
    private boolean updateMetaCharset;

    public enum QuirksMode {
        noQuirks,
        quirks,
        limitedQuirks
    }

    public Document(String str) {
        super(Tag.valueOf("#root", ParseSettings.htmlDefault), str);
        this.outputSettings = new OutputSettings();
        this.quirksMode = QuirksMode.noQuirks;
        this.updateMetaCharset = false;
        this.location = str;
        this.parser = Parser.htmlParser();
    }

    public static Document createShell(String str) {
        Validate.notNull(str);
        Document document = new Document(str);
        document.parser = document.parser();
        Element elementAppendElement = document.appendElement("html");
        elementAppendElement.appendElement(XfdfConstants.HEAD);
        elementAppendElement.appendElement(SDKConstants.PARAM_A2U_BODY);
        return document;
    }

    public String location() {
        return this.location;
    }

    public DocumentType documentType() {
        for (Node node : this.childNodes) {
            if (node instanceof DocumentType) {
                return (DocumentType) node;
            }
            if (!(node instanceof LeafNode)) {
                return null;
            }
        }
        return null;
    }

    private Element htmlEl() {
        for (Element element : childElementsList()) {
            if (element.normalName().equals("html")) {
                return element;
            }
        }
        return appendElement("html");
    }

    public Element head() {
        Element elementHtmlEl = htmlEl();
        for (Element element : elementHtmlEl.childElementsList()) {
            if (element.normalName().equals(XfdfConstants.HEAD)) {
                return element;
            }
        }
        return elementHtmlEl.prependElement(XfdfConstants.HEAD);
    }

    public Element body() {
        Element elementHtmlEl = htmlEl();
        for (Element element : elementHtmlEl.childElementsList()) {
            if (SDKConstants.PARAM_A2U_BODY.equals(element.normalName()) || "frameset".equals(element.normalName())) {
                return element;
            }
        }
        return elementHtmlEl.appendElement(SDKConstants.PARAM_A2U_BODY);
    }

    public String title() {
        Element elementSelectFirst = head().selectFirst(titleEval);
        return elementSelectFirst != null ? StringUtil.normaliseWhitespace(elementSelectFirst.text()).trim() : "";
    }

    public void title(String str) {
        Validate.notNull(str);
        Element elementSelectFirst = head().selectFirst(titleEval);
        if (elementSelectFirst == null) {
            elementSelectFirst = head().appendElement("title");
        }
        elementSelectFirst.text(str);
    }

    public Element createElement(String str) {
        return new Element(Tag.valueOf(str, ParseSettings.preserveCase), baseUri());
    }

    public Document normalise() {
        Element elementHtmlEl = htmlEl();
        Element elementHead = head();
        body();
        normaliseTextNodes(elementHead);
        normaliseTextNodes(elementHtmlEl);
        normaliseTextNodes(this);
        normaliseStructure(XfdfConstants.HEAD, elementHtmlEl);
        normaliseStructure(SDKConstants.PARAM_A2U_BODY, elementHtmlEl);
        ensureMetaCharsetElement();
        return this;
    }

    private void normaliseTextNodes(Element element) {
        ArrayList arrayList = new ArrayList();
        for (Node node : element.childNodes) {
            if (node instanceof TextNode) {
                TextNode textNode = (TextNode) node;
                if (!textNode.isBlank()) {
                    arrayList.add(textNode);
                }
            }
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Node node2 = (Node) arrayList.get(size);
            element.removeChild(node2);
            body().prependChild(new TextNode(StringUtils.SPACE));
            body().prependChild(node2);
        }
    }

    private void normaliseStructure(String str, Element element) {
        Elements elementsByTag = getElementsByTag(str);
        Element elementFirst = elementsByTag.first();
        if (elementsByTag.size() > 1) {
            ArrayList arrayList = new ArrayList();
            for (int i = 1; i < elementsByTag.size(); i++) {
                Element element2 = elementsByTag.get(i);
                arrayList.addAll(element2.ensureChildNodes());
                element2.remove();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                elementFirst.appendChild((Node) it.next());
            }
        }
        if (elementFirst.parent() == null || elementFirst.parent().equals(element)) {
            return;
        }
        element.appendChild(elementFirst);
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public String outerHtml() {
        return super.html();
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Element
    public Element text(String str) {
        body().text(str);
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Element, com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public String nodeName() {
        return "#document";
    }

    public void charset(Charset charset) {
        updateMetaCharsetElement(true);
        this.outputSettings.charset(charset);
        ensureMetaCharsetElement();
    }

    public Charset charset() {
        return this.outputSettings.charset();
    }

    public void updateMetaCharsetElement(boolean z) {
        this.updateMetaCharset = z;
    }

    public boolean updateMetaCharsetElement() {
        return this.updateMetaCharset;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Element, com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Object clone() {
        Document document = (Document) super.clone();
        document.outputSettings = (OutputSettings) this.outputSettings.clone();
        return document;
    }

    private void ensureMetaCharsetElement() {
        if (this.updateMetaCharset) {
            OutputSettings.Syntax syntax = outputSettings().syntax();
            if (syntax == OutputSettings.Syntax.html) {
                Element elementSelectFirst = selectFirst("meta[charset]");
                if (elementSelectFirst != null) {
                    elementSelectFirst.attr("charset", charset().displayName());
                } else {
                    head().appendElement("meta").attr("charset", charset().displayName());
                }
                select("meta[name=charset]").remove();
                return;
            }
            if (syntax == OutputSettings.Syntax.xml) {
                Node node = ensureChildNodes().get(0);
                if (node instanceof XmlDeclaration) {
                    XmlDeclaration xmlDeclaration = (XmlDeclaration) node;
                    if (xmlDeclaration.name().equals("xml")) {
                        xmlDeclaration.attr("encoding", charset().displayName());
                        if (xmlDeclaration.hasAttr("version")) {
                            xmlDeclaration.attr("version", BuildConfig.VERSION_NAME);
                            return;
                        }
                        return;
                    }
                    XmlDeclaration xmlDeclaration2 = new XmlDeclaration("xml", false);
                    xmlDeclaration2.attr("version", BuildConfig.VERSION_NAME);
                    xmlDeclaration2.attr("encoding", charset().displayName());
                    prependChild(xmlDeclaration2);
                    return;
                }
                XmlDeclaration xmlDeclaration3 = new XmlDeclaration("xml", false);
                xmlDeclaration3.attr("version", BuildConfig.VERSION_NAME);
                xmlDeclaration3.attr("encoding", charset().displayName());
                prependChild(xmlDeclaration3);
            }
        }
    }

    public static class OutputSettings implements Cloneable {
        Entities.CoreCharset coreCharset;
        private Entities.EscapeMode escapeMode = Entities.EscapeMode.base;
        private Charset charset = DataUtil.UTF_8;
        private final ThreadLocal<CharsetEncoder> encoderThreadLocal = new ThreadLocal<>();
        private boolean prettyPrint = true;
        private boolean outline = false;
        private int indentAmount = 1;
        private Syntax syntax = Syntax.html;

        public enum Syntax {
            html,
            xml
        }

        public Entities.EscapeMode escapeMode() {
            return this.escapeMode;
        }

        public OutputSettings escapeMode(Entities.EscapeMode escapeMode) {
            this.escapeMode = escapeMode;
            return this;
        }

        public Charset charset() {
            return this.charset;
        }

        public OutputSettings charset(Charset charset) {
            this.charset = charset;
            return this;
        }

        public OutputSettings charset(String str) {
            charset(Charset.forName(str));
            return this;
        }

        CharsetEncoder prepareEncoder() {
            CharsetEncoder charsetEncoderNewEncoder = this.charset.newEncoder();
            this.encoderThreadLocal.set(charsetEncoderNewEncoder);
            this.coreCharset = Entities.getCoreCharsetByName(charsetEncoderNewEncoder.charset().name());
            return charsetEncoderNewEncoder;
        }

        CharsetEncoder encoder() {
            CharsetEncoder charsetEncoder = this.encoderThreadLocal.get();
            return charsetEncoder != null ? charsetEncoder : prepareEncoder();
        }

        public Syntax syntax() {
            return this.syntax;
        }

        public OutputSettings syntax(Syntax syntax) {
            this.syntax = syntax;
            return this;
        }

        public boolean prettyPrint() {
            return this.prettyPrint;
        }

        public OutputSettings prettyPrint(boolean z) {
            this.prettyPrint = z;
            return this;
        }

        public boolean outline() {
            return this.outline;
        }

        public OutputSettings outline(boolean z) {
            this.outline = z;
            return this;
        }

        public int indentAmount() {
            return this.indentAmount;
        }

        public OutputSettings indentAmount(int i) {
            Validate.isTrue(i >= 0);
            this.indentAmount = i;
            return this;
        }

        public Object clone() {
            OutputSettings outputSettings = (OutputSettings) partialClone();
            outputSettings.charset(this.charset.name());
            outputSettings.escapeMode = this.escapeMode;
            return outputSettings;
        }

        private Object partialClone() {
            try {
                return super.clone();
            } catch (CloneNotSupportedException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public OutputSettings outputSettings() {
        return this.outputSettings;
    }

    public Document outputSettings(OutputSettings outputSettings) {
        Validate.notNull(outputSettings);
        this.outputSettings = outputSettings;
        return this;
    }

    public QuirksMode quirksMode() {
        return this.quirksMode;
    }

    public Document quirksMode(QuirksMode quirksMode) {
        this.quirksMode = quirksMode;
        return this;
    }

    public Parser parser() {
        return this.parser;
    }

    public Document parser(Parser parser) {
        this.parser = parser;
        return this;
    }
}
