package com.itextpdf.styledxmlparser.css.resolve.shorthand.impl;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class FontShorthandResolver implements IShorthandResolver {
    private static final Set<String> UNSUPPORTED_VALUES_OF_FONT_SHORTHAND = Collections.unmodifiableSet(new HashSet(Arrays.asList("caption", "icon", CommonCssConstants.MENU, CommonCssConstants.MESSAGE_BOX, CommonCssConstants.SMALL_CAPTION, CommonCssConstants.STATUS_BAR)));
    private static final Set<String> FONT_WEIGHT_NOT_DEFAULT_VALUES = Collections.unmodifiableSet(new HashSet(Arrays.asList("bold", CommonCssConstants.BOLDER, CommonCssConstants.LIGHTER, "100", "200", "300", "400", "500", "600", "700", "800", "900")));
    private static final Set<String> FONT_SIZE_VALUES = Collections.unmodifiableSet(new HashSet(Arrays.asList("medium", CommonCssConstants.XX_SMALL, CommonCssConstants.X_SMALL, CommonCssConstants.SMALL, CommonCssConstants.LARGE, CommonCssConstants.X_LARGE, CommonCssConstants.XX_LARGE, CommonCssConstants.SMALLER, CommonCssConstants.LARGER)));

    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver
    public List<CssDeclaration> resolveShorthand(String str) {
        if (UNSUPPORTED_VALUES_OF_FONT_SHORTHAND.contains(str)) {
            LoggerFactory.getLogger((Class<?>) FontShorthandResolver.class).error(MessageFormatUtil.format("The \"{0}\" value of CSS shorthand property \"font\" is not supported", str));
        }
        String str2 = CommonCssConstants.INITIAL;
        if (CommonCssConstants.INITIAL.equals(str) || CommonCssConstants.INHERIT.equals(str)) {
            return Arrays.asList(new CssDeclaration("font-style", str), new CssDeclaration(CommonCssConstants.FONT_VARIANT, str), new CssDeclaration("font-weight", str), new CssDeclaration("font-size", str), new CssDeclaration(CommonCssConstants.LINE_HEIGHT, str), new CssDeclaration("font-family", str));
        }
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String strSubstring = null;
        String str7 = null;
        for (String str8 : getFontProperties(str.replaceAll("\\s*,\\s*", ","))) {
            int iIndexOf = str8.indexOf(47);
            if ("italic".equals(str8) || CommonCssConstants.OBLIQUE.equals(str8)) {
                str3 = str8;
            } else if (CommonCssConstants.SMALL_CAPS.equals(str8)) {
                str4 = str8;
            } else if (FONT_WEIGHT_NOT_DEFAULT_VALUES.contains(str8)) {
                str5 = str8;
            } else if (iIndexOf > 0) {
                String strSubstring2 = str8.substring(0, iIndexOf);
                strSubstring = str8.substring(iIndexOf + 1, str8.length());
                str6 = strSubstring2;
            } else if (FONT_SIZE_VALUES.contains(str8) || CssTypesValidationUtils.isMetricValue(str8) || CssTypesValidationUtils.isNumber(str8) || CssTypesValidationUtils.isRelativeValue(str8)) {
                str6 = str8;
            } else {
                str7 = str8;
            }
        }
        CssDeclaration[] cssDeclarationArr = new CssDeclaration[6];
        if (str3 == null) {
            str3 = CommonCssConstants.INITIAL;
        }
        cssDeclarationArr[0] = new CssDeclaration("font-style", str3);
        cssDeclarationArr[1] = new CssDeclaration(CommonCssConstants.FONT_VARIANT, str4 == null ? CommonCssConstants.INITIAL : str4);
        cssDeclarationArr[2] = new CssDeclaration("font-weight", str5 == null ? CommonCssConstants.INITIAL : str5);
        cssDeclarationArr[3] = new CssDeclaration("font-size", str6 == null ? CommonCssConstants.INITIAL : str6);
        cssDeclarationArr[4] = new CssDeclaration(CommonCssConstants.LINE_HEIGHT, strSubstring == null ? CommonCssConstants.INITIAL : strSubstring);
        if (str7 != null) {
            str2 = str7;
        }
        cssDeclarationArr[5] = new CssDeclaration("font-family", str2);
        return Arrays.asList(cssDeclarationArr);
    }

    private List<String> getFontProperties(String str) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"') {
                z = !z;
                sb.append(cCharAt);
            } else if (cCharAt == '\'') {
                z2 = !z2;
                sb.append(cCharAt);
            } else if (!z && !z2 && Character.isWhitespace(cCharAt)) {
                if (sb.length() > 0) {
                    arrayList.add(sb.toString());
                    sb = new StringBuilder();
                }
            } else {
                sb.append(cCharAt);
            }
        }
        if (sb.length() > 0) {
            arrayList.add(sb.toString());
        }
        return arrayList;
    }
}
