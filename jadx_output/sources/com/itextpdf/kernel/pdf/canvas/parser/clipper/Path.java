package com.itextpdf.kernel.pdf.canvas.parser.clipper;

import com.itextpdf.kernel.pdf.canvas.parser.clipper.Point;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes6.dex */
public class Path extends ArrayList<Point.LongPoint> {

    static class Join {
        private Point.LongPoint offPt;
        OutPt outPt1;
        OutPt outPt2;

        Join() {
        }

        public Point.LongPoint getOffPt() {
            return this.offPt;
        }

        public void setOffPt(Point.LongPoint longPoint) {
            this.offPt = longPoint;
        }
    }

    static class OutPt {
        int idx;
        OutPt next;
        OutPt prev;

        /* JADX INFO: renamed from: pt */
        protected Point.LongPoint f3170pt;

        OutPt() {
        }

        public static OutRec getLowerMostRec(OutRec outRec, OutRec outRec2) {
            if (outRec.bottomPt == null) {
                outRec.bottomPt = outRec.pts.getBottomPt();
            }
            if (outRec2.bottomPt == null) {
                outRec2.bottomPt = outRec2.pts.getBottomPt();
            }
            OutPt outPt = outRec.bottomPt;
            OutPt outPt2 = outRec2.bottomPt;
            return outPt.getPt().getY() > outPt2.getPt().getY() ? outRec : outPt.getPt().getY() < outPt2.getPt().getY() ? outRec2 : outPt.getPt().getX() < outPt2.getPt().getX() ? outRec : (outPt.getPt().getX() <= outPt2.getPt().getX() && outPt.next != outPt) ? (outPt2.next == outPt2 || isFirstBottomPt(outPt, outPt2)) ? outRec : outRec2 : outRec2;
        }

        private static boolean isFirstBottomPt(OutPt outPt, OutPt outPt2) {
            OutPt outPt3 = outPt.prev;
            while (outPt3.getPt().equals(outPt.getPt()) && !outPt3.equals(outPt)) {
                outPt3 = outPt3.prev;
            }
            double dAbs = Math.abs(Point.LongPoint.getDeltaX(outPt.getPt(), outPt3.getPt()));
            OutPt outPt4 = outPt.next;
            while (outPt4.getPt().equals(outPt.getPt()) && !outPt4.equals(outPt)) {
                outPt4 = outPt4.next;
            }
            double dAbs2 = Math.abs(Point.LongPoint.getDeltaX(outPt.getPt(), outPt4.getPt()));
            OutPt outPt5 = outPt2.prev;
            while (outPt5.getPt().equals(outPt2.getPt()) && !outPt5.equals(outPt2)) {
                outPt5 = outPt5.prev;
            }
            double dAbs3 = Math.abs(Point.LongPoint.getDeltaX(outPt2.getPt(), outPt5.getPt()));
            OutPt outPt6 = outPt2.next;
            while (outPt6.getPt().equals(outPt2.getPt()) && outPt6.equals(outPt2)) {
                outPt6 = outPt6.next;
            }
            double dAbs4 = Math.abs(Point.LongPoint.getDeltaX(outPt2.getPt(), outPt6.getPt()));
            return (dAbs >= dAbs3 && dAbs >= dAbs4) || (dAbs2 >= dAbs3 && dAbs2 >= dAbs4);
        }

        public OutPt duplicate(boolean z) {
            OutPt outPt = new OutPt();
            outPt.setPt(new Point.LongPoint(getPt()));
            outPt.idx = this.idx;
            if (z) {
                outPt.next = this.next;
                outPt.prev = this;
                this.next.prev = outPt;
                this.next = outPt;
            } else {
                outPt.prev = this.prev;
                outPt.next = this;
                this.prev.next = outPt;
                this.prev = outPt;
            }
            return outPt;
        }

        /* JADX WARN: Removed duplicated region for block: B:6:0x001b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        com.itextpdf.kernel.pdf.canvas.parser.clipper.Path.OutPt getBottomPt() {
            /*
                r8 = this;
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r0 = r8.next
                r1 = 0
                r2 = r8
                r3 = r1
            L5:
                if (r0 == r2) goto L67
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r4 = r0.getPt()
                long r4 = r4.getY()
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r6 = r2.getPt()
                long r6 = r6.getY()
                int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r4 <= 0) goto L1e
            L1b:
                r2 = r0
                r3 = r1
                goto L64
            L1e:
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r4 = r0.getPt()
                long r4 = r4.getY()
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r6 = r2.getPt()
                long r6 = r6.getY()
                int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r4 != 0) goto L64
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r4 = r0.getPt()
                long r4 = r4.getX()
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r6 = r2.getPt()
                long r6 = r6.getX()
                int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r4 > 0) goto L64
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r4 = r0.getPt()
                long r4 = r4.getX()
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r6 = r2.getPt()
                long r6 = r6.getX()
                int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r4 >= 0) goto L5b
                goto L1b
            L5b:
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r4 = r0.next
                if (r4 == r2) goto L64
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r4 = r0.prev
                if (r4 == r2) goto L64
                r3 = r0
            L64:
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r0 = r0.next
                goto L5
            L67:
                if (r3 == 0) goto L86
            L69:
                if (r3 == r0) goto L86
                boolean r1 = isFirstBottomPt(r0, r3)
                if (r1 != 0) goto L72
                r2 = r3
            L72:
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r1 = r3.next
                r3 = r1
            L75:
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r1 = r3.getPt()
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r4 = r2.getPt()
                boolean r1 = r1.equals(r4)
                if (r1 != 0) goto L69
                com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r3 = r3.next
                goto L75
            L86:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.canvas.parser.clipper.Path.OutPt.getBottomPt():com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt");
        }

        public int getPointCount() {
            int i = 0;
            OutPt outPt = this;
            do {
                i++;
                outPt = outPt.next;
                if (outPt == this) {
                    break;
                }
            } while (outPt != null);
            return i;
        }

        public Point.LongPoint getPt() {
            return this.f3170pt;
        }

        public void reversePolyPtLinks() {
            OutPt outPt = this;
            while (true) {
                OutPt outPt2 = outPt.next;
                outPt.next = outPt.prev;
                outPt.prev = outPt2;
                if (outPt2 == this) {
                    return;
                } else {
                    outPt = outPt2;
                }
            }
        }

        public void setPt(Point.LongPoint longPoint) {
            this.f3170pt = longPoint;
        }
    }

    protected static class Maxima {
        protected Maxima Next;
        protected Maxima Prev;

        /* JADX INFO: renamed from: X */
        protected long f3169X;

