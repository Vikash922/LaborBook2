package com.itextpdf.styledxmlparser.css.validate.impl.datatype;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator;

/* JADX INFO: loaded from: classes6.dex */
public class CssTransformValidator implements ICssDataTypeValidator {
    @Override // com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator
    public boolean isValid(String str) {
        if ("none".equals(str)) {
            return true;
        }
        for (String str2 : str.split("\\)")) {
            if (!isValidComponent(str2)) {
                return false;
            }
        }
        return true;
    }

    private boolean isValidComponent(String str) {
        if (!"none".equals(str) && str.indexOf(40) > 0) {
            String strTrim = str.substring(0, str.indexOf(40)).trim();
            String strSubstring = str.substring(str.indexOf(40) + 1);
            if (CommonCssConstants.MATRIX.equals(strTrim) || CommonCssConstants.SCALE.equals(strTrim) || CommonCssConstants.SCALE_X.equals(strTrim) || CommonCssConstants.SCALE_Y.equals(strTrim)) {
                String[] strArrSplit = strSubstring.split(",");
                if ((strArrSplit.length == 6 && CommonCssConstants.MATRIX.equals(strTrim)) || (((strArrSplit.length == 1 || strArrSplit.length == 2) && CommonCssConstants.SCALE.equals(strTrim)) || (strArrSplit.length == 1 && (CommonCssConstants.SCALE_X.equals(strTrim) || CommonCssConstants.SCALE_Y.equals(strTrim))))) {
                    int i = 0;
                    while (i < strArrSplit.length) {
                        try {
                            Float.parseFloat(strArrSplit[i].trim());
                            i++;
                        } catch (NumberFormatException unused) {
                            return false;
                        }
                    }
                    if (i == strArrSplit.length) {
                        return true;
                    }
                }
            } else {
                if (CommonCssConstants.TRANSLATE.equals(strTrim) || CommonCssConstants.TRANSLATE_X.equals(strTrim) || CommonCssConstants.TRANSLATE_Y.equals(strTrim)) {
                    String[] strArrSplit2 = strSubstring.split(",");
                    if (strArrSplit2.length != 1 && (strArrSplit2.length != 2 || !CommonCssConstants.TRANSLATE.equals(strTrim))) {
                        return false;
                    }
                    for (String str2 : strArrSplit2) {
                        if (!isValidForTranslate(str2)) {
                            return false;
                        }
                    }
                    return true;
                }
                if (CommonCssConstants.ROTATE.equals(strTrim)) {
                    try {
                        if (Float.parseFloat(strSubstring) == 0.0f) {
                            return true;
                        }
                    } catch (NumberFormatException unused2) {
                    }
                    int iIndexOf = strSubstring.indexOf(100);
                    int iIndexOf2 = strSubstring.indexOf(114);
                    if ((iIndexOf > 0 && strSubstring.substring(iIndexOf).equals(CommonCssConstants.DEG)) || (iIndexOf2 > 0 && strSubstring.substring(iIndexOf2).equals(CommonCssConstants.RAD))) {
                        if (iIndexOf <= 0) {
                            iIndexOf = iIndexOf2;
                        }
                        try {
                            Double.parseDouble(strSubstring.substring(0, iIndexOf));
                            return true;
                        } catch (NumberFormatException unused3) {
                        }
                    }
                    return false;
                }
                if (CommonCssConstants.SKEW.equals(strTrim) || CommonCssConstants.SKEW_X.equals(strTrim) || CommonCssConstants.SKEW_Y.equals(strTrim)) {
                    String[] strArrSplit3 = strSubstring.split(",");
                    if (strArrSplit3.length == 1 || (strArrSplit3.length == 2 && CommonCssConstants.SKEW.equals(strTrim))) {
                        for (int i2 = 0; i2 < strArrSplit3.length; i2++) {
                            try {
                                if (Float.parseFloat(strArrSplit3[i2]) != 0.0f) {
                                    return false;
                                }
                            } catch (NumberFormatException unused4) {
                            }
                            int iIndexOf3 = strArrSplit3[i2].indexOf(100);
                            int iIndexOf4 = strArrSplit3[i2].indexOf(114);
                            if (iIndexOf3 < 0 && iIndexOf4 < 0) {
                                return false;
                            }
                            if ((iIndexOf3 > 0 && !strArrSplit3[i2].substring(iIndexOf3).equals(CommonCssConstants.DEG) && iIndexOf4 < 0) || (iIndexOf4 > 0 && !strArrSplit3[i2].substring(iIndexOf4).equals(CommonCssConstants.RAD))) {
                                return false;
                            }
                            try {
                                String strTrim2 = strArrSplit3[i2].trim();
                                if (iIndexOf4 > 0) {
                                    iIndexOf3 = iIndexOf4;
                                }
                                Float.parseFloat(strTrim2.substring(0, iIndexOf3));
                            } catch (NumberFormatException unused5) {
                                return false;
                            }
                        }
                        return true;
                    }
                }
                return false;
            }
        }
        return false;
    }

    private static boolean isValidForTranslate(String str) {
        if (str == null) {
            return false;
        }
        int i = 0;
        while (i < str.length() && (str.charAt(i) == '+' || str.charAt(i) == '-' || str.charAt(i) == '.' || (str.charAt(i) >= '0' && str.charAt(i) <= '9'))) {
            i++;
        }
        if (i <= 0) {
            return false;
        }
        try {
            Float.parseFloat(str.substring(0, i));
            return Float.parseFloat(str.substring(0, i)) == 0.0f || str.substring(i).equals(CommonCssConstants.f3303PT) || str.substring(i).equals(CommonCssConstants.f3300IN) || str.substring(i).equals(CommonCssConstants.f3297CM) || str.substring(i).equals("q") || str.substring(i).equals(CommonCssConstants.f3301MM) || str.substring(i).equals(CommonCssConstants.f3302PC) || str.substring(i).equals(CommonCssConstants.f3304PX) || str.substring(i).equals(CommonCssConstants.PERCENTAGE);
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
