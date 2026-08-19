package com.itextpdf.layout.font;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;

/* JADX INFO: loaded from: classes6.dex */
final class FontCharacteristicsUtils {
    FontCharacteristicsUtils() {
    }

    static short normalizeFontWeight(short s) {
        short s2 = (short) ((s / 100) * 100);
        if (s2 < 100) {
            return (short) 100;
        }
        if (s2 > 900) {
            return (short) 900;
        }
        return s2;
    }

    static short parseFontWeight(String str) {
        if (str == null || str.length() == 0) {
            return (short) -1;
        }
        String lowerCase = str.trim().toLowerCase();
        lowerCase.hashCode();
        if (lowerCase.equals(CommonCssConstants.NORMAL)) {
            return (short) 400;
        }
        if (lowerCase.equals("bold")) {
            return (short) 700;
        }
        try {
            return normalizeFontWeight((short) Integer.parseInt(lowerCase));
        } catch (NumberFormatException unused) {
            return (short) -1;
        }
    }
}
