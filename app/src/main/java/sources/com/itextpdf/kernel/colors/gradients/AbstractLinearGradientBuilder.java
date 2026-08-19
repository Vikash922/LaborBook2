package com.itextpdf.kernel.colors.gradients;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.PatternColor;
import com.itextpdf.kernel.colors.gradients.GradientColorStop;
import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.NoninvertibleTransformException;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.colorspace.PdfDeviceCs;
import com.itextpdf.kernel.pdf.colorspace.PdfPattern;
import com.itextpdf.kernel.pdf.colorspace.PdfShading;
import com.itextpdf.kernel.pdf.function.PdfFunction;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractLinearGradientBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected static final double ZERO_EPSILON = 1.0E-10d;
    private final List<GradientColorStop> stops = new ArrayList();
    private GradientSpreadMethod spreadMethod = GradientSpreadMethod.NONE;

    protected AffineTransform getCurrentSpaceToGradientVectorSpaceTransformation(Rectangle rectangle, AffineTransform affineTransform) {
        return null;
    }

    protected abstract Point[] getGradientVector(Rectangle rectangle, AffineTransform affineTransform);

    public AbstractLinearGradientBuilder addColorStop(GradientColorStop gradientColorStop) {
        if (gradientColorStop != null) {
            this.stops.add(gradientColorStop);
        }
        return this;
    }

    public AbstractLinearGradientBuilder setSpreadMethod(GradientSpreadMethod gradientSpreadMethod) {
        if (this.spreadMethod != null) {
            this.spreadMethod = gradientSpreadMethod;
        } else {
            this.spreadMethod = GradientSpreadMethod.NONE;
        }
        return this;
    }

    public List<GradientColorStop> getColorStops() {
        return new ArrayList(this.stops);
    }

    public GradientSpreadMethod getSpreadMethod() {
        return this.spreadMethod;
    }

    public Color buildColor(Rectangle rectangle, AffineTransform affineTransform, PdfDocument pdfDocument) {
        Point[] gradientVector = getGradientVector(rectangle, affineTransform);
        if (gradientVector == null || this.stops.isEmpty()) {
            return null;
        }
        AffineTransform affineTransform2 = new AffineTransform();
        if (affineTransform != null) {
            affineTransform2.concatenate(affineTransform);
        }
        AffineTransform currentSpaceToGradientVectorSpaceTransformation = getCurrentSpaceToGradientVectorSpaceTransformation(rectangle, affineTransform);
        if (currentSpaceToGradientVectorSpaceTransformation != null) {
            if (rectangle != null) {
                try {
                    rectangle = Rectangle.calculateBBox(Arrays.asList(currentSpaceToGradientVectorSpaceTransformation.inverseTransform(new Point(rectangle.getLeft(), rectangle.getBottom()), null), currentSpaceToGradientVectorSpaceTransformation.inverseTransform(new Point(rectangle.getLeft(), rectangle.getTop()), null), currentSpaceToGradientVectorSpaceTransformation.inverseTransform(new Point(rectangle.getRight(), rectangle.getBottom()), null), currentSpaceToGradientVectorSpaceTransformation.inverseTransform(new Point(rectangle.getRight(), rectangle.getTop()), null)));
                } catch (NoninvertibleTransformException unused) {
                    LoggerFactory.getLogger(getClass()).error(IoLogMessageConstant.UNABLE_TO_INVERT_GRADIENT_TRANSFORMATION);
                }
            }
            affineTransform2.concatenate(currentSpaceToGradientVectorSpaceTransformation);
        }
        PdfShading.Axial axialCreateAxialShading = createAxialShading(gradientVector, this.stops, this.spreadMethod, rectangle);
        if (axialCreateAxialShading == null) {
            return null;
        }
        PdfPattern.Shading shading = new PdfPattern.Shading(axialCreateAxialShading);
        if (!affineTransform2.isIdentity()) {
            double[] dArr = new double[6];
            affineTransform2.getMatrix(dArr);
            shading.setMatrix(new PdfArray(dArr));
        }
        return new PatternColor(shading);
    }

    protected static double[] evaluateCoveringDomain(Point[] pointArr, Rectangle rectangle) {
        double d;
        double d2;
        if (rectangle == null) {
            return new double[]{0.0d, 1.0d};
        }
        AffineTransform affineTransform = new AffineTransform();
        double dDistance = 1.0d / pointArr[0].distance(pointArr[1]);
        double d3 = (-(pointArr[1].getY() - pointArr[0].getY())) * dDistance;
        double x = (pointArr[1].getX() - pointArr[0].getX()) * dDistance;
        if (Math.abs(x) < ZERO_EPSILON) {
            d = d3 <= 0.0d ? -1.0d : 1.0d;
            d2 = 0.0d;
        } else if (Math.abs(d3) < ZERO_EPSILON) {
            d2 = x <= 0.0d ? -1.0d : 1.0d;
            d = 0.0d;
        } else {
            d = d3;
            d2 = x;
        }
        affineTransform.concatenate(new AffineTransform(d2, d, -d, d2, 0.0d, 0.0d));
        affineTransform.scale(dDistance, dDistance);
        affineTransform.translate(-pointArr[0].getX(), -pointArr[0].getY());
        Point[] pointsArray = rectangle.toPointsArray();
        double x2 = affineTransform.transform(pointsArray[0], null).getX();
        double dMax = x2;
        for (int i = 1; i < pointsArray.length; i++) {
            double x3 = affineTransform.transform(pointsArray[i], null).getX();
            x2 = Math.min(x2, x3);
            dMax = Math.max(dMax, x3);
        }
        return new double[]{x2, dMax};
    }

    protected static Point[] createCoordinatesForNewDomain(double[] dArr, Point[] pointArr) {
        double x = pointArr[1].getX() - pointArr[0].getX();
        double y = pointArr[1].getY() - pointArr[0].getY();
        Point[] pointArr2 = {pointArr[0].getLocation(), pointArr[1].getLocation()};
        Point point = pointArr2[0];
        double d = dArr[0];
        point.translate(x * d, d * y);
        Point point2 = pointArr2[1];
        double d2 = dArr[1];
        point2.translate(x * (d2 - 1.0d), y * (d2 - 1.0d));
        return pointArr2;
    }

    private static PdfShading.Axial createAxialShading(Point[] pointArr, List<GradientColorStop> list, GradientSpreadMethod gradientSpreadMethod, Rectangle rectangle) {
        Point[] pointArrCreateCoordinatesForNewDomain;
        double dDistance = pointArr[1].distance(pointArr[0]);
        List<GradientColorStop> listNormalizeStops = normalizeStops(list, dDistance);
        double[] dArrEvaluateCoveringDomain = {0.0d, 1.0d};
        if (dDistance < ZERO_EPSILON || listNormalizeStops.size() == 1) {
            if (gradientSpreadMethod == GradientSpreadMethod.NONE) {
                return null;
            }
            pointArrCreateCoordinatesForNewDomain = new Point[]{new Point(rectangle.getLeft(), rectangle.getBottom()), new Point(rectangle.getRight(), rectangle.getBottom())};
            GradientColorStop gradientColorStop = listNormalizeStops.get(listNormalizeStops.size() - 1);
            listNormalizeStops = Arrays.asList(new GradientColorStop(gradientColorStop, 0.0d, GradientColorStop.OffsetType.RELATIVE), new GradientColorStop(gradientColorStop, 1.0d, GradientColorStop.OffsetType.RELATIVE));
        } else {
            dArrEvaluateCoveringDomain = evaluateCoveringDomain(pointArr, rectangle);
            if (gradientSpreadMethod == GradientSpreadMethod.REPEAT || gradientSpreadMethod == GradientSpreadMethod.REFLECT) {
                listNormalizeStops = adjustNormalizedStopsToCoverDomain(listNormalizeStops, dArrEvaluateCoveringDomain, gradientSpreadMethod);
            } else if (gradientSpreadMethod == GradientSpreadMethod.PAD) {
                adjustStopsForPadIfNeeded(listNormalizeStops, dArrEvaluateCoveringDomain);
            } else {
                double offset = listNormalizeStops.get(0).getOffset();
                double offset2 = listNormalizeStops.get(listNormalizeStops.size() - 1).getOffset();
                if (offset2 - offset >= ZERO_EPSILON && dArrEvaluateCoveringDomain[1] > offset) {
                    double d = dArrEvaluateCoveringDomain[0];
                    if (d < offset2) {
                        dArrEvaluateCoveringDomain[0] = Math.max(d, offset);
                        dArrEvaluateCoveringDomain[1] = Math.min(dArrEvaluateCoveringDomain[1], offset2);
                    }
                }
                return null;
            }
            pointArrCreateCoordinatesForNewDomain = createCoordinatesForNewDomain(dArrEvaluateCoveringDomain, pointArr);
        }
        return new PdfShading.Axial(new PdfDeviceCs.Rgb(), createCoordsPdfArray(pointArrCreateCoordinatesForNewDomain), new PdfArray(dArrEvaluateCoveringDomain), constructFunction(listNormalizeStops));
    }

    private static List<GradientColorStop> normalizeStops(List<GradientColorStop> list, double d) {
        if (d < ZERO_EPSILON) {
            return Arrays.asList(new GradientColorStop(list.get(list.size() - 1), 0.0d, GradientColorStop.OffsetType.RELATIVE));
        }
        List<GradientColorStop> listCopyStopsAndNormalizeAbsoluteOffsets = copyStopsAndNormalizeAbsoluteOffsets(list, d);
        normalizeFirstStopOffset(listCopyStopsAndNormalizeAbsoluteOffsets);
        normalizeAutoStops(listCopyStopsAndNormalizeAbsoluteOffsets);
        normalizeHintsOffsets(listCopyStopsAndNormalizeAbsoluteOffsets);
        return listCopyStopsAndNormalizeAbsoluteOffsets;
    }

    private static void normalizeHintsOffsets(List<GradientColorStop> list) {
        for (int i = 0; i < list.size() - 1; i++) {
            GradientColorStop gradientColorStop = list.get(i);
            if (gradientColorStop.getHintOffsetType() == GradientColorStop.HintOffsetType.RELATIVE_ON_GRADIENT) {
                double offset = gradientColorStop.getOffset();
                double offset2 = list.get(i + 1).getOffset();
                if (offset != offset2) {
                    gradientColorStop.setHint((gradientColorStop.getHintOffset() - offset) / (offset2 - offset), GradientColorStop.HintOffsetType.RELATIVE_BETWEEN_COLORS);
                } else {
                    gradientColorStop.setHint(0.0d, GradientColorStop.HintOffsetType.NONE);
                }
            }
        }
        list.get(list.size() - 1).setHint(0.0d, GradientColorStop.HintOffsetType.NONE);
    }

    private static void normalizeAutoStops(List<GradientColorStop> list) {
        GradientColorStop gradientColorStop = list.get(0);
        double hintOffset = gradientColorStop.getHintOffsetType() == GradientColorStop.HintOffsetType.RELATIVE_ON_GRADIENT ? gradientColorStop.getHintOffset() : gradientColorStop.getOffset();
        int i = 1;
        for (int i2 = 1; i2 < list.size(); i2++) {
            GradientColorStop gradientColorStop2 = list.get(i2);
            if (gradientColorStop2.getOffsetType() == GradientColorStop.OffsetType.AUTO) {
                if (gradientColorStop2.getHintOffsetType() == GradientColorStop.HintOffsetType.RELATIVE_ON_GRADIENT) {
                    double hintOffset2 = gradientColorStop2.getHintOffset();
                    int i3 = i2 + 1;
                    normalizeAutoStops(list, i, i3, hintOffset, hintOffset2);
                    hintOffset = hintOffset2;
                    i = i3;
                }
            } else {
                if (i < i2) {
                    normalizeAutoStops(list, i, i2, hintOffset, gradientColorStop2.getOffset());
                }
                int i4 = i2 + 1;
                hintOffset = gradientColorStop2.getHintOffsetType() == GradientColorStop.HintOffsetType.RELATIVE_ON_GRADIENT ? gradientColorStop2.getHintOffset() : gradientColorStop2.getOffset();
                i = i4;
            }
        }
        if (i < list.size()) {
            normalizeAutoStops(list, i, list.size(), hintOffset, Math.max(1.0d, hintOffset));
        }
    }

    private static void normalizeAutoStops(List<GradientColorStop> list, int i, int i2, double d, double d2) {
        double dMin = (d2 - d) / ((double) ((Math.min(i2, list.size() - 1) - i) + 1));
        while (i < i2) {
            d += dMin;
            list.get(i).setOffset(d, GradientColorStop.OffsetType.RELATIVE);
            i++;
        }
    }

    private static void normalizeFirstStopOffset(List<GradientColorStop> list) {
        double offset;
        GradientColorStop gradientColorStop = list.get(0);
        if (gradientColorStop.getOffsetType() != GradientColorStop.OffsetType.AUTO) {
            return;
        }
        Iterator<GradientColorStop> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                offset = 0.0d;
                break;
            }
            GradientColorStop next = it.next();
            if (next.getOffsetType() == GradientColorStop.OffsetType.RELATIVE) {
                offset = next.getOffset();
                break;
            } else if (next.getHintOffsetType() == GradientColorStop.HintOffsetType.RELATIVE_ON_GRADIENT) {
                offset = next.getHintOffset();
                break;
            }
        }
        gradientColorStop.setOffset(Math.min(0.0d, offset), GradientColorStop.OffsetType.RELATIVE);
    }

    private static List<GradientColorStop> copyStopsAndNormalizeAbsoluteOffsets(List<GradientColorStop> list, double d) {
        ArrayList arrayList = new ArrayList(list.size());
        double d2 = Double.NEGATIVE_INFINITY;
        for (GradientColorStop gradientColorStop : list) {
            double offset = gradientColorStop.getOffset();
            GradientColorStop.OffsetType offsetType = gradientColorStop.getOffsetType();
            if (offsetType == GradientColorStop.OffsetType.ABSOLUTE) {
                offsetType = GradientColorStop.OffsetType.RELATIVE;
                offset /= d;
            }
            if (offsetType == GradientColorStop.OffsetType.RELATIVE) {
                if (offset >= d2) {
                    d2 = offset;
                }
                offset = d2;
            }
            GradientColorStop gradientColorStop2 = new GradientColorStop(gradientColorStop, offset, offsetType);
            double hintOffset = gradientColorStop.getHintOffset();
            GradientColorStop.HintOffsetType hintOffsetType = gradientColorStop.getHintOffsetType();
            if (hintOffsetType == GradientColorStop.HintOffsetType.ABSOLUTE_ON_GRADIENT) {
                hintOffsetType = GradientColorStop.HintOffsetType.RELATIVE_ON_GRADIENT;
                hintOffset /= d;
            }
            if (hintOffsetType == GradientColorStop.HintOffsetType.RELATIVE_ON_GRADIENT) {
                if (hintOffset >= d2) {
                    d2 = hintOffset;
                }
                hintOffset = d2;
            }
            gradientColorStop2.setHint(hintOffset, hintOffsetType);
            arrayList.add(gradientColorStop2);
        }
        return arrayList;
    }

    private static void adjustStopsForPadIfNeeded(List<GradientColorStop> list, double[] dArr) {
        GradientColorStop gradientColorStop = list.get(0);
        if (dArr[0] < gradientColorStop.getOffset()) {
            list.add(0, new GradientColorStop(gradientColorStop, dArr[0], GradientColorStop.OffsetType.RELATIVE));
        }
        GradientColorStop gradientColorStop2 = list.get(list.size() - 1);
        if (dArr[1] > gradientColorStop2.getOffset()) {
            list.add(new GradientColorStop(gradientColorStop2, dArr[1], GradientColorStop.OffsetType.RELATIVE));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0103  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.itextpdf.kernel.colors.gradients.GradientColorStop> adjustNormalizedStopsToCoverDomain(java.util.List<com.itextpdf.kernel.colors.gradients.GradientColorStop> r26, double[] r27, com.itextpdf.kernel.colors.gradients.GradientSpreadMethod r28) {
        /*
            Method dump skipped, instruction units count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.colors.gradients.AbstractLinearGradientBuilder.adjustNormalizedStopsToCoverDomain(java.util.List, double[], com.itextpdf.kernel.colors.gradients.GradientSpreadMethod):java.util.List");
    }

    private static PdfFunction constructFunction(List<GradientColorStop> list) {
        int size = list.size();
        int i = size - 1;
        double[] dArr = new double[size - 2];
        ArrayList arrayList = new ArrayList(i);
        GradientColorStop gradientColorStop = list.get(0);
        double offset = gradientColorStop.getOffset();
        int i2 = 1;
        while (i2 < i) {
            GradientColorStop gradientColorStop2 = list.get(i2);
            dArr[i2 - 1] = gradientColorStop2.getOffset();
            arrayList.add(constructSingleGradientSegmentFunction(gradientColorStop, gradientColorStop2));
            i2++;
            gradientColorStop = gradientColorStop2;
        }
        GradientColorStop gradientColorStop3 = list.get(list.size() - 1);
        arrayList.add(constructSingleGradientSegmentFunction(gradientColorStop, gradientColorStop3));
        double offset2 = gradientColorStop3.getOffset();
        int i3 = i * 2;
        double[] dArr2 = new double[i3];
        for (int i4 = 0; i4 < i3; i4 += 2) {
            dArr2[i4] = 0.0d;
            dArr2[i4 + 1] = 1.0d;
        }
        return new PdfFunction.Type3(new PdfArray(new double[]{offset, offset2}), (PdfArray) null, arrayList, new PdfArray(dArr), new PdfArray(dArr2));
    }

    private static PdfFunction constructSingleGradientSegmentFunction(GradientColorStop gradientColorStop, GradientColorStop gradientColorStop2) {
        float[] rgbArray = gradientColorStop.getRgbArray();
        float[] rgbArray2 = gradientColorStop2.getRgbArray();
        double dLog = 1.0d;
        if (gradientColorStop.getHintOffsetType() == GradientColorStop.HintOffsetType.RELATIVE_BETWEEN_COLORS) {
            double hintOffset = gradientColorStop.getHintOffset();
            if (hintOffset <= ZERO_EPSILON) {
                rgbArray = rgbArray2;
            } else if (hintOffset >= 0.9999999999d) {
                rgbArray2 = rgbArray;
            } else {
                dLog = Math.log(0.5d) / Math.log(hintOffset);
            }
        }
        return new PdfFunction.Type2(new PdfArray(new float[]{0.0f, 1.0f}), null, new PdfArray(rgbArray), new PdfArray(rgbArray2), new PdfNumber(dLog));
    }

    private static PdfArray createCoordsPdfArray(Point[] pointArr) {
        return new PdfArray(new double[]{pointArr[0].getX(), pointArr[0].getY(), pointArr[1].getX(), pointArr[1].getY()});
    }
}
