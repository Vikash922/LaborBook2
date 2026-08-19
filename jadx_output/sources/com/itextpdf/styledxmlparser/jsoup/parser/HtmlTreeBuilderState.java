package com.itextpdf.styledxmlparser.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.common.base.Ascii;
import com.itextpdf.forms.xfdf.XfdfConstants;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.jsoup.internal.StringUtil;
import com.itextpdf.styledxmlparser.jsoup.nodes.Attribute;
import com.itextpdf.styledxmlparser.jsoup.nodes.Attributes;
import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import com.itextpdf.styledxmlparser.jsoup.nodes.DocumentType;
import com.itextpdf.styledxmlparser.jsoup.nodes.Element;
import com.itextpdf.styledxmlparser.jsoup.nodes.FormElement;
import com.itextpdf.styledxmlparser.jsoup.nodes.Node;
import com.itextpdf.styledxmlparser.jsoup.parser.Token;
import com.itextpdf.svg.SvgConstants;
import java.util.ArrayList;
import org.bouncycastle.i18n.ErrorBundle;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
abstract class HtmlTreeBuilderState {
    public static HtmlTreeBuilderState AfterAfterBody;
    public static HtmlTreeBuilderState AfterAfterFrameset;
    public static HtmlTreeBuilderState AfterBody;
    public static HtmlTreeBuilderState AfterFrameset;
    public static HtmlTreeBuilderState AfterHead;
    public static HtmlTreeBuilderState BeforeHead;
    public static HtmlTreeBuilderState BeforeHtml;
    public static HtmlTreeBuilderState ForeignContent;
    public static HtmlTreeBuilderState InBody;
    public static HtmlTreeBuilderState InCaption;
    public static HtmlTreeBuilderState InCell;
    public static HtmlTreeBuilderState InColumnGroup;
    public static HtmlTreeBuilderState InFrameset;
    public static HtmlTreeBuilderState InHead;
    public static HtmlTreeBuilderState InHeadNoscript;
    public static HtmlTreeBuilderState InRow;
    public static HtmlTreeBuilderState InSelect;
    public static HtmlTreeBuilderState InSelectInTable;
    public static HtmlTreeBuilderState InTable;
    public static HtmlTreeBuilderState InTableBody;
    public static HtmlTreeBuilderState InTableText;
    public static HtmlTreeBuilderState Initial;
    public static HtmlTreeBuilderState Text;
    private static final String nullString = String.valueOf((char) 0);

