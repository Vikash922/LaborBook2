package com.itextpdf.kernel.pdf.canvas.parser.clipper;

import com.itextpdf.kernel.pdf.canvas.parser.clipper.IClipper;
import com.itextpdf.kernel.pdf.canvas.parser.clipper.Point;
import java.math.BigInteger;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes6.dex */
class Edge {
    protected static final double HORIZONTAL = -3.4E38d;
    private static final Logger LOGGER = Logger.getLogger(Edge.class.getName());
    protected static final int SKIP = -2;
    protected static final int UNASSIGNED = -1;
    double deltaX;
    Edge next;
    Edge nextInAEL;
    Edge nextInLML;
    Edge nextInSEL;
    int outIdx;
    IClipper.PolyType polyTyp;
    Edge prev;
    Edge prevInAEL;
    Edge prevInSEL;
    Side side;
    int windCnt;
    int windCnt2;
    int windDelta;
    private final Point.LongPoint delta = new Point.LongPoint();
    private final Point.LongPoint top = new Point.LongPoint();
    private final Point.LongPoint bot = new Point.LongPoint();
    private final Point.LongPoint current = new Point.LongPoint();

    enum Side {
        LEFT,
        RIGHT
    }

    static boolean doesE2InsertBeforeE1(Edge edge, Edge edge2) {
        return edge2.current.getX() == edge.current.getX() ? edge2.top.getY() > edge.top.getY() ? edge2.top.getX() < topX(edge, edge2.top.getY()) : edge.top.getX() > topX(edge2, edge.top.getY()) : edge2.current.getX() < edge.current.getX();
    }

    static boolean slopesEqual(Edge edge, Edge edge2, boolean z) {
        if (z) {
            return BigInteger.valueOf(edge.getDelta().getY()).multiply(BigInteger.valueOf(edge2.getDelta().getX())).equals(BigInteger.valueOf(edge.getDelta().getX()).multiply(BigInteger.valueOf(edge2.getDelta().getY())));
        }
        return edge.getDelta().getY() * edge2.getDelta().getX() == edge.getDelta().getX() * edge2.getDelta().getY();
    }

    static void swapPolyIndexes(Edge edge, Edge edge2) {
        int i = edge.outIdx;
        edge.outIdx = edge2.outIdx;
        edge2.outIdx = i;
    }

    static void swapSides(Edge edge, Edge edge2) {
        Side side = edge.side;
        edge.side = edge2.side;
        edge2.side = side;
    }

    static long topX(Edge edge, long j) {
        if (j == edge.getTop().getY()) {
            return edge.getTop().getX();
        }
        return edge.getBot().getX() + Math.round(edge.deltaX * (j - edge.getBot().getY()));
    }

    public Edge findNextLocMin() {
        Edge edge = this;
        while (true) {
            if (!edge.bot.equals(edge.prev.bot) || edge.current.equals(edge.top)) {
                edge = edge.next;
            } else {
                if (edge.deltaX != HORIZONTAL && edge.prev.deltaX != HORIZONTAL) {
                    return edge;
                }
                while (true) {
                    Edge edge2 = edge.prev;
                    if (edge2.deltaX != HORIZONTAL) {
                        break;
                    }
                    edge = edge2;
                }
                Edge edge3 = edge;
                while (edge3.deltaX == HORIZONTAL) {
                    edge3 = edge3.next;
                }
                if (edge3.top.getY() != edge3.prev.bot.getY()) {
                    return edge.prev.bot.getX() < edge3.bot.getX() ? edge : edge3;
                }
                edge = edge3;
            }
        }
    }

    public Point.LongPoint getBot() {
        return this.bot;
    }

    public Point.LongPoint getCurrent() {
        return this.current;
    }

