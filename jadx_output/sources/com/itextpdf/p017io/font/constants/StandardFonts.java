package com.itextpdf.p017io.font.constants;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class StandardFonts {
    private static final Set<String> BUILTIN_FONTS;
    public static final String COURIER = "Courier";
    public static final String COURIER_BOLD = "Courier-Bold";
    public static final String COURIER_BOLDOBLIQUE = "Courier-BoldOblique";
    public static final String COURIER_OBLIQUE = "Courier-Oblique";
    public static final String HELVETICA = "Helvetica";
    public static final String HELVETICA_BOLD = "Helvetica-Bold";
    public static final String HELVETICA_BOLDOBLIQUE = "Helvetica-BoldOblique";
    public static final String HELVETICA_OBLIQUE = "Helvetica-Oblique";
    public static final String SYMBOL = "Symbol";
    public static final String TIMES_BOLD = "Times-Bold";
    public static final String TIMES_BOLDITALIC = "Times-BoldItalic";
    public static final String TIMES_ITALIC = "Times-Italic";
    public static final String TIMES_ROMAN = "Times-Roman";
    public static final String ZAPFDINGBATS = "ZapfDingbats";

    private StandardFonts() {
    }

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("Courier");
        hashSet.add(COURIER_BOLD);
        hashSet.add(COURIER_BOLDOBLIQUE);
        hashSet.add(COURIER_OBLIQUE);
        hashSet.add("Helvetica");
        hashSet.add(HELVETICA_BOLD);
        hashSet.add(HELVETICA_BOLDOBLIQUE);
        hashSet.add(HELVETICA_OBLIQUE);
        hashSet.add("Symbol");
        hashSet.add(TIMES_ROMAN);
        hashSet.add(TIMES_BOLD);
        hashSet.add(TIMES_BOLDITALIC);
        hashSet.add(TIMES_ITALIC);
        hashSet.add("ZapfDingbats");
        BUILTIN_FONTS = Collections.unmodifiableSet(hashSet);
    }

    public static boolean isStandardFont(String str) {
        return BUILTIN_FONTS.contains(str);
    }
}