        protected Maxima() {
        }
    }

    static class OutRec {
        int Idx;
        OutPt bottomPt;
        OutRec firstLeft;
        boolean isHole;
        boolean isOpen;
        PolyNode polyNode;
        protected OutPt pts;

        OutRec() {
        }

        public double area() {
            OutPt outPt = this.pts;
            double x = 0.0d;
            if (outPt == null) {
                return 0.0d;
            }
            do {
                x += (outPt.prev.getPt().getX() + outPt.getPt().getX()) * (outPt.prev.getPt().getY() - outPt.getPt().getY());
                outPt = outPt.next;
            } while (outPt != this.pts);
            return x * 0.5d;
        }

        public void fixHoleLinkage() {
            OutRec outRec = this.firstLeft;
            if (outRec != null) {
                if (this.isHole == outRec.isHole || outRec.pts == null) {
                    while (outRec != null && (outRec.isHole == this.isHole || outRec.pts == null)) {
                        outRec = outRec.firstLeft;
                    }
                    this.firstLeft = outRec;
                }
            }
        }

        public OutPt getPoints() {
            return this.pts;
        }

        public void setPoints(OutPt outPt) {
            this.pts = outPt;
        }
    }

    private static OutPt excludeOp(OutPt outPt) {
        OutPt outPt2 = outPt.prev;
        outPt2.next = outPt.next;
        outPt.next.prev = outPt2;
        outPt2.idx = 0;
        return outPt2;
    }

    public Path() {
    }

    public Path(Point.LongPoint[] longPointArr) {
        this();
        for (Point.LongPoint longPoint : longPointArr) {
            add(longPoint);
        }
    }

    public Path(int i) {
        super(i);
    }

    public Path(Collection<? extends Point.LongPoint> collection) {
        super(collection);
    }

    public double area() {
        int size = size();
        if (size < 3) {
            return 0.0d;
        }
        int i = size - 1;
        double x = 0.0d;
        for (int i2 = 0; i2 < size; i2++) {
            x += (get(i).getX() + get(i2).getX()) * (get(i).getY() - get(i2).getY());
            i = i2;
        }
        return (-x) * 0.5d;
    }

    public Path cleanPolygon() {
        return cleanPolygon(1.415d);
    }

    public Path cleanPolygon(double d) {
        int size = size();
        if (size == 0) {
            return new Path();
        }
        OutPt[] outPtArr = new OutPt[size];
        for (int i = 0; i < size; i++) {
            outPtArr[i] = new OutPt();
        }
        int i2 = 0;
        while (i2 < size) {
            outPtArr[i2].f3170pt = get(i2);
            int i3 = i2 + 1;
            outPtArr[i2].next = outPtArr[i3 % size];
            outPtArr[i2].next.prev = outPtArr[i2];
            outPtArr[i2].idx = 0;
            i2 = i3;
        }
        double d2 = d * d;
        OutPt outPtExcludeOp = outPtArr[0];
        while (outPtExcludeOp.idx == 0 && outPtExcludeOp.next != outPtExcludeOp.prev) {
            if (Point.arePointsClose(outPtExcludeOp.f3170pt, outPtExcludeOp.prev.f3170pt, d2)) {
                outPtExcludeOp = excludeOp(outPtExcludeOp);
            } else if (Point.arePointsClose(outPtExcludeOp.prev.f3170pt, outPtExcludeOp.next.f3170pt, d2)) {
                excludeOp(outPtExcludeOp.next);
                outPtExcludeOp = excludeOp(outPtExcludeOp);
                size -= 2;
            } else if (Point.slopesNearCollinear(outPtExcludeOp.prev.f3170pt, outPtExcludeOp.f3170pt, outPtExcludeOp.next.f3170pt, d2)) {
                outPtExcludeOp = excludeOp(outPtExcludeOp);
            } else {
                outPtExcludeOp.idx = 1;
                outPtExcludeOp = outPtExcludeOp.next;
            }
            size--;
        }
        if (size < 3) {
            size = 0;
        }
        Path path = new Path(size);
        for (int i4 = 0; i4 < size; i4++) {
            path.add(outPtExcludeOp.f3170pt);
            outPtExcludeOp = outPtExcludeOp.next;
        }
        return path;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int isPointInPolygon(com.itextpdf.kernel.pdf.canvas.parser.clipper.Point.LongPoint r21) {
        /*
            Method dump skipped, instruction units count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.canvas.parser.clipper.Path.isPointInPolygon(com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint):int");
    }

    public boolean orientation() {
        return area() >= 0.0d;
    }

    public void reverse() {
        Collections.reverse(this);
    }

    public Path TranslatePath(Point.LongPoint longPoint) {
        Path path = new Path(size());
        for (int i = 0; i < size(); i++) {
            path.add(new Point.LongPoint(get(i).getX() + longPoint.getX(), get(i).getY() + longPoint.getY()));
        }
        return path;
    }
}
