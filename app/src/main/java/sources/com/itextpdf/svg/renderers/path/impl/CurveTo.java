package com.itextpdf.svg.renderers.path.impl;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class CurveTo extends AbstractPathShape implements IControlPointCurve {
    static final int ARGUMENT_SIZE = 6;
    private static double ZERO_EPSILON = 1.0E-12d;

    private static double calculateExtremeCoordinate(double d, double d2, double d3, double d4, double d5) {
        double d6 = 1.0d - d;
        double d7 = d6 * d6 * d6 * d2;
        double d8 = 3.0d * d6;
        return d7 + (d6 * d8 * d * d3) + (d8 * d * d * d4) + (d * d * d * d5);
    }

    public CurveTo() {
        this(false);
    }

    public CurveTo(boolean z) {
        this(z, new DefaultOperatorConverter());
    }

    public CurveTo(boolean z, IOperatorConverter iOperatorConverter) {
        super(z, iOperatorConverter);
    }

    @Override // com.itextpdf.svg.renderers.path.IPathShape
    public void draw(PdfCanvas pdfCanvas) {
        pdfCanvas.curveTo(CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[0]), CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[1]), CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[2]), CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[3]), CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[4]), CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[5]));
    }

    @Override // com.itextpdf.svg.renderers.path.IPathShape
    public void setCoordinates(String[] strArr, Point point) {
        if (strArr.length < 6) {
            throw new IllegalArgumentException(MessageFormatUtil.format(SvgExceptionMessageConstant.CURVE_TO_EXPECTS_FOLLOWING_PARAMETERS_GOT_0, Arrays.toString(strArr)));
        }
        this.coordinates = new String[6];
        System.arraycopy(strArr, 0, this.coordinates, 0, 6);
        double[] dArr = {point.getX(), point.getY()};
        if (isRelative()) {
            this.coordinates = this.copier.makeCoordinatesAbsolute(this.coordinates, dArr);
        }
    }

    @Override // com.itextpdf.svg.renderers.path.impl.IControlPointCurve
    public Point getLastControlPoint() {
        return createPoint(this.coordinates[2], this.coordinates[3]);
    }

    @Override // com.itextpdf.svg.renderers.path.impl.AbstractPathShape, com.itextpdf.svg.renderers.path.IPathShape
    public Rectangle getPathShapeRectangle(Point point) {
        Point firstControlPoint = getFirstControlPoint();
        Point lastControlPoint = getLastControlPoint();
        Point endingPoint = getEndingPoint();
        double[] bezierMinMaxPoints = getBezierMinMaxPoints(point.getX(), point.getY(), firstControlPoint.getX(), firstControlPoint.getY(), lastControlPoint.getX(), lastControlPoint.getY(), endingPoint.getX(), endingPoint.getY());
        return new Rectangle((float) CssUtils.convertPxToPts(bezierMinMaxPoints[0]), (float) CssUtils.convertPxToPts(bezierMinMaxPoints[1]), (float) CssUtils.convertPxToPts(bezierMinMaxPoints[2] - bezierMinMaxPoints[0]), (float) CssUtils.convertPxToPts(bezierMinMaxPoints[3] - bezierMinMaxPoints[1]));
    }

    private Point getFirstControlPoint() {
        return createPoint(this.coordinates[0], this.coordinates[1]);
    }

    private static double[] getBezierMinMaxPoints(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        double dMin = Math.min(d, d7);
        double dMin2 = Math.min(d2, d8);
        double dMax = Math.max(d, d7);
        double dMax2 = Math.max(d2, d8);
        double[] tValuesInExtremePoints = getTValuesInExtremePoints(d, d2, d3, d4, d5, d6, d7, d8);
        int i = 0;
        double dMax3 = dMax2;
        double dMin3 = dMin;
        double dMax4 = dMax;
        double dMin4 = dMin2;
        for (int length = tValuesInExtremePoints.length; i < length; length = length) {
            double d9 = tValuesInExtremePoints[i];
            double[] dArr = tValuesInExtremePoints;
            double d10 = dMax3;
            double dCalculateExtremeCoordinate = calculateExtremeCoordinate(d9, d, d3, d5, d7);
            double dCalculateExtremeCoordinate2 = calculateExtremeCoordinate(d9, d2, d4, d6, d8);
            dMin3 = Math.min(dCalculateExtremeCoordinate, dMin3);
            dMin4 = Math.min(dCalculateExtremeCoordinate2, dMin4);
            dMax4 = Math.max(dCalculateExtremeCoordinate, dMax4);
            dMax3 = Math.max(dCalculateExtremeCoordinate2, d10);
            i++;
            tValuesInExtremePoints = dArr;
        }
        return new double[]{dMin3, dMin4, dMax4, dMax3};
    }

    private static double[] getTValuesInExtremePoints(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        ArrayList arrayList = new ArrayList(calculateTValues(d, d3, d5, d7));
        arrayList.addAll(calculateTValues(d2, d4, d6, d8));
        double[] dArr = new double[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            dArr[i] = ((Double) arrayList.get(i)).doubleValue();
        }
        return dArr;
    }

    private static List<Double> calculateTValues(double d, double d2, double d3, double d4) {
        ArrayList arrayList = new ArrayList();
        double d5 = d2 * 3.0d;
        double d6 = d3 * 3.0d;
        double d7 = ((((-d) + d5) - d6) + d4) * 3.0d;
        double d8 = d * 3.0d;
        double d9 = ((d8 - (d2 * 6.0d)) + d6) * 2.0d;
        double d10 = d5 - d8;
        if (Math.abs(d7) >= ZERO_EPSILON) {
            double d11 = (d9 * d9) - ((d10 * 4.0d) * d7);
            if (d11 <= 0.0d && Math.abs(d11) < ZERO_EPSILON) {
                addTValueToList((-d9) / (d7 * 2.0d), arrayList);
            } else {
                double dSqrt = Math.sqrt(d11);
                double d12 = -d9;
                double d13 = d7 * 2.0d;
                addTValueToList((d12 + dSqrt) / d13, arrayList);
                addTValueToList((d12 - dSqrt) / d13, arrayList);
            }
        } else if (Math.abs(d9) >= ZERO_EPSILON) {
            addTValueToList((-d10) / d9, arrayList);
        }
        return arrayList;
    }

    private static void addTValueToList(double d, List<Double> list) {
        if (0.0d > d || d > 1.0d) {
            return;
        }
        list.add(Double.valueOf(d));
    }
}
