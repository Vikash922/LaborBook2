package com.itextpdf.io.font.constants;

import com.google.common.base.Ascii;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;

/* JADX INFO: loaded from: classes6.dex */
public final class FontWeights {
    public static final int BLACK = 900;
    public static final int BOLD = 700;
    public static final int EXTRA_BOLD = 800;
    public static final int EXTRA_LIGHT = 200;
    public static final int LIGHT = 300;
    public static final int MEDIUM = 500;
    public static final int NORMAL = 400;
    public static final int SEMI_BOLD = 600;
    public static final int THIN = 100;

    private FontWeights() {
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static int fromType1FontWeight(String str) {
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        byte b = -1;
        switch (lowerCase.hashCode()) {
            case -1078030475:
                if (lowerCase.equals("medium")) {
                    b = 0;
                }
                break;
            case -1039745817:
                if (lowerCase.equals(CommonCssConstants.NORMAL)) {
                    b = 1;
                }
                break;
            case -252885355:
                if (lowerCase.equals("extrabold")) {
                    b = 2;
                }
                break;
            case 101145:
                if (lowerCase.equals("fat")) {
                    b = 3;
                }
                break;
            case 3029637:
                if (lowerCase.equals("bold")) {
                    b = 4;
                }
                break;
            case 3029737:
                if (lowerCase.equals("book")) {
                    b = 5;
                }
                break;
            case 3559065:
                if (lowerCase.equals(CommonCssConstants.THIN)) {
                    b = 6;
                }
                break;
            case 93818879:
                if (lowerCase.equals("black")) {
                    b = 7;
                }
                break;
            case 99152071:
                if (lowerCase.equals("heavy")) {
                    b = 8;
                }
                break;
            case 102970646:
                if (lowerCase.equals("light")) {
                    b = 9;
                }
                break;
            case 111384492:
                if (lowerCase.equals("ultra")) {
                    b = 10;
                }
                break;
            case 750388719:
                if (lowerCase.equals("extrablack")) {
                    b = Ascii.VT;
                }
                break;
            case 759540486:
                if (lowerCase.equals("extralight")) {
                    b = Ascii.FF;
                }
                break;
            case 851509730:
                if (lowerCase.equals("demibold")) {
                    b = Ascii.CR;
                }
                break;
            case 1086463900:
                if (lowerCase.equals("regular")) {
                    b = Ascii.SO;
                }
                break;
            case 1223860979:
                if (lowerCase.equals("semibold")) {
                    b = Ascii.SI;
                }
                break;
            case 1453726769:
                if (lowerCase.equals("ultrabold")) {
                    b = 16;
                }
                break;
            case 2115757011:
                if (lowerCase.equals("ultrablack")) {
                    b = 17;
                }
                break;
            case 2124908778:
                if (lowerCase.equals("ultralight")) {
                    b = Ascii.DC2;
                }
                break;
        }
        switch (b) {
            case 0:
                return 500;
            case 1:
            case 5:
            case 14:
            default:
                return 400;
            case 2:
            case 16:
                return 800;
            case 3:
            case 7:
            case 8:
            case 10:
            case 11:
            case 17:
                return 900;
            case 4:
                return 700;
            case 6:
            case 12:
                return 200;
            case 9:
                return 300;
            case 13:
            case 15:
                return 600;
            case 18:
                return 100;
        }
    }

    public static int normalizeFontWeight(int i) {
        int i2 = (i / 100) * 100;
        if (i2 < 100) {
            return 100;
        }
        if (i2 > 900) {
            return 900;
        }
        return i2;
    }
}
