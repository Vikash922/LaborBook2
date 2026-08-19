package com.itextpdf.styledxmlparser.css.util;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.PortUtil;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import java.util.regex.Pattern;
import org.shadow.apache.commons.lang3.StringUtils;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class CssPropertyNormalizer {
    private static final Pattern URL_PATTERN = PortUtil.createRegexPatternWithDotMatchingNewlines("^[uU][rR][lL]\\(");

    private static boolean trimSpaceAfter(char c) {
        return c == ',' || c == '(';
    }

    private static boolean trimSpaceBefore(char c) {
        return c == ',' || c == ')';
    }

    CssPropertyNormalizer() {
    }

    static String normalize(String str) {
        StringBuilder sb = new StringBuilder();
        int iAppendQuotedString = 0;
        boolean z = false;
        while (iAppendQuotedString < str.length()) {
            if (str.charAt(iAppendQuotedString) == '\\') {
                sb.append(str.charAt(iAppendQuotedString));
                int i = iAppendQuotedString + 1;
                if (i < str.length()) {
                    sb.append(str.charAt(i));
                    iAppendQuotedString += 2;
                } else {
                    iAppendQuotedString = i;
                }
            } else if (Character.isWhitespace(str.charAt(iAppendQuotedString))) {
                iAppendQuotedString++;
                z = true;
            } else {
                if (z) {
                    if (sb.length() > 0 && !trimSpaceAfter(sb.charAt(sb.length() - 1)) && !trimSpaceBefore(str.charAt(iAppendQuotedString))) {
                        sb.append(StringUtils.SPACE);
                    }
                    z = false;
                }
                if (str.charAt(iAppendQuotedString) == '\'' || str.charAt(iAppendQuotedString) == '\"') {
                    iAppendQuotedString = appendQuotedString(sb, str, iAppendQuotedString);
                } else if ((str.charAt(iAppendQuotedString) == 'u' || str.charAt(iAppendQuotedString) == 'U') && URL_PATTERN.matcher(str.substring(iAppendQuotedString)).find()) {
                    int i2 = iAppendQuotedString + 4;
                    sb.append(str.substring(iAppendQuotedString, i2).toLowerCase());
                    iAppendQuotedString = appendUrlContent(sb, str, i2);
                } else {
                    sb.append(Character.toLowerCase(str.charAt(iAppendQuotedString)));
                    iAppendQuotedString++;
                }
            }
        }
        return sb.toString();
    }

    private static int appendQuotedString(StringBuilder sb, String str, int i) {
        int length;
        int iFindNextUnescapedChar = CssUtils.findNextUnescapedChar(str, str.charAt(i), i + 1);
        if (iFindNextUnescapedChar == -1) {
            length = str.length();
            LoggerFactory.getLogger((Class<?>) CssPropertyNormalizer.class).warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.QUOTE_IS_NOT_CLOSED_IN_CSS_EXPRESSION, str));
        } else {
            length = iFindNextUnescapedChar + 1;
        }
        sb.append((CharSequence) str, i, length);
        return length;
    }

    private static int appendUrlContent(StringBuilder sb, String str, int i) {
        while (Character.isWhitespace(str.charAt(i)) && i < str.length()) {
            i++;
        }
        if (i < str.length()) {
            if (str.charAt(i) == '\"' || str.charAt(i) == '\'') {
                return appendQuotedString(sb, str, i);
            }
            int iFindNextUnescapedChar = CssUtils.findNextUnescapedChar(str, ')', i);
            if (iFindNextUnescapedChar == -1) {
                LoggerFactory.getLogger((Class<?>) CssPropertyNormalizer.class).warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.URL_IS_NOT_CLOSED_IN_CSS_EXPRESSION, str));
                return str.length();
            }
            sb.append(str.substring(i, iFindNextUnescapedChar).trim());
            sb.append(')');
            return iFindNextUnescapedChar + 1;
        }
        LoggerFactory.getLogger((Class<?>) CssPropertyNormalizer.class).warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.URL_IS_EMPTY_IN_CSS_EXPRESSION, str));
        return str.length();
    }
}
