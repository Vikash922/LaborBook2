package com.itextpdf.svg.utils;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.styledxmlparser.util.WhiteSpaceUtil;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.renderers.impl.ISvgTextNodeRenderer;
import com.itextpdf.svg.renderers.impl.TextLeafSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.TextSvgBranchRenderer;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class SvgTextUtil {
    private SvgTextUtil() {
    }

    public static String trimLeadingWhitespace(String str) {
        if (str == null) {
            return "";
        }
        int length = str.length();
        int i = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (!Character.isWhitespace(cCharAt) || cCharAt == '\n' || cCharAt == '\r') {
                break;
            }
            i++;
        }
        return str.substring(i);
    }

    public static String trimTrailingWhitespace(String str) {
        if (str == null) {
            return "";
        }
        int length = str.length();
        if (length <= 0) {
            return str;
        }
        int i = length - 1;
        while (i >= 0) {
            char cCharAt = str.charAt(i);
            if (!Character.isWhitespace(cCharAt) || cCharAt == '\n' || cCharAt == '\r') {
                break;
            }
            i--;
        }
        if (i < 0) {
            return "";
        }
        return str.substring(0, i + 1);
    }

    public static void processWhiteSpace(TextSvgBranchRenderer textSvgBranchRenderer, boolean z) {
        boolean z2;
        String strTrimTrailingWhitespace;
        for (ISvgTextNodeRenderer iSvgTextNodeRenderer : textSvgBranchRenderer.getChildren()) {
            if (iSvgTextNodeRenderer instanceof TextSvgBranchRenderer) {
                TextSvgBranchRenderer textSvgBranchRenderer2 = (TextSvgBranchRenderer) iSvgTextNodeRenderer;
                processWhiteSpace(textSvgBranchRenderer2, iSvgTextNodeRenderer.containsAbsolutePositionChange());
                textSvgBranchRenderer2.markWhiteSpaceProcessed();
            }
            if (iSvgTextNodeRenderer instanceof TextLeafSvgNodeRenderer) {
                TextLeafSvgNodeRenderer textLeafSvgNodeRenderer = (TextLeafSvgNodeRenderer) iSvgTextNodeRenderer;
                String strCollapseConsecutiveSpaces = WhiteSpaceUtil.collapseConsecutiveSpaces(textLeafSvgNodeRenderer.getAttribute(SvgConstants.Attributes.TEXT_CONTENT).replaceAll("\\s+", StringUtils.SPACE));
                if (z) {
                    strTrimTrailingWhitespace = trimTrailingWhitespace(trimLeadingWhitespace(strCollapseConsecutiveSpaces));
                    z2 = false;
                } else {
                    String strTrimTrailingWhitespace2 = trimTrailingWhitespace(strCollapseConsecutiveSpaces);
                    z2 = z;
                    strTrimTrailingWhitespace = strTrimTrailingWhitespace2;
                }
                textLeafSvgNodeRenderer.setAttribute(SvgConstants.Attributes.TEXT_CONTENT, strTrimTrailingWhitespace);
                z = z2;
            }
        }
    }

    public static boolean isOnlyWhiteSpace(String str) {
        return "".equals(trimTrailingWhitespace(trimLeadingWhitespace(str.replaceAll("\\s+", StringUtils.SPACE))));
    }

    public static float resolveFontSize(ISvgTextNodeRenderer iSvgTextNodeRenderer, float f) {
        float relativeFontSize;
        String attribute = iSvgTextNodeRenderer.getAttribute("font-size");
        if (attribute == null || attribute.isEmpty()) {
            relativeFontSize = Float.NaN;
        } else if (CssTypesValidationUtils.isRelativeValue(attribute) || CommonCssConstants.LARGER.equals(attribute) || CommonCssConstants.SMALLER.equals(attribute)) {
            relativeFontSize = CssDimensionParsingUtils.parseRelativeFontSize(attribute, f);
        } else {
            relativeFontSize = CssDimensionParsingUtils.parseAbsoluteFontSize(attribute, CommonCssConstants.f3304PX);
        }
        return (Float.isNaN(relativeFontSize) || relativeFontSize < 0.0f) ? f : relativeFontSize;
    }

    public static String filterReferenceValue(String str) {
        return str.replace("#", "").replace("url(", "").replace(")", "").trim();
    }
}
