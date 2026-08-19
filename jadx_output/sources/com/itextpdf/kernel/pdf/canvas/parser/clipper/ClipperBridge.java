package com.itextpdf.kernel.pdf.canvas.parser.clipper;

import com.itextpdf.kernel.geom.Subpath;
import com.itextpdf.kernel.pdf.canvas.parser.clipper.IClipper;
import com.itextpdf.kernel.pdf.canvas.parser.clipper.Point;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ClipperBridge {
    public static double floatMultiplier = Math.pow(10.0d, 14.0d);

    private ClipperBridge() {
    }

    public static com.itextpdf.kernel.geom.Path convertToPath(PolyTree polyTree) {
        com.itextpdf.kernel.geom.Path path = new com.itextpdf.kernel.geom.Path();
        for (PolyNode first = polyTree.getFirst(); first != null; first = first.getNext()) {
            addContour(path, first.getContour(), !first.isOpen());
        }
        return path;
    }

    public static void addPath(IClipper iClipper, com.itextpdf.kernel.geom.Path path, IClipper.PolyType polyType) {
        for (Subpath subpath : path.getSubpaths()) {
            if (!subpath.isSinglePointClosed() && !subpath.isSinglePointOpen()) {
                iClipper.addPath(new Path(convertToLongPoints(subpath.getPiecewiseLinearApproximation())), polyType, subpath.isClosed());
            }
        }
    }

    public static List<Subpath> addPath(ClipperOffset clipperOffset, com.itextpdf.kernel.geom.Path path, IClipper.JoinType joinType, IClipper.EndType endType) {
        ArrayList arrayList = new ArrayList();
        for (Subpath subpath : path.getSubpaths()) {
            if (subpath.isDegenerate()) {
                arrayList.add(subpath);
            } else if (!subpath.isSinglePointClosed() && !subpath.isSinglePointOpen()) {
                clipperOffset.addPath(new Path(convertToLongPoints(subpath.getPiecewiseLinearApproximation())), joinType, subpath.isClosed() ? IClipper.EndType.CLOSED_LINE : endType);
            }
        }
        return arrayList;
    }

    public static List<com.itextpdf.kernel.geom.Point> convertToFloatPoints(List<Point.LongPoint> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Point.LongPoint longPoint : list) {
            arrayList.add(new com.itextpdf.kernel.geom.Point(longPoint.getX() / floatMultiplier, longPoint.getY() / floatMultiplier));
        }
        return arrayList;
    }

    public static List<Point.LongPoint> convertToLongPoints(List<com.itextpdf.kernel.geom.Point> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (com.itextpdf.kernel.geom.Point point : list) {
            arrayList.add(new Point.LongPoint(floatMultiplier * point.getX(), floatMultiplier * point.getY()));
        }
        return arrayList;
    }

    public static IClipper.JoinType getJoinType(int i) {
        if (i == 0) {
            return IClipper.JoinType.MITER;
        }
        if (i == 2) {
            return IClipper.JoinType.BEVEL;
        }
        return IClipper.JoinType.ROUND;
    }

    public static IClipper.EndType getEndType(int i) {
        if (i == 0) {
            return IClipper.EndType.OPEN_BUTT;
        }
        if (i == 2) {
            return IClipper.EndType.OPEN_SQUARE;
        }
        return IClipper.EndType.OPEN_ROUND;
    }

    public static IClipper.PolyFillType getFillType(int i) {
        return i == 2 ? IClipper.PolyFillType.EVEN_ODD : IClipper.PolyFillType.NON_ZERO;
    }

    public static boolean addPolygonToClipper(IClipper iClipper, com.itextpdf.kernel.geom.Point[] pointArr, IClipper.PolyType polyType) {
        return iClipper.addPath(new Path(convertToLongPoints(new ArrayList(Arrays.asList(pointArr)))), polyType, true);
    }

    public static boolean addPolylineSubjectToClipper(IClipper iClipper, com.itextpdf.kernel.geom.Point[] pointArr) {
        return iClipper.addPath(new Path(convertToLongPoints(new ArrayList(Arrays.asList(pointArr)))), IClipper.PolyType.SUBJECT, false);
    }

    static void addContour(com.itextpdf.kernel.geom.Path path, List<Point.LongPoint> list, boolean z) {
        List<com.itextpdf.kernel.geom.Point> listConvertToFloatPoints = convertToFloatPoints(list);
        com.itextpdf.kernel.geom.Point point = listConvertToFloatPoints.get(0);
        path.moveTo((float) point.getX(), (float) point.getY());
        for (int i = 1; i < listConvertToFloatPoints.size(); i++) {
            com.itextpdf.kernel.geom.Point point2 = listConvertToFloatPoints.get(i);
            path.lineTo((float) point2.getX(), (float) point2.getY());
        }
        if (z) {
            path.closeSubpath();
        }
    }
}
