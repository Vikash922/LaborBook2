package com.itextpdf.commons.actions.producer;

import com.itextpdf.commons.exceptions.CommonsExceptionMessageConstant;

/* JADX INFO: loaded from: classes6.dex */
abstract class AbstractFormattedPlaceholderPopulator implements IPlaceholderPopulator {
    protected static final char APOSTROPHE = '\'';
    private static final char A_LOWERCASE = 'a';
    private static final char A_UPPERCASE = 'A';
    private static final char ESCAPE_CHARACTER = '\\';
    private static final char Z_LOWERCASE = 'z';
    private static final char Z_UPPERCASE = 'Z';

    protected final boolean isLetter(char c) {
        return ('a' <= c && 'z' >= c) || ('A' <= c && 'Z' >= c);
    }

    AbstractFormattedPlaceholderPopulator() {
    }

    protected int attachQuotedString(int i, StringBuilder sb, char[] cArr) {
        char c;
        int i2 = i + 1;
        boolean z = false;
        while (i2 < cArr.length && ((c = cArr[i2]) != '\'' || z)) {
            z = c == '\\' && !z;
            if (!z) {
                sb.append(c);
            }
            i2++;
        }
        if (i2 != cArr.length) {
            return i2;
        }
        throw new IllegalArgumentException(CommonsExceptionMessageConstant.PATTERN_CONTAINS_OPEN_QUOTATION);
    }
}
