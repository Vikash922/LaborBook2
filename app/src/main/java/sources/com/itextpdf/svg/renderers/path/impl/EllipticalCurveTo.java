package com.itextpdf.svg.renderers.path.impl;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import com.itextpdf.svg.exceptions.SvgProcessingException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class EllipticalCurveTo extends AbstractPathShape {
    static final int ARGUMENT_SIZE = 7;
    private static final double EPS = 1.0E-5d;
    private Point startPoint;

    private boolean isPointOnTheArc(double d, double d2, double d3, boolean z) {
        return z != ((d2 > d ? 1 : (d2 == d ? 0 : -1)) <= 0 && (d3 > d ? 1 : (d3 == d ? 0 : -1)) >= 0);
    }

    public EllipticalCurveTo() {
        this(false);
    }

    public EllipticalCurveTo(boolean z) {
        super(z);
    }

    @Override // com.itextpdf.svg.renderers.path.IPathShape
    public void setCoordinates(String[] strArr, Point point) {
        this.startPoint = point;
        if (strArr.length < 7) {
            throw new IllegalArgumentException(MessageFormatUtil.format(SvgExceptionMessageConstant.ARC_TO_EXPECTS_FOLLOWING_PARAMETERS_GOT_0, Arrays.toString(strArr)));
        }
        this.coordinates = new String[7];
        System.arraycopy(strArr, 0, this.coordinates, 0, 7);
        double[] dArr = {point.getX(), point.getY()};
        if (isRelative()) {
            String[] strArrMakeCoordinatesAbsolute = this.copier.makeCoordinatesAbsolute(new String[]{strArr[5], strArr[6]}, dArr);
            this.coordinates[5] = strArrMakeCoordinatesAbsolute[0];
            this.coordinates[6] = strArrMakeCoordinatesAbsolute[1];
        }
    }

    @Override // com.itextpdf.svg.renderers.path.IPathShape
    public void draw(PdfCanvas pdfCanvas) {
        double d;
        EllipseArc ellipse;
        Point point = new Point(this.startPoint.f2960x * 0.75d, this.startPoint.f2961y * 0.75d);
        double dAbs = Math.abs(CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[0]));
        double dAbs2 = Math.abs(CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[1]));
        double radians = Math.toRadians(Double.parseDouble(this.coordinates[2]) % 360.0d);
        boolean z = !CssUtils.compareFloats(CssDimensionParsingUtils.parseFloat(this.coordinates[3]).floatValue(), 0.0f);
        boolean zCompareFloats = CssUtils.compareFloats(CssDimensionParsingUtils.parseFloat(this.coordinates[4]).floatValue(), 0.0f);
        boolean z2 = !zCompareFloats;
        Point point2 = new Point(CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[5]), CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[6]));
        if (CssUtils.compareFloats(point.f2960x, point2.f2960x) && CssUtils.compareFloats(point.f2961y, point2.f2961y)) {
            return;
        }
        if (CssUtils.compareFloats(dAbs, 0.0d) || CssUtils.compareFloats(dAbs2, 0.0d)) {
            pdfCanvas.lineTo(point2.f2960x, point2.f2961y);
            return;
        }
        if (CssUtils.compareFloats(radians, 0.0d)) {
            ellipse = EllipseArc.getEllipse(point, point2, dAbs, dAbs2, z2, z);
            d = radians;
        } else {
            AffineTransform rotateInstance = AffineTransform.getRotateInstance(-radians);
            d = radians;
            rotateInstance.translate(-point.f2960x, -point.f2961y);
            Point pointTransform = rotateInstance.transform(point2, null);
            pointTransform.translate(point.f2960x, point.f2961y);
            ellipse = EllipseArc.getEllipse(point, pointTransform, dAbs, dAbs2, z2, z);
        }
        Point[][] pointArrMakePoints = makePoints(PdfCanvas.bezierArc(ellipse.f3351ll.f2960x, ellipse.f3351ll.f2961y, ellipse.f3352ur.f2960x, ellipse.f3352ur.f2961y, ellipse.startAng, ellipse.extent));
        if (!zCompareFloats) {
            for (Point[] pointArr : rotate(pointArrMakePoints, d, pointArrMakePoints[0][0])) {
                drawCurve(pdfCanvas, pointArr[1], pointArr[2], pointArr[3]);
            }
            return;
        }
        Point[][] pointArrRotate = rotate(pointArrMakePoints, d, pointArrMakePoints[pointArrMakePoints.length - 1][3]);
        for (int length = pointArrRotate.length - 1; length >= 0; length--) {
            Point[] pointArr2 = pointArrRotate[length];
            drawCurve(pdfCanvas, pointArr2[2], pointArr2[1], pointArr2[0]);
        }
    }

    static Point[][] rotate(Point[][] pointArr, double d, Point point) {
        if (CssUtils.compareFloats(d, 0.0d)) {
            return pointArr;
        }
        Point[][] pointArr2 = new Point[pointArr.length][];
        AffineTransform rotateInstance = AffineTransform.getRotateInstance(d, point.f2960x, point.f2961y);
        for (int i = 0; i < pointArr.length; i++) {
            Point[] pointArr3 = pointArr[i];
            Point[] pointArr4 = new Point[pointArr3.length];
            for (int i2 = 0; i2 < pointArr3.length; i2++) {
                pointArr4[i2] = rotateInstance.transform(pointArr3[i2], null);
            }
            pointArr2[i] = pointArr4;
        }
        return pointArr2;
    }

    String[] getCoordinates() {
        return this.coordinates;
    }

    private static void drawCurve(PdfCanvas pdfCanvas, Point point, Point point2, Point point3) {
        pdfCanvas.curveTo(point.f2960x, point.f2961y, point2.f2960x, point2.f2961y, point3.f2960x, point3.f2961y);
    }

    private Point[][] makePoints(List<double[]> list) {
        Point[][] pointArr = new Point[list.size()][];
        for (int i = 0; i < list.size(); i++) {
            pointArr[i] = new Point[list.get(i).length / 2];
            for (int i2 = 0; i2 < list.get(i).length; i2 += 2) {
                pointArr[i][i2 / 2] = new Point(list.get(i)[i2], list.get(i)[i2 + 1]);
            }
        }
        return pointArr;
    }

    static class EllipseArc {
        final double extent;

        /* JADX INFO: renamed from: ll */
        final Point f3351ll;
        final double startAng;

        /* JADX INFO: renamed from: ur */
        final Point f3352ur;

        static double toDegrees(double d) {
            return (d * 180.0d) / 3.141592653589793d;
        }

        EllipseArc(Point point, double d, double d2, double d3, double d4) {
            this.f3351ll = new Point(point.f2960x - d, point.f2961y - d2);
            this.f3352ur = new Point(point.f2960x + d, point.f2961y + d2);
            this.startAng = d3;
            this.extent = d4;
        }

        static EllipseArc getEllipse(Point point, Point point2, double d, double d2, boolean z, boolean z2) {
            double d3 = (point.f2960x - point2.f2960x) / ((-2.0d) * d);
            double d4 = (point.f2961y - point2.f2961y) / (2.0d * d2);
            double dSqrt = Math.sqrt((d3 * d3) + (d4 * d4));
            if (dSqrt > 1.0d) {
                return getEllipse(point, point2, d * dSqrt, dSqrt * d2, z, z2);
            }
            double dAtan = Math.atan(d3 / d4);
            double dAsin = Math.asin(dSqrt);
            EllipseArc ellipseArcCalculatePossibleMiddle = calculatePossibleMiddle(point, point2, d, d2, dAtan + dAsin, z, z2);
            if (ellipseArcCalculatePossibleMiddle != null) {
                return ellipseArcCalculatePossibleMiddle;
            }
            double d5 = dAtan + 3.141592653589793d;
            EllipseArc ellipseArcCalculatePossibleMiddle2 = calculatePossibleMiddle(point, point2, d, d2, d5 - dAsin, z, z2);
            if (ellipseArcCalculatePossibleMiddle2 != null) {
                return ellipseArcCalculatePossibleMiddle2;
            }
            EllipseArc ellipseArcCalculatePossibleMiddle3 = calculatePossibleMiddle(point, point2, d, d2, d5 + dAsin, z, z2);
            if (ellipseArcCalculatePossibleMiddle3 != null) {
                return ellipseArcCalculatePossibleMiddle3;
            }
            EllipseArc ellipseArcCalculatePossibleMiddle4 = calculatePossibleMiddle(point, point2, d, d2, dAtan - dAsin, z, z2);
            if (ellipseArcCalculatePossibleMiddle4 != null) {
                return ellipseArcCalculatePossibleMiddle4;
            }
            throw new SvgProcessingException(SvgExceptionMessageConstant.COULD_NOT_DETERMINE_MIDDLE_POINT_OF_ELLIPTICAL_ARC);
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x00aa  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00ad A[PHI: r2 r16
          0x00ad: PHI (r2v10 double) = (r2v8 double), (r2v8 double), (r2v18 double), (r2v18 double) binds: [B:37:0x00a4, B:39:0x00a8, B:14:0x0074, B:16:0x0078] A[DONT_GENERATE, DONT_INLINE]
          0x00ad: PHI (r16v3 double) = (r16v1 double), (r16v1 double), (r16v5 double), (r16v5 double) binds: [B:37:0x00a4, B:39:0x00a8, B:14:0x0074, B:16:0x0078] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:52:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00cb A[PHI: r2 r10
          0x00cb: PHI (r2v9 double) = (r2v4 double), (r2v4 double), (r2v14 double), (r2v14 double) binds: [B:49:0x00c1, B:51:0x00c5, B:25:0x008b, B:27:0x008f] A[DONT_GENERATE, DONT_INLINE]
          0x00cb: PHI (r10v6 double) = (r10v3 double), (r10v3 double), (r10v13 double), (r10v13 double) binds: [B:49:0x00c1, B:51:0x00c5, B:25:0x008b, B:27:0x008f] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        static com.itextpdf.svg.renderers.path.impl.EllipticalCurveTo.EllipseArc calculatePossibleMiddle(com.itextpdf.kernel.geom.Point r18, com.itextpdf.kernel.geom.Point r19, double r20, double r22, double r24, boolean r26, boolean r27) {
            /*
                Method dump skipped, instruction units count: 228
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.svg.renderers.path.impl.EllipticalCurveTo.EllipseArc.calculatePossibleMiddle(com.itextpdf.kernel.geom.Point, com.itextpdf.kernel.geom.Point, double, double, double, boolean, boolean):com.itextpdf.svg.renderers.path.impl.EllipticalCurveTo$EllipseArc");
        }

        static double calculateAngle(Point point, Point point2, double d, double d2) {
            double dPow = Math.pow((point.f2960x - point2.f2960x) / d, 2.0d) + Math.pow((point.f2961y - point2.f2961y) / d2, 2.0d);
            double d3 = (point.f2960x - point2.f2960x) / d;
            double d4 = (point.f2961y - point2.f2961y) / d2;
            double dMax = Math.max(Math.min(d3, 1.0d), -1.0d);
            if ((dMax >= 0.0d && d4 >= 0.0d) || (dMax < 0.0d && d4 >= 0.0d)) {
                dPow = toDegrees(Math.acos(dMax));
            }
            return ((dMax < 0.0d || d4 >= 0.0d) && (dMax >= 0.0d || d4 >= 0.0d)) ? dPow : 360.0d - toDegrees(Math.acos(dMax));
        }
    }

    @Override // com.itextpdf.svg.renderers.path.impl.AbstractPathShape, com.itextpdf.svg.renderers.path.IPathShape
    public Rectangle getPathShapeRectangle(Point point) {
        double[] ellipticalArcMinMaxPoints = getEllipticalArcMinMaxPoints(point.getX(), point.getY(), getCoordinate(0), getCoordinate(1), getCoordinate(2), getCoordinate(3) != 0.0d, getCoordinate(4) != 0.0d, getCoordinate(5), getCoordinate(6));
        return new Rectangle((float) CssUtils.convertPxToPts(ellipticalArcMinMaxPoints[0]), (float) CssUtils.convertPxToPts(ellipticalArcMinMaxPoints[1]), (float) CssUtils.convertPxToPts(ellipticalArcMinMaxPoints[2] - ellipticalArcMinMaxPoints[0]), (float) CssUtils.convertPxToPts(ellipticalArcMinMaxPoints[3] - ellipticalArcMinMaxPoints[1]));
    }

    private double getCoordinate(int i) {
        return CssDimensionParsingUtils.parseDouble(this.coordinates[i]).doubleValue();
    }

    private double[] getEllipticalArcMinMaxPoints(double d, double d2, double d3, double d4, double d5, boolean z, boolean z2, double d6, double d7) {
        double d8;
        double radians = Math.toRadians(d5);
        double dAbs = Math.abs(d3);
        double dAbs2 = Math.abs(d4);
        if (dAbs == 0.0d || dAbs2 == 0.0d) {
            return new double[]{Math.min(d, d6), Math.min(d2, d7), Math.max(d, d6), Math.max(d2, d7)};
        }
        double[] ellipseCenterCoordinates = getEllipseCenterCoordinates(d, d2, dAbs, dAbs2, radians, z, z2, d6, d7);
        if (ellipseCenterCoordinates == null) {
            return new double[]{Math.min(d, d6), Math.min(d2, d7), Math.max(d, d6), Math.max(d2, d7)};
        }
        double d9 = ellipseCenterCoordinates[0];
        double d10 = ellipseCenterCoordinates[1];
        double[][] extremeCoordinatesAndAngles = getExtremeCoordinatesAndAngles(ellipseCenterCoordinates[2], ellipseCenterCoordinates[3], radians, d9, d10);
        double[] dArr = extremeCoordinatesAndAngles[0];
        double[] dArr2 = extremeCoordinatesAndAngles[1];
        double d11 = dArr[0];
        double d12 = dArr[1];
        double d13 = dArr[2];
        double dMax = dArr[3];
        double d14 = dArr2[0];
        double d15 = dArr2[1];
        double d16 = dArr2[2];
        double d17 = dArr2[3];
        double angleBetweenVectors = getAngleBetweenVectors(d - d9, d2 - d10);
        double dMin = d12;
        double dMax2 = d13;
        double angleBetweenVectors2 = getAngleBetweenVectors(d6 - d9, d7 - d10);
        if (z2) {
            d8 = angleBetweenVectors2;
            angleBetweenVectors2 = angleBetweenVectors;
        } else {
            d8 = angleBetweenVectors;
        }
        boolean z3 = angleBetweenVectors2 > d8;
        if (z3) {
            double d18 = angleBetweenVectors2;
            angleBetweenVectors2 = d8;
            d8 = d18;
        }
        double dMin2 = !isPointOnTheArc(d14, angleBetweenVectors2, d8, z3) ? Math.min(d, d6) : d11;
        if (!isPointOnTheArc(d16, angleBetweenVectors2, d8, z3)) {
            dMax2 = Math.max(d, d6);
        }
        if (!isPointOnTheArc(d15, angleBetweenVectors2, d8, z3)) {
            dMin = Math.min(d2, d7);
        }
        if (!isPointOnTheArc(d17, angleBetweenVectors2, d8, z3)) {
            dMax = Math.max(d2, d7);
        }
        return new double[]{dMin2, dMin, dMax2, dMax};
    }

    private double[] getEllipseCenterCoordinates(double d, double d2, double d3, double d4, double d5, boolean z, boolean z2, double d6, double d7) {
        double dSqrt;
        double d8;
        double d9;
        double d10 = d - d6;
        double d11 = d2 - d7;
        double dCos = ((Math.cos(d5) * d10) / 2.0d) + ((Math.sin(d5) * d11) / 2.0d);
        double dCos2 = (((-Math.sin(d5)) * d10) / 2.0d) + ((Math.cos(d5) * d11) / 2.0d);
        double d12 = d3 * d3;
        double d13 = d12 * d4 * d4;
        double d14 = d12 * dCos2 * dCos2;
        double d15 = d4 * d4 * dCos * dCos;
        double d16 = ((d13 - d14) - d15) / (d14 + d15);
        double d17 = 0.0d;
        if (d16 < 0.0d) {
            double d18 = d3 / d4;
            double d19 = (dCos2 * dCos2) + ((dCos * dCos) / (d18 * d18));
            if (d19 < 0.0d) {
                return null;
            }
            dSqrt = Math.sqrt(d19);
            d9 = d18 * dSqrt;
            d8 = 0.0d;
        } else {
            double dSqrt2 = (z == z2 ? -1.0d : 1.0d) * Math.sqrt(d16);
            double d20 = ((dSqrt2 * d3) * dCos2) / d4;
            double d21 = (((-dSqrt2) * d4) * dCos) / d3;
            dSqrt = d4;
            d8 = d21;
            d17 = d20;
            d9 = d3;
        }
        return new double[]{((Math.cos(d5) * d17) - (Math.sin(d5) * d8)) + ((d + d6) / 2.0d), (d17 * Math.sin(d5)) + (d8 * Math.cos(d5)) + ((d2 + d7) / 2.0d), d9, dSqrt};
    }

    private double[][] getExtremeCoordinatesAndAngles(double d, double d2, double d3, double d4, double d5) {
        double dCos;
        double dCos2;
        double angleBetweenVectors;
        double dCos3;
        double dCos4;
        double angleBetweenVectors2;
        double angleBetweenVectors3;
        double angleBetweenVectors4;
        if (anglesAreEquals(d3, 0.0d) || anglesAreEquals(d3, 3.141592653589793d)) {
            dCos = d4 - d;
            double angleBetweenVectors5 = getAngleBetweenVectors(-d, 0.0d);
            dCos2 = d4 + d;
            angleBetweenVectors = getAngleBetweenVectors(d, 0.0d);
            dCos3 = d5 - d2;
            dCos4 = d5 + d2;
            angleBetweenVectors2 = angleBetweenVectors5;
            angleBetweenVectors3 = getAngleBetweenVectors(0.0d, -d2);
            angleBetweenVectors4 = getAngleBetweenVectors(0.0d, d2);
        } else if (anglesAreEquals(d3, 1.5707963267948966d) || anglesAreEquals(d3, 4.71238898038469d)) {
            dCos = d4 - d2;
            double angleBetweenVectors6 = getAngleBetweenVectors(-d2, 0.0d);
            dCos2 = d4 + d2;
            angleBetweenVectors = getAngleBetweenVectors(d2, 0.0d);
            dCos3 = d5 - d;
            double angleBetweenVectors7 = getAngleBetweenVectors(0.0d, -d);
            dCos4 = d5 + d;
            angleBetweenVectors4 = getAngleBetweenVectors(0.0d, d);
            angleBetweenVectors2 = angleBetweenVectors6;
            angleBetweenVectors3 = angleBetweenVectors7;
        } else {
            double d6 = -Math.atan((Math.tan(d3) * d2) / d);
            double dAtan = 3.141592653589793d - Math.atan((Math.tan(d3) * d2) / d);
            dCos = (d4 + ((Math.cos(d6) * d) * Math.cos(d3))) - ((Math.sin(d6) * d2) * Math.sin(d3));
            dCos2 = (d4 + ((Math.cos(dAtan) * d) * Math.cos(d3))) - ((Math.sin(dAtan) * d2) * Math.sin(d3));
            if (dCos > dCos2) {
                dCos = dCos2;
                dCos2 = dCos;
                d6 = dAtan;
                dAtan = d6;
            }
            angleBetweenVectors2 = getAngleBetweenVectors(dCos - d4, ((d5 + ((Math.cos(d6) * d) * Math.sin(d3))) + ((Math.sin(d6) * d2) * Math.cos(d3))) - d5);
            angleBetweenVectors = getAngleBetweenVectors(dCos2 - d4, ((d5 + ((Math.cos(dAtan) * d) * Math.sin(d3))) + ((Math.sin(dAtan) * d2) * Math.cos(d3))) - d5);
            double dAtan2 = Math.atan(d2 / (Math.tan(d3) * d));
            double dAtan3 = Math.atan(d2 / (Math.tan(d3) * d)) + 3.141592653589793d;
            dCos3 = d5 + (Math.cos(dAtan2) * d * Math.sin(d3)) + (Math.sin(dAtan2) * d2 * Math.cos(d3));
            dCos4 = d5 + (Math.cos(dAtan3) * d * Math.sin(d3)) + (Math.sin(dAtan3) * d2 * Math.cos(d3));
            if (dCos3 > dCos4) {
                dCos3 = dCos4;
                dCos4 = dCos3;
                dAtan2 = dAtan3;
                dAtan3 = dAtan2;
            }
            angleBetweenVectors3 = getAngleBetweenVectors(((d4 + ((Math.cos(dAtan2) * d) * Math.cos(d3))) - ((Math.sin(dAtan2) * d2) * Math.sin(d3))) - d4, dCos3 - d5);
            angleBetweenVectors4 = getAngleBetweenVectors(((d4 + ((d * Math.cos(dAtan3)) * Math.cos(d3))) - ((d2 * Math.sin(dAtan3)) * Math.sin(d3))) - d4, dCos4 - d5);
        }
        return new double[][]{new double[]{dCos, dCos3, dCos2, dCos4}, new double[]{angleBetweenVectors2, angleBetweenVectors3, angleBetweenVectors, angleBetweenVectors4}};
    }

    private double getAngleBetweenVectors(double d, double d2) {
        return (((d2 > 0.0d ? 1.0d : -1.0d) * Math.acos(d / Math.sqrt((d * d) + (d2 * d2)))) + 6.283185307179586d) % 6.283185307179586d;
    }

    private boolean anglesAreEquals(double d, double d2) {
        return Math.abs(d - d2) < 1.0E-5d;
    }
}
