package com.itextpdf.styledxmlparser.css.util;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.DeviceCmyk;
import com.itextpdf.kernel.colors.DeviceRgb;
import com.itextpdf.kernel.colors.WebColors;
import com.itextpdf.layout.properties.TransparentColor;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.exceptions.StyledXMLParserException;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import com.laborbook.keep.screen.calendar.utils.Constants;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class CssDimensionParsingUtils {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) CssDimensionParsingUtils.class);

    private static boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    private CssDimensionParsingUtils() {
    }

    public static Integer parseInteger(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Integer.valueOf(str);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Float parseFloat(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Float.valueOf(str);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Double parseDouble(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Double.valueOf(str);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static float parseAngle(String str, String str2) {
        int iDeterminePositionBetweenValueAndUnit = determinePositionBetweenValueAndUnit(str);
        if (iDeterminePositionBetweenValueAndUnit == 0) {
            if (str == null) {
                str = Constants.ATTENDANCE_STATUS_NULL;
            }
            throw new StyledXMLParserException(MessageFormatUtil.format(StyledXMLParserException.NAN, str));
        }
        float f = Float.parseFloat(str.substring(0, iDeterminePositionBetweenValueAndUnit));
        String strSubstring = str.substring(iDeterminePositionBetweenValueAndUnit);
        if (strSubstring.startsWith(CommonCssConstants.DEG) || (strSubstring.equals("") && CommonCssConstants.DEG.equals(str2))) {
            return (f * 3.1415927f) / 180.0f;
        }
        if (strSubstring.startsWith(CommonCssConstants.GRAD) || (strSubstring.equals("") && CommonCssConstants.GRAD.equals(str2))) {
            return (f * 3.1415927f) / 200.0f;
        }
        if (!strSubstring.startsWith(CommonCssConstants.RAD) && (!strSubstring.equals("") || !CommonCssConstants.RAD.equals(str2))) {
            Logger logger2 = logger;
            if (!strSubstring.equals("")) {
                str2 = strSubstring;
            }
            logger2.error(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.UNKNOWN_METRIC_ANGLE_PARSED, str2));
        }
        return f;
    }

    public static float parseAngle(String str) {
        return parseAngle(str, CommonCssConstants.DEG);
    }

    public static int[] parseAspectRatio(String str) {
        int iIndexOf = str.indexOf(47);
        try {
            return new int[]{Integer.parseInt(str.substring(0, iIndexOf)), Integer.parseInt(str.substring(iIndexOf + 1))};
        } catch (NullPointerException | NumberFormatException unused) {
            return null;
        }
    }

    public static float parseAbsoluteLength(String str, String str2) {
        double d;
        int iDeterminePositionBetweenValueAndUnit = determinePositionBetweenValueAndUnit(str);
        if (iDeterminePositionBetweenValueAndUnit == 0) {
            if (str == null) {
                str = Constants.ATTENDANCE_STATUS_NULL;
            }
            throw new StyledXMLParserException(MessageFormatUtil.format(StyledXMLParserException.NAN, str));
        }
        double d2 = Double.parseDouble(str.substring(0, iDeterminePositionBetweenValueAndUnit));
        String strSubstring = str.substring(iDeterminePositionBetweenValueAndUnit);
        if (strSubstring.startsWith(CommonCssConstants.f3303PT) || (strSubstring.equals("") && str2.equals(CommonCssConstants.f3303PT))) {
            return (float) d2;
        }
        if (strSubstring.startsWith(CommonCssConstants.f3300IN) || (strSubstring.equals("") && str2.equals(CommonCssConstants.f3300IN))) {
            d2 *= 72.0d;
        } else {
            if (strSubstring.startsWith(CommonCssConstants.f3297CM) || (strSubstring.equals("") && str2.equals(CommonCssConstants.f3297CM))) {
                d2 /= 2.54d;
            } else if (strSubstring.startsWith("q") || (strSubstring.equals("") && str2.equals("q"))) {
                d2 = ((d2 / 2.54d) * 72.0d) / 40.0d;
            } else if (strSubstring.startsWith(CommonCssConstants.f3301MM) || (strSubstring.equals("") && str2.equals(CommonCssConstants.f3301MM))) {
                d2 /= 25.4d;
            } else {
                if (strSubstring.startsWith(CommonCssConstants.f3302PC) || (strSubstring.equals("") && str2.equals(CommonCssConstants.f3302PC))) {
                    d = 12.0d;
                } else if (strSubstring.startsWith(CommonCssConstants.f3304PX) || (strSubstring.equals("") && str2.equals(CommonCssConstants.f3304PX))) {
                    d = 0.75d;
                } else {
                    Logger logger2 = logger;
                    if (!strSubstring.equals("")) {
                        str2 = strSubstring;
                    }
                    logger2.error(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.UNKNOWN_ABSOLUTE_METRIC_LENGTH_PARSED, str2));
                }
                d2 *= d;
            }
            d2 *= 72.0d;
        }
        return (float) d2;
    }

    public static float parseAbsoluteLength(String str) {
        return parseAbsoluteLength(str, CommonCssConstants.f3304PX);
    }

    public static float parseRelativeValue(String str, float f) {
        double d;
        double d2;
        int iDeterminePositionBetweenValueAndUnit = determinePositionBetweenValueAndUnit(str);
        if (iDeterminePositionBetweenValueAndUnit == 0) {
            return 0.0f;
        }
        double d3 = Double.parseDouble(str.substring(0, iDeterminePositionBetweenValueAndUnit));
        String strSubstring = str.substring(iDeterminePositionBetweenValueAndUnit);
        if (!strSubstring.startsWith(CommonCssConstants.PERCENTAGE)) {
            if (strSubstring.startsWith("em") || strSubstring.startsWith(CommonCssConstants.REM)) {
                d3 *= (double) f;
            } else if (strSubstring.startsWith(CommonCssConstants.f3299EX)) {
                d = ((double) f) * d3;
                d2 = 2.0d;
            }
            return (float) d3;
        }
        d = ((double) f) * d3;
        d2 = 100.0d;
        d3 = d / d2;
        return (float) d3;
    }

    public static UnitValue parseLengthValueToPt(String str, float f, float f2) {
        if (CssTypesValidationUtils.isMetricValue(str) || CssTypesValidationUtils.isNumber(str)) {
            return new UnitValue(1, parseAbsoluteLength(str));
        }
        if (str != null && str.endsWith(CommonCssConstants.PERCENTAGE)) {
            return new UnitValue(2, Float.parseFloat(str.substring(0, str.length() - 1)));
        }
        if (CssTypesValidationUtils.isRemValue(str)) {
            return new UnitValue(1, parseRelativeValue(str, f2));
        }
        if (CssTypesValidationUtils.isRelativeValue(str)) {
            return new UnitValue(1, parseRelativeValue(str, f));
        }
        return null;
    }

    public static float parseAbsoluteFontSize(String str, String str2) {
        if (str != null && CommonCssConstants.FONT_ABSOLUTE_SIZE_KEYWORDS_VALUES.containsKey(str)) {
            str = CommonCssConstants.FONT_ABSOLUTE_SIZE_KEYWORDS_VALUES.get(str);
        }
        try {
            return parseAbsoluteLength(str, str2);
        } catch (StyledXMLParserException unused) {
            return 0.0f;
        }
    }

    public static float parseAbsoluteFontSize(String str) {
        return parseAbsoluteFontSize(str, CommonCssConstants.f3304PX);
    }

    public static float parseRelativeFontSize(String str, float f) {
        double d;
        if (CommonCssConstants.SMALLER.equals(str)) {
            d = ((double) f) / 1.2d;
        } else {
            if (!CommonCssConstants.LARGER.equals(str)) {
                return parseRelativeValue(str, f);
            }
            d = ((double) f) * 1.2d;
        }
        return (float) d;
    }

    public static UnitValue[] parseSpecificCornerBorderRadius(String str, float f, float f2) {
        if (str == null) {
            return null;
        }
        UnitValue[] unitValueArr = new UnitValue[2];
        String[] strArrSplit = str.split("\\s+");
        UnitValue lengthValueToPt = parseLengthValueToPt(strArrSplit[0], f, f2);
        unitValueArr[0] = lengthValueToPt;
        if (2 == strArrSplit.length) {
            lengthValueToPt = parseLengthValueToPt(strArrSplit[1], f, f2);
        }
        unitValueArr[1] = lengthValueToPt;
        return unitValueArr;
    }

    public static float parseResolution(String str) {
        double d;
        int iDeterminePositionBetweenValueAndUnit = determinePositionBetweenValueAndUnit(str);
        if (iDeterminePositionBetweenValueAndUnit == 0) {
            return 0.0f;
        }
        double d2 = Double.parseDouble(str.substring(0, iDeterminePositionBetweenValueAndUnit));
        String strSubstring = str.substring(iDeterminePositionBetweenValueAndUnit);
        if (strSubstring.startsWith(CommonCssConstants.DPCM)) {
            d = 2.54d;
        } else {
            if (!strSubstring.startsWith(CommonCssConstants.DPPX)) {
                if (!strSubstring.startsWith(CommonCssConstants.DPI)) {
                    throw new StyledXMLParserException(StyledXmlParserLogMessageConstant.INCORRECT_RESOLUTION_UNIT_VALUE);
                }
                return (float) d2;
            }
            d = 96.0d;
        }
        d2 *= d;
        return (float) d2;
    }

    public static TransparentColor parseColor(String str) {
        Color deviceRgb;
        float[] rGBAColor = WebColors.getRGBAColor(str);
        float f = 1.0f;
        if (rGBAColor == null) {
            rGBAColor = WebColors.getCMYKArray(str);
            deviceRgb = null;
        } else {
            deviceRgb = new DeviceRgb(rGBAColor[0], rGBAColor[1], rGBAColor[2]);
            if (rGBAColor.length == 4) {
                f = rGBAColor[3];
            }
        }
        if (rGBAColor == null) {
            deviceRgb = new DeviceRgb(0, 0, 0);
        } else if (deviceRgb == null) {
            deviceRgb = new DeviceCmyk(rGBAColor[0], rGBAColor[1], rGBAColor[2], rGBAColor[3]);
            if (rGBAColor.length == 5) {
                f = rGBAColor[4];
            }
        }
        return new TransparentColor(deviceRgb, f);
    }

    public static float[] parseRgbaColor(String str) {
        float[] rGBAColor = WebColors.getRGBAColor(str);
        if (rGBAColor != null) {
            return rGBAColor;
        }
        logger.error(MessageFormatUtil.format(IoLogMessageConstant.COLOR_NOT_PARSED, str));
        return new float[]{0.0f, 0.0f, 0.0f, 1.0f};
    }

    public static int determinePositionBetweenValueAndUnit(String str) {
        int i = 0;
        if (str == null) {
            return 0;
        }
        while (i < str.length() && (str.charAt(i) == '+' || str.charAt(i) == '-' || str.charAt(i) == '.' || isDigit(str.charAt(i)) || isExponentNotation(str, i))) {
            i++;
        }
        return i;
    }

    private static boolean isExponentNotation(String str, int i) {
        int i2;
        int i3;
        return i < str.length() && Character.toLowerCase(str.charAt(i)) == 'e' && (((i2 = i + 1) < str.length() && isDigit(str.charAt(i2))) || ((i3 = i + 2) < str.length() && ((str.charAt(i2) == '-' || str.charAt(i2) == '+') && isDigit(str.charAt(i3)))));
    }
}