    abstract boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder);

    HtmlTreeBuilderState() {
    }

    static {
        C35351 c35351 = null;
        Initial = new InitialBS(c35351);
        BeforeHtml = new BeforeHtmlBS(c35351);
        BeforeHead = new BeforeHeadBS(c35351);
        InHead = new InHeadBS(c35351);
        InHeadNoscript = new InHeadNoScriptBS(c35351);
        AfterHead = new AfterHeadBS(c35351);
        InBody = new InBodyBS(c35351);
        Text = new TextBS(c35351);
        InTable = new InTableBS(c35351);
        InTableText = new InTableTextBS(c35351);
        InCaption = new InCaptionBS(c35351);
        InColumnGroup = new InColumnGroupBS(c35351);
        InTableBody = new InTableBodyBS(c35351);
        InRow = new InRowBS(c35351);
        InCell = new InCellBS(c35351);
        InSelect = new InSelectBS(c35351);
        InSelectInTable = new InSelectInTableBS(c35351);
        AfterBody = new AfterBodyBS(c35351);
        InFrameset = new InFrameSetBS(c35351);
        AfterFrameset = new AfterFrameSetBS(c35351);
        AfterAfterBody = new AfterAfterBodyBS(c35351);
        AfterAfterFrameset = new AfterAfterFrameSetBS(c35351);
        ForeignContent = new ForeignContentBS(c35351);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWhitespace(Token token) {
        if (token.isCharacter()) {
            return StringUtil.isBlank(token.asCharacter().getData());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWhitespace(String str) {
        return StringUtil.isBlank(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRcData(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
        htmlTreeBuilder.insert(startTag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRawtext(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rawtext);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
        htmlTreeBuilder.insert(startTag);
    }

    static final class Constants {
        static final String[] InHeadEmpty = {"base", "basefont", "bgsound", "command", "link"};
        static final String[] InHeadRaw = {"noframes", "style"};
        static final String[] InHeadEnd = {SDKConstants.PARAM_A2U_BODY, "br", "html"};
        static final String[] AfterHeadBody = {SDKConstants.PARAM_A2U_BODY, "html"};
        static final String[] BeforeHtmlToHead = {SDKConstants.PARAM_A2U_BODY, "br", XfdfConstants.HEAD, "html"};
        static final String[] InHeadNoScriptHead = {"basefont", "bgsound", "link", "meta", "noframes", "style"};
        static final String[] InBodyStartToHead = {"base", "basefont", "bgsound", "command", "link", "meta", "noframes", SvgConstants.Tags.SCRIPT, "style", "title"};
        static final String[] InBodyStartPClosers = {"address", "article", "aside", "blockquote", CommonCssConstants.CENTER, ErrorBundle.DETAIL_ENTRY, "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", CommonCssConstants.MENU, "nav", "ol", "p", "section", ErrorBundle.SUMMARY_ENTRY, "ul"};
        static final String[] Headings = {"h1", "h2", "h3", "h4", "h5", "h6"};
        static final String[] InBodyStartLiBreakers = {"address", "div", "p"};
        static final String[] DdDt = {"dd", "dt"};
        static final String[] Formatters = {SvgConstants.Attributes.PATH_DATA_REL_BEARING, "big", "code", "em", "font", "i", SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO_S, CommonCssConstants.SMALL, "strike", "strong", "tt", "u"};
        static final String[] InBodyStartApplets = {"applet", "marquee", "object"};
        static final String[] InBodyStartEmptyFormatters = {"area", "br", "embed", "img", "keygen", "wbr"};
        static final String[] InBodyStartMedia = {"param", "source", "track"};
        static final String[] InBodyStartInputAttribs = {"action", "name", "prompt"};
        static final String[] InBodyStartDrop = {"caption", "col", "colgroup", TypedValues.AttributesType.S_FRAME, XfdfConstants.HEAD, "tbody", "td", "tfoot", "th", "thead", "tr"};
        static final String[] InBodyEndClosers = {"address", "article", "aside", "blockquote", "button", CommonCssConstants.CENTER, ErrorBundle.DETAIL_ENTRY, "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", CommonCssConstants.MENU, "nav", "ol", "pre", "section", ErrorBundle.SUMMARY_ENTRY, "ul"};
        static final String[] InBodyEndAdoptionFormatters = {"a", SvgConstants.Attributes.PATH_DATA_REL_BEARING, "big", "code", "em", "font", "i", "nobr", SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO_S, CommonCssConstants.SMALL, "strike", "strong", "tt", "u"};
        static final String[] InBodyEndTableFosters = {"table", "tbody", "tfoot", "thead", "tr"};
        static final String[] InTableToBody = {"tbody", "tfoot", "thead"};
        static final String[] InTableAddBody = {"td", "th", "tr"};
        static final String[] InTableToHead = {SvgConstants.Tags.SCRIPT, "style"};
        static final String[] InCellNames = {"td", "th"};
        static final String[] InCellBody = {SDKConstants.PARAM_A2U_BODY, "caption", "col", "colgroup", "html"};
        static final String[] InCellTable = {"table", "tbody", "tfoot", "thead", "tr"};
        static final String[] InCellCol = {"caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr"};
        static final String[] InTableEndErr = {SDKConstants.PARAM_A2U_BODY, "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};
        static final String[] InTableFoster = {"table", "tbody", "tfoot", "thead", "tr"};
        static final String[] InTableBodyExit = {"caption", "col", "colgroup", "tbody", "tfoot", "thead"};
        static final String[] InTableBodyEndIgnore = {SDKConstants.PARAM_A2U_BODY, "caption", "col", "colgroup", "html", "td", "th", "tr"};
        static final String[] InRowMissing = {"caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr"};
        static final String[] InRowIgnore = {SDKConstants.PARAM_A2U_BODY, "caption", "col", "colgroup", "html", "td", "th"};
        static final String[] InSelectEnd = {"input", "keygen", "textarea"};
        static final String[] InSelecTableEnd = {"caption", "table", "tbody", "td", "tfoot", "th", "thead", "tr"};
        static final String[] InTableEndIgnore = {"tbody", "tfoot", "thead"};
        static final String[] InHeadNoscriptIgnore = {XfdfConstants.HEAD, "noscript"};
        static final String[] InCaptionIgnore = {SDKConstants.PARAM_A2U_BODY, "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};

        Constants() {
        }
    }

    private static final class InitialBS extends HtmlTreeBuilderState {
        private InitialBS() {
        }

        /* synthetic */ InitialBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "Initial";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (token.isDoctype()) {
                Token.Doctype doctypeAsDoctype = token.asDoctype();
                DocumentType documentType = new DocumentType(htmlTreeBuilder.settings.normalizeTag(doctypeAsDoctype.getName()), doctypeAsDoctype.getPublicIdentifier(), doctypeAsDoctype.getSystemIdentifier());
                documentType.setPubSysKey(doctypeAsDoctype.getPubSysKey());
                htmlTreeBuilder.getDocument().appendChild(documentType);
                if (doctypeAsDoctype.isForceQuirks()) {
                    htmlTreeBuilder.getDocument().quirksMode(Document.QuirksMode.quirks);
                }
                htmlTreeBuilder.transition(BeforeHtml);
            } else {
                htmlTreeBuilder.transition(BeforeHtml);
                return htmlTreeBuilder.process(token);
            }
            return true;
        }
    }

    private static final class BeforeHtmlBS extends HtmlTreeBuilderState {
        private BeforeHtmlBS() {
        }

        /* synthetic */ BeforeHtmlBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "BeforeHtml";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (!token.isComment()) {
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    htmlTreeBuilder.insert(token.asCharacter());
                    return true;
                }
                if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                    htmlTreeBuilder.insert(token.asStartTag());
                    htmlTreeBuilder.transition(BeforeHead);
                    return true;
                }
                if (token.isEndTag() && StringUtil.inSorted(token.asEndTag().normalName(), Constants.BeforeHtmlToHead)) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                if (token.isEndTag()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            htmlTreeBuilder.insert(token.asComment());
            return true;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.insertStartTag("html");
            htmlTreeBuilder.transition(BeforeHead);
            return htmlTreeBuilder.process(token);
        }
    }

    private static final class BeforeHeadBS extends HtmlTreeBuilderState {
        private BeforeHeadBS() {
        }

        /* synthetic */ BeforeHeadBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "BeforeHead";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                return InBody.process(token, htmlTreeBuilder);
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals(XfdfConstants.HEAD)) {
                htmlTreeBuilder.setHeadElement(htmlTreeBuilder.insert(token.asStartTag()));
                htmlTreeBuilder.transition(InHead);
                return true;
            }
            if (token.isEndTag() && StringUtil.inSorted(token.asEndTag().normalName(), Constants.BeforeHtmlToHead)) {
                htmlTreeBuilder.processStartTag(XfdfConstants.HEAD);
                return htmlTreeBuilder.process(token);
            }
            if (token.isEndTag()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            htmlTreeBuilder.processStartTag(XfdfConstants.HEAD);
            return htmlTreeBuilder.process(token);
        }
    }

    private static final class InHeadBS extends HtmlTreeBuilderState {
        private InHeadBS() {
        }

        /* synthetic */ InHeadBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "InHead";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            int i = C35351.f3314xd695eb0c[token.type.ordinal()];
            if (i == 1) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (i == 2) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (i == 3) {
                    Token.StartTag startTagAsStartTag = token.asStartTag();
                    String strNormalName = startTagAsStartTag.normalName();
                    if (strNormalName.equals("html")) {
                        return InBody.process(token, htmlTreeBuilder);
                    }
                    if (StringUtil.inSorted(strNormalName, Constants.InHeadEmpty)) {
                        Element elementInsertEmpty = htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                        if (strNormalName.equals("base") && elementInsertEmpty.hasAttr("href")) {
                            htmlTreeBuilder.maybeSetBaseUri(elementInsertEmpty);
                        }
                    } else if (strNormalName.equals("meta")) {
                        htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                    } else if (strNormalName.equals("title")) {
                        HtmlTreeBuilderState.handleRcData(startTagAsStartTag, htmlTreeBuilder);
                    } else if (StringUtil.inSorted(strNormalName, Constants.InHeadRaw)) {
                        HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                    } else if (strNormalName.equals("noscript")) {
                        htmlTreeBuilder.insert(startTagAsStartTag);
                        htmlTreeBuilder.transition(InHeadNoscript);
                    } else if (strNormalName.equals(SvgConstants.Tags.SCRIPT)) {
                        htmlTreeBuilder.tokeniser.transition(TokeniserState.ScriptData);
                        htmlTreeBuilder.markInsertionMode();
                        htmlTreeBuilder.transition(Text);
                        htmlTreeBuilder.insert(startTagAsStartTag);
                    } else {
                        if (strNormalName.equals(XfdfConstants.HEAD)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        return anythingElse(token, htmlTreeBuilder);
                    }
                } else if (i == 4) {
                    String strNormalName2 = token.asEndTag().normalName();
                    if (strNormalName2.equals(XfdfConstants.HEAD)) {
                        htmlTreeBuilder.pop();
                        htmlTreeBuilder.transition(AfterHead);
                    } else {
                        if (StringUtil.inSorted(strNormalName2, Constants.InHeadEnd)) {
                            return anythingElse(token, htmlTreeBuilder);
                        }
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                } else {
                    return anythingElse(token, htmlTreeBuilder);
                }
            }
            return true;
        }

        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            treeBuilder.processEndTag(XfdfConstants.HEAD);
            return treeBuilder.process(token);
        }
    }

    /* JADX INFO: renamed from: com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState$1 */
    static /* synthetic */ class C35351 {

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$styledxmlparser$jsoup$parser$Token$TokenType */
        static final /* synthetic */ int[] f3314xd695eb0c;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            f3314xd695eb0c = iArr;
            try {
                iArr[Token.TokenType.Comment.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3314xd695eb0c[Token.TokenType.Doctype.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3314xd695eb0c[Token.TokenType.StartTag.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3314xd695eb0c[Token.TokenType.EndTag.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3314xd695eb0c[Token.TokenType.Character.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3314xd695eb0c[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private static final class InHeadNoScriptBS extends HtmlTreeBuilderState {
        private InHeadNoScriptBS() {
        }

        /* synthetic */ InHeadNoScriptBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "InHeadNoscript";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return true;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                return htmlTreeBuilder.process(token, InBody);
            }
            if (!token.isEndTag() || !token.asEndTag().normalName().equals("noscript")) {
                if (HtmlTreeBuilderState.isWhitespace(token) || token.isComment() || (token.isStartTag() && StringUtil.inSorted(token.asStartTag().normalName(), Constants.InHeadNoScriptHead))) {
                    return htmlTreeBuilder.process(token, InHead);
                }
                if (token.isEndTag() && token.asEndTag().normalName().equals("br")) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                if ((token.isStartTag() && StringUtil.inSorted(token.asStartTag().normalName(), Constants.InHeadNoscriptIgnore)) || token.isEndTag()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            htmlTreeBuilder.pop();
            htmlTreeBuilder.transition(InHead);
            return true;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.insert(new Token.Character().data(token.toString()));
            return true;
        }
    }

    private static final class AfterHeadBS extends HtmlTreeBuilderState {
        private AfterHeadBS() {
        }

        /* synthetic */ AfterHeadBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "AfterHead";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return true;
            }
            if (token.isStartTag()) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strNormalName = startTagAsStartTag.normalName();
                if (strNormalName.equals("html")) {
                    return htmlTreeBuilder.process(token, InBody);
                }
                if (strNormalName.equals(SDKConstants.PARAM_A2U_BODY)) {
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.framesetOk(false);
                    htmlTreeBuilder.transition(InBody);
                    return true;
                }
                if (strNormalName.equals("frameset")) {
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(InFrameset);
                    return true;
                }
                if (StringUtil.inSorted(strNormalName, Constants.InBodyStartToHead)) {
                    htmlTreeBuilder.error(this);
                    Element headElement = htmlTreeBuilder.getHeadElement();
                    htmlTreeBuilder.push(headElement);
                    htmlTreeBuilder.process(token, InHead);
                    htmlTreeBuilder.removeFromStack(headElement);
                    return true;
                }
                if (strNormalName.equals(XfdfConstants.HEAD)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                anythingElse(token, htmlTreeBuilder);
                return true;
            }
            if (token.isEndTag()) {
                if (StringUtil.inSorted(token.asEndTag().normalName(), Constants.AfterHeadBody)) {
                    anythingElse(token, htmlTreeBuilder);
                    return true;
                }
                htmlTreeBuilder.error(this);
                return false;
            }
            anythingElse(token, htmlTreeBuilder);
            return true;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.processStartTag(SDKConstants.PARAM_A2U_BODY);
            htmlTreeBuilder.framesetOk(true);
            return htmlTreeBuilder.process(token);
        }
    }

    private static final class InBodyBS extends HtmlTreeBuilderState {
        private InBodyBS() {
        }

        /* synthetic */ InBodyBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "InBody";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            int i = C35351.f3314xd695eb0c[token.type.ordinal()];
            if (i == 1) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (i == 2) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (i == 3) {
                    return inBodyStartTag(token, htmlTreeBuilder);
                }
                if (i == 4) {
                    return inBodyEndTag(token, htmlTreeBuilder);
                }
                if (i == 5) {
                    Token.Character characterAsCharacter = token.asCharacter();
                    if (characterAsCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    if (htmlTreeBuilder.framesetOk() && HtmlTreeBuilderState.isWhitespace(characterAsCharacter)) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insert(characterAsCharacter);
                    } else {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insert(characterAsCharacter);
                        htmlTreeBuilder.framesetOk(false);
                    }
                }
            }
            return true;
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        private boolean inBodyStartTag(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            boolean z;
            byte b;
            Token.StartTag startTagAsStartTag = token.asStartTag();
            String strNormalName = startTagAsStartTag.normalName();
            strNormalName.hashCode();
            byte b2 = -1;
            switch (strNormalName.hashCode()) {
                case -1644953643:
                    if (strNormalName.equals("frameset")) {
                        b2 = 0;
                    }
                    break;
                case -1377687758:
                    if (strNormalName.equals("button")) {
                        b2 = 1;
                    }
                    break;
                case -1191214428:
                    if (strNormalName.equals("iframe")) {
                        b2 = 2;
                    }
                    break;
                case -1010136971:
                    if (strNormalName.equals("option")) {
                        b = 3;
                        b2 = b;
                    }
                    break;
                case -1003243718:
                    if (strNormalName.equals("textarea")) {
                        b = 4;
                        b2 = b;
                    }
                    break;
                case -906021636:
                    if (strNormalName.equals("select")) {
                        b = 5;
                        b2 = b;
                    }
                    break;
                case -80773204:
                    if (strNormalName.equals("optgroup")) {
                        b = 6;
                        b2 = b;
                    }
                    break;
                case 97:
                    if (strNormalName.equals("a")) {
                        b = 7;
                        b2 = b;
                    }
                    break;
                case 3200:
                    if (strNormalName.equals("dd")) {
                        b = 8;
                        b2 = b;
                    }
                    break;
                case 3216:
                    if (strNormalName.equals("dt")) {
                        b = 9;
                        b2 = b;
                    }
                    break;
                case 3273:
                    if (strNormalName.equals("h1")) {
                        b = 10;
                        b2 = b;
                    }
                    break;
                case 3274:
                    if (strNormalName.equals("h2")) {
                        b = Ascii.f397VT;
                        b2 = b;
                    }
                    break;
                case 3275:
                    if (strNormalName.equals("h3")) {
                        b = Ascii.f386FF;
                        b2 = b;
                    }
                    break;
                case 3276:
                    if (strNormalName.equals("h4")) {
                        b = Ascii.f384CR;
                        b2 = b;
                    }
                    break;
                case 3277:
                    if (strNormalName.equals("h5")) {
                        b = Ascii.f394SO;
                        b2 = b;
                    }
                    break;
                case 3278:
                    if (strNormalName.equals("h6")) {
                        b = Ascii.f393SI;
                        b2 = b;
                    }
                    break;
                case 3338:
                    if (strNormalName.equals("hr")) {
                        b = 16;
                        b2 = b;
                    }
                    break;
                case 3453:
                    if (strNormalName.equals("li")) {
                        b = 17;
                        b2 = b;
                    }
                    break;
                case 3646:
                    if (strNormalName.equals("rp")) {
                        b = Ascii.DC2;
                        b2 = b;
                    }
                    break;
                case 3650:
                    if (strNormalName.equals("rt")) {
                        b = 19;
                        b2 = b;
                    }
                    break;
                case 111267:
                    if (strNormalName.equals("pre")) {
                        b = Ascii.DC4;
                        b2 = b;
                    }
                    break;
                case 114276:
                    if (strNormalName.equals(SvgConstants.Tags.SVG)) {
                        b = Ascii.NAK;
                        b2 = b;
                    }
                    break;
                case 118811:
                    if (strNormalName.equals("xmp")) {
                        b = Ascii.SYN;
                        b2 = b;
                    }
                    break;
                case 3029410:
                    if (strNormalName.equals(SDKConstants.PARAM_A2U_BODY)) {
                        b = Ascii.ETB;
                        b2 = b;
                    }
                    break;
                case 3148996:
                    if (strNormalName.equals("form")) {
                        b = Ascii.CAN;
                        b2 = b;
                    }
                    break;
                case 3213227:
                    if (strNormalName.equals("html")) {
                        b = Ascii.f385EM;
                        b2 = b;
                    }
                    break;
                case 3344136:
                    if (strNormalName.equals("math")) {
                        b = Ascii.SUB;
                        b2 = b;
                    }
                    break;
                case 3386833:
                    if (strNormalName.equals("nobr")) {
                        b = Ascii.ESC;
                        b2 = b;
                    }
                    break;
                case 3536714:
                    if (strNormalName.equals("span")) {
                        b = Ascii.f387FS;
                        b2 = b;
                    }
                    break;
                case 100313435:
                    if (strNormalName.equals("image")) {
                        b = Ascii.f388GS;
                        b2 = b;
                    }
                    break;
                case 100358090:
                    if (strNormalName.equals("input")) {
                        b = Ascii.f392RS;
                        b2 = b;
                    }
                    break;
                case 110115790:
                    if (strNormalName.equals("table")) {
                        b = Ascii.f396US;
                        b2 = b;
                    }
                    break;
                case 181975684:
                    if (strNormalName.equals("listing")) {
                        b = 32;
                        b2 = b;
                    }
                    break;
                case 1973234167:
                    if (strNormalName.equals("plaintext")) {
                        b = 33;
                        b2 = b;
                    }
                    break;
                case 2091304424:
                    if (strNormalName.equals("isindex")) {
                        b = 34;
                        b2 = b;
                    }
                    break;
                case 2115613112:
                    if (strNormalName.equals("noembed")) {
                        b = 35;
                        b2 = b;
                    }
                    break;
            }
            switch (b2) {
                case 0:
                    htmlTreeBuilder.error(this);
                    ArrayList<Element> stack = htmlTreeBuilder.getStack();
                    if (stack.size() == 1 || ((stack.size() > 2 && !stack.get(1).normalName().equals(SDKConstants.PARAM_A2U_BODY)) || !htmlTreeBuilder.framesetOk())) {
                        return false;
                    }
                    Element element = stack.get(1);
                    if (element.parent() != null) {
                        element.remove();
                    }
                    while (stack.size() > 1) {
                        stack.remove(stack.size() - 1);
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(InFrameset);
                    return true;
                case 1:
                    if (htmlTreeBuilder.inButtonScope("button")) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.processEndTag("button");
                        htmlTreeBuilder.process(startTagAsStartTag);
                        return true;
                    }
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.framesetOk(false);
                    return true;
                case 2:
                    z = true;
                    htmlTreeBuilder.framesetOk(false);
                    HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                    break;
                case 3:
                case 6:
                    z = true;
                    if (htmlTreeBuilder.currentElement().normalName().equals("option")) {
                        htmlTreeBuilder.processEndTag("option");
                    }
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    break;
                case 4:
                    z = true;
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    if (!startTagAsStartTag.isSelfClosing()) {
                        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
                        htmlTreeBuilder.markInsertionMode();
                        htmlTreeBuilder.framesetOk(false);
                        htmlTreeBuilder.transition(Text);
                    }
                    break;
                case 5:
                    z = true;
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.framesetOk(false);
                    HtmlTreeBuilderState htmlTreeBuilderStateState = htmlTreeBuilder.state();
                    if (htmlTreeBuilderStateState.equals(InTable) || htmlTreeBuilderStateState.equals(InCaption) || htmlTreeBuilderStateState.equals(InTableBody) || htmlTreeBuilderStateState.equals(InRow) || htmlTreeBuilderStateState.equals(InCell)) {
                        htmlTreeBuilder.transition(InSelectInTable);
                    } else {
                        htmlTreeBuilder.transition(InSelect);
                    }
                    break;
                case 7:
                    z = true;
                    if (htmlTreeBuilder.getActiveFormattingElement("a") != null) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.processEndTag("a");
                        Element fromStack = htmlTreeBuilder.getFromStack("a");
                        if (fromStack != null) {
                            htmlTreeBuilder.removeFromActiveFormattingElements(fromStack);
                            htmlTreeBuilder.removeFromStack(fromStack);
                        }
                    }
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(startTagAsStartTag));
                    break;
                case 8:
                case 9:
                    z = true;
                    htmlTreeBuilder.framesetOk(false);
                    ArrayList<Element> stack2 = htmlTreeBuilder.getStack();
                    int size = stack2.size() - 1;
                    while (true) {
                        if (size > 0) {
                            Element element2 = stack2.get(size);
                            if (StringUtil.inSorted(element2.normalName(), Constants.DdDt)) {
                                htmlTreeBuilder.processEndTag(element2.normalName());
                            } else if (!htmlTreeBuilder.isSpecial(element2) || StringUtil.inSorted(element2.normalName(), Constants.InBodyStartLiBreakers)) {
                                size--;
                            }
                        }
                    }
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    break;
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    z = true;
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    if (StringUtil.inSorted(htmlTreeBuilder.currentElement().normalName(), Constants.Headings)) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.pop();
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    break;
                case 16:
                    z = true;
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                    htmlTreeBuilder.framesetOk(false);
                    break;
                case 17:
                    z = true;
                    htmlTreeBuilder.framesetOk(false);
                    ArrayList<Element> stack3 = htmlTreeBuilder.getStack();
                    int size2 = stack3.size() - 1;
                    while (true) {
                        if (size2 > 0) {
                            Element element3 = stack3.get(size2);
                            if (element3.normalName().equals("li")) {
                                htmlTreeBuilder.processEndTag("li");
                            } else if (!htmlTreeBuilder.isSpecial(element3) || StringUtil.inSorted(element3.normalName(), Constants.InBodyStartLiBreakers)) {
                                size2--;
                            }
                        }
                    }
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    break;
                case 18:
                case 19:
                    z = true;
                    if (htmlTreeBuilder.inScope("ruby")) {
                        htmlTreeBuilder.generateImpliedEndTags();
                        if (!htmlTreeBuilder.currentElement().normalName().equals("ruby")) {
                            htmlTreeBuilder.error(this);
                            htmlTreeBuilder.popStackToBefore("ruby");
                        }
                        htmlTreeBuilder.insert(startTagAsStartTag);
                    }
                    break;
                case 20:
                case 32:
                    z = true;
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.reader.matchConsume(StringUtils.f4768LF);
                    htmlTreeBuilder.framesetOk(false);
                    break;
                case 21:
                    z = true;
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    break;
                case 22:
                    z = true;
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.framesetOk(false);
                    HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                    break;
                case 23:
                    z = true;
                    htmlTreeBuilder.error(this);
                    ArrayList<Element> stack4 = htmlTreeBuilder.getStack();
                    if (stack4.size() == 1 || (stack4.size() > 2 && !stack4.get(1).normalName().equals(SDKConstants.PARAM_A2U_BODY))) {
                        return false;
                    }
                    htmlTreeBuilder.framesetOk(false);
                    Element element4 = stack4.get(1);
                    if (startTagAsStartTag.hasAttributes()) {
                        for (Attribute attribute : startTagAsStartTag.attributes) {
                            if (!element4.hasAttr(attribute.getKey())) {
                                element4.attributes().put(attribute);
                            }
                        }
                    }
                    break;
                    break;
                case 24:
                    z = true;
                    if (htmlTreeBuilder.getFormElement() != null) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insertForm(startTagAsStartTag, true);
                    break;
                    break;
                case 25:
                    z = true;
                    htmlTreeBuilder.error(this);
                    Element element5 = htmlTreeBuilder.getStack().get(0);
                    if (startTagAsStartTag.hasAttributes()) {
                        for (Attribute attribute2 : startTagAsStartTag.attributes) {
                            if (!element5.hasAttr(attribute2.getKey())) {
                                element5.attributes().put(attribute2);
                            }
                        }
                    }
                    break;
                case 26:
                    z = true;
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    break;
                case 27:
                    z = true;
                    htmlTreeBuilder.reconstructFormattingElements();
                    if (htmlTreeBuilder.inScope("nobr")) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.processEndTag("nobr");
                        htmlTreeBuilder.reconstructFormattingElements();
                    }
                    htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(startTagAsStartTag));
                    break;
                case 28:
                    z = true;
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    break;
                case 29:
                    z = true;
                    if (htmlTreeBuilder.getFromStack(SvgConstants.Tags.SVG) == null) {
                        return htmlTreeBuilder.process(startTagAsStartTag.name("img"));
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    break;
                    break;
                case 30:
                    z = true;
                    htmlTreeBuilder.reconstructFormattingElements();
                    if (!htmlTreeBuilder.insertEmpty(startTagAsStartTag).attr("type").equalsIgnoreCase("hidden")) {
                        htmlTreeBuilder.framesetOk(false);
                    }
                    break;
                case 31:
                    z = true;
                    if (htmlTreeBuilder.getDocument().quirksMode() != Document.QuirksMode.quirks && htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.framesetOk(false);
                    htmlTreeBuilder.transition(InTable);
                    break;
                case 33:
                    z = true;
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.tokeniser.transition(TokeniserState.PLAINTEXT);
                    break;
                case 34:
                    z = true;
                    htmlTreeBuilder.error(this);
                    if (htmlTreeBuilder.getFormElement() != null) {
                        return false;
                    }
                    htmlTreeBuilder.processStartTag("form");
                    if (startTagAsStartTag.hasAttribute("action")) {
                        htmlTreeBuilder.getFormElement().attr("action", startTagAsStartTag.attributes.get("action"));
                    }
                    htmlTreeBuilder.processStartTag("hr");
                    htmlTreeBuilder.processStartTag("label");
                    htmlTreeBuilder.process(new Token.Character().data(startTagAsStartTag.hasAttribute("prompt") ? startTagAsStartTag.attributes.get("prompt") : "This is a searchable index. Enter search keywords: "));
                    Attributes attributes = new Attributes();
                    if (startTagAsStartTag.hasAttributes()) {
                        for (Attribute attribute3 : startTagAsStartTag.attributes) {
                            if (!StringUtil.inSorted(attribute3.getKey(), Constants.InBodyStartInputAttribs)) {
                                attributes.put(attribute3);
                            }
                        }
                    }
                    attributes.put("name", "isindex");
                    htmlTreeBuilder.processStartTag("input", attributes);
                    htmlTreeBuilder.processEndTag("label");
                    htmlTreeBuilder.processStartTag("hr");
                    htmlTreeBuilder.processEndTag("form");
                    break;
                    break;
                case 35:
                    z = true;
                    HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                    break;
                default:
                    if (StringUtil.inSorted(strNormalName, Constants.InBodyStartEmptyFormatters)) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                        htmlTreeBuilder.framesetOk(false);
                    } else {
                        if (StringUtil.inSorted(strNormalName, Constants.InBodyStartPClosers)) {
                            if (htmlTreeBuilder.inButtonScope("p")) {
                                htmlTreeBuilder.processEndTag("p");
                            }
                            htmlTreeBuilder.insert(startTagAsStartTag);
                        } else {
                            if (StringUtil.inSorted(strNormalName, Constants.InBodyStartToHead)) {
                                return htmlTreeBuilder.process(token, InHead);
                            }
                            if (StringUtil.inSorted(strNormalName, Constants.Formatters)) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(startTagAsStartTag));
                            } else if (StringUtil.inSorted(strNormalName, Constants.InBodyStartApplets)) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(startTagAsStartTag);
                                htmlTreeBuilder.insertMarkerToFormattingElements();
                                htmlTreeBuilder.framesetOk(false);
                            } else if (StringUtil.inSorted(strNormalName, Constants.InBodyStartMedia)) {
                                htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                            } else {
                                if (StringUtil.inSorted(strNormalName, Constants.InBodyStartDrop)) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                z = true;
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(startTagAsStartTag);
                            }
                        }
                        break;
                    }
                    return true;
            }
            return z;
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        private boolean inBodyEndTag(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            Token.EndTag endTagAsEndTag = token.asEndTag();
            String strNormalName = endTagAsEndTag.normalName();
            strNormalName.hashCode();
            byte b = -1;
            switch (strNormalName.hashCode()) {
                case 112:
                    if (strNormalName.equals("p")) {
                        b = 0;
                    }
                    break;
                case 3152:
                    if (strNormalName.equals("br")) {
                        b = 1;
                    }
                    break;
                case 3200:
                    if (strNormalName.equals("dd")) {
                        b = 2;
                    }
                    break;
                case 3216:
                    if (strNormalName.equals("dt")) {
                        b = 3;
                    }
                    break;
                case 3273:
                    if (strNormalName.equals("h1")) {
                        b = 4;
                    }
                    break;
                case 3274:
                    if (strNormalName.equals("h2")) {
                        b = 5;
                    }
                    break;
                case 3275:
                    if (strNormalName.equals("h3")) {
                        b = 6;
                    }
                    break;
                case 3276:
                    if (strNormalName.equals("h4")) {
                        b = 7;
                    }
                    break;
                case 3277:
                    if (strNormalName.equals("h5")) {
                        b = 8;
                    }
                    break;
                case 3278:
                    if (strNormalName.equals("h6")) {
                        b = 9;
                    }
                    break;
                case 3453:
                    if (strNormalName.equals("li")) {
                        b = 10;
                    }
                    break;
                case 3029410:
                    if (strNormalName.equals(SDKConstants.PARAM_A2U_BODY)) {
                        b = Ascii.f397VT;
                    }
                    break;
                case 3148996:
                    if (strNormalName.equals("form")) {
                        b = Ascii.f386FF;
                    }
                    break;
                case 3213227:
                    if (strNormalName.equals("html")) {
                        b = Ascii.f384CR;
                    }
                    break;
                case 3536714:
                    if (strNormalName.equals("span")) {
                        b = Ascii.f394SO;
                    }
                    break;
                case 1869063452:
                    if (strNormalName.equals("sarcasm")) {
                        b = Ascii.f393SI;
                    }
                    break;
            }
            switch (b) {
                case 0:
                    if (!htmlTreeBuilder.inButtonScope(strNormalName)) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.processStartTag(strNormalName);
                        return htmlTreeBuilder.process(endTagAsEndTag);
                    }
                    htmlTreeBuilder.generateImpliedEndTags(strNormalName);
                    if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strNormalName);
                    return true;
                case 1:
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.processStartTag("br");
                    return false;
                case 2:
                case 3:
                    if (!htmlTreeBuilder.inScope(strNormalName)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags(strNormalName);
                    if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strNormalName);
                    return true;
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    if (!htmlTreeBuilder.inScope(Constants.Headings)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags(strNormalName);
                    if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(Constants.Headings);
                    return true;
                case 10:
                    if (!htmlTreeBuilder.inListItemScope(strNormalName)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags(strNormalName);
                    if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strNormalName);
                    return true;
                case 11:
                    if (!htmlTreeBuilder.inScope(SDKConstants.PARAM_A2U_BODY)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.transition(AfterBody);
                    return true;
                case 12:
                    FormElement formElement = htmlTreeBuilder.getFormElement();
                    htmlTreeBuilder.setFormElement(null);
                    if (formElement == null || !htmlTreeBuilder.inScope(strNormalName)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags();
                    if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.removeFromStack(formElement);
                    return true;
                case 13:
                    if (htmlTreeBuilder.processEndTag(SDKConstants.PARAM_A2U_BODY)) {
                        return htmlTreeBuilder.process(endTagAsEndTag);
                    }
                    return true;
                case 14:
                case 15:
                    return anyOtherEndTag(token, htmlTreeBuilder);
                default:
                    if (StringUtil.inSorted(strNormalName, Constants.InBodyEndAdoptionFormatters)) {
                        return inBodyEndTagAdoption(token, htmlTreeBuilder);
                    }
                    if (StringUtil.inSorted(strNormalName, Constants.InBodyEndClosers)) {
                        if (!htmlTreeBuilder.inScope(strNormalName)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.generateImpliedEndTags();
                        if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                            htmlTreeBuilder.error(this);
                        }
                        htmlTreeBuilder.popStackToClose(strNormalName);
                    } else if (StringUtil.inSorted(strNormalName, Constants.InBodyStartApplets)) {
                        if (!htmlTreeBuilder.inScope("name")) {
                            if (!htmlTreeBuilder.inScope(strNormalName)) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.generateImpliedEndTags();
                            if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                                htmlTreeBuilder.error(this);
                            }
                            htmlTreeBuilder.popStackToClose(strNormalName);
                            htmlTreeBuilder.clearFormattingElementsToLastMarker();
                        }
                    } else {
                        return anyOtherEndTag(token, htmlTreeBuilder);
                    }
                    return true;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
        
            return true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean anyOtherEndTag(com.itextpdf.styledxmlparser.jsoup.parser.Token r6, com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilder r7) {
            /*
                r5 = this;
                com.itextpdf.styledxmlparser.jsoup.parser.Token$EndTag r6 = r6.asEndTag()
                java.lang.String r6 = r6.normalName
                java.util.ArrayList r0 = r7.getStack()
                int r1 = r0.size()
                r2 = 1
                int r1 = r1 - r2
            L10:
                if (r1 < 0) goto L48
                java.lang.Object r3 = r0.get(r1)
                com.itextpdf.styledxmlparser.jsoup.nodes.Element r3 = (com.itextpdf.styledxmlparser.jsoup.nodes.Element) r3
                java.lang.String r4 = r3.normalName()
                boolean r4 = r4.equals(r6)
                if (r4 == 0) goto L3a
                r7.generateImpliedEndTags(r6)
                com.itextpdf.styledxmlparser.jsoup.nodes.Element r0 = r7.currentElement()
                java.lang.String r0 = r0.normalName()
                boolean r0 = r6.equals(r0)
                if (r0 != 0) goto L36
                r7.error(r5)
            L36:
                r7.popStackToClose(r6)
                goto L48
            L3a:
                boolean r3 = r7.isSpecial(r3)
                if (r3 == 0) goto L45
                r7.error(r5)
                r6 = 0
                return r6
            L45:
                int r1 = r1 + (-1)
                goto L10
            L48:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState.InBodyBS.anyOtherEndTag(com.itextpdf.styledxmlparser.jsoup.parser.Token, com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilder):boolean");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v1, types: [int] */
        /* JADX WARN: Type inference failed for: r11v11 */
        /* JADX WARN: Type inference failed for: r11v12 */
        /* JADX WARN: Type inference failed for: r8v11 */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Type inference failed for: r8v6, types: [int] */
        private boolean inBodyEndTagAdoption(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            String strNormalName = token.asEndTag().normalName();
            ArrayList<Element> stack = htmlTreeBuilder.getStack();
            boolean z = false;
            int i = 0;
            while (i < 8) {
                Element activeFormattingElement = htmlTreeBuilder.getActiveFormattingElement(strNormalName);
                if (activeFormattingElement == null) {
                    return anyOtherEndTag(token, htmlTreeBuilder);
                }
                if (!htmlTreeBuilder.onStack(activeFormattingElement)) {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                    return true;
                }
                if (!htmlTreeBuilder.inScope(activeFormattingElement.normalName())) {
                    htmlTreeBuilder.error(this);
                    return z;
                }
                if (htmlTreeBuilder.currentElement() != activeFormattingElement) {
                    htmlTreeBuilder.error(this);
                }
                int size = stack.size();
                Element element = null;
                int iPositionOfElement = -1;
                boolean z2 = z;
                boolean z3 = z2;
                Element element2 = null;
                ?? r11 = z2;
                while (true) {
                    if (r11 >= size || r11 >= 64) {
                        break;
                    }
                    Element element3 = stack.get(r11);
                    if (element3 == activeFormattingElement) {
                        element2 = stack.get(r11 - 1);
                        iPositionOfElement = htmlTreeBuilder.positionOfElement(element3);
                        z3 = true;
                    } else if (z3 && htmlTreeBuilder.isSpecial(element3)) {
                        element = element3;
                        break;
                    }
                    r11++;
                    z3 = z3;
                }
                if (element == null) {
                    htmlTreeBuilder.popStackToClose(activeFormattingElement.normalName());
                    htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                    return true;
                }
                Element elementAboveOnStack = element;
                Element element4 = elementAboveOnStack;
                for (?? r8 = z; r8 < 3; r8++) {
                    if (htmlTreeBuilder.onStack(elementAboveOnStack)) {
                        elementAboveOnStack = htmlTreeBuilder.aboveOnStack(elementAboveOnStack);
                    }
                    if (!htmlTreeBuilder.isInActiveFormattingElements(elementAboveOnStack)) {
                        htmlTreeBuilder.removeFromStack(elementAboveOnStack);
                    } else {
                        if (elementAboveOnStack == activeFormattingElement) {
                            break;
                        }
                        Element element5 = new Element(Tag.valueOf(elementAboveOnStack.nodeName(), ParseSettings.preserveCase), htmlTreeBuilder.getBaseUri());
                        htmlTreeBuilder.replaceActiveFormattingElement(elementAboveOnStack, element5);
                        htmlTreeBuilder.replaceOnStack(elementAboveOnStack, element5);
                        if (element4 == element) {
                            iPositionOfElement = htmlTreeBuilder.positionOfElement(element5) + 1;
                        }
                        if (element4.parent() != null) {
                            element4.remove();
                        }
                        element5.appendChild(element4);
                        elementAboveOnStack = element5;
                        element4 = elementAboveOnStack;
                    }
                }
                if (element2 != null) {
                    if (StringUtil.inSorted(element2.normalName(), Constants.InBodyEndTableFosters)) {
                        if (element4.parent() != null) {
                            element4.remove();
                        }
                        htmlTreeBuilder.insertInFosterParent(element4);
                    } else {
                        if (element4.parent() != null) {
                            element4.remove();
                        }
                        element2.appendChild(element4);
                    }
                }
                Element element6 = new Element(activeFormattingElement.tag(), htmlTreeBuilder.getBaseUri());
                element6.attributes().addAll(activeFormattingElement.attributes());
                for (Node node : (Node[]) element.childNodes().toArray(new Node[0])) {
                    element6.appendChild(node);
                }
                element.appendChild(element6);
                htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                htmlTreeBuilder.pushWithBookmark(element6, iPositionOfElement);
                htmlTreeBuilder.removeFromStack(activeFormattingElement);
                htmlTreeBuilder.insertOnStackAfter(element, element6);
                i++;
                z = false;
            }
            return true;
        }
    }

    private static final class TextBS extends HtmlTreeBuilderState {
        private TextBS() {
        }

        /* synthetic */ TextBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "Text";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isCharacter()) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isEOF()) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
                return htmlTreeBuilder.process(token);
            }
            if (!token.isEndTag()) {
                return true;
            }
            htmlTreeBuilder.pop();
            htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
            return true;
        }
    }

    private static final class InTableBS extends HtmlTreeBuilderState {
        private InTableBS() {
        }

        /* synthetic */ InTableBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "InTable";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isCharacter()) {
                htmlTreeBuilder.newPendingTableCharacters();
                htmlTreeBuilder.markInsertionMode();
                htmlTreeBuilder.transition(InTableText);
                return htmlTreeBuilder.process(token);
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isStartTag()) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strNormalName = startTagAsStartTag.normalName();
                if (strNormalName.equals("caption")) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.insertMarkerToFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(InCaption);
                } else if (strNormalName.equals("colgroup")) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(InColumnGroup);
                } else {
                    if (strNormalName.equals("col")) {
                        htmlTreeBuilder.processStartTag("colgroup");
                        return htmlTreeBuilder.process(token);
                    }
                    if (StringUtil.inSorted(strNormalName, Constants.InTableToBody)) {
                        htmlTreeBuilder.clearStackToTableContext();
                        htmlTreeBuilder.insert(startTagAsStartTag);
                        htmlTreeBuilder.transition(InTableBody);
                    } else {
                        if (StringUtil.inSorted(strNormalName, Constants.InTableAddBody)) {
                            htmlTreeBuilder.processStartTag("tbody");
                            return htmlTreeBuilder.process(token);
                        }
                        if (strNormalName.equals("table")) {
                            htmlTreeBuilder.error(this);
                            if (htmlTreeBuilder.processEndTag("table")) {
                                return htmlTreeBuilder.process(token);
                            }
                        } else {
                            if (StringUtil.inSorted(strNormalName, Constants.InTableToHead)) {
                                return htmlTreeBuilder.process(token, InHead);
                            }
                            if (strNormalName.equals("input")) {
                                if (!startTagAsStartTag.hasAttributes() || !startTagAsStartTag.attributes.get("type").equalsIgnoreCase("hidden")) {
                                    return anythingElse(token, htmlTreeBuilder);
                                }
                                htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                            } else if (strNormalName.equals("form")) {
                                htmlTreeBuilder.error(this);
                                if (htmlTreeBuilder.getFormElement() != null) {
                                    return false;
                                }
                                htmlTreeBuilder.insertForm(startTagAsStartTag, false);
                            } else {
                                return anythingElse(token, htmlTreeBuilder);
                            }
                        }
                    }
                }
                return true;
            }
            if (token.isEndTag()) {
                String strNormalName2 = token.asEndTag().normalName();
                if (strNormalName2.equals("table")) {
                    if (!htmlTreeBuilder.inTableScope(strNormalName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.popStackToClose("table");
                    htmlTreeBuilder.resetInsertionMode();
                    return true;
                }
                if (StringUtil.inSorted(strNormalName2, Constants.InTableEndErr)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            if (token.isEOF()) {
                if (htmlTreeBuilder.currentElement().normalName().equals("html")) {
                    htmlTreeBuilder.error(this);
                }
                return true;
            }
            return anythingElse(token, htmlTreeBuilder);
        }

        boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            if (StringUtil.inSorted(htmlTreeBuilder.currentElement().normalName(), Constants.InTableFoster)) {
                htmlTreeBuilder.setFosterInserts(true);
                boolean zProcess = htmlTreeBuilder.process(token, InBody);
                htmlTreeBuilder.setFosterInserts(false);
                return zProcess;
            }
            return htmlTreeBuilder.process(token, InBody);
        }
    }

    private static final class InTableTextBS extends HtmlTreeBuilderState {
        private InTableTextBS() {
        }

        /* synthetic */ InTableTextBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "InTableText";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.type == Token.TokenType.Character) {
                Token.Character characterAsCharacter = token.asCharacter();
                if (characterAsCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.getPendingTableCharacters().add(characterAsCharacter.getData());
                return true;
            }
            if (htmlTreeBuilder.getPendingTableCharacters().size() > 0) {
                for (String str : htmlTreeBuilder.getPendingTableCharacters()) {
                    if (!HtmlTreeBuilderState.isWhitespace(str)) {
                        htmlTreeBuilder.error(this);
                        if (StringUtil.inSorted(htmlTreeBuilder.currentElement().normalName(), Constants.InTableFoster)) {
                            htmlTreeBuilder.setFosterInserts(true);
                            htmlTreeBuilder.process(new Token.Character().data(str), InBody);
                            htmlTreeBuilder.setFosterInserts(false);
                        } else {
                            htmlTreeBuilder.process(new Token.Character().data(str), InBody);
                        }
                    } else {
                        htmlTreeBuilder.insert(new Token.Character().data(str));
                    }
                }
                htmlTreeBuilder.newPendingTableCharacters();
            }
            htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
            return htmlTreeBuilder.process(token);
        }
    }

    private static final class InCaptionBS extends HtmlTreeBuilderState {
        private InCaptionBS() {
        }

        /* synthetic */ InCaptionBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "InCaption";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isEndTag() && token.asEndTag().normalName().equals("caption")) {
                if (!htmlTreeBuilder.inTableScope(token.asEndTag().normalName())) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.generateImpliedEndTags();
                if (!htmlTreeBuilder.currentElement().normalName().equals("caption")) {
                    htmlTreeBuilder.error(this);
                }
                htmlTreeBuilder.popStackToClose("caption");
                htmlTreeBuilder.clearFormattingElementsToLastMarker();
                htmlTreeBuilder.transition(InTable);
                return true;
            }
            if ((token.isStartTag() && StringUtil.inSorted(token.asStartTag().normalName(), Constants.InCellCol)) || (token.isEndTag() && token.asEndTag().normalName().equals("table"))) {
                htmlTreeBuilder.error(this);
                if (htmlTreeBuilder.processEndTag("caption")) {
                    return htmlTreeBuilder.process(token);
                }
                return true;
            }
            if (token.isEndTag() && StringUtil.inSorted(token.asEndTag().normalName(), Constants.InCaptionIgnore)) {
                htmlTreeBuilder.error(this);
                return false;
            }
            return htmlTreeBuilder.process(token, InBody);
        }
    }

    private static final class InColumnGroupBS extends HtmlTreeBuilderState {
        private InColumnGroupBS() {
        }

        /* synthetic */ InColumnGroupBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "InColumnGroup";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            int i = C35351.f3314xd695eb0c[token.type.ordinal()];
            if (i == 1) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (i == 2) {
                htmlTreeBuilder.error(this);
            } else if (i == 3) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strNormalName = startTagAsStartTag.normalName();
                strNormalName.hashCode();
                if (!strNormalName.equals("col")) {
                    if (strNormalName.equals("html")) {
                        return htmlTreeBuilder.process(token, InBody);
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
                htmlTreeBuilder.insertEmpty(startTagAsStartTag);
            } else {
                if (i != 4) {
                    if (i == 6) {
                        if (htmlTreeBuilder.currentElement().normalName().equals("html")) {
                            return true;
                        }
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
                if (token.asEndTag().normalName.equals("colgroup")) {
                    if (htmlTreeBuilder.currentElement().normalName().equals("html")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(InTable);
                } else {
                    return anythingElse(token, htmlTreeBuilder);
                }
            }
            return true;
        }

        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.processEndTag("colgroup")) {
                return treeBuilder.process(token);
            }
            return true;
        }
    }

    private static final class InTableBodyBS extends HtmlTreeBuilderState {
        private InTableBodyBS() {
        }

        /* synthetic */ InTableBodyBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "InTableBody";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            int i = C35351.f3314xd695eb0c[token.type.ordinal()];
            if (i != 3) {
                if (i == 4) {
                    String strNormalName = token.asEndTag().normalName();
                    if (StringUtil.inSorted(strNormalName, Constants.InTableEndIgnore)) {
                        if (!htmlTreeBuilder.inTableScope(strNormalName)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.clearStackToTableBodyContext();
                        htmlTreeBuilder.pop();
                        htmlTreeBuilder.transition(InTable);
                        return true;
                    }
                    if (strNormalName.equals("table")) {
                        return exitTableBody(token, htmlTreeBuilder);
                    }
                    if (StringUtil.inSorted(strNormalName, Constants.InTableBodyEndIgnore)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            Token.StartTag startTagAsStartTag = token.asStartTag();
            String strNormalName2 = startTagAsStartTag.normalName();
            if (strNormalName2.equals(SDKConstants.PARAM_UPDATE_TEMPLATE)) {
                htmlTreeBuilder.insert(startTagAsStartTag);
                return true;
            }
            if (strNormalName2.equals("tr")) {
                htmlTreeBuilder.clearStackToTableBodyContext();
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.transition(InRow);
                return true;
            }
            if (StringUtil.inSorted(strNormalName2, Constants.InCellNames)) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.processStartTag("tr");
                return htmlTreeBuilder.process(startTagAsStartTag);
            }
            if (StringUtil.inSorted(strNormalName2, Constants.InTableBodyExit)) {
                return exitTableBody(token, htmlTreeBuilder);
            }
            return anythingElse(token, htmlTreeBuilder);
        }

        private boolean exitTableBody(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (!htmlTreeBuilder.inTableScope("tbody") && !htmlTreeBuilder.inTableScope("thead") && !htmlTreeBuilder.inScope("tfoot")) {
                htmlTreeBuilder.error(this);
                return false;
            }
            htmlTreeBuilder.clearStackToTableBodyContext();
            htmlTreeBuilder.processEndTag(htmlTreeBuilder.currentElement().normalName());
            return htmlTreeBuilder.process(token);
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, InTable);
        }
    }

    private static final class InRowBS extends HtmlTreeBuilderState {
        private InRowBS() {
        }

        /* synthetic */ InRowBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "InRow";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isStartTag()) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strNormalName = startTagAsStartTag.normalName();
                if (strNormalName.equals(SDKConstants.PARAM_UPDATE_TEMPLATE)) {
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    return true;
                }
                if (StringUtil.inSorted(strNormalName, Constants.InCellNames)) {
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(InCell);
                    htmlTreeBuilder.insertMarkerToFormattingElements();
                    return true;
                }
                if (StringUtil.inSorted(strNormalName, Constants.InRowMissing)) {
                    return handleMissingTr(token, htmlTreeBuilder);
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            if (token.isEndTag()) {
                String strNormalName2 = token.asEndTag().normalName();
                if (strNormalName2.equals("tr")) {
                    if (!htmlTreeBuilder.inTableScope(strNormalName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(InTableBody);
                    return true;
                }
                if (strNormalName2.equals("table")) {
                    return handleMissingTr(token, htmlTreeBuilder);
                }
                if (StringUtil.inSorted(strNormalName2, Constants.InTableToBody)) {
                    if (!htmlTreeBuilder.inTableScope(strNormalName2) || !htmlTreeBuilder.inTableScope("tr")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(InTableBody);
                    return true;
                }
                if (StringUtil.inSorted(strNormalName2, Constants.InRowIgnore)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            return anythingElse(token, htmlTreeBuilder);
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, InTable);
        }

        private boolean handleMissingTr(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.processEndTag("tr")) {
                return treeBuilder.process(token);
            }
            return false;
        }
    }

    private static final class InCellBS extends HtmlTreeBuilderState {
        private InCellBS() {
        }

        /* synthetic */ InCellBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "InCell";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isEndTag()) {
                String strNormalName = token.asEndTag().normalName();
                if (StringUtil.inSorted(strNormalName, Constants.InCellNames)) {
                    if (!htmlTreeBuilder.inTableScope(strNormalName)) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.transition(InRow);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags();
                    if (!htmlTreeBuilder.currentElement().normalName().equals(strNormalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strNormalName);
                    htmlTreeBuilder.clearFormattingElementsToLastMarker();
                    htmlTreeBuilder.transition(InRow);
                    return true;
                }
                if (StringUtil.inSorted(strNormalName, Constants.InCellBody)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (StringUtil.inSorted(strNormalName, Constants.InCellTable)) {
                    if (!htmlTreeBuilder.inTableScope(strNormalName)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    closeCell(htmlTreeBuilder);
                    return htmlTreeBuilder.process(token);
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            if (token.isStartTag() && StringUtil.inSorted(token.asStartTag().normalName(), Constants.InCellCol)) {
                if (!htmlTreeBuilder.inTableScope("td") && !htmlTreeBuilder.inTableScope("th")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                closeCell(htmlTreeBuilder);
                return htmlTreeBuilder.process(token);
            }
            return anythingElse(token, htmlTreeBuilder);
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, InBody);
        }

        private void closeCell(HtmlTreeBuilder htmlTreeBuilder) {
            if (htmlTreeBuilder.inTableScope("td")) {
                htmlTreeBuilder.processEndTag("td");
            } else {
                htmlTreeBuilder.processEndTag("th");
            }
        }
    }

    private static final class InSelectBS extends HtmlTreeBuilderState {
        private InSelectBS() {
        }

        /* synthetic */ InSelectBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "InSelect";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            String strNormalName;
            switch (C35351.f3314xd695eb0c[token.type.ordinal()]) {
                case 1:
                    htmlTreeBuilder.insert(token.asComment());
                    return true;
                case 2:
                    htmlTreeBuilder.error(this);
                    return false;
                case 3:
                    Token.StartTag startTagAsStartTag = token.asStartTag();
                    String strNormalName2 = startTagAsStartTag.normalName();
                    if (strNormalName2.equals("html")) {
                        return htmlTreeBuilder.process(startTagAsStartTag, InBody);
                    }
                    if (strNormalName2.equals("option")) {
                        if (htmlTreeBuilder.currentElement().normalName().equals("option")) {
                            htmlTreeBuilder.processEndTag("option");
                        }
                        htmlTreeBuilder.insert(startTagAsStartTag);
                    } else if (strNormalName2.equals("optgroup")) {
                        if (htmlTreeBuilder.currentElement().normalName().equals("option")) {
                            htmlTreeBuilder.processEndTag("option");
                        }
                        if (htmlTreeBuilder.currentElement().normalName().equals("optgroup")) {
                            htmlTreeBuilder.processEndTag("optgroup");
                        }
                        htmlTreeBuilder.insert(startTagAsStartTag);
                    } else {
                        if (strNormalName2.equals("select")) {
                            htmlTreeBuilder.error(this);
                            return htmlTreeBuilder.processEndTag("select");
                        }
                        if (StringUtil.inSorted(strNormalName2, Constants.InSelectEnd)) {
                            htmlTreeBuilder.error(this);
                            if (!htmlTreeBuilder.inSelectScope("select")) {
                                return false;
                            }
                            htmlTreeBuilder.processEndTag("select");
                            return htmlTreeBuilder.process(startTagAsStartTag);
                        }
                        if (strNormalName2.equals(SvgConstants.Tags.SCRIPT)) {
                            return htmlTreeBuilder.process(token, InHead);
                        }
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    return true;
                case 4:
                    strNormalName = token.asEndTag().normalName();
                    strNormalName.hashCode();
                    switch (strNormalName) {
                        case "option":
                            if (htmlTreeBuilder.currentElement().normalName().equals("option")) {
                                htmlTreeBuilder.pop();
                            } else {
                                htmlTreeBuilder.error(this);
                            }
                            return true;
                        case "select":
                            if (!htmlTreeBuilder.inSelectScope(strNormalName)) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.popStackToClose(strNormalName);
                            htmlTreeBuilder.resetInsertionMode();
                            return true;
                        case "optgroup":
                            if (htmlTreeBuilder.currentElement().normalName().equals("option") && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()) != null && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()).normalName().equals("optgroup")) {
                                htmlTreeBuilder.processEndTag("option");
                            }
                            if (htmlTreeBuilder.currentElement().normalName().equals("optgroup")) {
                                htmlTreeBuilder.pop();
                            } else {
                                htmlTreeBuilder.error(this);
                            }
                            return true;
                        default:
                            return anythingElse(token, htmlTreeBuilder);
                    }
                case 5:
                    Token.Character characterAsCharacter = token.asCharacter();
                    if (characterAsCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.insert(characterAsCharacter);
                    return true;
                case 6:
                    if (!htmlTreeBuilder.currentElement().normalName().equals("html")) {
                        htmlTreeBuilder.error(this);
                    }
                    return true;
                default:
                    return anythingElse(token, htmlTreeBuilder);
            }
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            return false;
        }
    }

    private static final class InSelectInTableBS extends HtmlTreeBuilderState {
        private InSelectInTableBS() {
        }

        /* synthetic */ InSelectInTableBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "InSelectInTable";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isStartTag() && StringUtil.inSorted(token.asStartTag().normalName(), Constants.InSelecTableEnd)) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.processEndTag("select");
                return htmlTreeBuilder.process(token);
            }
            if (token.isEndTag() && StringUtil.inSorted(token.asEndTag().normalName(), Constants.InSelecTableEnd)) {
                htmlTreeBuilder.error(this);
                if (!htmlTreeBuilder.inTableScope(token.asEndTag().normalName())) {
                    return false;
                }
                htmlTreeBuilder.processEndTag("select");
                return htmlTreeBuilder.process(token);
            }
            return htmlTreeBuilder.process(token, InSelect);
        }
    }

    private static final class AfterBodyBS extends HtmlTreeBuilderState {
        private AfterBodyBS() {
        }

        /* synthetic */ AfterBodyBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "AfterBody";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                return htmlTreeBuilder.process(token, InBody);
            }
            if (token.isEndTag() && token.asEndTag().normalName().equals("html")) {
                if (htmlTreeBuilder.isFragmentParsing()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.transition(AfterAfterBody);
                return true;
            }
            if (token.isEOF()) {
                return true;
            }
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.transition(InBody);
            return htmlTreeBuilder.process(token);
        }
    }

    private static final class InFrameSetBS extends HtmlTreeBuilderState {
        private InFrameSetBS() {
        }

        /* synthetic */ InFrameSetBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "InFrameset";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            Token.StartTag startTagAsStartTag;
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
            } else if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (token.isStartTag()) {
                    startTagAsStartTag = token.asStartTag();
                    String strNormalName = startTagAsStartTag.normalName();
                    strNormalName.hashCode();
                    switch (strNormalName) {
                        case "frameset":
                            htmlTreeBuilder.insert(startTagAsStartTag);
                            break;
                        case "html":
                            return htmlTreeBuilder.process(startTagAsStartTag, InBody);
                        case "frame":
                            htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                            break;
                        case "noframes":
                            return htmlTreeBuilder.process(startTagAsStartTag, InHead);
                        default:
                            htmlTreeBuilder.error(this);
                            return false;
                    }
                } else if (token.isEndTag() && token.asEndTag().normalName().equals("frameset")) {
                    if (htmlTreeBuilder.currentElement().normalName().equals("html")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.pop();
                    if (!htmlTreeBuilder.isFragmentParsing() && !htmlTreeBuilder.currentElement().normalName().equals("frameset")) {
                        htmlTreeBuilder.transition(AfterFrameset);
                    }
                } else if (token.isEOF()) {
                    if (!htmlTreeBuilder.currentElement().normalName().equals("html")) {
                        htmlTreeBuilder.error(this);
                    }
                } else {
                    htmlTreeBuilder.error(this);
                    return false;
                }
            }
            return true;
        }
    }

    private static final class AfterFrameSetBS extends HtmlTreeBuilderState {
        private AfterFrameSetBS() {
        }

        /* synthetic */ AfterFrameSetBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "AfterFrameset";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                return htmlTreeBuilder.process(token, InBody);
            }
            if (token.isEndTag() && token.asEndTag().normalName().equals("html")) {
                htmlTreeBuilder.transition(AfterAfterFrameset);
                return true;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("noframes")) {
                return htmlTreeBuilder.process(token, InHead);
            }
            if (token.isEOF()) {
                return true;
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    }

    private static final class AfterAfterBodyBS extends HtmlTreeBuilderState {
        private AfterAfterBodyBS() {
        }

        /* synthetic */ AfterAfterBodyBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "AfterAfterBody";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (!token.isDoctype() && (!token.isStartTag() || !token.asStartTag().normalName().equals("html"))) {
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    Element elementPopStackToClose = htmlTreeBuilder.popStackToClose("html");
                    htmlTreeBuilder.insert(token.asCharacter());
                    htmlTreeBuilder.stack.add(elementPopStackToClose);
                    htmlTreeBuilder.stack.add(elementPopStackToClose.selectFirst(SDKConstants.PARAM_A2U_BODY));
                    return true;
                }
                if (token.isEOF()) {
                    return true;
                }
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.transition(InBody);
                return htmlTreeBuilder.process(token);
            }
            return htmlTreeBuilder.process(token, InBody);
        }
    }

    private static final class AfterAfterFrameSetBS extends HtmlTreeBuilderState {
        private AfterAfterFrameSetBS() {
        }

        /* synthetic */ AfterAfterFrameSetBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "AfterAfterFrameset";
        }

        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype() || HtmlTreeBuilderState.isWhitespace(token) || (token.isStartTag() && token.asStartTag().normalName().equals("html"))) {
                return htmlTreeBuilder.process(token, InBody);
            }
            if (token.isEOF()) {
                return true;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("noframes")) {
                return htmlTreeBuilder.process(token, InHead);
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    }

    private static final class ForeignContentBS extends HtmlTreeBuilderState {
        @Override // com.itextpdf.styledxmlparser.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return true;
        }

        private ForeignContentBS() {
        }

        /* synthetic */ ForeignContentBS(C35351 c35351) {
            this();
        }

        public String toString() {
            return "ForeignContent";
        }
    }
}
