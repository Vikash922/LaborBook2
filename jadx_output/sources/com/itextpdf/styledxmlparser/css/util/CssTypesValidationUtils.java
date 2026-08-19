package com.itextpdf.styledxmlparser.css.util;

import com.amplitude.core.events.Identify;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.validate.CssDeclarationValidationMaster;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class CssTypesValidationUtils {
    private static final String[] ANGLE_MEASUREMENTS_VALUES = {CommonCssConstants.DEG, CommonCssConstants.GRAD, CommonCssConstants.RAD};
    private static final String[] RELATIVE_MEASUREMENTS_VALUES = {CommonCssConstants.PERCENTAGE, "em", CommonCssConstants.f3299EX, CommonCssConstants.REM};

    private CssTypesValidationUtils() {
    }

    public static boolean isAngleValue(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        for (String str2 : ANGLE_MEASUREMENTS_VALUES) {
            if (strTrim.endsWith(str2) && isNumber(strTrim.substring(0, strTrim.length() - str2.length()))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isBase64Data(String str) {
        return str.matches("^data:([^\\s]*);base64,([^\\s]*)");
    }

    public static boolean isColorProperty(String str) {
        return CssDeclarationValidationMaster.checkDeclaration(new CssDeclaration("color", str));
    }

    public static boolean isEmValue(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        return strTrim.endsWith("em") && isNumber(strTrim.substring(0, strTrim.length() - "em".length()));
    }

    public static boolean isExValue(String str) {
        String strTrim;
        return str != null && (strTrim = str.trim()) != null && strTrim.endsWith(CommonCssConstants.f3299EX) && isNumber(strTrim.substring(0, strTrim.length() - CommonCssConstants.f3299EX.length()));
    }

    public static boolean isMetricValue(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        for (String str2 : CommonCssConstants.METRIC_MEASUREMENTS_VALUES) {
            if (strTrim.endsWith(str2) && isNumber(strTrim.substring(0, strTrim.length() - str2.length()))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNegativeValue(String str) {
        if (str == null) {
            return false;
        }
        if (isNumber(str) || isRelativeValue(str) || isMetricValue(str)) {
            return str.startsWith(Identify.UNSET_VALUE);
        }
        return false;
    }

    public static boolean isNumber(String str) {
        return str != null && (str.matches("^[-+]?\\d\\d*\\.\\d*$") || str.matches("^[-+]?\\d\\d*$") || str.matches("^[-+]?\\.\\d\\d*$"));
    }

    public static boolean isPercentageValue(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        return strTrim.endsWith(CommonCssConstants.PERCENTAGE) && isNumber(strTrim.substring(0, strTrim.length() - CommonCssConstants.PERCENTAGE.length()));
    }

    public static boolean isRelativeValue(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        for (String str2 : RELATIVE_MEASUREMENTS_VALUES) {
            if (strTrim.endsWith(str2) && isNumber(strTrim.substring(0, strTrim.length() - str2.length()))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isRemValue(String str) {
        String strTrim;
        return str != null && (strTrim = str.trim()) != null && strTrim.endsWith(CommonCssConstants.REM) && isNumber(strTrim.substring(0, strTrim.length() - CommonCssConstants.REM.length()));
    }

    public static boolean isValidNumericValue(String str) {
        if (str == null || str.contains(StringUtils.SPACE)) {
            return false;
        }
        return isRelativeValue(str) || isMetricValue(str) || isNumber(str);
    }

    public static boolean isInitialOrInheritOrUnset(String str) {
        return CommonCssConstants.INITIAL.equals(str) || CommonCssConstants.INHERIT.equals(str) || CommonCssConstants.UNSET.equals(str);
    }

    public static boolean containsInitialOrInheritOrUnset(String str) {
        if (str == null) {
            return false;
        }
        return str.contains(CommonCssConstants.INITIAL) || str.contains(CommonCssConstants.INHERIT) || str.contains(CommonCssConstants.UNSET);
    }

    public static boolean isZero(String str) {
        return isNumericZeroValue(str) || isMetricZeroValue(str) || isRelativeZeroValue(str);
    }

    static boolean isMetricZeroValue(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        for (String str2 : CommonCssConstants.METRIC_MEASUREMENTS_VALUES) {
            if (strTrim.endsWith(str2) && isNumericZeroValue(strTrim.substring(0, strTrim.length() - str2.length()))) {
                return true;
            }
        }
        return false;
    }

    static boolean isNumericZeroValue(String str) {
        return str != null && (str.matches("^[-+]?0$") || str.matches("^[-+]?\\.0$"));
    }

    static boolean isRelativeZeroValue(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        for (String str2 : RELATIVE_MEASUREMENTS_VALUES) {
            if (strTrim.endsWith(str2) && isNumericZeroValue(strTrim.substring(0, strTrim.length() - str2.length()))) {
                return true;
            }
        }
        return false;
    }
}
