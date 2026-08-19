package com.itextpdf.svg.utils;

import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import com.itextpdf.svg.exceptions.SvgProcessingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes6.dex */
public final class TransformUtils {
    private static final String MATRIX = "MATRIX";
    private static final String ROTATE = "ROTATE";
    private static final String SCALE = "SCALE";
    private static final String SKEWX = "SKEWX";
    private static final String SKEWY = "SKEWY";
    private static final String TRANSLATE = "TRANSLATE";

    private TransformUtils() {
    }

    public static AffineTransform parseTransform(String str) {
        if (str == null) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.TRANSFORM_NULL);
        }
        if (str.isEmpty()) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.TRANSFORM_EMPTY);
        }
        AffineTransform affineTransform = new AffineTransform();
        Iterator<String> it = splitString(str).iterator();
        while (it.hasNext()) {
            AffineTransform affineTransformTransformationStringToMatrix = transformationStringToMatrix(it.next());
            if (affineTransformTransformationStringToMatrix != null) {
                affineTransform.concatenate(affineTransformTransformationStringToMatrix);
            }
        }
        return affineTransform;
    }

    private static List<String> splitString(String str) {
        ArrayList arrayList = new ArrayList();
        StringTokenizer stringTokenizer = new StringTokenizer(str, ")", false);
        while (stringTokenizer.hasMoreTokens()) {
            String strTrim = stringTokenizer.nextToken().trim();
            if (strTrim != null && !strTrim.isEmpty()) {
                arrayList.add(strTrim + ")");
            }
        }
        return arrayList;
    }

    private static AffineTransform transformationStringToMatrix(String str) {
        String upperCase = getNameFromString(str).toUpperCase();
        if (upperCase.isEmpty()) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.INVALID_TRANSFORM_DECLARATION);
        }
        upperCase.hashCode();
        switch (upperCase) {
            case "MATRIX":
                return createMatrixTransformation(getValuesFromTransformationString(str));
            case "ROTATE":
                return createRotationTransformation(getValuesFromTransformationString(str));
            case "TRANSLATE":
                return createTranslateTransformation(getValuesFromTransformationString(str));
            case "SCALE":
                return createScaleTransformation(getValuesFromTransformationString(str));
            case "SKEWX":
                return createSkewXTransformation(getValuesFromTransformationString(str));
            case "SKEWY":
                return createSkewYTransformation(getValuesFromTransformationString(str));
            default:
                throw new SvgProcessingException(SvgExceptionMessageConstant.UNKNOWN_TRANSFORMATION_TYPE);
        }
    }

    private static AffineTransform createSkewYTransformation(List<String> list) {
        if (list.size() != 1) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.TRANSFORM_INCORRECT_NUMBER_OF_VALUES);
        }
        return new AffineTransform(1.0d, Math.tan(Math.toRadians(CssDimensionParsingUtils.parseFloat(list.get(0)).floatValue())), 0.0d, 1.0d, 0.0d, 0.0d);
    }

    private static AffineTransform createSkewXTransformation(List<String> list) {
        if (list.size() != 1) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.TRANSFORM_INCORRECT_NUMBER_OF_VALUES);
        }
        return new AffineTransform(1.0d, 0.0d, Math.tan(Math.toRadians(CssDimensionParsingUtils.parseFloat(list.get(0)).floatValue())), 1.0d, 0.0d, 0.0d);
    }

    private static AffineTransform createRotationTransformation(List<String> list) {
        if (list.size() != 1 && list.size() != 3) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.TRANSFORM_INCORRECT_NUMBER_OF_VALUES);
        }
        double radians = Math.toRadians(CssDimensionParsingUtils.parseFloat(list.get(0)).floatValue());
        if (list.size() == 3) {
            return AffineTransform.getRotateInstance(radians, CssDimensionParsingUtils.parseAbsoluteLength(list.get(1)), CssDimensionParsingUtils.parseAbsoluteLength(list.get(2)));
        }
        return AffineTransform.getRotateInstance(radians);
    }

    private static AffineTransform createScaleTransformation(List<String> list) {
        if (list.size() == 0 || list.size() > 2) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.TRANSFORM_INCORRECT_NUMBER_OF_VALUES);
        }
        return AffineTransform.getScaleInstance(CssDimensionParsingUtils.parseRelativeValue(list.get(0), 1.0f), list.size() == 2 ? CssDimensionParsingUtils.parseRelativeValue(list.get(1), 1.0f) : r0);
    }

    private static AffineTransform createTranslateTransformation(List<String> list) {
        if (list.size() == 0 || list.size() > 2) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.TRANSFORM_INCORRECT_NUMBER_OF_VALUES);
        }
        return AffineTransform.getTranslateInstance(CssDimensionParsingUtils.parseAbsoluteLength(list.get(0)), list.size() == 2 ? CssDimensionParsingUtils.parseAbsoluteLength(list.get(1)) : 0.0f);
    }

    private static AffineTransform createMatrixTransformation(List<String> list) {
        if (list.size() != 6) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.TRANSFORM_INCORRECT_NUMBER_OF_VALUES);
        }
        return new AffineTransform(Float.parseFloat(list.get(0)), Float.parseFloat(list.get(1)), Float.parseFloat(list.get(2)), Float.parseFloat(list.get(3)), CssDimensionParsingUtils.parseAbsoluteLength(list.get(4)), CssDimensionParsingUtils.parseAbsoluteLength(list.get(5)));
    }

    private static String getNameFromString(String str) {
        if (str.indexOf("(") == -1) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.INVALID_TRANSFORM_DECLARATION);
        }
        return str.substring(0, str.indexOf("("));
    }

    private static List<String> getValuesFromTransformationString(String str) {
        return SvgCssUtils.splitValueList(str.substring(str.indexOf(40) + 1, str.indexOf(41)));
    }
}
