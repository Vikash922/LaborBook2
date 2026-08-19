package com.itextpdf.kernel.pdf.tagging;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class StandardNamespaces {
    private static final String MATH_ML = "http://www.w3.org/1998/Math/MathML";
    public static final String PDF_1_7 = "http://iso.org/pdf/ssn";
    public static final String PDF_2_0 = "http://iso.org/pdf2/ssn";
    private static final Set<String> STD_STRUCT_NAMESPACE_1_7_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(StandardRoles.DOCUMENT, StandardRoles.PART, StandardRoles.DIV, "P", "H", StandardRoles.f3186H1, StandardRoles.f3187H2, StandardRoles.f3188H3, StandardRoles.f3189H4, StandardRoles.f3190H5, StandardRoles.f3191H6, StandardRoles.LBL, StandardRoles.SPAN, "Link", StandardRoles.ANNOT, StandardRoles.FORM, StandardRoles.RUBY, StandardRoles.f3195RB, StandardRoles.f3197RT, StandardRoles.f3196RP, StandardRoles.WARICHU, StandardRoles.f3202WT, StandardRoles.f3201WP, "L", StandardRoles.f3193LI, StandardRoles.LBODY, StandardRoles.TABLE, StandardRoles.f3200TR, StandardRoles.f3199TH, StandardRoles.f3198TD, StandardRoles.THEAD, StandardRoles.TBODY, StandardRoles.TFOOT, StandardRoles.CAPTION, StandardRoles.FIGURE, StandardRoles.FORMULA, StandardRoles.SECT, StandardRoles.ART, StandardRoles.BLOCKQUOTE, StandardRoles.TOC, StandardRoles.TOCI, StandardRoles.INDEX, StandardRoles.NONSTRUCT, StandardRoles.PRIVATE, StandardRoles.QUOTE, StandardRoles.NOTE, StandardRoles.REFERENCE, StandardRoles.BIBENTRY, StandardRoles.CODE)));
    private static final Set<String> STD_STRUCT_NAMESPACE_2_0_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(StandardRoles.DOCUMENT, StandardRoles.DOCUMENTFRAGMENT, StandardRoles.PART, StandardRoles.SECT, StandardRoles.NONSTRUCT, StandardRoles.DIV, StandardRoles.ASIDE, StandardRoles.TITLE, StandardRoles.SUB, "P", "H", StandardRoles.LBL, StandardRoles.f3184EM, StandardRoles.STRONG, StandardRoles.SPAN, "Link", StandardRoles.ANNOT, StandardRoles.FORM, StandardRoles.RUBY, StandardRoles.f3195RB, StandardRoles.f3197RT, StandardRoles.f3196RP, StandardRoles.WARICHU, StandardRoles.f3202WT, StandardRoles.f3201WP, StandardRoles.FENOTE, "L", StandardRoles.f3193LI, StandardRoles.LBODY, StandardRoles.TABLE, StandardRoles.f3200TR, StandardRoles.f3199TH, StandardRoles.f3198TD, StandardRoles.THEAD, StandardRoles.TBODY, StandardRoles.TFOOT, StandardRoles.CAPTION, StandardRoles.FIGURE, StandardRoles.FORMULA, StandardRoles.ARTIFACT)));

    public static String getDefault() {
        return PDF_1_7;
    }

    public static boolean isKnownDomainSpecificNamespace(PdfNamespace pdfNamespace) {
        return MATH_ML.equals(pdfNamespace.getNamespaceName());
    }

    public static boolean roleBelongsToStandardNamespace(String str, String str2) {
        if (PDF_1_7.equals(str2)) {
            return STD_STRUCT_NAMESPACE_1_7_TYPES.contains(str);
        }
        if (PDF_2_0.equals(str2)) {
            return STD_STRUCT_NAMESPACE_2_0_TYPES.contains(str) || isHnRole(str);
        }
        return false;
    }

    public static boolean isHnRole(String str) {
        if (!str.startsWith("H") || str.length() <= 1 || str.charAt(1) == '0') {
            return false;
        }
        try {
            return Integer.parseInt(str.substring(1, str.length())) > 0;
        } catch (Exception unused) {
            return false;
        }
    }
}
