package com.itextpdf.svg.utils;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.geom.Vector;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;

/* JADX INFO: loaded from: classes6.dex */
public class SvgCoordinateUtils {
    public static String[] makeRelativeOperatorCoordinatesAbsolute(String[] strArr, double[] dArr) {
        if (strArr.length % dArr.length != 0) {
            throw new IllegalArgumentException(SvgExceptionMessageConstant.f3338xcc3e6cee);
        }
        String[] strArr2 = new String[strArr.length];
        int i = 0;
        while (i < strArr.length) {
            int i2 = 0;
            while (i2 < dArr.length) {
                strArr2[i] = SvgCssUtils.convertDoubleToString(Double.parseDouble(strArr[i]) + dArr[i2]);
                i2++;
                i++;
            }
        }
        return strArr2;
    }

    public static double calculateAngleBetweenTwoVectors(Vector vector, Vector vector2) {
        return Math.acos(((double) vector.dot(vector2)) / (((double) vector.length()) * ((double) vector2.length())));
    }

    public static double getCoordinateForUserSpaceOnUse(String str, double d, double d2, double d3, float f, float f2) {
        UnitValue lengthValueToPt = CssDimensionParsingUtils.parseLengthValueToPt(str, f, f2);
        if (lengthValueToPt == null) {
            return d;
        }
        if (lengthValueToPt.getUnitType() == 2) {
            return d2 + ((d3 * ((double) lengthValueToPt.getValue())) / 100.0d);
        }
        return lengthValueToPt.getValue();
    }

    public static double getCoordinateForObjectBoundingBox(String str, double d) {
        int iDeterminePositionBetweenValueAndUnit;
        if (CssTypesValidationUtils.isPercentageValue(str)) {
            return CssDimensionParsingUtils.parseRelativeValue(str, 1.0f);
        }
        return ((CssTypesValidationUtils.isNumber(str) || CssTypesValidationUtils.isMetricValue(str) || CssTypesValidationUtils.isRelativeValue(str)) && (iDeterminePositionBetweenValueAndUnit = CssDimensionParsingUtils.determinePositionBetweenValueAndUnit(str)) > 0) ? CssDimensionParsingUtils.parseDouble(str.substring(0, iDeterminePositionBetweenValueAndUnit)).doubleValue() : d;
    }

    public static Rectangle applyViewBox(Rectangle rectangle, Rectangle rectangle2, String str, String str2) {
        double scaleWidthHeight;
        double height;
        Rectangle rectangle3;
        double x;
        double y;
        double x2;
        double y2;
        double x3;
        double y3;
        double d;
        double d2;
        if (rectangle2 == null) {
            throw new IllegalArgumentException(SvgExceptionMessageConstant.CURRENT_VIEWPORT_IS_NULL);
        }
        if (rectangle == null || rectangle.getWidth() <= 0.0f || rectangle.getHeight() <= 0.0f) {
            throw new IllegalArgumentException(SvgExceptionMessageConstant.VIEWBOX_IS_INCORRECT);
        }
        if (str == null || (str2 != null && !SvgConstants.Values.MEET.equals(str2) && !SvgConstants.Values.SLICE.equals(str2))) {
            return applyViewBox(rectangle, rectangle2, "xmidymid", SvgConstants.Values.MEET);
        }
        if ("none".equalsIgnoreCase(str)) {
            scaleWidthHeight = ((double) rectangle2.getWidth()) / ((double) rectangle.getWidth());
            height = ((double) rectangle2.getHeight()) / ((double) rectangle.getHeight());
        } else {
            scaleWidthHeight = getScaleWidthHeight(rectangle, rectangle2, str2);
            height = scaleWidthHeight;
        }
        rectangle3 = new Rectangle(rectangle.getX(), rectangle.getY(), (float) (((double) rectangle.getWidth()) * scaleWidthHeight), (float) (((double) rectangle.getHeight()) * height));
        x = ((double) rectangle2.getX()) - ((double) rectangle3.getX());
        y = ((double) rectangle2.getY()) - ((double) rectangle3.getY());
        x2 = (((double) rectangle2.getX()) + (((double) rectangle2.getWidth()) / 2.0d)) - (((double) rectangle3.getX()) + (((double) rectangle3.getWidth()) / 2.0d));
        y2 = (((double) rectangle2.getY()) + (((double) rectangle2.getHeight()) / 2.0d)) - (((double) rectangle3.getY()) + (((double) rectangle3.getHeight()) / 2.0d));
        x3 = (((double) rectangle2.getX()) + ((double) rectangle2.getWidth())) - (((double) rectangle3.getX()) + ((double) rectangle3.getWidth()));
        y3 = (((double) rectangle2.getY()) + ((double) rectangle2.getHeight())) - (((double) rectangle3.getY()) + ((double) rectangle3.getHeight()));
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        switch (lowerCase) {
            case "xmaxymax":
                d = y3;
                d2 = x3;
                rectangle3.moveRight((float) d2);
                rectangle3.moveUp((float) d);
                return rectangle3;
            case "xmaxymid":
                d = y2;
                d2 = x3;
                rectangle3.moveRight((float) d2);
                rectangle3.moveUp((float) d);
                return rectangle3;
            case "xmaxymin":
                d = y;
                d2 = x3;
                rectangle3.moveRight((float) d2);
                rectangle3.moveUp((float) d);
                return rectangle3;
            case "xmidymax":
                d = y3;
                d2 = x2;
                rectangle3.moveRight((float) d2);
                rectangle3.moveUp((float) d);
                return rectangle3;
            case "xmidymid":
                d2 = x2;
                d = y2;
                rectangle3.moveRight((float) d2);
                rectangle3.moveUp((float) d);
                return rectangle3;
            case "xmidymin":
                d2 = x2;
                d = y;
                rectangle3.moveRight((float) d2);
                rectangle3.moveUp((float) d);
                return rectangle3;
            case "xminymax":
                d = y3;
                d2 = x;
                rectangle3.moveRight((float) d2);
                rectangle3.moveUp((float) d);
                return rectangle3;
            case "xminymid":
                d = y2;
                d2 = x;
                rectangle3.moveRight((float) d2);
                rectangle3.moveUp((float) d);
                return rectangle3;
            case "xminymin":
            case "none":
                d2 = x;
                d = y;
                rectangle3.moveRight((float) d2);
                rectangle3.moveUp((float) d);
                return rectangle3;
            default:
                return applyViewBox(rectangle, rectangle2, "xmidymid", SvgConstants.Values.MEET);
        }
    }

    private static double getScaleWidthHeight(Rectangle rectangle, Rectangle rectangle2, String str) {
        double width = ((double) rectangle2.getWidth()) / ((double) rectangle.getWidth());
        double height = ((double) rectangle2.getHeight()) / ((double) rectangle.getHeight());
        if (SvgConstants.Values.SLICE.equalsIgnoreCase(str)) {
            return Math.max(width, height);
        }
        if (SvgConstants.Values.MEET.equalsIgnoreCase(str) || str == null) {
            return Math.min(width, height);
        }
        throw new IllegalStateException(SvgExceptionMessageConstant.MEET_OR_SLICE_ARGUMENT_IS_INCORRECT);
    }
}
