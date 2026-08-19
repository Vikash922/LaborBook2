package com.itextpdf.styledxmlparser.css.util;

import com.amplitude.core.events.Identify;
import com.itextpdf.layout.font.Range;
import com.itextpdf.layout.font.RangeBuilder;
import com.itextpdf.styledxmlparser.CommonAttributeConstants;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.parse.CssDeclarationValueTokenizer;
import com.itextpdf.styledxmlparser.node.IElementNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.text.Typography;
import org.shadow.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class CssUtils {
    private static final float EPSILON = 1.0E-6f;
    private static final int QUANTITY_OF_PARAMS_WITH_FALLBACK_OR_TYPE = 2;
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) CssUtils.class);

    public static double convertPtsToPx(double d) {
        return d / 0.75d;
    }

    public static float convertPtsToPx(float f) {
        return f / 0.75f;
    }

    public static double convertPxToPts(double d) {
        return d * 0.75d;
    }

    public static float convertPxToPts(float f) {
        return f * 0.75f;
    }

    private CssUtils() {
    }

    public static List<String> splitStringWithComma(String str) {
        return splitString(str, ',', new EscapeGroup('(', ')'));
    }

    public static List<String> splitString(String str, char c, EscapeGroup... escapeGroupArr) {
        if (str == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            boolean z = false;
            for (EscapeGroup escapeGroup : escapeGroupArr) {
                if (cCharAt == c) {
                    z = z || escapeGroup.isEscaped();
                } else {
                    escapeGroup.processCharacter(cCharAt);
                }
            }
            if (cCharAt == c && !z) {
                arrayList.add(str.substring(i, i2));
                i = i2 + 1;
            }
        }
        String strSubstring = str.substring(i);
        if (!strSubstring.isEmpty()) {
            arrayList.add(strSubstring);
        }
        return arrayList;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.itextpdf.layout.properties.BlendMode parseBlendMode(java.lang.String r1) {
        /*
            Method dump skipped, instruction units count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.styledxmlparser.css.util.CssUtils.parseBlendMode(java.lang.String):com.itextpdf.layout.properties.BlendMode");
    }

    public static List<List<String>> extractShorthandProperties(String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        CssDeclarationValueTokenizer cssDeclarationValueTokenizer = new CssDeclarationValueTokenizer(str);
        for (CssDeclarationValueTokenizer.Token nextValidToken = cssDeclarationValueTokenizer.getNextValidToken(); nextValidToken != null; nextValidToken = cssDeclarationValueTokenizer.getNextValidToken()) {
            if (nextValidToken.getType() == CssDeclarationValueTokenizer.TokenType.COMMA) {
                arrayList.add(arrayList2);
                arrayList2 = new ArrayList();
            } else {
                arrayList2.add(nextValidToken.getValue());
            }
        }
        arrayList.add(arrayList2);
        return arrayList;
    }

    public static String normalizeCssProperty(String str) {
        if (str == null) {
            return null;
        }
        return CssPropertyNormalizer.normalize(str);
    }

    public static String removeDoubleSpacesAndTrim(String str) {
        String[] strArrSplit = str.split("\\s");
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArrSplit) {
            if (str2.length() > 0) {
                if (sb.length() != 0) {
                    sb.append(StringUtils.SPACE);
                }
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    public static String extractUrl(String str) {
        if (!str.startsWith("url")) {
            return str;
        }
        String strTrim = str.substring(3).trim().replace("(", "").replace(")", "").trim();
        if (strTrim.startsWith("'") && strTrim.endsWith("'")) {
            return strTrim.substring(strTrim.indexOf("'") + 1, strTrim.lastIndexOf("'"));
        }
        return (strTrim.startsWith("\"") && strTrim.endsWith("\"")) ? strTrim.substring(strTrim.indexOf(34) + 1, strTrim.lastIndexOf(34)) : strTrim;
    }

    public static String extractAttributeValue(String str, IElementNode iElementNode) {
        String strExtractTypeOfAttribute;
        if (!str.startsWith("attr(") || str.length() <= CommonCssConstants.ATTRIBUTE.length() + 2 || !str.endsWith(")")) {
            return null;
        }
        List<String> listSplitString = splitString(str.substring(5, str.length() - 1), ',', new EscapeGroup(Typography.quote), new EscapeGroup('\''));
        if (listSplitString.size() > 2) {
            return null;
        }
        String strExtractFallback = listSplitString.size() == 2 ? extractFallback(listSplitString.get(1)) : null;
        List<String> listSplitString2 = splitString(listSplitString.get(0), ' ', new EscapeGroup[0]);
        if (listSplitString2.size() > 2) {
            return null;
        }
        if (listSplitString2.size() == 2) {
            strExtractTypeOfAttribute = extractTypeOfAttribute(listSplitString2.get(1));
            if (strExtractTypeOfAttribute == null) {
                return null;
            }
        } else {
            strExtractTypeOfAttribute = null;
        }
        String str2 = listSplitString2.get(0);
        if (isAttributeNameValid(str2)) {
            return getAttributeValue(str2, strExtractTypeOfAttribute, strExtractFallback, iElementNode);
        }
        return null;
    }

    public static int findNextUnescapedChar(String str, char c, int i) {
        int iIndexOf = str.indexOf(c, i);
        if (iIndexOf == -1) {
            return -1;
        }
        int i2 = iIndexOf;
        while (i2 > 0 && str.charAt(i2 - 1) == '\\') {
            i2--;
        }
        return (iIndexOf - i2) % 2 == 0 ? iIndexOf : findNextUnescapedChar(str, c, iIndexOf + 1);
    }

    public static boolean compareFloats(double d, double d2) {
        return Math.abs(d - d2) < 9.999999974752427E-7d;
    }

    public static boolean compareFloats(float f, float f2) {
        return Math.abs(f - f2) < EPSILON;
    }

    public static Range parseUnicodeRange(String str) {
        String[] strArrSplit = str.split(",");
        RangeBuilder rangeBuilder = new RangeBuilder();
        for (String str2 : strArrSplit) {
            if (!addRange(rangeBuilder, str2)) {
                return null;
            }
        }
        return rangeBuilder.create();
    }

    public static boolean isStyleSheetLink(IElementNode iElementNode) {
        return "link".equals(iElementNode.name()) && CommonAttributeConstants.STYLESHEET.equals(iElementNode.getAttribute(CommonAttributeConstants.REL));
    }

    private static boolean addRange(RangeBuilder rangeBuilder, String str) {
        String strTrim = str.trim();
        if (!strTrim.matches("[uU]\\+[0-9a-fA-F?]{1,6}(-[0-9a-fA-F]{1,6})?")) {
            return false;
        }
        String[] strArrSplit = strTrim.substring(2, strTrim.length()).split(Identify.UNSET_VALUE);
        if (1 == strArrSplit.length) {
            if (strArrSplit[0].contains("?")) {
                return addRange(rangeBuilder, strArrSplit[0].replace('?', '0'), strArrSplit[0].replace('?', 'F'));
            }
            String str2 = strArrSplit[0];
            return addRange(rangeBuilder, str2, str2);
        }
        return addRange(rangeBuilder, strArrSplit[0], strArrSplit[1]);
    }

    private static boolean addRange(RangeBuilder rangeBuilder, String str, String str2) {
        int i = Integer.parseInt(str, 16);
        int i2 = Integer.parseInt(str2, 16);
        if (i > i2 || i2 > 1114111) {
            return false;
        }
        rangeBuilder.addRange(i, i2);
        return true;
    }

    private static boolean isAttributeNameValid(String str) {
        return (str.contains("'") || str.contains("\"") || str.contains("(") || str.contains(")")) ? false : true;
    }

    private static String extractFallback(String str) {
        if ((str.startsWith("'") && str.endsWith("'")) || (str.startsWith("\"") && str.endsWith("\""))) {
            str = str.substring(1, str.length() - 1);
        }
        return extractUrl(str);
    }

    private static String extractTypeOfAttribute(String str) {
        if (str.equals("url") || str.equals("string")) {
            return str;
        }
        return null;
    }

    private static String getAttributeValue(String str, String str2, String str3, IElementNode iElementNode) {
        String attribute = iElementNode.getAttribute(str);
        if ("url".equals(str2)) {
            attribute = attribute == null ? null : extractUrl(attribute);
        } else if (attribute == null) {
            attribute = "";
        }
        return (str3 == null || !(attribute == null || attribute.isEmpty())) ? attribute : str3;
    }
}
