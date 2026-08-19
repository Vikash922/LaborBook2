package com.itextpdf.styledxmlparser.util;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class WhiteSpaceUtil {
    private static final Set<Character> EM_SPACES;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add((char) 8194);
        hashSet.add((char) 8195);
        hashSet.add((char) 8201);
        EM_SPACES = Collections.unmodifiableSet(hashSet);
    }

    public static String collapseConsecutiveSpaces(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            if (isNonEmSpace(str.charAt(i))) {
                if (sb.length() == 0 || !isNonEmSpace(sb.charAt(sb.length() - 1))) {
                    sb.append(StringUtils.SPACE);
                }
            } else {
                sb.append(str.charAt(i));
            }
        }
        return sb.toString();
    }

    public static boolean isNonEmSpace(char c) {
        return Character.isWhitespace(c) && !EM_SPACES.contains(Character.valueOf(c));
    }
}
