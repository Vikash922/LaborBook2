package com.itextpdf.svg.css.impl;

import com.itextpdf.p017io.util.DecimalFormatUtil;
import com.itextpdf.p017io.util.ResourceUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.CssFontFaceRule;
import com.itextpdf.styledxmlparser.css.CssStatement;
import com.itextpdf.styledxmlparser.css.CssStyleSheet;
import com.itextpdf.styledxmlparser.css.ICssResolver;
import com.itextpdf.styledxmlparser.css.media.CssMediaRule;
import com.itextpdf.styledxmlparser.css.media.MediaDeviceDescription;
import com.itextpdf.styledxmlparser.css.parse.CssRuleSetParser;
import com.itextpdf.styledxmlparser.css.parse.CssStyleSheetParser;
import com.itextpdf.styledxmlparser.css.resolve.AbstractCssContext;
import com.itextpdf.styledxmlparser.css.resolve.CssDefaults;
import com.itextpdf.styledxmlparser.css.resolve.CssInheritance;
import com.itextpdf.styledxmlparser.css.resolve.IStyleInheritance;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import com.itextpdf.styledxmlparser.node.IAttribute;
import com.itextpdf.styledxmlparser.node.IDataNode;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;
import com.itextpdf.styledxmlparser.node.ITextNode;
import com.itextpdf.styledxmlparser.resolver.resource.ResourceResolver;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.css.SvgCssContext;
import com.itextpdf.svg.exceptions.SvgProcessingException;
import com.itextpdf.svg.logs.SvgLogMessageConstant;
import com.itextpdf.svg.processors.impl.SvgProcessorContext;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class SvgStyleResolver implements ICssResolver {
    private static final String DEFAULT_CSS_PATH = "com/itextpdf/svg/default.css";
    private CssStyleSheet css;
    private MediaDeviceDescription deviceDescription;
    private final ResourceResolver resourceResolver;
    public static final Set<IStyleInheritance> INHERITANCE_RULES = Collections.unmodifiableSet(new HashSet(Arrays.asList(new CssInheritance(), new SvgAttributeInheritance())));
    private static final String[] ELEMENTS_INHERITING_PARENT_STYLES = {SvgConstants.Tags.MARKER, SvgConstants.Tags.LINEAR_GRADIENT, SvgConstants.Tags.LINEAR_GRADIENT.toLowerCase(), "pattern"};
    private static final float DEFAULT_FONT_SIZE = CssDimensionParsingUtils.parseAbsoluteFontSize(CssDefaults.getDefaultValue("font-size"));
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) SvgStyleResolver.class);
    private boolean isFirstSvgElement = true;
    private final List<CssFontFaceRule> fonts = new ArrayList();

    public SvgStyleResolver(InputStream inputStream, SvgProcessorContext svgProcessorContext) throws IOException {
        this.css = CssStyleSheetParser.parse(inputStream);
        this.resourceResolver = svgProcessorContext.getResourceResolver();
    }

    public SvgStyleResolver(SvgProcessorContext svgProcessorContext) {
        try {
            InputStream resourceStream = ResourceUtil.getResourceStream(DEFAULT_CSS_PATH);
            try {
                this.css = CssStyleSheetParser.parse(resourceStream);
                if (resourceStream != null) {
                    resourceStream.close();
                }
            } finally {
            }
        } catch (IOException e) {
            LOGGER.warn(SvgLogMessageConstant.ERROR_INITIALIZING_DEFAULT_CSS, (Throwable) e);
            this.css = new CssStyleSheet();
        }
        this.resourceResolver = svgProcessorContext.getResourceResolver();
    }

    public SvgStyleResolver(INode iNode, SvgProcessorContext svgProcessorContext) {
        this.deviceDescription = svgProcessorContext.getDeviceDescription();
        ResourceResolver resourceResolver = svgProcessorContext.getResourceResolver();
        this.resourceResolver = resourceResolver;
        collectCssDeclarations(iNode, resourceResolver);
        collectFonts();
    }

    public static void resolveFontSizeStyle(Map<String, String> map, SvgCssContext svgCssContext, String str) {
        float absoluteLength;
        String number;
        String str2 = map.get("font-size");
        if (CssTypesValidationUtils.isNegativeValue(str2)) {
            str2 = str;
        }
        if (CssTypesValidationUtils.isRelativeValue(str2) || CommonCssConstants.LARGER.equals(str2) || CommonCssConstants.SMALLER.equals(str2)) {
            if (CssTypesValidationUtils.isRemValue(str2)) {
                absoluteLength = svgCssContext == null ? DEFAULT_FONT_SIZE : svgCssContext.getRootFontSize();
            } else if (str == null) {
                absoluteLength = CssDimensionParsingUtils.parseAbsoluteFontSize(CssDefaults.getDefaultValue("font-size"));
            } else {
                absoluteLength = CssDimensionParsingUtils.parseAbsoluteLength(str);
            }
            number = DecimalFormatUtil.formatNumber(CssDimensionParsingUtils.parseRelativeFontSize(str2, absoluteLength), "0.####");
        } else if (str2 == null) {
            number = DecimalFormatUtil.formatNumber(DEFAULT_FONT_SIZE, "0.####");
        } else {
            number = DecimalFormatUtil.formatNumber(CssDimensionParsingUtils.parseAbsoluteFontSize(str2), "0.####");
        }
        map.put("font-size", number + CommonCssConstants.f3303PT);
    }

    public static boolean isElementNested(IElementNode iElementNode, String str) {
        IElementNode iElementNode2;
        if (!(iElementNode.parentNode() instanceof IElementNode) || (iElementNode2 = (IElementNode) iElementNode.parentNode()) == null) {
            return false;
        }
        if (iElementNode2.name() == null || !iElementNode2.name().equals(str)) {
            return isElementNested(iElementNode2, str);
        }
        return true;
    }

    @Override // com.itextpdf.styledxmlparser.css.ICssResolver
    public Map<String, String> resolveStyles(INode iNode, AbstractCssContext abstractCssContext) {
        if (abstractCssContext instanceof SvgCssContext) {
            return resolveStyles(iNode, (SvgCssContext) abstractCssContext);
        }
        throw new SvgProcessingException(SvgLogMessageConstant.CUSTOM_ABSTRACT_CSS_CONTEXT_NOT_SUPPORTED);
    }

    public Map<String, String> resolveNativeStyles(INode iNode, AbstractCssContext abstractCssContext) {
        HashMap map = new HashMap();
        for (CssDeclaration cssDeclaration : this.css.getCssDeclarations(iNode, MediaDeviceDescription.createDefault())) {
            map.put(cssDeclaration.getProperty(), cssDeclaration.getExpression());
        }
        if (iNode instanceof IElementNode) {
            Iterator<IAttribute> it = ((IElementNode) iNode).getAttributes().iterator();
            while (it.hasNext()) {
                processAttribute(it.next(), map);
            }
        }
        return map;
    }

    private static boolean onlyNativeStylesShouldBeResolved(IElementNode iElementNode) {
        for (String str : ELEMENTS_INHERITING_PARENT_STYLES) {
            if (str.equals(iElementNode.name()) || isElementNested(iElementNode, str)) {
                return false;
            }
        }
        return isElementNested(iElementNode, SvgConstants.Tags.DEFS);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.Map<java.lang.String, java.lang.String> resolveStyles(com.itextpdf.styledxmlparser.node.INode r9, com.itextpdf.svg.css.SvgCssContext r10) {
        /*
            r8 = this;
            java.util.Map r0 = r8.resolveNativeStyles(r9, r10)
            boolean r1 = r9 instanceof com.itextpdf.styledxmlparser.node.IElementNode
            if (r1 == 0) goto L12
            r2 = r9
            com.itextpdf.styledxmlparser.node.IElementNode r2 = (com.itextpdf.styledxmlparser.node.IElementNode) r2
            boolean r2 = onlyNativeStylesShouldBeResolved(r2)
            if (r2 == 0) goto L12
            return r0
        L12:
            com.itextpdf.styledxmlparser.node.INode r2 = r9.parentNode()
            boolean r2 = r2 instanceof com.itextpdf.styledxmlparser.node.IStylesContainer
            java.lang.String r3 = "font-size"
            if (r2 == 0) goto L62
            com.itextpdf.styledxmlparser.node.INode r2 = r9.parentNode()
            com.itextpdf.styledxmlparser.node.IStylesContainer r2 = (com.itextpdf.styledxmlparser.node.IStylesContainer) r2
            java.util.Map r4 = r2.getStyles()
            if (r4 != 0) goto L33
            boolean r2 = r2 instanceof com.itextpdf.styledxmlparser.node.IElementNode
            if (r2 != 0) goto L33
            org.slf4j.Logger r2 = com.itextpdf.svg.css.impl.SvgStyleResolver.LOGGER
            java.lang.String r5 = "Element parent styles are not resolved. Styles for current element might be incorrect."
            r2.error(r5)
        L33:
            if (r4 == 0) goto L62
            java.lang.Object r2 = r4.get(r3)
            java.lang.String r2 = (java.lang.String) r2
            java.util.Set r4 = r4.entrySet()
            java.util.Iterator r4 = r4.iterator()
        L43:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L63
            java.lang.Object r5 = r4.next()
            java.util.Map$Entry r5 = (java.util.Map.Entry) r5
            java.lang.Object r6 = r5.getKey()
            java.lang.String r6 = (java.lang.String) r6
            java.lang.Object r5 = r5.getValue()
            java.lang.String r5 = (java.lang.String) r5
            java.util.Set<com.itextpdf.styledxmlparser.css.resolve.IStyleInheritance> r7 = com.itextpdf.svg.css.impl.SvgStyleResolver.INHERITANCE_RULES
            java.util.Map r0 = com.itextpdf.styledxmlparser.util.StyleUtil.mergeParentStyleDeclaration(r0, r6, r5, r2, r7)
            goto L43
        L62:
            r2 = 0
        L63:
            resolveFontSizeStyle(r0, r10, r2)
            r2 = 0
            if (r1 == 0) goto L79
            com.itextpdf.styledxmlparser.node.IElementNode r9 = (com.itextpdf.styledxmlparser.node.IElementNode) r9
            java.lang.String r9 = r9.name()
            java.lang.String r1 = "svg"
            boolean r9 = r1.equals(r9)
            if (r9 == 0) goto L79
            r9 = 1
            goto L7a
        L79:
            r9 = r2
        L7a:
            boolean r1 = r8.isFirstSvgElement
            if (r1 == 0) goto L93
            if (r9 == 0) goto L93
            r8.isFirstSvgElement = r2
            java.lang.Object r9 = r0.get(r3)
            java.lang.String r9 = (java.lang.String) r9
            if (r9 == 0) goto L93
            java.lang.Object r9 = r0.get(r3)
            java.lang.String r9 = (java.lang.String) r9
            r10.setRootFontSize(r9)
        L93:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.svg.css.impl.SvgStyleResolver.resolveStyles(com.itextpdf.styledxmlparser.node.INode, com.itextpdf.svg.css.SvgCssContext):java.util.Map");
    }

    private void processXLink(IAttribute iAttribute, Map<String, String> map) {
        String value = iAttribute.getValue();
        if (!isStartedWithHash(value) && !ResourceResolver.isDataSrc(value)) {
            try {
                value = this.resourceResolver.resolveAgainstBaseUri(iAttribute.getValue()).toExternalForm();
            } catch (MalformedURLException e) {
                LOGGER.error(StyledXmlParserLogMessageConstant.UNABLE_TO_RESOLVE_IMAGE_URL, (Throwable) e);
            }
        }
        map.put(iAttribute.getKey(), value);
    }

    private boolean isStartedWithHash(String str) {
        return str != null && str.startsWith("#");
    }

    private void collectCssDeclarations(INode iNode, ResourceResolver resourceResolver) {
        String strWholeText;
        this.css = new CssStyleSheet();
        LinkedList linkedList = new LinkedList();
        if (iNode != null) {
            linkedList.add(iNode);
        }
        while (!linkedList.isEmpty()) {
            INode iNode2 = (INode) linkedList.pop();
            if (iNode2 instanceof IElementNode) {
                IElementNode iElementNode = (IElementNode) iNode2;
                if ("style".equals(iElementNode.name())) {
                    if (!iNode2.childNodes().isEmpty() && ((iNode2.childNodes().get(0) instanceof IDataNode) || (iNode2.childNodes().get(0) instanceof ITextNode))) {
                        if (iNode2.childNodes().get(0) instanceof IDataNode) {
                            strWholeText = ((IDataNode) iNode2.childNodes().get(0)).getWholeData();
                        } else {
                            strWholeText = ((ITextNode) iNode2.childNodes().get(0)).wholeText();
                        }
                        this.css.appendCssStyleSheet(CssStyleSheetParser.parse(strWholeText));
                    }
                } else if (CssUtils.isStyleSheetLink(iElementNode)) {
                    String attribute = iElementNode.getAttribute("href");
                    try {
                        InputStream inputStreamRetrieveResourceAsInputStream = resourceResolver.retrieveResourceAsInputStream(attribute);
                        if (inputStreamRetrieveResourceAsInputStream != null) {
                            try {
                                this.css.appendCssStyleSheet(CssStyleSheetParser.parse(inputStreamRetrieveResourceAsInputStream, resourceResolver.resolveAgainstBaseUri(attribute).toExternalForm()));
                            } finally {
                            }
                        }
                        if (inputStreamRetrieveResourceAsInputStream != null) {
                            inputStreamRetrieveResourceAsInputStream.close();
                        }
                    } catch (Exception e) {
                        LOGGER.error(StyledXmlParserLogMessageConstant.UNABLE_TO_PROCESS_EXTERNAL_CSS_FILE, (Throwable) e);
                    }
                }
            }
            for (INode iNode3 : iNode2.childNodes()) {
                if (iNode3 instanceof IElementNode) {
                    linkedList.add(iNode3);
                }
            }
        }
    }

    public List<CssFontFaceRule> getFonts() {
        return new ArrayList(this.fonts);
    }

    private void collectFonts() {
        Iterator<CssStatement> it = this.css.getStatements().iterator();
        while (it.hasNext()) {
            collectFonts(it.next());
        }
    }

    private void collectFonts(CssStatement cssStatement) {
        if (cssStatement instanceof CssFontFaceRule) {
            this.fonts.add((CssFontFaceRule) cssStatement);
            return;
        }
        if (cssStatement instanceof CssMediaRule) {
            CssMediaRule cssMediaRule = (CssMediaRule) cssStatement;
            if (cssMediaRule.matchMediaDevice(this.deviceDescription)) {
                Iterator<CssStatement> it = cssMediaRule.getStatements().iterator();
                while (it.hasNext()) {
                    collectFonts(it.next());
                }
            }
        }
    }

    private void processAttribute(IAttribute iAttribute, Map<String, String> map) {
        String key = iAttribute.getKey();
        key.hashCode();
        if (key.equals("style")) {
            for (Map.Entry<String, String> entry : parseStylesFromStyleAttribute(iAttribute.getValue()).entrySet()) {
                map.put(entry.getKey(), entry.getValue());
            }
            return;
        }
        if (key.equals(SvgConstants.Attributes.XLINK_HREF)) {
            processXLink(iAttribute, map);
        } else {
            map.put(iAttribute.getKey(), iAttribute.getValue());
        }
    }

    private Map<String, String> parseStylesFromStyleAttribute(String str) {
        HashMap map = new HashMap();
        for (CssDeclaration cssDeclaration : CssRuleSetParser.parsePropertyDeclarations(str)) {
            map.put(cssDeclaration.getProperty(), cssDeclaration.getExpression());
        }
        return map;
    }
}
