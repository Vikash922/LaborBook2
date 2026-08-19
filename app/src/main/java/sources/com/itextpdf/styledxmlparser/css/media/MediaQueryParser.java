package com.itextpdf.styledxmlparser.css.media;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class MediaQueryParser {
    private MediaQueryParser() {
    }

    static List<MediaQuery> parseMediaQueries(String str) {
        String[] strArrSplit = str.split(",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArrSplit) {
            MediaQuery mediaQuery = parseMediaQuery(str2);
            if (mediaQuery != null) {
                arrayList.add(mediaQuery);
            }
        }
        return arrayList;
    }

    static MediaQuery parseMediaQuery(String str) {
        boolean z;
        boolean z2;
        List<MediaExpression> mediaExpressions;
        String lowerCase = str.trim().toLowerCase();
        if (lowerCase.startsWith(MediaRuleConstants.ONLY)) {
            lowerCase = lowerCase.substring(MediaRuleConstants.ONLY.length()).trim();
            z = true;
            z2 = false;
        } else if (lowerCase.startsWith("not")) {
            lowerCase = lowerCase.substring("not".length()).trim();
            z2 = true;
            z = false;
        } else {
            z = false;
            z2 = false;
        }
        int iIndexOf = lowerCase.indexOf(32);
        String strSubstring = iIndexOf != -1 ? lowerCase.substring(0, iIndexOf) : lowerCase;
        if (z || z2 || MediaType.isValidMediaType(strSubstring)) {
            mediaExpressions = parseMediaExpressions(lowerCase.substring(strSubstring.length()), true);
        } else {
            mediaExpressions = parseMediaExpressions(lowerCase, false);
            strSubstring = null;
        }
        return new MediaQuery(strSubstring, mediaExpressions, z, z2);
    }

    private static List<MediaExpression> parseMediaExpressions(String str, boolean z) {
        String strTrim = str.trim();
        boolean zStartsWith = strTrim.startsWith(MediaRuleConstants.AND);
        String[] strArrSplit = strTrim.split(MediaRuleConstants.AND);
        ArrayList arrayList = new ArrayList();
        boolean z2 = true;
        for (String str2 : strArrSplit) {
            MediaExpression mediaExpression = parseMediaExpression(str2);
            if (mediaExpression != null) {
                if (z2 && z && !zStartsWith) {
                    throw new IllegalStateException("Expected 'and' while parsing media expression");
                }
                arrayList.add(mediaExpression);
                z2 = false;
            }
        }
        return arrayList;
    }

    private static MediaExpression parseMediaExpression(String str) {
        String strTrim = str.trim();
        String strTrim2 = null;
        if (!strTrim.startsWith("(") || !strTrim.endsWith(")")) {
            return null;
        }
        String strSubstring = strTrim.substring(1, strTrim.length() - 1);
        if (strSubstring.length() == 0) {
            return null;
        }
        int iIndexOf = strSubstring.indexOf(58);
        if (iIndexOf != -1) {
            String strTrim3 = strSubstring.substring(0, iIndexOf).trim();
            strTrim2 = strSubstring.substring(iIndexOf + 1).trim();
            strSubstring = strTrim3;
        }
        return new MediaExpression(strSubstring, strTrim2);
    }
}
