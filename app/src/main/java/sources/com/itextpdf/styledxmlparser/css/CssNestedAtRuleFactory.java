package com.itextpdf.styledxmlparser.css;

import com.google.common.base.Ascii;
import com.itextpdf.styledxmlparser.css.media.CssMediaRule;
import com.itextpdf.styledxmlparser.css.page.CssMarginRule;
import com.itextpdf.styledxmlparser.css.page.CssPageRule;

/* JADX INFO: loaded from: classes6.dex */
public final class CssNestedAtRuleFactory {
    private CssNestedAtRuleFactory() {
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static CssNestedAtRule createNestedRule(String str) {
        String strTrim = str.trim();
        String strExtractRuleNameFromDeclaration = extractRuleNameFromDeclaration(strTrim);
        String strTrim2 = strTrim.substring(strExtractRuleNameFromDeclaration.length()).trim();
        strExtractRuleNameFromDeclaration.hashCode();
        byte b = -1;
        switch (strExtractRuleNameFromDeclaration.hashCode()) {
            case -1586477797:
                if (strExtractRuleNameFromDeclaration.equals("font-face")) {
                    b = 0;
                }
                break;
            case -1570272732:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.RIGHT_TOP)) {
                    b = 1;
                }
                break;
            case -1398869405:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.TOP_LEFT_CORNER)) {
                    b = 2;
                }
                break;
            case -1314880604:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.TOP_RIGHT)) {
                    b = 3;
                }
                break;
            case -1012429441:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.TOP_LEFT)) {
                    b = 4;
                }
                break;
            case -655373719:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.BOTTOM_LEFT)) {
                    b = 5;
                }
                break;
            case -634754168:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.BOTTOM_RIGHT_CORNER)) {
                    b = 6;
                }
                break;
            case -61818722:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.TOP_RIGHT_CORNER)) {
                    b = 7;
                }
                break;
            case 3433103:
                if (strExtractRuleNameFromDeclaration.equals("page")) {
                    b = 8;
                }
                break;
            case 103772132:
                if (strExtractRuleNameFromDeclaration.equals("media")) {
                    b = 9;
                }
                break;
            case 273738492:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.RIGHT_BOTTOM)) {
                    b = 10;
                }
                break;
            case 582625894:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.RIGHT_MIDDLE)) {
                    b = Ascii.f397VT;
                }
                break;
            case 1163912186:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.BOTTOM_RIGHT)) {
                    b = Ascii.f386FF;
                }
                break;
            case 1288627767:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.BOTTOM_CENTER)) {
                    b = Ascii.f384CR;
                }
                break;
            case 1353595449:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.BOTTOM_LEFT_CORNER)) {
                    b = Ascii.f394SO;
                }
                break;
            case 1355259569:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.LEFT_BOTTOM)) {
                    b = Ascii.f393SI;
                }
                break;
            case 1664146971:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.LEFT_MIDDLE)) {
                    b = 16;
                }
                break;
            case 1717271183:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.LEFT_TOP)) {
                    b = 17;
                }
                break;
            case 1755462605:
                if (strExtractRuleNameFromDeclaration.equals(CssRuleName.TOP_CENTER)) {
                    b = Ascii.DC2;
                }
                break;
        }
        switch (b) {
            case 0:
                return new CssFontFaceRule();
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                return new CssMarginRule(strExtractRuleNameFromDeclaration);
            case 8:
                return new CssPageRule(strTrim2);
            case 9:
                return new CssMediaRule(strTrim2);
            default:
                return new CssNestedAtRule(strExtractRuleNameFromDeclaration, strTrim2);
        }
    }

    static String extractRuleNameFromDeclaration(String str) {
        int iIndexOf = str.indexOf(32);
        int iIndexOf2 = str.indexOf(58);
        if (iIndexOf == -1) {
            iIndexOf = iIndexOf2;
        } else if (iIndexOf2 != -1) {
            iIndexOf = Math.min(iIndexOf, iIndexOf2);
        }
        return iIndexOf == -1 ? str : str.substring(0, iIndexOf);
    }
}