    public Point.LongPoint getDelta() {
        return this.delta;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge getMaximaPair() {
        /*
            r4 = this;
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge r0 = r4.next
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r0 = r0.top
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r1 = r4.top
            boolean r0 = r0.equals(r1)
            r1 = 0
            if (r0 == 0) goto L14
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge r0 = r4.next
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge r2 = r0.nextInLML
            if (r2 != 0) goto L14
            goto L28
        L14:
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge r0 = r4.prev
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r0 = r0.top
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r2 = r4.top
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L27
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge r0 = r4.prev
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge r2 = r0.nextInLML
            if (r2 != 0) goto L27
            goto L28
        L27:
            r0 = r1
        L28:
            if (r0 == 0) goto L3c
            int r2 = r0.outIdx
            r3 = -2
            if (r2 == r3) goto L3b
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge r2 = r0.nextInAEL
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge r3 = r0.prevInAEL
            if (r2 != r3) goto L3c
            boolean r2 = r0.isHorizontal()
            if (r2 != 0) goto L3c
        L3b:
            return r1
        L3c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge.getMaximaPair():com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge");
    }

    public Edge getNextInAEL(IClipper.Direction direction) {
        return direction == IClipper.Direction.LEFT_TO_RIGHT ? this.nextInAEL : this.prevInAEL;
    }

    public Point.LongPoint getTop() {
        return this.top;
    }

    public boolean isContributing(IClipper.PolyFillType polyFillType, IClipper.PolyFillType polyFillType2, IClipper.ClipType clipType) {
        LOGGER.entering(Edge.class.getName(), "isContributing");
        if (this.polyTyp == IClipper.PolyType.SUBJECT) {
            polyFillType2 = polyFillType;
            polyFillType = polyFillType2;
        }
        int i = C34811.f3168x682d75a5[polyFillType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    if (this.windCnt != 1) {
                        return false;
                    }
                } else if (this.windCnt != -1) {
                    return false;
                }
            } else if (Math.abs(this.windCnt) != 1) {
                return false;
            }
        } else if (this.windDelta == 0 && this.windCnt != 1) {
            return false;
        }
        int i2 = C34811.f3167xa4df9306[clipType.ordinal()];
        if (i2 == 1) {
            int i3 = C34811.f3168x682d75a5[polyFillType2.ordinal()];
            return (i3 == 1 || i3 == 2) ? this.windCnt2 != 0 : i3 != 3 ? this.windCnt2 < 0 : this.windCnt2 > 0;
        }
        if (i2 == 2) {
            int i4 = C34811.f3168x682d75a5[polyFillType2.ordinal()];
            return (i4 == 1 || i4 == 2) ? this.windCnt2 == 0 : i4 != 3 ? this.windCnt2 >= 0 : this.windCnt2 <= 0;
        }
        if (i2 == 3) {
            if (this.polyTyp == IClipper.PolyType.SUBJECT) {
                int i5 = C34811.f3168x682d75a5[polyFillType2.ordinal()];
                return (i5 == 1 || i5 == 2) ? this.windCnt2 == 0 : i5 != 3 ? this.windCnt2 >= 0 : this.windCnt2 <= 0;
            }
            int i6 = C34811.f3168x682d75a5[polyFillType2.ordinal()];
            return (i6 == 1 || i6 == 2) ? this.windCnt2 != 0 : i6 != 3 ? this.windCnt2 < 0 : this.windCnt2 > 0;
        }
        if (i2 != 4 || this.windDelta != 0) {
            return true;
        }
        int i7 = C34811.f3168x682d75a5[polyFillType2.ordinal()];
        return (i7 == 1 || i7 == 2) ? this.windCnt2 == 0 : i7 != 3 ? this.windCnt2 >= 0 : this.windCnt2 <= 0;
    }

    /* JADX INFO: renamed from: com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge$1 */
    static /* synthetic */ class C34811 {

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$clipper$IClipper$ClipType */
        static final /* synthetic */ int[] f3167xa4df9306;

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$clipper$IClipper$PolyFillType */
        static final /* synthetic */ int[] f3168x682d75a5;

        static {
            int[] iArr = new int[IClipper.ClipType.values().length];
            f3167xa4df9306 = iArr;
            try {
                iArr[IClipper.ClipType.INTERSECTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3167xa4df9306[IClipper.ClipType.UNION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3167xa4df9306[IClipper.ClipType.DIFFERENCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3167xa4df9306[IClipper.ClipType.XOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[IClipper.PolyFillType.values().length];
            f3168x682d75a5 = iArr2;
            try {
                iArr2[IClipper.PolyFillType.EVEN_ODD.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3168x682d75a5[IClipper.PolyFillType.NON_ZERO.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3168x682d75a5[IClipper.PolyFillType.POSITIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public boolean isEvenOddAltFillType(IClipper.PolyFillType polyFillType, IClipper.PolyFillType polyFillType2) {
        return this.polyTyp == IClipper.PolyType.SUBJECT ? polyFillType == IClipper.PolyFillType.EVEN_ODD : polyFillType2 == IClipper.PolyFillType.EVEN_ODD;
    }

    public boolean isEvenOddFillType(IClipper.PolyFillType polyFillType, IClipper.PolyFillType polyFillType2) {
        return this.polyTyp == IClipper.PolyType.SUBJECT ? polyFillType2 == IClipper.PolyFillType.EVEN_ODD : polyFillType == IClipper.PolyFillType.EVEN_ODD;
    }

    public boolean isHorizontal() {
        return this.delta.getY() == 0;
    }

    public boolean isIntermediate(double d) {
        return ((double) this.top.getY()) == d && this.nextInLML != null;
    }

    public boolean isMaxima(double d) {
        return ((double) this.top.getY()) == d && this.nextInLML == null;
    }

    public void reverseHorizontal() {
        long x = this.top.getX();
        this.top.setX(Long.valueOf(this.bot.getX()));
        this.bot.setX(Long.valueOf(x));
        long z = this.top.getZ();
        this.top.setZ(Long.valueOf(this.bot.getZ()));
        this.bot.setZ(Long.valueOf(z));
    }

    public void setBot(Point.LongPoint longPoint) {
        this.bot.set(longPoint);
    }

    public void setCurrent(Point.LongPoint longPoint) {
        this.current.set(longPoint);
    }

    public void setTop(Point.LongPoint longPoint) {
        this.top.set(longPoint);
    }

    public String toString() {
        return "TEdge [Bot=" + this.bot + ", Curr=" + this.current + ", Top=" + this.top + ", Delta=" + this.delta + ", Dx=" + this.deltaX + ", PolyTyp=" + this.polyTyp + ", Side=" + this.side + ", WindDelta=" + this.windDelta + ", WindCnt=" + this.windCnt + ", WindCnt2=" + this.windCnt2 + ", OutIdx=" + this.outIdx + ", Next=" + this.next + ", Prev=" + this.prev + ", NextInLML=" + this.nextInLML + ", NextInAEL=" + this.nextInAEL + ", PrevInAEL=" + this.prevInAEL + ", NextInSEL=" + this.nextInSEL + ", PrevInSEL=" + this.prevInSEL + "]";
    }

    public void updateDeltaX() {
        this.delta.setX(Long.valueOf(this.top.getX() - this.bot.getX()));
        this.delta.setY(Long.valueOf(this.top.getY() - this.bot.getY()));
        if (this.delta.getY() == 0) {
            this.deltaX = HORIZONTAL;
        } else {
            this.deltaX = this.delta.getX() / this.delta.getY();
        }
    }
}
