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
public class QuadraticCurveTo extends AbstractPathShape implements IControlPointCurve {
    static final int ARGUMENT_SIZE = 4;

    private static double calculateExtremeCoordinate(double d, double d2, double d3, double d4) {
        double d5 = 1.0d - d;
        return (d5 * d5 * d2) + (d5 * 2.0d * d * d3) + (d * d * d4);
    }

    private static double getTValue(double d, double d2, double d3) {
        double d4 = d2 * 2.0d;
        return (-(d4 - (d * 2.0d))) / (((d - d4) + d3) * 2.0d);
    }

    public QuadraticCurveTo() {
        this(false);
    }

    public QuadraticCurveTo(boolean z) {
        this(z, new DefaultOperatorConverter());
    }

    public QuadraticCurveTo(boolean z, IOperatorConverter iOperatorConverter) {
        super(z, iOperatorConverter);
    }

    @Override // com.itextpdf.svg.renderers.path.IPathShape
    public void draw(PdfCanvas pdfCanvas) {
        pdfCanvas.curveTo(CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[0]), CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[1]), CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[2]), CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[3]));
    }

    @Override // com.itextpdf.svg.renderers.path.IPathShape
    public void setCoordinates(String[] strArr, Point point) {
        if (strArr.length < 4) {
            throw new IllegalArgumentException(MessageFormatUtil.format(SvgExceptionMessageConstant.QUADRATIC_CURVE_TO_EXPECTS_FOLLOWING_PARAMETERS_GOT_0, Arrays.toString(this.coordinates)));
        }
        this.coordinates = new String[4];
        System.arraycopy(strArr, 0, this.coordinates, 0, 4);
        double[] dArr = {point.getX(), point.getY()};
        if (isRelative()) {
            this.coordinates = this.copier.makeCoordinatesAbsolute(this.coordinates, dArr);
        }
    }

    @Override // com.itextpdf.svg.renderers.path.impl.IControlPointCurve
    public Point getLastControlPoint() {
        return createPoint(this.coordinates[0], this.coordinates[1]);
    }

    @Override // com.itextpdf.svg.renderers.path.impl.AbstractPathShape, com.itextpdf.svg.renderers.path.IPathShape
    public Rectangle getPathShapeRectangle(Point point) {
        Point lastControlPoint = getLastControlPoint();
        Point endingPoint = getEndingPoint();
        double[] bezierMinMaxPoints = getBezierMinMaxPoints(point.getX(), point.getY(), lastControlPoint.getX(), lastControlPoint.getY(), endingPoint.getX(), endingPoint.getY());
        return new Rectangle((float) CssUtils.convertPxToPts(bezierMinMaxPoints[0]), (float) CssUtils.convertPxToPts(bezierMinMaxPoints[1]), (float) CssUtils.convertPxToPts(bezierMinMaxPoints[2] - bezierMinMaxPoints[0]), (float) CssUtils.convertPxToPts(bezierMinMaxPoints[3] - bezierMinMaxPoints[1]));
    }

    private static double[] getBezierMinMaxPoints(double d, double d2, double d3, double d4, double d5, double d6) {
        double dMin = Math.min(d, d5);
        double dMin2 = Math.min(d2, d6);
        double dMax = Math.max(d, d5);
        double dMax2 = Math.max(d2, d6);
        double[] extremeTValues = getExtremeTValues(d, d2, d3, d4, d5, d6);
        int i = 0;
        double dMax3 = dMax2;
        double dMin3 = dMin;
        double dMax4 = dMax;
        double dMin4 = dMin2;
        for (int length = extremeTValues.length; i < length; length = length) {
            double d7 = extremeTValues[i];
            double[] dArr = extremeTValues;
            double d8 = dMax3;
            double d9 = dMin3;
            double dCalculateExtremeCoordinate = calculateExtremeCoordinate(d7, d, d3, d5);
            double dCalculateExtremeCoordinate2 = calculateExtremeCoordinate(d7, d2, d4, d6);
            dMin3 = Math.min(dCalculateExtremeCoordinate, d9);
            dMin4 = Math.min(dCalculateExtremeCoordinate2, dMin4);
            dMax4 = Math.max(dCalculateExtremeCoordinate, dMax4);
            dMax3 = Math.max(dCalculateExtremeCoordinate2, d8);
            i++;
            extremeTValues = dArr;
        }
        return new double[]{dMin3, dMin4, dMax4, dMax3};
    }

    private static double[] getExtremeTValues(double d, double d2, double d3, double d4, double d5, double d6) {
        ArrayList arrayList = new ArrayList();
        addTValueToList(getTValue(d, d3, d5), arrayList);
        addTValueToList(getTValue(d2, d4, d6), arrayList);
        double[] dArr = new double[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            dArr[i] = ((Double) arrayList.get(i)).doubleValue();
        }
        return dArr;
    }

    private static void addTValueToList(double d, List<Double> list) {
        if (0.0d > d || d > 1.0d) {
            return;
        }
        list.add(Double.valueOf(d));
    }
}
