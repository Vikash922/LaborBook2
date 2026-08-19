package com.itextpdf.kernel.pdf.canvas.parser.clipper;

import java.lang.Comparable;
import java.lang.Number;
import java.math.BigInteger;
import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Point<T extends Number & Comparable<T>> {
    private static final NumberComparator NUMBER_COMPARATOR = new NumberComparator();

    /* JADX INFO: renamed from: x */
    protected T f3172x;

    /* JADX INFO: renamed from: y */
    protected T f3173y;

    /* JADX INFO: renamed from: z */
    protected T f3174z;

    protected Point(Point<T> point) {
        this(point.f3172x, point.f3173y, point.f3174z);
    }

    protected Point(T t, T t2, T t3) {
        this.f3172x = t;
        this.f3173y = t2;
        this.f3174z = t3;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Point)) {
            return false;
        }
        Point point = (Point) obj;
        NumberComparator numberComparator = NUMBER_COMPARATOR;
        return numberComparator.compare((Number) this.f3172x, (Number) point.f3172x) == 0 && numberComparator.compare((Number) this.f3173y, (Number) point.f3173y) == 0;
    }

    public void set(Point<T> point) {
        this.f3172x = point.f3172x;
        this.f3173y = point.f3173y;
        this.f3174z = point.f3174z;
    }

    public void setX(T t) {
        this.f3172x = t;
    }

    public void setY(T t) {
        this.f3173y = t;
    }

    public void setZ(T t) {
        this.f3174z = t;
    }

    public String toString() {
        return "Point [x=" + this.f3172x + ", y=" + this.f3173y + ", z=" + this.f3174z + "]";
    }

    protected static boolean isPt2BetweenPt1AndPt3(LongPoint longPoint, LongPoint longPoint2, LongPoint longPoint3) {
        if (longPoint.equals(longPoint3) || longPoint.equals(longPoint2) || longPoint3.equals(longPoint2)) {
            return false;
        }
        if (longPoint.getX() != longPoint3.getX()) {
            return ((((Long) longPoint2.f3172x).longValue() > ((Long) longPoint.f3172x).longValue() ? 1 : (((Long) longPoint2.f3172x).longValue() == ((Long) longPoint.f3172x).longValue() ? 0 : -1)) > 0) == ((((Long) longPoint2.f3172x).longValue() > ((Long) longPoint3.f3172x).longValue() ? 1 : (((Long) longPoint2.f3172x).longValue() == ((Long) longPoint3.f3172x).longValue() ? 0 : -1)) < 0);
        }
        return ((((Long) longPoint2.f3173y).longValue() > ((Long) longPoint.f3173y).longValue() ? 1 : (((Long) longPoint2.f3173y).longValue() == ((Long) longPoint.f3173y).longValue() ? 0 : -1)) > 0) == ((((Long) longPoint2.f3173y).longValue() > ((Long) longPoint3.f3173y).longValue() ? 1 : (((Long) longPoint2.f3173y).longValue() == ((Long) longPoint3.f3173y).longValue() ? 0 : -1)) < 0);
    }

    protected static boolean slopesEqual(LongPoint longPoint, LongPoint longPoint2, LongPoint longPoint3, boolean z) {
        return slopesEqual(longPoint, longPoint2, longPoint2, longPoint3, z);
    }

    protected static boolean slopesEqual(LongPoint longPoint, LongPoint longPoint2, LongPoint longPoint3, LongPoint longPoint4, boolean z) {
        if (z) {
            return BigInteger.valueOf(longPoint.getY() - longPoint2.getY()).multiply(BigInteger.valueOf(longPoint3.getX() - longPoint4.getX())).equals(BigInteger.valueOf(longPoint.getX() - longPoint2.getX()).multiply(BigInteger.valueOf(longPoint3.getY() - longPoint4.getY())));
        }
        return ((longPoint.getY() - longPoint2.getY()) * (longPoint3.getX() - longPoint4.getX())) - ((longPoint.getX() - longPoint2.getX()) * (longPoint3.getY() - longPoint4.getY())) == 0;
    }

    static boolean arePointsClose(Point<? extends Number> point, Point<? extends Number> point2, double d) {
        double dDoubleValue = point.f3172x.doubleValue() - point2.f3172x.doubleValue();
        double dDoubleValue2 = point.f3173y.doubleValue() - point2.f3173y.doubleValue();
        return (dDoubleValue * dDoubleValue) + (dDoubleValue2 * dDoubleValue2) <= d;
    }

    static double distanceFromLineSqrd(Point<? extends Number> point, Point<? extends Number> point2, Point<? extends Number> point3) {
        double dDoubleValue = point2.f3173y.doubleValue() - point3.f3173y.doubleValue();
        double dDoubleValue2 = point3.f3172x.doubleValue() - point2.f3172x.doubleValue();
        double dDoubleValue3 = ((point.f3172x.doubleValue() * dDoubleValue) + (point.f3173y.doubleValue() * dDoubleValue2)) - ((point2.f3172x.doubleValue() * dDoubleValue) + (point2.f3173y.doubleValue() * dDoubleValue2));
        return (dDoubleValue3 * dDoubleValue3) / ((dDoubleValue * dDoubleValue) + (dDoubleValue2 * dDoubleValue2));
    }

    static DoublePoint getUnitNormal(LongPoint longPoint, LongPoint longPoint2) {
        double dLongValue = ((Long) longPoint2.f3172x).longValue() - ((Long) longPoint.f3172x).longValue();
        double dLongValue2 = ((Long) longPoint2.f3173y).longValue() - ((Long) longPoint.f3173y).longValue();
        if (dLongValue == 0.0d && dLongValue2 == 0.0d) {
            return new DoublePoint();
        }
        double dSqrt = 1.0d / Math.sqrt((dLongValue * dLongValue) + (dLongValue2 * dLongValue2));
        return new DoublePoint(dLongValue2 * dSqrt, -(dLongValue * dSqrt));
    }

    static boolean slopesNearCollinear(LongPoint longPoint, LongPoint longPoint2, LongPoint longPoint3, double d) {
        if (Math.abs(((Long) longPoint.f3172x).longValue() - ((Long) longPoint2.f3172x).longValue()) > Math.abs(((Long) longPoint.f3173y).longValue() - ((Long) longPoint2.f3173y).longValue())) {
            if ((((Long) longPoint.f3172x).longValue() > ((Long) longPoint2.f3172x).longValue()) == (((Long) longPoint.f3172x).longValue() < ((Long) longPoint3.f3172x).longValue())) {
                return distanceFromLineSqrd(longPoint, longPoint2, longPoint3) < d;
            }
            return ((((Long) longPoint2.f3172x).longValue() > ((Long) longPoint.f3172x).longValue() ? 1 : (((Long) longPoint2.f3172x).longValue() == ((Long) longPoint.f3172x).longValue() ? 0 : -1)) > 0) == ((((Long) longPoint2.f3172x).longValue() > ((Long) longPoint3.f3172x).longValue() ? 1 : (((Long) longPoint2.f3172x).longValue() == ((Long) longPoint3.f3172x).longValue() ? 0 : -1)) < 0) ? distanceFromLineSqrd(longPoint2, longPoint, longPoint3) < d : distanceFromLineSqrd(longPoint3, longPoint, longPoint2) < d;
        }
        if ((((Long) longPoint.f3173y).longValue() > ((Long) longPoint2.f3173y).longValue()) == (((Long) longPoint.f3173y).longValue() < ((Long) longPoint3.f3173y).longValue())) {
            return distanceFromLineSqrd(longPoint, longPoint2, longPoint3) < d;
        }
        return ((((Long) longPoint2.f3173y).longValue() > ((Long) longPoint.f3173y).longValue() ? 1 : (((Long) longPoint2.f3173y).longValue() == ((Long) longPoint.f3173y).longValue() ? 0 : -1)) > 0) == ((((Long) longPoint2.f3173y).longValue() > ((Long) longPoint3.f3173y).longValue() ? 1 : (((Long) longPoint2.f3173y).longValue() == ((Long) longPoint3.f3173y).longValue() ? 0 : -1)) < 0) ? distanceFromLineSqrd(longPoint2, longPoint, longPoint3) < d : distanceFromLineSqrd(longPoint3, longPoint, longPoint2) < d;
    }

    public static class DoublePoint extends Point<Double> {
        public DoublePoint() {
            this(0.0d, 0.0d);
        }

        public DoublePoint(double d, double d2) {
            this(d, d2, 0.0d);
        }

        public DoublePoint(double d, double d2, double d3) {
            super(Double.valueOf(d), Double.valueOf(d2), Double.valueOf(d3));
        }

        public DoublePoint(DoublePoint doublePoint) {
            super(doublePoint);
        }

        public double getX() {
            return ((Double) this.f3172x).doubleValue();
        }

        public double getY() {
            return ((Double) this.f3173y).doubleValue();
        }

        public double getZ() {
            return ((Double) this.f3174z).doubleValue();
        }
    }

    public static class LongPoint extends Point<Long> {
        public LongPoint() {
            this(0L, 0L);
        }

        public LongPoint(long j, long j2) {
            this(j, j2, 0L);
        }

        public LongPoint(double d, double d2) {
            this((long) d, (long) d2);
        }

        public LongPoint(long j, long j2, long j3) {
            super(Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3));
        }

        public LongPoint(LongPoint longPoint) {
            super(longPoint);
        }

        public static double getDeltaX(LongPoint longPoint, LongPoint longPoint2) {
            if (longPoint.getY() == longPoint2.getY()) {
                return -3.4E38d;
            }
            return (longPoint2.getX() - longPoint.getX()) / (longPoint2.getY() - longPoint.getY());
        }

        public long getX() {
            return ((Long) this.f3172x).longValue();
        }

        public long getY() {
            return ((Long) this.f3173y).longValue();
        }

        public long getZ() {
            return ((Long) this.f3174z).longValue();
        }
    }

    private static class NumberComparator<T extends Number & Comparable<T>> implements Comparator<T> {
        private NumberComparator() {
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) throws ClassCastException {
            return ((Comparable) t).compareTo(t2);
        }
    }
}
