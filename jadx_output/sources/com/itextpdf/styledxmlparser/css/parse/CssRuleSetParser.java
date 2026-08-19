package com.itextpdf.styledxmlparser.css.parse;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.CssRuleSet;
import com.itextpdf.styledxmlparser.css.selector.CssSelector;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class CssRuleSetParser {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) CssRuleSetParser.class);

    private CssRuleSetParser() {
    }

    public static List<CssDeclaration> parsePropertyDeclarations(String str) {
        String[] strArrSplitCssProperty;
        ArrayList arrayList = new ArrayList();
        int iIndexOf = str.indexOf("/*", 0);
        if (iIndexOf != -1) {
            arrayList.addAll(parsePropertyDeclarations(str.substring(0, iIndexOf)));
            int iIndexOf2 = str.indexOf("*/", iIndexOf);
            if (iIndexOf2 != -1) {
                arrayList.addAll(parsePropertyDeclarations(str.substring(iIndexOf2 + 2, str.length())));
            }
        } else {
            int semicolonPosition = getSemicolonPosition(str, 0);
            while (semicolonPosition != -1) {
                String[] strArrSplitCssProperty2 = splitCssProperty(str.substring(0, semicolonPosition));
                if (strArrSplitCssProperty2 != null) {
                    arrayList.add(new CssDeclaration(strArrSplitCssProperty2[0], strArrSplitCssProperty2[1]));
                }
                str = str.substring(semicolonPosition + 1);
                semicolonPosition = getSemicolonPosition(str, 0);
            }
            if (!str.replaceAll("[\\n\\r\\t ]", "").isEmpty() && (strArrSplitCssProperty = splitCssProperty(str)) != null) {
                arrayList.add(new CssDeclaration(strArrSplitCssProperty[0], strArrSplitCssProperty[1]));
            }
        }
        return arrayList;
    }

    public static List<CssRuleSet> parseRuleSet(String str, String str2) {
        List<CssDeclaration> propertyDeclarations = parsePropertyDeclarations(str2);
        ArrayList arrayList = new ArrayList();
        String[] strArrSplit = str.split(",");
        for (int i = 0; i < strArrSplit.length; i++) {
            String strRemoveDoubleSpacesAndTrim = CssUtils.removeDoubleSpacesAndTrim(strArrSplit[i]);
            strArrSplit[i] = strRemoveDoubleSpacesAndTrim;
            if (strRemoveDoubleSpacesAndTrim.length() == 0) {
                return arrayList;
            }
        }
        for (String str3 : strArrSplit) {
            try {
                arrayList.add(new CssRuleSet(new CssSelector(str3), propertyDeclarations));
            } catch (Exception e) {
                logger.error(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.ERROR_PARSING_CSS_SELECTOR, str3), (Throwable) e);
                propertyDeclarations.clear();
            }
        }
        return arrayList;
    }

    private static String[] splitCssProperty(String str) {
        if (str.trim().isEmpty()) {
            return null;
        }
        String[] strArr = new String[2];
        int iIndexOf = str.indexOf(":");
        if (iIndexOf < 0) {
            logger.error(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, str.trim()));
            return null;
        }
        strArr[0] = str.substring(0, iIndexOf);
        strArr[1] = str.substring(iIndexOf + 1);
        return strArr;
    }

    private static int getSemicolonPosition(String str, int i) {
        int iIndexOf = str.indexOf(";", i);
        int iIndexOf2 = str.indexOf(")", iIndexOf + 1);
        int iIndexOf3 = str.indexOf("(", i);
        if (iIndexOf != -1 && iIndexOf3 < iIndexOf && iIndexOf2 > 0) {
            while (true) {
                int iIndexOf4 = str.indexOf("(", iIndexOf3 + 1);
                if (iIndexOf4 >= iIndexOf2 || iIndexOf4 <= 0) {
                    break;
                }
                iIndexOf3 = iIndexOf4;
            }
        }
        return (iIndexOf == -1 || iIndexOf <= iIndexOf3 || iIndexOf >= iIndexOf2) ? iIndexOf : getSemicolonPosition(str, iIndexOf2 + 1);
    }
}
