package com.itextpdf.styledxmlparser.css.parse.syntax;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.CssNestedAtRule;
import com.itextpdf.styledxmlparser.css.CssNestedAtRuleFactory;
import com.itextpdf.styledxmlparser.css.CssRuleName;
import com.itextpdf.styledxmlparser.css.CssRuleSet;
import com.itextpdf.styledxmlparser.css.CssSemicolonAtRule;
import com.itextpdf.styledxmlparser.css.CssStyleSheet;
import com.itextpdf.styledxmlparser.css.parse.CssDeclarationValueTokenizer;
import com.itextpdf.styledxmlparser.css.parse.CssRuleSetParser;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import com.itextpdf.styledxmlparser.resolver.resource.UriResolver;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.Stack;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class CssParserStateController {
    private final IParserState atRuleBlockState;
    private StringBuilder buffer;
    private final IParserState commendEndState;
    private final IParserState commendInnerState;
    private final IParserState commentStartState;
    private final IParserState conditionalGroupAtRuleBlockState;
    private String currentSelector;
    private IParserState currentState;
    private boolean isCurrentRuleSupported;
    private Stack<CssNestedAtRule> nestedAtRules;
    private IParserState previousActiveState;
    private final IParserState propertiesState;
    private final IParserState ruleState;
    private Stack<List<CssDeclaration>> storedPropertiesWithoutSelector;
    private CssStyleSheet styleSheet;
    private final IParserState unknownState;
    private UriResolver uriResolver;
    private static final Set<String> SUPPORTED_RULES = Collections.unmodifiableSet(new HashSet(Arrays.asList("media", "page", CssRuleName.TOP_LEFT_CORNER, CssRuleName.TOP_LEFT, CssRuleName.TOP_CENTER, CssRuleName.TOP_RIGHT, CssRuleName.TOP_RIGHT_CORNER, CssRuleName.BOTTOM_LEFT_CORNER, CssRuleName.BOTTOM_LEFT, CssRuleName.BOTTOM_CENTER, CssRuleName.BOTTOM_RIGHT, CssRuleName.BOTTOM_RIGHT_CORNER, CssRuleName.LEFT_TOP, CssRuleName.LEFT_MIDDLE, CssRuleName.LEFT_BOTTOM, CssRuleName.RIGHT_TOP, CssRuleName.RIGHT_MIDDLE, CssRuleName.RIGHT_BOTTOM, "font-face")));
    private static final Set<String> CONDITIONAL_GROUP_RULES = Collections.unmodifiableSet(new HashSet(Arrays.asList("media")));

    public CssParserStateController() {
        this("");
    }

    public CssParserStateController(String str) {
        this.isCurrentRuleSupported = true;
        this.buffer = new StringBuilder();
        if (str != null && str.length() > 0) {
            this.uriResolver = new UriResolver(str);
        }
        this.styleSheet = new CssStyleSheet();
        this.nestedAtRules = new Stack<>();
        this.storedPropertiesWithoutSelector = new Stack<>();
        this.commentStartState = new CommentStartState(this);
        this.commendEndState = new CommentEndState(this);
        this.commendInnerState = new CommentInnerState(this);
        UnknownState unknownState = new UnknownState(this);
        this.unknownState = unknownState;
        this.ruleState = new RuleState(this);
        this.propertiesState = new BlockState(this);
        this.atRuleBlockState = new AtRuleBlockState(this);
        this.conditionalGroupAtRuleBlockState = new ConditionalGroupAtRuleBlockState(this);
        this.currentState = unknownState;
    }

    public void process(char c) {
        this.currentState.process(c);
    }

    public CssStyleSheet getParsingResult() {
        return this.styleSheet;
    }

    void appendToBuffer(char c) {
        this.buffer.append(c);
    }

    String getBufferContents() {
        return this.buffer.toString();
    }

    void resetBuffer() {
        this.buffer.setLength(0);
    }

    void enterPreviousActiveState() {
        setState(this.previousActiveState);
    }

    void enterCommentStartState() {
        saveActiveState();
        setState(this.commentStartState);
    }

    void enterCommentEndState() {
        setState(this.commendEndState);
    }

    void enterCommentInnerState() {
        setState(this.commendInnerState);
    }

    void enterRuleState() {
        setState(this.ruleState);
    }

    void enterUnknownStateIfNestedBlocksFinished() {
        if (this.nestedAtRules.size() == 0) {
            setState(this.unknownState);
        } else {
            enterRuleStateBasedOnItsType();
        }
    }

    void enterRuleStateBasedOnItsType() {
        if (currentAtRuleIsConditionalGroupRule()) {
            enterConditionalGroupAtRuleBlockState();
        } else {
            enterAtRuleBlockState();
        }
    }

    void enterUnknownState() {
        setState(this.unknownState);
    }

    void enterAtRuleBlockState() {
        setState(this.atRuleBlockState);
    }

    void enterConditionalGroupAtRuleBlockState() {
        setState(this.conditionalGroupAtRuleBlockState);
    }

    void enterPropertiesState() {
        setState(this.propertiesState);
    }

    void storeCurrentSelector() {
        this.currentSelector = this.buffer.toString();
        this.buffer.setLength(0);
    }

    void storeCurrentProperties() {
        if (this.isCurrentRuleSupported) {
            processProperties(this.currentSelector, this.buffer.toString());
        }
        this.currentSelector = null;
        this.buffer.setLength(0);
    }

    void storeCurrentPropertiesWithoutSelector() {
        if (this.isCurrentRuleSupported) {
            processProperties(this.buffer.toString());
        }
        this.buffer.setLength(0);
    }

    void storeSemicolonAtRule() {
        if (this.isCurrentRuleSupported) {
            processSemicolonAtRule(this.buffer.toString());
        }
        this.buffer.setLength(0);
    }

    void finishAtRuleBlock() {
        List<CssDeclaration> listPop = this.storedPropertiesWithoutSelector.pop();
        CssNestedAtRule cssNestedAtRulePop = this.nestedAtRules.pop();
        if (this.isCurrentRuleSupported) {
            processFinishedAtRuleBlock(cssNestedAtRulePop);
            if (!listPop.isEmpty()) {
                cssNestedAtRulePop.addBodyCssDeclarations(listPop);
            }
        }
        this.isCurrentRuleSupported = isCurrentRuleSupported();
        this.buffer.setLength(0);
    }

    void pushBlockPrecedingAtRule() {
        this.nestedAtRules.push(CssNestedAtRuleFactory.createNestedRule(this.buffer.toString()));
        this.storedPropertiesWithoutSelector.push(new ArrayList());
        this.isCurrentRuleSupported = isCurrentRuleSupported();
        this.buffer.setLength(0);
    }

    private void saveActiveState() {
        this.previousActiveState = this.currentState;
    }

    private void setState(IParserState iParserState) {
        this.currentState = iParserState;
    }

    private void processProperties(String str, String str2) {
        List<CssRuleSet> ruleSet = CssRuleSetParser.parseRuleSet(str, str2);
        for (CssRuleSet cssRuleSet : ruleSet) {
            normalizeDeclarationURIs(cssRuleSet.getNormalDeclarations());
            normalizeDeclarationURIs(cssRuleSet.getImportantDeclarations());
        }
        for (CssRuleSet cssRuleSet2 : ruleSet) {
            if (this.nestedAtRules.size() == 0) {
                this.styleSheet.addStatement(cssRuleSet2);
            } else {
                this.nestedAtRules.peek().addStatementToBody(cssRuleSet2);
            }
        }
    }

    private void processProperties(String str) {
        if (this.storedPropertiesWithoutSelector.size() > 0) {
            List<CssDeclaration> propertyDeclarations = CssRuleSetParser.parsePropertyDeclarations(str);
            normalizeDeclarationURIs(propertyDeclarations);
            this.storedPropertiesWithoutSelector.peek().addAll(propertyDeclarations);
        }
    }

    private void normalizeDeclarationURIs(List<CssDeclaration> list) {
        String value;
        if (this.uriResolver == null) {
            return;
        }
        for (CssDeclaration cssDeclaration : list) {
            if (cssDeclaration.getExpression().contains("url(")) {
                CssDeclarationValueTokenizer cssDeclarationValueTokenizer = new CssDeclarationValueTokenizer(cssDeclaration.getExpression());
                StringBuilder sb = new StringBuilder();
                while (true) {
                    CssDeclarationValueTokenizer.Token nextValidToken = cssDeclarationValueTokenizer.getNextValidToken();
                    if (nextValidToken == null) {
                        break;
                    }
                    if (nextValidToken.getType() == CssDeclarationValueTokenizer.TokenType.FUNCTION && nextValidToken.getValue().startsWith("url(")) {
                        String strTrim = nextValidToken.getValue().trim();
                        String strTrim2 = strTrim.substring(4, strTrim.length() - 1).trim();
                        if (CssTypesValidationUtils.isBase64Data(strTrim2)) {
                            value = nextValidToken.getValue().trim();
                        } else {
                            if ((strTrim2.startsWith("'") && strTrim2.endsWith("'")) || (strTrim2.startsWith("\"") && strTrim2.endsWith("\""))) {
                                strTrim2 = strTrim2.substring(1, strTrim2.length() - 1);
                            }
                            String strTrim3 = strTrim2.trim();
                            try {
                                strTrim3 = this.uriResolver.resolveAgainstBaseUri(strTrim3).toExternalForm();
                            } catch (MalformedURLException unused) {
                            }
                            value = MessageFormatUtil.format("url({0})", strTrim3);
                        }
                    } else {
                        value = nextValidToken.getValue();
                    }
                    if (sb.length() > 0) {
                        sb.append(' ');
                    }
                    sb.append(value);
                }
                cssDeclaration.setExpression(sb.toString());
            }
        }
    }

    private void processSemicolonAtRule(String str) {
        this.styleSheet.addStatement(new CssSemicolonAtRule(str));
    }

    private void processFinishedAtRuleBlock(CssNestedAtRule cssNestedAtRule) {
        if (this.nestedAtRules.size() != 0) {
            this.nestedAtRules.peek().addStatementToBody(cssNestedAtRule);
        } else {
            this.styleSheet.addStatement(cssNestedAtRule);
        }
    }

    private boolean isCurrentRuleSupported() {
        boolean z = this.nestedAtRules.isEmpty() || SUPPORTED_RULES.contains(this.nestedAtRules.peek().getRuleName());
        if (!z) {
            LoggerFactory.getLogger(getClass()).error(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.RULE_IS_NOT_SUPPORTED, this.nestedAtRules.peek().getRuleName()));
        }
        return z;
    }

    private boolean currentAtRuleIsConditionalGroupRule() {
        return !this.isCurrentRuleSupported || (this.nestedAtRules.size() > 0 && CONDITIONAL_GROUP_RULES.contains(this.nestedAtRules.peek().getRuleName()));
    }
}
