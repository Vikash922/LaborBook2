package com.itextpdf.styledxmlparser.css.resolve;

import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class CssPropertyMerger {
    private CssPropertyMerger() {
    }

    public static String mergeTextDecoration(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        Set<String> setNormalizeTextDecoration = normalizeTextDecoration(str);
        setNormalizeTextDecoration.addAll(normalizeTextDecoration(str2));
        StringBuilder sb = new StringBuilder();
        for (String str3 : setNormalizeTextDecoration) {
            if (sb.length() != 0) {
                sb.append(StringUtils.SPACE);
            }
            sb.append(str3);
        }
        return sb.length() != 0 ? sb.toString() : "none";
    }

    private static Set<String> normalizeTextDecoration(String str) {
        String[] strArrSplit = str.split("\\s+");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.addAll(Arrays.asList(strArrSplit));
        if (linkedHashSet.contains("none")) {
            linkedHashSet.clear();
        }
        return linkedHashSet;
    }
}
