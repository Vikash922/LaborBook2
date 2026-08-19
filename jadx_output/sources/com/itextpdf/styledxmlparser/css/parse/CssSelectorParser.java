package com.itextpdf.styledxmlparser.css.parse;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.selector.item.CssAttributeSelectorItem;
import com.itextpdf.styledxmlparser.css.selector.item.CssClassSelectorItem;
import com.itextpdf.styledxmlparser.css.selector.item.CssIdSelectorItem;
import com.itextpdf.styledxmlparser.css.selector.item.CssPseudoClassSelectorItem;
import com.itextpdf.styledxmlparser.css.selector.item.CssPseudoElementSelectorItem;
import com.itextpdf.styledxmlparser.css.selector.item.CssSeparatorSelectorItem;
import com.itextpdf.styledxmlparser.css.selector.item.CssTagSelectorItem;
import com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.styledxmlparser.exceptions.StyledXmlParserExceptionMessage;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class CssSelectorParser {
    private static final Set<String> LEGACY_PSEUDO_ELEMENTS;
    private static final String SELECTOR_PATTERN_STR = "(\\*)|([_a-zA-Z][\\w-]*)|(\\.[_a-zA-Z][\\w-]*)|(#[_a-z][\\w-]*)|(\\[[_a-zA-Z][\\w-]*(([~^$*|])?=((\"[^\"]+\")|([^\"]+)|('[^']+')|(\"\")|('')))?\\])|(::?[a-zA-Z-]*)|( )|(\\+)|(>)|(~)";
    private static final Pattern selectorPattern;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("first-line");
        hashSet.add("first-letter");
        hashSet.add("before");
        hashSet.add("after");
        LEGACY_PSEUDO_ELEMENTS = Collections.unmodifiableSet(hashSet);
        selectorPattern = Pattern.compile(SELECTOR_PATTERN_STR);
    }

    private CssSelectorParser() {
    }

    public static List<ICssSelectorItem> parseSelectorItems(String str) {
        CssSeparatorSelectorItem cssSeparatorSelectorItem;
        ArrayList arrayList = new ArrayList();
        Matcher matcher = selectorPattern.matcher(str);
        while (true) {
            boolean z = false;
            while (matcher.find()) {
                String strGroup = matcher.group(0);
                char cCharAt = strGroup.charAt(0);
                if (cCharAt != ' ') {
                    if (cCharAt == '#') {
                        arrayList.add(new CssIdSelectorItem(strGroup.substring(1)));
                    } else if (cCharAt != '+') {
                        if (cCharAt == '.') {
                            arrayList.add(new CssClassSelectorItem(strGroup.substring(1)));
                        } else if (cCharAt == ':') {
                            appendPseudoSelector(arrayList, strGroup, matcher, str);
                        } else if (cCharAt != '>') {
                            if (cCharAt == '[') {
                                arrayList.add(new CssAttributeSelectorItem(strGroup));
                            } else if (cCharAt != '~') {
                                if (z) {
                                    throw new IllegalStateException("Invalid selector string");
                                }
                                arrayList.add(new CssTagSelectorItem(strGroup));
                                z = true;
                            }
                        }
                    }
                }
                if (arrayList.size() == 0) {
                    throw new IllegalArgumentException(MessageFormatUtil.format(StyledXmlParserExceptionMessage.INVALID_TOKEN_AT_THE_BEGINNING_OF_SELECTOR, Character.valueOf(cCharAt)));
                }
                ICssSelectorItem iCssSelectorItem = (ICssSelectorItem) arrayList.get(arrayList.size() - 1);
                cssSeparatorSelectorItem = new CssSeparatorSelectorItem(cCharAt);
                if (iCssSelectorItem instanceof CssSeparatorSelectorItem) {
                    if (cssSeparatorSelectorItem.getSeparator() == ' ') {
                        continue;
                    } else {
                        CssSeparatorSelectorItem cssSeparatorSelectorItem2 = (CssSeparatorSelectorItem) iCssSelectorItem;
                        if (cssSeparatorSelectorItem2.getSeparator() == ' ') {
                            arrayList.set(arrayList.size() - 1, cssSeparatorSelectorItem);
                        } else {
                            throw new IllegalArgumentException(MessageFormatUtil.format("Invalid selector description. Two consequent characters occurred: {0}, {1}", Character.valueOf(cssSeparatorSelectorItem2.getSeparator()), Character.valueOf(cssSeparatorSelectorItem.getSeparator())));
                        }
                    }
                }
            }
            if (arrayList.size() != 0) {
                return arrayList;
            }
            throw new IllegalArgumentException("Selector declaration is invalid");
            arrayList.add(cssSeparatorSelectorItem);
        }
    }

    private static void appendPseudoSelector(List<ICssSelectorItem> list, String str, Matcher matcher, String str2) {
        String strHandleBracketsOfPseudoSelector = handleBracketsOfPseudoSelector(str.toLowerCase(), matcher, str2);
        if (strHandleBracketsOfPseudoSelector.startsWith("::")) {
            list.add(new CssPseudoElementSelectorItem(strHandleBracketsOfPseudoSelector.substring(2)));
            return;
        }
        if (strHandleBracketsOfPseudoSelector.startsWith(":") && LEGACY_PSEUDO_ELEMENTS.contains(strHandleBracketsOfPseudoSelector.substring(1))) {
            list.add(new CssPseudoElementSelectorItem(strHandleBracketsOfPseudoSelector.substring(1)));
            return;
        }
        CssPseudoClassSelectorItem cssPseudoClassSelectorItemCreate = CssPseudoClassSelectorItem.create(strHandleBracketsOfPseudoSelector.substring(1));
        if (cssPseudoClassSelectorItemCreate == null) {
            throw new IllegalArgumentException(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.UNSUPPORTED_PSEUDO_CSS_SELECTOR, strHandleBracketsOfPseudoSelector));
        }
        list.add(cssPseudoClassSelectorItemCreate);
    }

    private static String handleBracketsOfPseudoSelector(String str, Matcher matcher, String str2) {
        int iStart = matcher.start() + str.length();
        if (iStart >= str2.length() || str2.charAt(iStart) != '(') {
            return str;
        }
        int iFindNextUnescapedChar = iStart + 1;
        int i = 1;
        while (i > 0 && iFindNextUnescapedChar < str2.length()) {
            if (str2.charAt(iFindNextUnescapedChar) == '(') {
                i++;
            } else if (str2.charAt(iFindNextUnescapedChar) == ')') {
                i--;
            } else if (str2.charAt(iFindNextUnescapedChar) == '\"' || str2.charAt(iFindNextUnescapedChar) == '\'') {
                iFindNextUnescapedChar = CssUtils.findNextUnescapedChar(str2, str2.charAt(iFindNextUnescapedChar), iFindNextUnescapedChar + 1);
            }
            iFindNextUnescapedChar++;
        }
        if (i != 0) {
            return str;
        }
        matcher.region(iFindNextUnescapedChar, str2.length());
        return str + str2.substring(iStart, iFindNextUnescapedChar);
    }
}
