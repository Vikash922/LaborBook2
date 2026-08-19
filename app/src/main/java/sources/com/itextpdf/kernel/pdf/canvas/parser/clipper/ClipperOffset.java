package com.itextpdf.kernel.pdf.canvas.parser.clipper;

import com.itextpdf.kernel.pdf.canvas.parser.clipper.IClipper;
import com.itextpdf.kernel.pdf.canvas.parser.clipper.Point;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class ClipperOffset {
    private static final double DEFAULT_ARC_TOLERANCE = 0.25d;
    private static final double TOLERANCE = 1.0E-20d;
    private static final double TWO_PI = 6.283185307179586d;
    private final double arcTolerance;
    private double cos;
    private double delta;
    private Path destPoly;
    private Paths destPolys;
    private double inA;
    private Point.LongPoint lowest;
    private double miterLim;
    private final double miterLimit;
    private final List<Point.DoublePoint> normals;
    private final PolyNode polyNodes;
    private double sin;
    private Path srcPoly;
    private double stepsPerRad;

    private static boolean nearZero(double d) {
        return d > -1.0E-20d && d < TOLERANCE;
    }

    public ClipperOffset() {
        this(2.0d, DEFAULT_ARC_TOLERANCE);
    }

    public ClipperOffset(double d) {
        this(d, DEFAULT_ARC_TOLERANCE);
    }

    public ClipperOffset(double d, double d2) {
        this.miterLimit = d;
        this.arcTolerance = d2;
        Point.LongPoint longPoint = new Point.LongPoint();
        this.lowest = longPoint;
        longPoint.setX(-1L);
        this.polyNodes = new PolyNode();
        this.normals = new ArrayList();
    }

    public void addPath(Path path, IClipper.JoinType joinType, IClipper.EndType endType) {
        int size = path.size() - 1;
        if (size < 0) {
            return;
        }
        PolyNode polyNode = new PolyNode();
        polyNode.setJoinType(joinType);
        polyNode.setEndType(endType);
        int i = 0;
        if (endType == IClipper.EndType.CLOSED_LINE || endType == IClipper.EndType.CLOSED_POLYGON) {
            while (size > 0 && path.get(0).equals(path.get(size))) {
                size--;
            }
        }
        polyNode.getPolygon().add(path.get(0));
        int i2 = 0;
        for (int i3 = 1; i3 <= size; i3++) {
            if (!polyNode.getPolygon().get(i).equals(path.get(i3))) {
                i++;
                polyNode.getPolygon().add(path.get(i3));
                if (path.get(i3).getY() > polyNode.getPolygon().get(i2).getY() || (path.get(i3).getY() == polyNode.getPolygon().get(i2).getY() && path.get(i3).getX() < polyNode.getPolygon().get(i2).getX())) {
                    i2 = i;
                }
            }
        }
        if (endType != IClipper.EndType.CLOSED_POLYGON || i >= 2) {
            this.polyNodes.addChild(polyNode);
            if (endType != IClipper.EndType.CLOSED_POLYGON) {
                return;
            }
            if (this.lowest.getX() < 0) {
                this.lowest = new Point.LongPoint(this.polyNodes.getChildCount() - 1, i2);
                return;
            }
            Point.LongPoint longPoint = this.polyNodes.getChilds().get((int) this.lowest.getX()).getPolygon().get((int) this.lowest.getY());
            if (polyNode.getPolygon().get(i2).getY() > longPoint.getY() || (polyNode.getPolygon().get(i2).getY() == longPoint.getY() && polyNode.getPolygon().get(i2).getX() < longPoint.getX())) {
                this.lowest = new Point.LongPoint(this.polyNodes.getChildCount() - 1, i2);
            }
        }
    }

    public void addPaths(Paths paths, IClipper.JoinType joinType, IClipper.EndType endType) {
        Iterator<Path> it = paths.iterator();
        while (it.hasNext()) {
            addPath(it.next(), joinType, endType);
        }
    }

    public void clear() {
        this.polyNodes.getChilds().clear();
        this.lowest.setX(-1L);
    }

    private void doMiter(int i, int i2, double d) {
        double d2 = this.delta / d;
        this.destPoly.add(new Point.LongPoint(Math.round(this.srcPoly.get(i).getX() + ((this.normals.get(i2).getX() + this.normals.get(i).getX()) * d2)), Math.round(this.srcPoly.get(i).getY() + ((this.normals.get(i2).getY() + this.normals.get(i).getY()) * d2))));
    }

    private void doOffset(double d) {
        int i;
        int i2;
        double d2;
        int i3;
        double d3;
        int i4;
        this.destPolys = new Paths();
        this.delta = d;
        int i5 = 0;
        if (nearZero(d)) {
            while (i5 < this.polyNodes.getChildCount()) {
                PolyNode polyNode = this.polyNodes.getChilds().get(i5);
                if (polyNode.getEndType() == IClipper.EndType.CLOSED_POLYGON) {
                    this.destPolys.add(polyNode.getPolygon());
                }
                i5++;
            }
            return;
        }
        double d4 = this.miterLimit;
        if (d4 > 2.0d) {
            this.miterLim = 2.0d / (d4 * d4);
        } else {
            this.miterLim = 0.5d;
        }
        double d5 = this.arcTolerance;
        double d6 = 0.0d;
        double dAbs = DEFAULT_ARC_TOLERANCE;
        if (d5 > 0.0d) {
            if (d5 > Math.abs(d) * DEFAULT_ARC_TOLERANCE) {
                dAbs = DEFAULT_ARC_TOLERANCE * Math.abs(d);
            } else {
                dAbs = this.arcTolerance;
            }
        }
        double dAcos = 3.141592653589793d / Math.acos(1.0d - (dAbs / Math.abs(d)));
        double d7 = TWO_PI / dAcos;
        this.sin = Math.sin(d7);
        this.cos = Math.cos(d7);
        this.stepsPerRad = dAcos / TWO_PI;
        int i6 = (d > 0.0d ? 1 : (d == 0.0d ? 0 : -1));
        if (i6 < 0) {
            this.sin = -this.sin;
        }
        int i7 = 0;
        while (i7 < this.polyNodes.getChildCount()) {
            PolyNode polyNode2 = this.polyNodes.getChilds().get(i7);
            Path polygon = polyNode2.getPolygon();
            this.srcPoly = polygon;
            int size = polygon.size();
            if (size == 0 || (i6 <= 0 && (size < 3 || polyNode2.getEndType() != IClipper.EndType.CLOSED_POLYGON))) {
                i = i6;
                i2 = i7;
                d2 = dAcos;
                i3 = i5;
                d3 = d6;
            } else {
                this.destPoly = new Path();
                int i8 = 1;
                if (size == 1) {
                    if (polyNode2.getJoinType() == IClipper.JoinType.ROUND) {
                        double d8 = d6;
                        double d9 = 1.0d;
                        while (i8 <= dAcos) {
                            this.destPoly.add(new Point.LongPoint(Math.round(this.srcPoly.get(i5).getX() + (d9 * d)), Math.round(this.srcPoly.get(i5).getY() + (d8 * d))));
                            double d10 = this.cos;
                            double d11 = this.sin;
                            double d12 = (d9 * d10) - (d11 * d8);
                            d8 = (d9 * d11) + (d8 * d10);
                            i8++;
                            d9 = d12;
                            i7 = i7;
                            i5 = 0;
                        }
                        i2 = i7;
                    } else {
                        i2 = i7;
                        int i9 = 0;
                        double d13 = -1.0d;
                        double d14 = -1.0d;
                        while (i9 < 4) {
                            int i10 = i6;
                            double d15 = dAcos;
                            this.destPoly.add(new Point.LongPoint(Math.round(this.srcPoly.get(0).getX() + (d13 * d)), Math.round(this.srcPoly.get(0).getY() + (d14 * d))));
                            if (d13 < 0.0d) {
                                d13 = 1.0d;
                            } else if (d14 < 0.0d) {
                                d14 = 1.0d;
                            } else {
                                d13 = -1.0d;
                            }
                            i9++;
                            i6 = i10;
                            dAcos = d15;
                        }
                    }
                    i = i6;
                    d2 = dAcos;
                    this.destPolys.add(this.destPoly);
                } else {
                    i = i6;
                    i2 = i7;
                    d2 = dAcos;
                    this.normals.clear();
                    int i11 = 0;
                    while (true) {
                        i4 = size - 1;
                        if (i11 >= i4) {
                            break;
                        }
                        List<Point.DoublePoint> list = this.normals;
                        Point.LongPoint longPoint = this.srcPoly.get(i11);
                        i11++;
                        list.add(Point.getUnitNormal(longPoint, this.srcPoly.get(i11)));
                    }
                    if (polyNode2.getEndType() == IClipper.EndType.CLOSED_LINE || polyNode2.getEndType() == IClipper.EndType.CLOSED_POLYGON) {
                        this.normals.add(Point.getUnitNormal(this.srcPoly.get(i4), this.srcPoly.get(0)));
                    } else {
                        this.normals.add(new Point.DoublePoint(this.normals.get(size - 2)));
                    }
                    if (polyNode2.getEndType() == IClipper.EndType.CLOSED_POLYGON) {
                        int[] iArr = {i4};
                        for (int i12 = 0; i12 < size; i12++) {
                            offsetPoint(i12, iArr, polyNode2.getJoinType());
                        }
                        this.destPolys.add(this.destPoly);
                    } else if (polyNode2.getEndType() == IClipper.EndType.CLOSED_LINE) {
                        int[] iArr2 = {i4};
                        for (int i13 = 0; i13 < size; i13++) {
                            offsetPoint(i13, iArr2, polyNode2.getJoinType());
                        }
                        this.destPolys.add(this.destPoly);
                        this.destPoly = new Path();
                        Point.DoublePoint doublePoint = this.normals.get(i4);
                        for (int i14 = i4; i14 > 0; i14--) {
                            int i15 = i14 - 1;
                            this.normals.set(i14, new Point.DoublePoint(-this.normals.get(i15).getX(), -this.normals.get(i15).getY()));
                        }
                        this.normals.set(0, new Point.DoublePoint(-doublePoint.getX(), -doublePoint.getY(), 0.0d));
                        iArr2[0] = 0;
                        while (i4 >= 0) {
                            offsetPoint(i4, iArr2, polyNode2.getJoinType());
                            i4--;
                        }
                        this.destPolys.add(this.destPoly);
                    } else {
                        int[] iArr3 = new int[1];
                        for (int i16 = 1; i16 < i4; i16++) {
                            offsetPoint(i16, iArr3, polyNode2.getJoinType());
                        }
                        if (polyNode2.getEndType() == IClipper.EndType.OPEN_BUTT) {
                            this.destPoly.add(new Point.LongPoint(Math.round(this.srcPoly.get(i4).getX() + (this.normals.get(i4).getX() * d)), Math.round(this.srcPoly.get(i4).getY() + (this.normals.get(i4).getY() * d)), 0L));
                            this.destPoly.add(new Point.LongPoint(Math.round(this.srcPoly.get(i4).getX() - (this.normals.get(i4).getX() * d)), Math.round(this.srcPoly.get(i4).getY() - (this.normals.get(i4).getY() * d)), 0L));
                        } else {
                            iArr3[0] = size - 2;
                            this.inA = 0.0d;
                            this.normals.set(i4, new Point.DoublePoint(-this.normals.get(i4).getX(), -this.normals.get(i4).getY()));
                            if (polyNode2.getEndType() == IClipper.EndType.OPEN_SQUARE) {
                                doSquare(i4, iArr3[0], true);
                            } else {
                                doRound(i4, iArr3[0]);
                            }
                        }
                        for (int i17 = i4; i17 > 0; i17--) {
                            int i18 = i17 - 1;
                            this.normals.set(i17, new Point.DoublePoint(-this.normals.get(i18).getX(), -this.normals.get(i18).getY()));
                        }
                        this.normals.set(0, new Point.DoublePoint(-this.normals.get(1).getX(), -this.normals.get(1).getY()));
                        iArr3[0] = i4;
                        for (int i19 = size - 2; i19 > 0; i19--) {
                            offsetPoint(i19, iArr3, polyNode2.getJoinType());
                        }
                        if (polyNode2.getEndType() == IClipper.EndType.OPEN_BUTT) {
                            i3 = 0;
                            this.destPoly.add(new Point.LongPoint(Math.round(this.srcPoly.get(0).getX() - (this.normals.get(0).getX() * d)), Math.round(this.srcPoly.get(0).getY() - (this.normals.get(0).getY() * d))));
                            this.destPoly.add(new Point.LongPoint(Math.round(this.srcPoly.get(0).getX() + (this.normals.get(0).getX() * d)), Math.round(this.srcPoly.get(0).getY() + (this.normals.get(0).getY() * d))));
                            d3 = 0.0d;
                        } else {
                            i3 = 0;
                            iArr3[0] = 1;
                            d3 = 0.0d;
                            this.inA = 0.0d;
                            if (polyNode2.getEndType() == IClipper.EndType.OPEN_SQUARE) {
                                doSquare(0, 1, true);
                            } else {
                                doRound(0, 1);
                            }
                        }
                        this.destPolys.add(this.destPoly);
                    }
                }
                d3 = 0.0d;
                i3 = 0;
            }
            d6 = d3;
            i5 = i3;
            i7 = i2 + 1;
            i6 = i;
            dAcos = d2;
        }
    }

    private void doRound(int i, int i2) {
        int iMax = Math.max((int) Math.round(this.stepsPerRad * Math.abs(Math.atan2(this.inA, (this.normals.get(i2).getX() * this.normals.get(i).getX()) + (this.normals.get(i2).getY() * this.normals.get(i).getY())))), 1);
        double x = this.normals.get(i2).getX();
        double y = this.normals.get(i2).getY();
        int i3 = 0;
        while (i3 < iMax) {
            this.destPoly.add(new Point.LongPoint(Math.round(this.srcPoly.get(i).getX() + (this.delta * x)), Math.round(this.srcPoly.get(i).getY() + (this.delta * y))));
            double d = this.cos;
            double d2 = this.sin;
            double d3 = (x * d) - (d2 * y);
            y = (y * d) + (x * d2);
            i3++;
            x = d3;
        }
        this.destPoly.add(new Point.LongPoint(Math.round(this.srcPoly.get(i).getX() + (this.normals.get(i).getX() * this.delta)), Math.round(this.srcPoly.get(i).getY() + (this.normals.get(i).getY() * this.delta))));
    }

    private void doSquare(int i, int i2, boolean z) {
        double x = this.normals.get(i2).getX();
        double y = this.normals.get(i2).getY();
        double x2 = this.normals.get(i).getX();
        double y2 = this.normals.get(i).getY();
        double x3 = this.srcPoly.get(i).getX();
        double y3 = this.srcPoly.get(i).getY();
        double dTan = Math.tan(Math.atan2(this.inA, (x * x2) + (y * y2)) / 4.0d);
        this.destPoly.add(new Point.LongPoint(Math.round((this.delta * (x - (z ? y * dTan : 0.0d))) + x3), Math.round((this.delta * (y + (z ? x * dTan : 0.0d))) + y3), 0L));
        this.destPoly.add(new Point.LongPoint(Math.round(x3 + (this.delta * (x2 + (z ? y2 * dTan : 0.0d)))), Math.round(y3 + (this.delta * (y2 - (z ? x2 * dTan : 0.0d)))), 0L));
    }

    public void execute(Paths paths, double d) {
        paths.clear();
        fixOrientations();
        doOffset(d);
        DefaultClipper defaultClipper = new DefaultClipper(1);
        defaultClipper.addPaths(this.destPolys, IClipper.PolyType.SUBJECT, true);
        if (d > 0.0d) {
            defaultClipper.execute(IClipper.ClipType.UNION, paths, IClipper.PolyFillType.POSITIVE, IClipper.PolyFillType.POSITIVE);
            return;
        }
        LongRect bounds = this.destPolys.getBounds();
        Path path = new Path(4);
        path.add(new Point.LongPoint(bounds.left - 10, bounds.bottom + 10, 0L));
        path.add(new Point.LongPoint(bounds.right + 10, bounds.bottom + 10, 0L));
        path.add(new Point.LongPoint(bounds.right + 10, bounds.top - 10, 0L));
        path.add(new Point.LongPoint(bounds.left - 10, bounds.top - 10, 0L));
        defaultClipper.addPath(path, IClipper.PolyType.SUBJECT, true);
        defaultClipper.execute(IClipper.ClipType.UNION, paths, IClipper.PolyFillType.NEGATIVE, IClipper.PolyFillType.NEGATIVE);
        if (paths.size() > 0) {
            paths.remove(0);
        }
    }

    public void execute(PolyTree polyTree, double d) {
        polyTree.Clear();
        fixOrientations();
        doOffset(d);
        DefaultClipper defaultClipper = new DefaultClipper(1);
        defaultClipper.addPaths(this.destPolys, IClipper.PolyType.SUBJECT, true);
        if (d > 0.0d) {
            defaultClipper.execute(IClipper.ClipType.UNION, polyTree, IClipper.PolyFillType.POSITIVE, IClipper.PolyFillType.POSITIVE);
            return;
        }
        LongRect bounds = this.destPolys.getBounds();
        Path path = new Path(4);
        path.add(new Point.LongPoint(bounds.left - 10, bounds.bottom + 10, 0L));
        path.add(new Point.LongPoint(bounds.right + 10, bounds.bottom + 10, 0L));
        path.add(new Point.LongPoint(bounds.right + 10, bounds.top - 10, 0L));
        path.add(new Point.LongPoint(bounds.left - 10, bounds.top - 10, 0L));
        defaultClipper.addPath(path, IClipper.PolyType.SUBJECT, true);
        defaultClipper.execute(IClipper.ClipType.UNION, polyTree, IClipper.PolyFillType.NEGATIVE, IClipper.PolyFillType.NEGATIVE);
        if (polyTree.getChildCount() == 1 && polyTree.getChilds().get(0).getChildCount() > 0) {
            PolyNode polyNode = polyTree.getChilds().get(0);
            polyTree.getChilds().set(0, polyNode.getChilds().get(0));
            polyTree.getChilds().get(0).setParent(polyTree);
            for (int i = 1; i < polyNode.getChildCount(); i++) {
                polyTree.addChild(polyNode.getChilds().get(i));
            }
            return;
        }
        polyTree.Clear();
    }

    private void fixOrientations() {
        int i = 0;
        if (this.lowest.getX() >= 0 && !this.polyNodes.childs.get((int) this.lowest.getX()).getPolygon().orientation()) {
            while (i < this.polyNodes.getChildCount()) {
                PolyNode polyNode = this.polyNodes.childs.get(i);
                if (polyNode.getEndType() == IClipper.EndType.CLOSED_POLYGON || (polyNode.getEndType() == IClipper.EndType.CLOSED_LINE && polyNode.getPolygon().orientation())) {
                    Collections.reverse(polyNode.getPolygon());
                }
                i++;
            }
            return;
        }
        while (i < this.polyNodes.getChildCount()) {
            PolyNode polyNode2 = this.polyNodes.childs.get(i);
            if (polyNode2.getEndType() == IClipper.EndType.CLOSED_LINE && !polyNode2.getPolygon().orientation()) {
                Collections.reverse(polyNode2.getPolygon());
            }
            i++;
        }
    }

    private void offsetPoint(int i, int[] iArr, IClipper.JoinType joinType) {
        long j;
        double d;
        char c;
        int i2 = iArr[0];
        double x = this.normals.get(i2).getX();
        double y = this.normals.get(i2).getY();
        double y2 = this.normals.get(i).getY();
        double x2 = this.normals.get(i).getX();
        long x3 = this.srcPoly.get(i).getX();
        long y3 = this.srcPoly.get(i).getY();
        double d2 = (x * y2) - (x2 * y);
        this.inA = d2;
        if (Math.abs(d2 * this.delta) >= 1.0d) {
            j = y3;
            d = y2;
            double d3 = this.inA;
            if (d3 > 1.0d) {
                this.inA = 1.0d;
            } else if (d3 < -1.0d) {
                this.inA = -1.0d;
            }
        } else if ((x * x2) + (y2 * y) > 0.0d) {
            this.destPoly.add(new Point.LongPoint(Math.round(x3 + (x * this.delta)), Math.round(y3 + (y * this.delta)), 0L));
            return;
        } else {
            j = y3;
            d = y2;
        }
        if (this.inA * this.delta < 0.0d) {
            double d4 = x3;
            double d5 = j;
            this.destPoly.add(new Point.LongPoint(Math.round((x * this.delta) + d4), Math.round((y * this.delta) + d5)));
            this.destPoly.add(this.srcPoly.get(i));
            this.destPoly.add(new Point.LongPoint(Math.round(d4 + (x2 * this.delta)), Math.round(d5 + (this.delta * d))));
        } else {
            int i3 = C34781.f3163x1a9e4fe0[joinType.ordinal()];
            if (i3 == 1) {
                c = 0;
                double d6 = (x2 * x) + 1.0d + (d * y);
                if (d6 >= this.miterLim) {
                    doMiter(i, i2, d6);
                } else {
                    doSquare(i, i2, false);
                }
            } else if (i3 == 2) {
                c = 0;
                doSquare(i, i2, false);
            } else if (i3 == 3) {
                doRound(i, i2);
            }
            iArr[c] = i;
        }
        c = 0;
        iArr[c] = i;
    }

    /* JADX INFO: renamed from: com.itextpdf.kernel.pdf.canvas.parser.clipper.ClipperOffset$1 */
    static /* synthetic */ class C34781 {

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$clipper$IClipper$JoinType */
        static final /* synthetic */ int[] f3163x1a9e4fe0;

        static {
            int[] iArr = new int[IClipper.JoinType.values().length];
            f3163x1a9e4fe0 = iArr;
            try {
                iArr[IClipper.JoinType.MITER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3163x1a9e4fe0[IClipper.JoinType.BEVEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3163x1a9e4fe0[IClipper.JoinType.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
