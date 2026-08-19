package com.itextpdf.kernel.pdf.canvas.parser.clipper;

import com.itextpdf.kernel.pdf.canvas.parser.clipper.ClipperBase;
import com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge;
import com.itextpdf.kernel.pdf.canvas.parser.clipper.IClipper;
import com.itextpdf.kernel.pdf.canvas.parser.clipper.Path;
import com.itextpdf.kernel.pdf.canvas.parser.clipper.Point;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.logging.Logger;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class DefaultClipper extends ClipperBase {
    private static final Logger LOGGER = Logger.getLogger(DefaultClipper.class.getName());
    private Edge activeEdges;
    private IClipper.PolyFillType clipFillType;
    private IClipper.ClipType clipType;
    private final List<Path.Join> ghostJoins;
    private final List<IntersectNode> intersectList;
    private final Comparator<IntersectNode> intersectNodeComparer;
    private final List<Path.Join> joins;
    private Path.Maxima maxima;
    protected final List<Path.OutRec> polyOuts;
    private final boolean reverseSolution;
    private ClipperBase.Scanbeam scanbeam;
    private Edge sortedEdges;
    private final boolean strictlySimple;
    private IClipper.PolyFillType subjFillType;
    private boolean usingPolyTree;
    public IClipper.IZFillCallback zFillFunction;

    private boolean doHorzSegmentsOverlap(long j, long j2, long j3, long j4) {
        if (j > j2) {
            j = j2;
            j2 = j;
        }
        if (j3 <= j4) {
            j3 = j4;
            j4 = j3;
        }
        return j < j3 && j4 < j2;
    }

    private class IntersectNode {
        Edge Edge2;
        Edge edge1;

        /* JADX INFO: renamed from: pt */
        private Point.LongPoint f3166pt;

        private IntersectNode() {
        }

        public Point.LongPoint getPt() {
            return this.f3166pt;
        }

        public void setPt(Point.LongPoint longPoint) {
            this.f3166pt = longPoint;
        }
    }

    private static void getHorzDirection(Edge edge, IClipper.Direction[] directionArr, long[] jArr, long[] jArr2) {
        if (edge.getBot().getX() < edge.getTop().getX()) {
            jArr[0] = edge.getBot().getX();
            jArr2[0] = edge.getTop().getX();
            directionArr[0] = IClipper.Direction.LEFT_TO_RIGHT;
        } else {
            jArr[0] = edge.getTop().getX();
            jArr2[0] = edge.getBot().getX();
            directionArr[0] = IClipper.Direction.RIGHT_TO_LEFT;
        }
    }

    private static boolean getOverlap(long j, long j2, long j3, long j4, long[] jArr, long[] jArr2) {
        if (j < j2) {
            if (j3 < j4) {
                jArr[0] = Math.max(j, j3);
                jArr2[0] = Math.min(j2, j4);
            } else {
                jArr[0] = Math.max(j, j4);
                jArr2[0] = Math.min(j2, j3);
            }
        } else if (j3 < j4) {
            jArr[0] = Math.max(j2, j3);
            jArr2[0] = Math.min(j, j4);
        } else {
            jArr[0] = Math.max(j2, j4);
            jArr2[0] = Math.min(j, j3);
        }
        return jArr[0] < jArr2[0];
    }

    private static boolean isParam1RightOfParam2(Path.OutRec outRec, Path.OutRec outRec2) {
        do {
            outRec = outRec.firstLeft;
            if (outRec == outRec2) {
                return true;
            }
        } while (outRec != null);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
    
        return -1;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00d6 A[LOOP:0: B:3:0x001b->B:62:0x00d6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int isPointInPolygon(com.itextpdf.kernel.pdf.canvas.parser.clipper.Point.LongPoint r23, com.itextpdf.kernel.pdf.canvas.parser.clipper.Path.OutPt r24) {
        /*
            Method dump skipped, instruction units count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.canvas.parser.clipper.DefaultClipper.isPointInPolygon(com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint, com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt):int");
    }

    private static boolean joinHorz(Path.OutPt outPt, Path.OutPt outPt2, Path.OutPt outPt3, Path.OutPt outPt4, Point.LongPoint longPoint, boolean z) {
        Path.OutPt outPtDuplicate;
        Path.OutPt outPtDuplicate2;
        Path.OutPt outPtDuplicate3;
        Path.OutPt outPtDuplicate4;
        IClipper.Direction direction = outPt.getPt().getX() > outPt2.getPt().getX() ? IClipper.Direction.RIGHT_TO_LEFT : IClipper.Direction.LEFT_TO_RIGHT;
        IClipper.Direction direction2 = outPt3.getPt().getX() > outPt4.getPt().getX() ? IClipper.Direction.RIGHT_TO_LEFT : IClipper.Direction.LEFT_TO_RIGHT;
        if (direction == direction2) {
            return false;
        }
        if (direction == IClipper.Direction.LEFT_TO_RIGHT) {
            while (outPt.next.getPt().getX() <= longPoint.getX() && outPt.next.getPt().getX() >= outPt.getPt().getX() && outPt.next.getPt().getY() == longPoint.getY()) {
                outPt = outPt.next;
            }
            if (z && outPt.getPt().getX() != longPoint.getX()) {
                outPt = outPt.next;
            }
            outPtDuplicate = outPt.duplicate(!z);
            if (!outPtDuplicate.getPt().equals(longPoint)) {
                outPtDuplicate.setPt(longPoint);
                outPtDuplicate2 = outPtDuplicate.duplicate(!z);
                Path.OutPt outPt5 = outPtDuplicate;
                outPtDuplicate = outPtDuplicate2;
                outPt = outPt5;
            }
        } else {
            while (outPt.next.getPt().getX() >= longPoint.getX() && outPt.next.getPt().getX() <= outPt.getPt().getX() && outPt.next.getPt().getY() == longPoint.getY()) {
                outPt = outPt.next;
            }
            if (!z && outPt.getPt().getX() != longPoint.getX()) {
                outPt = outPt.next;
            }
            outPtDuplicate = outPt.duplicate(z);
            if (!outPtDuplicate.getPt().equals(longPoint)) {
                outPtDuplicate.setPt(longPoint);
                outPtDuplicate2 = outPtDuplicate.duplicate(z);
                Path.OutPt outPt52 = outPtDuplicate;
                outPtDuplicate = outPtDuplicate2;
                outPt = outPt52;
            }
        }
        if (direction2 == IClipper.Direction.LEFT_TO_RIGHT) {
            while (outPt3.next.getPt().getX() <= longPoint.getX() && outPt3.next.getPt().getX() >= outPt3.getPt().getX() && outPt3.next.getPt().getY() == longPoint.getY()) {
                outPt3 = outPt3.next;
            }
            if (z && outPt3.getPt().getX() != longPoint.getX()) {
                outPt3 = outPt3.next;
            }
            outPtDuplicate3 = outPt3.duplicate(!z);
            if (!outPtDuplicate3.getPt().equals(longPoint)) {
                outPtDuplicate3.setPt(longPoint);
                outPtDuplicate4 = outPtDuplicate3.duplicate(!z);
                Path.OutPt outPt6 = outPtDuplicate3;
                outPtDuplicate3 = outPtDuplicate4;
                outPt3 = outPt6;
            }
        } else {
            while (outPt3.next.getPt().getX() >= longPoint.getX() && outPt3.next.getPt().getX() <= outPt3.getPt().getX() && outPt3.next.getPt().getY() == longPoint.getY()) {
                outPt3 = outPt3.next;
            }
            if (!z && outPt3.getPt().getX() != longPoint.getX()) {
                outPt3 = outPt3.next;
            }
            outPtDuplicate3 = outPt3.duplicate(z);
            if (!outPtDuplicate3.getPt().equals(longPoint)) {
                outPtDuplicate3.setPt(longPoint);
                outPtDuplicate4 = outPtDuplicate3.duplicate(z);
                Path.OutPt outPt62 = outPtDuplicate3;
                outPtDuplicate3 = outPtDuplicate4;
                outPt3 = outPt62;
            }
        }
        if ((direction == IClipper.Direction.LEFT_TO_RIGHT) == z) {
            outPt.prev = outPt3;
            outPt3.next = outPt;
            outPtDuplicate.next = outPtDuplicate3;
            outPtDuplicate3.prev = outPtDuplicate;
        } else {
            outPt.next = outPt3;
            outPt3.prev = outPt;
            outPtDuplicate.prev = outPtDuplicate3;
            outPtDuplicate3.next = outPtDuplicate;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:91:0x01de A[PHI: r3
      0x01de: PHI (r3v30 com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint) = 
      (r3v25 com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint)
      (r3v27 com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint)
      (r3v28 com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint)
      (r3v31 com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint)
     binds: [B:108:0x026a, B:105:0x024c, B:98:0x0216, B:89:0x01db] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean joinPoints(com.itextpdf.kernel.pdf.canvas.parser.clipper.Path.Join r23, com.itextpdf.kernel.pdf.canvas.parser.clipper.Path.OutRec r24, com.itextpdf.kernel.pdf.canvas.parser.clipper.Path.OutRec r25) {
        /*
            Method dump skipped, instruction units count: 947
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.canvas.parser.clipper.DefaultClipper.joinPoints(com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$Join, com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutRec, com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutRec):boolean");
    }

    private static Paths minkowski(Path path, Path path2, boolean z, boolean z2) {
        int size = path.size();
        int size2 = path2.size();
        Paths paths = new Paths(size2);
        if (z) {
            for (int i = 0; i < size2; i++) {
                Path path3 = new Path(size);
                for (Point.LongPoint longPoint : path) {
                    path3.add(new Point.LongPoint(path2.get(i).getX() + longPoint.getX(), path2.get(i).getY() + longPoint.getY(), 0L));
                }
                paths.add(path3);
            }
        } else {
            for (int i2 = 0; i2 < size2; i2++) {
                Path path4 = new Path(size);
                for (Point.LongPoint longPoint2 : path) {
                    path4.add(new Point.LongPoint(path2.get(i2).getX() - longPoint2.getX(), path2.get(i2).getY() - longPoint2.getY(), 0L));
                }
                paths.add(path4);
            }
        }
        Paths paths2 = new Paths((size2 + (z2 ? 1 : 0)) * (size + 1));
        for (int i3 = 0; i3 < (size2 - 1) + (z2 ? 1 : 0); i3++) {
            int i4 = 0;
            while (i4 < size) {
                Path path5 = new Path(4);
                int i5 = i3 % size2;
                int i6 = i4 % size;
                path5.add(paths.get(i5).get(i6));
                int i7 = (i3 + 1) % size2;
                path5.add(paths.get(i7).get(i6));
                i4++;
                int i8 = i4 % size;
                path5.add(paths.get(i7).get(i8));
                path5.add(paths.get(i5).get(i8));
                if (!path5.orientation()) {
                    Collections.reverse(path5);
                }
                paths2.add(path5);
            }
        }
        return paths2;
    }

    public static Paths minkowskiDiff(Path path, Path path2) {
        Paths pathsMinkowski = minkowski(path, path2, false, true);
        DefaultClipper defaultClipper = new DefaultClipper();
        defaultClipper.addPaths(pathsMinkowski, IClipper.PolyType.SUBJECT, true);
        defaultClipper.execute(IClipper.ClipType.UNION, pathsMinkowski, IClipper.PolyFillType.NON_ZERO, IClipper.PolyFillType.NON_ZERO);
        return pathsMinkowski;
    }

    public static Paths minkowskiSum(Path path, Path path2, boolean z) {
        Paths pathsMinkowski = minkowski(path, path2, true, z);
        DefaultClipper defaultClipper = new DefaultClipper();
        defaultClipper.addPaths(pathsMinkowski, IClipper.PolyType.SUBJECT, true);
        defaultClipper.execute(IClipper.ClipType.UNION, pathsMinkowski, IClipper.PolyFillType.NON_ZERO, IClipper.PolyFillType.NON_ZERO);
        return pathsMinkowski;
    }

    public static Paths minkowskiSum(Path path, Paths paths, boolean z) {
        Paths paths2 = new Paths();
        DefaultClipper defaultClipper = new DefaultClipper();
        for (int i = 0; i < paths.size(); i++) {
            defaultClipper.addPaths(minkowski(path, paths.get(i), true, z), IClipper.PolyType.SUBJECT, true);
            if (z) {
                defaultClipper.addPath(paths.get(i).TranslatePath(path.get(0)), IClipper.PolyType.CLIP, true);
            }
        }
        defaultClipper.execute(IClipper.ClipType.UNION, paths2, IClipper.PolyFillType.NON_ZERO, IClipper.PolyFillType.NON_ZERO);
        return paths2;
    }

    private static boolean poly2ContainsPoly1(Path.OutPt outPt, Path.OutPt outPt2) {
        Path.OutPt outPt3 = outPt;
        do {
            int iIsPointInPolygon = isPointInPolygon(outPt3.getPt(), outPt2);
            if (iIsPointInPolygon >= 0) {
                return iIsPointInPolygon > 0;
            }
            outPt3 = outPt3.next;
        } while (outPt3 != outPt);
        return true;
    }

    public static Paths simplifyPolygon(Path path) {
        return simplifyPolygon(path, IClipper.PolyFillType.EVEN_ODD);
    }

    public static Paths simplifyPolygon(Path path, IClipper.PolyFillType polyFillType) {
        Paths paths = new Paths();
        DefaultClipper defaultClipper = new DefaultClipper(2);
        defaultClipper.addPath(path, IClipper.PolyType.SUBJECT, true);
        defaultClipper.execute(IClipper.ClipType.UNION, paths, polyFillType, polyFillType);
        return paths;
    }

    public static Paths simplifyPolygons(Paths paths) {
        return simplifyPolygons(paths, IClipper.PolyFillType.EVEN_ODD);
    }

    public static Paths simplifyPolygons(Paths paths, IClipper.PolyFillType polyFillType) {
        Paths paths2 = new Paths();
        DefaultClipper defaultClipper = new DefaultClipper(2);
        defaultClipper.addPaths(paths, IClipper.PolyType.SUBJECT, true);
        defaultClipper.execute(IClipper.ClipType.UNION, paths2, polyFillType, polyFillType);
        return paths2;
    }

    public DefaultClipper() {
        this(0);
    }

    public DefaultClipper(int i) {
        super((i & 4) != 0);
        this.scanbeam = null;
        this.maxima = null;
        this.activeEdges = null;
        this.sortedEdges = null;
        this.intersectList = new ArrayList();
        this.intersectNodeComparer = new Comparator<IntersectNode>() { // from class: com.itextpdf.kernel.pdf.canvas.parser.clipper.DefaultClipper.1
            @Override // java.util.Comparator
            public int compare(IntersectNode intersectNode, IntersectNode intersectNode2) {
                long y = intersectNode2.getPt().getY() - intersectNode.getPt().getY();
                if (y > 0) {
                    return 1;
                }
                return y < 0 ? -1 : 0;
            }
        };
        this.usingPolyTree = false;
        this.polyOuts = new ArrayList();
        this.joins = new ArrayList();
        this.ghostJoins = new ArrayList();
        this.reverseSolution = (i & 1) != 0;
        this.strictlySimple = (i & 2) != 0;
        this.zFillFunction = null;
    }

    private void insertScanbeam(long j) {
        ClipperBase.Scanbeam scanbeam = this.scanbeam;
        if (scanbeam == null) {
            ClipperBase.Scanbeam scanbeam2 = new ClipperBase.Scanbeam();
            this.scanbeam = scanbeam2;
            scanbeam2.next = null;
            this.scanbeam.f3162y = j;
            return;
        }
        if (j > scanbeam.f3162y) {
            ClipperBase.Scanbeam scanbeam3 = new ClipperBase.Scanbeam();
            scanbeam3.f3162y = j;
            scanbeam3.next = this.scanbeam;
            this.scanbeam = scanbeam3;
            return;
        }
        ClipperBase.Scanbeam scanbeam4 = this.scanbeam;
        while (scanbeam4.next != null && j <= scanbeam4.next.f3162y) {
            scanbeam4 = scanbeam4.next;
        }
        if (j == scanbeam4.f3162y) {
            return;
        }
        ClipperBase.Scanbeam scanbeam5 = new ClipperBase.Scanbeam();
        scanbeam5.f3162y = j;
        scanbeam5.next = scanbeam4.next;
        scanbeam4.next = scanbeam5;
    }

    private void InsertMaxima(long j) {
        Path.Maxima maxima = new Path.Maxima();
        maxima.f3169X = j;
        Path.Maxima maxima2 = this.maxima;
        if (maxima2 == null) {
            this.maxima = maxima;
            maxima.Next = null;
            this.maxima.Prev = null;
            return;
        }
        if (j < maxima2.f3169X) {
            maxima.Next = this.maxima;
            maxima.Prev = null;
            this.maxima = maxima;
            return;
        }
        Path.Maxima maxima3 = this.maxima;
        while (maxima3.Next != null && j >= maxima3.Next.f3169X) {
            maxima3 = maxima3.Next;
        }
        if (j == maxima3.f3169X) {
            return;
        }
        maxima.Next = maxima3.Next;
        maxima.Prev = maxima3;
        if (maxima3.Next != null) {
            maxima3.Next.Prev = maxima;
        }
        maxima3.Next = maxima;
    }

    private void addEdgeToSEL(Edge edge) {
        LOGGER.entering(DefaultClipper.class.getName(), "addEdgeToSEL");
        Edge edge2 = this.sortedEdges;
        if (edge2 == null) {
            this.sortedEdges = edge;
            edge.prevInSEL = null;
            edge.nextInSEL = null;
        } else {
            edge.nextInSEL = edge2;
            edge.prevInSEL = null;
            this.sortedEdges.prevInSEL = edge;
            this.sortedEdges = edge;
        }
    }

    private void addGhostJoin(Path.OutPt outPt, Point.LongPoint longPoint) {
        Path.Join join = new Path.Join();
        join.outPt1 = outPt;
        join.setOffPt(longPoint);
        this.ghostJoins.add(join);
    }

    private void addJoin(Path.OutPt outPt, Path.OutPt outPt2, Point.LongPoint longPoint) {
        LOGGER.entering(DefaultClipper.class.getName(), "addJoin");
        Path.Join join = new Path.Join();
        join.outPt1 = outPt;
        join.outPt2 = outPt2;
        join.setOffPt(longPoint);
        this.joins.add(join);
    }

    private void addLocalMaxPoly(Edge edge, Edge edge2, Point.LongPoint longPoint) {
        addOutPt(edge, longPoint);
        if (edge2.windDelta == 0) {
            addOutPt(edge2, longPoint);
        }
        if (edge.outIdx == edge2.outIdx) {
            edge.outIdx = -1;
            edge2.outIdx = -1;
        } else if (edge.outIdx < edge2.outIdx) {
            appendPolygon(edge, edge2);
        } else {
            appendPolygon(edge2, edge);
        }
    }

    private Path.OutPt addLocalMinPoly(Edge edge, Edge edge2, Point.LongPoint longPoint) {
        Path.OutPt outPtAddOutPt;
        Edge edge3;
        Edge edge4;
        LOGGER.entering(DefaultClipper.class.getName(), "addLocalMinPoly");
        if (edge2.isHorizontal() || edge.deltaX > edge2.deltaX) {
            outPtAddOutPt = addOutPt(edge, longPoint);
            edge2.outIdx = edge.outIdx;
            edge.side = Edge.Side.LEFT;
            edge2.side = Edge.Side.RIGHT;
            if (edge.prevInAEL == edge2) {
                edge3 = edge2.prevInAEL;
            } else {
                edge3 = edge.prevInAEL;
            }
            Edge edge5 = edge3;
            edge2 = edge;
            edge4 = edge5;
        } else {
            outPtAddOutPt = addOutPt(edge2, longPoint);
            edge.outIdx = edge2.outIdx;
            edge.side = Edge.Side.RIGHT;
            edge2.side = Edge.Side.LEFT;
            if (edge2.prevInAEL == edge) {
                edge4 = edge.prevInAEL;
            } else {
                edge4 = edge2.prevInAEL;
            }
        }
        if (edge4 != null && edge4.outIdx >= 0 && Edge.topX(edge4, longPoint.getY()) == Edge.topX(edge2, longPoint.getY()) && Edge.slopesEqual(edge2, edge4, this.useFullRange) && edge2.windDelta != 0 && edge4.windDelta != 0) {
            addJoin(outPtAddOutPt, addOutPt(edge4, longPoint), edge2.getTop());
        }
        return outPtAddOutPt;
    }

    private Path.OutPt addOutPt(Edge edge, Point.LongPoint longPoint) {
        Logger logger = LOGGER;
        logger.entering(DefaultClipper.class.getName(), "addOutPt");
        if (edge.outIdx < 0) {
            Path.OutRec outRecCreateOutRec = createOutRec();
            outRecCreateOutRec.isOpen = edge.windDelta == 0;
            Path.OutPt outPt = new Path.OutPt();
            outRecCreateOutRec.pts = outPt;
            outPt.idx = outRecCreateOutRec.Idx;
            outPt.f3170pt = longPoint;
            outPt.next = outPt;
            outPt.prev = outPt;
            if (!outRecCreateOutRec.isOpen) {
                setHoleState(edge, outRecCreateOutRec);
            }
            edge.outIdx = outRecCreateOutRec.Idx;
            return outPt;
        }
        Path.OutRec outRec = this.polyOuts.get(edge.outIdx);
        Path.OutPt points = outRec.getPoints();
        boolean z = edge.side == Edge.Side.LEFT;
        logger.finest("op=" + points.getPointCount());
        logger.finest(z + StringUtils.SPACE + longPoint + StringUtils.SPACE + points.getPt());
        if (z && longPoint.equals(points.getPt())) {
            return points;
        }
        if (!z && longPoint.equals(points.prev.getPt())) {
            return points.prev;
        }
        Path.OutPt outPt2 = new Path.OutPt();
        outPt2.idx = outRec.Idx;
        outPt2.setPt(new Point.LongPoint(longPoint));
        outPt2.next = points;
        outPt2.prev = points.prev;
        outPt2.prev.next = outPt2;
        points.prev = outPt2;
        if (z) {
            outRec.setPoints(outPt2);
        }
        return outPt2;
    }

    private Path.OutPt GetLastOutPt(Edge edge) {
        Path.OutRec outRec = this.polyOuts.get(edge.outIdx);
        if (edge.side == Edge.Side.LEFT) {
            return outRec.pts;
        }
        return outRec.pts.prev;
    }

    private void appendPolygon(Edge edge, Edge edge2) {
        Path.OutRec lowerMostRec;
        Edge.Side side;
        Logger logger = LOGGER;
        logger.entering(DefaultClipper.class.getName(), "appendPolygon");
        Path.OutRec outRec = this.polyOuts.get(edge.outIdx);
        Path.OutRec outRec2 = this.polyOuts.get(edge2.outIdx);
        logger.finest("" + edge.outIdx);
        logger.finest("" + edge2.outIdx);
        if (isParam1RightOfParam2(outRec, outRec2)) {
            lowerMostRec = outRec2;
        } else {
            lowerMostRec = isParam1RightOfParam2(outRec2, outRec) ? outRec : Path.OutPt.getLowerMostRec(outRec, outRec2);
        }
        Path.OutPt points = outRec.getPoints();
        Path.OutPt outPt = points.prev;
        Path.OutPt points2 = outRec2.getPoints();
        Path.OutPt outPt2 = points2.prev;
        logger.finest("p1_lft.getPointCount() = " + points.getPointCount());
        logger.finest("p1_rt.getPointCount() = " + outPt.getPointCount());
        logger.finest("p2_lft.getPointCount() = " + points2.getPointCount());
        logger.finest("p2_rt.getPointCount() = " + outPt2.getPointCount());
        if (edge.side == Edge.Side.LEFT) {
            if (edge2.side == Edge.Side.LEFT) {
                points2.reversePolyPtLinks();
                points2.next = points;
                points.prev = points2;
                outPt.next = outPt2;
                outPt2.prev = outPt;
                outRec.setPoints(outPt2);
            } else {
                outPt2.next = points;
                points.prev = outPt2;
                points2.prev = outPt;
                outPt.next = points2;
                outRec.setPoints(points2);
            }
            side = Edge.Side.LEFT;
        } else {
            if (edge2.side == Edge.Side.RIGHT) {
                points2.reversePolyPtLinks();
                outPt.next = outPt2;
                outPt2.prev = outPt;
                points2.next = points;
                points.prev = points2;
            } else {
                outPt.next = points2;
                points2.prev = outPt;
                points.prev = outPt2;
                outPt2.next = points;
            }
            side = Edge.Side.RIGHT;
        }
        outRec.bottomPt = null;
        if (lowerMostRec.equals(outRec2)) {
            if (outRec2.firstLeft != outRec) {
                outRec.firstLeft = outRec2.firstLeft;
            }
            outRec.isHole = outRec2.isHole;
        }
        outRec2.setPoints(null);
        outRec2.bottomPt = null;
        outRec2.firstLeft = outRec;
        int i = edge.outIdx;
        int i2 = edge2.outIdx;
        edge.outIdx = -1;
        edge2.outIdx = -1;
        Edge edge3 = this.activeEdges;
        while (true) {
            if (edge3 == null) {
                break;
            }
            if (edge3.outIdx == i2) {
                edge3.outIdx = i;
                edge3.side = side;
                break;
            }
            edge3 = edge3.nextInAEL;
        }
        outRec2.Idx = outRec.Idx;
    }

    private void buildIntersectList(long j) {
        Edge edge;
        Edge edge2 = this.activeEdges;
        if (edge2 == null) {
            return;
        }
        this.sortedEdges = edge2;
        while (edge2 != null) {
            edge2.prevInSEL = edge2.prevInAEL;
            edge2.nextInSEL = edge2.nextInAEL;
            edge2.getCurrent().setX(Long.valueOf(Edge.topX(edge2, j)));
            edge2 = edge2.nextInAEL;
        }
        boolean z = true;
        while (true) {
            if (z && (edge = this.sortedEdges) != null) {
                boolean z2 = false;
                while (edge.nextInSEL != null) {
                    Edge edge3 = edge.nextInSEL;
                    Point.LongPoint[] longPointArr = new Point.LongPoint[1];
                    if (edge.getCurrent().getX() > edge3.getCurrent().getX()) {
                        intersectPoint(edge, edge3, longPointArr);
                        IntersectNode intersectNode = new IntersectNode();
                        intersectNode.edge1 = edge;
                        intersectNode.Edge2 = edge3;
                        intersectNode.setPt(longPointArr[0]);
                        this.intersectList.add(intersectNode);
                        swapPositionsInSEL(edge, edge3);
                        z2 = true;
                    } else {
                        edge = edge3;
                    }
                }
                if (edge.prevInSEL == null) {
                    break;
                }
                edge.prevInSEL.nextInSEL = null;
                z = z2;
            } else {
                break;
            }
        }
        this.sortedEdges = null;
    }

    private void buildResult(Paths paths) {
        paths.clear();
        for (int i = 0; i < this.polyOuts.size(); i++) {
            Path.OutRec outRec = this.polyOuts.get(i);
            if (outRec.getPoints() != null) {
                Path.OutPt outPt = outRec.getPoints().prev;
                int pointCount = outPt.getPointCount();
                LOGGER.finest("cnt = " + pointCount);
                if (pointCount >= 2) {
                    Path path = new Path(pointCount);
                    for (int i2 = 0; i2 < pointCount; i2++) {
                        path.add(outPt.getPt());
                        outPt = outPt.prev;
                    }
                    paths.add(path);
                }
            }
        }
    }

    private void buildResult2(PolyTree polyTree) {
        polyTree.Clear();
        for (int i = 0; i < this.polyOuts.size(); i++) {
            Path.OutRec outRec = this.polyOuts.get(i);
            int pointCount = outRec.getPoints() != null ? outRec.getPoints().getPointCount() : 0;
            if ((!outRec.isOpen || pointCount >= 2) && (outRec.isOpen || pointCount >= 3)) {
                outRec.fixHoleLinkage();
                PolyNode polyNode = new PolyNode();
                polyTree.getAllPolys().add(polyNode);
                outRec.polyNode = polyNode;
                Path.OutPt outPt = outRec.getPoints().prev;
                for (int i2 = 0; i2 < pointCount; i2++) {
                    polyNode.getPolygon().add(outPt.getPt());
                    outPt = outPt.prev;
                }
            }
        }
        for (int i3 = 0; i3 < this.polyOuts.size(); i3++) {
            Path.OutRec outRec2 = this.polyOuts.get(i3);
            if (outRec2.polyNode != null) {
                if (outRec2.isOpen) {
                    outRec2.polyNode.setOpen(true);
                    polyTree.addChild(outRec2.polyNode);
                } else if (outRec2.firstLeft != null && outRec2.firstLeft.polyNode != null) {
                    outRec2.firstLeft.polyNode.addChild(outRec2.polyNode);
                } else {
                    polyTree.addChild(outRec2.polyNode);
                }
            }
        }
    }

    private void copyAELToSEL() {
        Edge edge = this.activeEdges;
        this.sortedEdges = edge;
        while (edge != null) {
            edge.prevInSEL = edge.prevInAEL;
            edge.nextInSEL = edge.nextInAEL;
            edge = edge.nextInAEL;
        }
    }

    private Path.OutRec createOutRec() {
        Path.OutRec outRec = new Path.OutRec();
        outRec.Idx = -1;
        outRec.isHole = false;
        outRec.isOpen = false;
        outRec.firstLeft = null;
        outRec.setPoints(null);
        outRec.bottomPt = null;
        outRec.polyNode = null;
        this.polyOuts.add(outRec);
        outRec.Idx = this.polyOuts.size() - 1;
        return outRec;
    }

    private void deleteFromAEL(Edge edge) {
        Logger logger = LOGGER;
        logger.entering(DefaultClipper.class.getName(), "deleteFromAEL");
        Edge edge2 = edge.prevInAEL;
        Edge edge3 = edge.nextInAEL;
        if (edge2 == null && edge3 == null && edge != this.activeEdges) {
            return;
        }
        if (edge2 != null) {
            edge2.nextInAEL = edge3;
        } else {
            this.activeEdges = edge3;
        }
        if (edge3 != null) {
            edge3.prevInAEL = edge2;
        }
        edge.nextInAEL = null;
        edge.prevInAEL = null;
        logger.exiting(DefaultClipper.class.getName(), "deleteFromAEL");
    }

    private void deleteFromSEL(Edge edge) {
        LOGGER.entering(DefaultClipper.class.getName(), "deleteFromSEL");
        Edge edge2 = edge.prevInSEL;
        Edge edge3 = edge.nextInSEL;
        if (edge2 == null && edge3 == null && !edge.equals(this.sortedEdges)) {
            return;
        }
        if (edge2 != null) {
            edge2.nextInSEL = edge3;
        } else {
            this.sortedEdges = edge3;
        }
        if (edge3 != null) {
            edge3.prevInSEL = edge2;
        }
        edge.nextInSEL = null;
        edge.prevInSEL = null;
    }

    private void doMaxima(Edge edge) {
        Edge maximaPair = edge.getMaximaPair();
        if (maximaPair == null) {
            if (edge.outIdx >= 0) {
                addOutPt(edge, edge.getTop());
            }
            deleteFromAEL(edge);
            return;
        }
        Edge edge2 = edge.nextInAEL;
        while (edge2 != null && edge2 != maximaPair) {
            Point.LongPoint longPoint = new Point.LongPoint(edge.getTop());
            intersectEdges(edge, edge2, longPoint);
            edge.setTop(longPoint);
            swapPositionsInAEL(edge, edge2);
            edge2 = edge.nextInAEL;
        }
        if (edge.outIdx == -1 && maximaPair.outIdx == -1) {
            deleteFromAEL(edge);
            deleteFromAEL(maximaPair);
            return;
        }
        if (edge.outIdx >= 0 && maximaPair.outIdx >= 0) {
            if (edge.outIdx >= 0) {
                addLocalMaxPoly(edge, maximaPair, edge.getTop());
            }
            deleteFromAEL(edge);
            deleteFromAEL(maximaPair);
            return;
        }
        if (edge.windDelta == 0) {
            if (edge.outIdx >= 0) {
                addOutPt(edge, edge.getTop());
                edge.outIdx = -1;
            }
            deleteFromAEL(edge);
            if (maximaPair.outIdx >= 0) {
                addOutPt(maximaPair, edge.getTop());
                maximaPair.outIdx = -1;
            }
            deleteFromAEL(maximaPair);
            return;
        }
        throw new IllegalStateException("DoMaxima error");
    }

    private void doSimplePolygons() {
        int i = 0;
        while (i < this.polyOuts.size()) {
            int i2 = i + 1;
            Path.OutRec outRec = this.polyOuts.get(i);
            Path.OutPt points = outRec.getPoints();
            if (points != null && !outRec.isOpen) {
                do {
                    Path.OutPt outPt = points.next;
                    while (outPt != outRec.getPoints()) {
                        if (points.getPt().equals(outPt.getPt()) && !outPt.next.equals(points) && !outPt.prev.equals(points)) {
                            Path.OutPt outPt2 = points.prev;
                            Path.OutPt outPt3 = outPt.prev;
                            points.prev = outPt3;
                            outPt3.next = points;
                            outPt.prev = outPt2;
                            outPt2.next = outPt;
                            outRec.setPoints(points);
                            Path.OutRec outRecCreateOutRec = createOutRec();
                            outRecCreateOutRec.setPoints(outPt);
                            updateOutPtIdxs(outRecCreateOutRec);
                            if (poly2ContainsPoly1(outRecCreateOutRec.getPoints(), outRec.getPoints())) {
                                outRecCreateOutRec.isHole = !outRec.isHole;
                                outRecCreateOutRec.firstLeft = outRec;
                                if (this.usingPolyTree) {
                                    fixupFirstLefts2(outRecCreateOutRec, outRec);
                                }
                            } else if (poly2ContainsPoly1(outRec.getPoints(), outRecCreateOutRec.getPoints())) {
                                outRecCreateOutRec.isHole = outRec.isHole;
                                outRec.isHole = !outRecCreateOutRec.isHole;
                                outRecCreateOutRec.firstLeft = outRec.firstLeft;
                                outRec.firstLeft = outRecCreateOutRec;
                                if (this.usingPolyTree) {
                                    fixupFirstLefts2(outRec, outRecCreateOutRec);
                                }
                            } else {
                                outRecCreateOutRec.isHole = outRec.isHole;
                                outRecCreateOutRec.firstLeft = outRec.firstLeft;
                                if (this.usingPolyTree) {
                                    fixupFirstLefts1(outRec, outRecCreateOutRec);
                                }
                            }
                            outPt = points;
                        }
                        outPt = outPt.next;
                    }
                    points = points.next;
                } while (points != outRec.getPoints());
            }
            i = i2;
        }
    }

    private boolean EdgesAdjacent(IntersectNode intersectNode) {
        return intersectNode.edge1.nextInSEL == intersectNode.Edge2 || intersectNode.edge1.prevInSEL == intersectNode.Edge2;
    }

    public boolean execute(IClipper.ClipType clipType, Paths paths, IClipper.PolyFillType polyFillType) {
        return execute(clipType, paths, polyFillType, polyFillType);
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.clipper.IClipper
    public boolean execute(IClipper.ClipType clipType, PolyTree polyTree) {
        return execute(clipType, polyTree, IClipper.PolyFillType.EVEN_ODD);
    }

    public boolean execute(IClipper.ClipType clipType, PolyTree polyTree, IClipper.PolyFillType polyFillType) {
        return execute(clipType, polyTree, polyFillType, polyFillType);
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.clipper.IClipper
    public boolean execute(IClipper.ClipType clipType, Paths paths) {
        return execute(clipType, paths, IClipper.PolyFillType.EVEN_ODD);
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.clipper.IClipper
    public boolean execute(IClipper.ClipType clipType, Paths paths, IClipper.PolyFillType polyFillType, IClipper.PolyFillType polyFillType2) {
        boolean zExecuteInternal;
        synchronized (this) {
            if (this.hasOpenPaths) {
                throw new IllegalStateException("Error: PolyTree struct is needed for open path clipping.");
            }
            paths.clear();
            this.subjFillType = polyFillType;
            this.clipFillType = polyFillType2;
            this.clipType = clipType;
            this.usingPolyTree = false;
            try {
                zExecuteInternal = executeInternal();
                if (zExecuteInternal) {
                    buildResult(paths);
                }
            } finally {
                this.polyOuts.clear();
            }
        }
        return zExecuteInternal;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.clipper.IClipper
    public boolean execute(IClipper.ClipType clipType, PolyTree polyTree, IClipper.PolyFillType polyFillType, IClipper.PolyFillType polyFillType2) {
        boolean zExecuteInternal;
        synchronized (this) {
            this.subjFillType = polyFillType;
            this.clipFillType = polyFillType2;
            this.clipType = clipType;
            this.usingPolyTree = true;
            try {
                zExecuteInternal = executeInternal();
                if (zExecuteInternal) {
                    buildResult2(polyTree);
                }
            } finally {
                this.polyOuts.clear();
            }
        }
        return zExecuteInternal;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003e, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0045, code lost:
    
        if (r0 >= r9.polyOuts.size()) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0047, code lost:
    
        r2 = r9.polyOuts.get(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0051, code lost:
    
        if (r2.pts == null) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0055, code lost:
    
        if (r2.isOpen == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0058, code lost:
    
        r4 = r2.isHole ^ r9.reverseSolution;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0065, code lost:
    
        if (r2.area() <= 0.0d) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0068, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0069, code lost:
    
        if (r4 != r3) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006b, code lost:
    
        r2.getPoints().reversePolyPtLinks();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0072, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0075, code lost:
    
        joinCommonEdges();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007e, code lost:
    
        if (r1 >= r9.polyOuts.size()) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0080, code lost:
    
        r0 = r9.polyOuts.get(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008c, code lost:
    
        if (r0.getPoints() != null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0091, code lost:
    
        if (r0.isOpen == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0093, code lost:
    
        fixupOutPolyline(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0097, code lost:
    
        fixupOutPolygon(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x009a, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x009f, code lost:
    
        if (r9.strictlySimple == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a1, code lost:
    
        doSimplePolygons();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ae, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean executeInternal() {
        /*
            r9 = this;
            r9.reset()     // Catch: java.lang.Throwable -> Laf
            com.itextpdf.kernel.pdf.canvas.parser.clipper.ClipperBase$LocalMinima r0 = r9.currentLM     // Catch: java.lang.Throwable -> Laf
            r1 = 0
            if (r0 != 0) goto L13
        L8:
            java.util.List<com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$Join> r0 = r9.joins
            r0.clear()
            java.util.List<com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$Join> r0 = r9.ghostJoins
            r0.clear()
            return r1
        L13:
            long r2 = r9.popScanbeam()     // Catch: java.lang.Throwable -> Laf
        L17:
            r9.insertLocalMinimaIntoAEL(r2)     // Catch: java.lang.Throwable -> Laf
            r9.processHorizontals()     // Catch: java.lang.Throwable -> Laf
            java.util.List<com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$Join> r0 = r9.ghostJoins     // Catch: java.lang.Throwable -> Laf
            r0.clear()     // Catch: java.lang.Throwable -> Laf
            com.itextpdf.kernel.pdf.canvas.parser.clipper.ClipperBase$Scanbeam r0 = r9.scanbeam     // Catch: java.lang.Throwable -> Laf
            if (r0 != 0) goto L27
            goto L3d
        L27:
            long r2 = r9.popScanbeam()     // Catch: java.lang.Throwable -> Laf
            boolean r0 = r9.processIntersections(r2)     // Catch: java.lang.Throwable -> Laf
            if (r0 != 0) goto L32
            goto L8
        L32:
            r9.processEdgesAtTopOfScanbeam(r2)     // Catch: java.lang.Throwable -> Laf
            com.itextpdf.kernel.pdf.canvas.parser.clipper.ClipperBase$Scanbeam r0 = r9.scanbeam     // Catch: java.lang.Throwable -> Laf
            if (r0 != 0) goto L17
            com.itextpdf.kernel.pdf.canvas.parser.clipper.ClipperBase$LocalMinima r0 = r9.currentLM     // Catch: java.lang.Throwable -> Laf
            if (r0 != 0) goto L17
        L3d:
            r0 = r1
        L3e:
            java.util.List<com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutRec> r2 = r9.polyOuts     // Catch: java.lang.Throwable -> Laf
            int r2 = r2.size()     // Catch: java.lang.Throwable -> Laf
            r3 = 1
            if (r0 >= r2) goto L75
            java.util.List<com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutRec> r2 = r9.polyOuts     // Catch: java.lang.Throwable -> Laf
            java.lang.Object r2 = r2.get(r0)     // Catch: java.lang.Throwable -> Laf
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutRec r2 = (com.itextpdf.kernel.pdf.canvas.parser.clipper.Path.OutRec) r2     // Catch: java.lang.Throwable -> Laf
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r4 = r2.pts     // Catch: java.lang.Throwable -> Laf
            if (r4 == 0) goto L72
            boolean r4 = r2.isOpen     // Catch: java.lang.Throwable -> Laf
            if (r4 == 0) goto L58
            goto L72
        L58:
            boolean r4 = r2.isHole     // Catch: java.lang.Throwable -> Laf
            boolean r5 = r9.reverseSolution     // Catch: java.lang.Throwable -> Laf
            r4 = r4 ^ r5
            double r5 = r2.area()     // Catch: java.lang.Throwable -> Laf
            r7 = 0
            int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r5 <= 0) goto L68
            goto L69
        L68:
            r3 = r1
        L69:
            if (r4 != r3) goto L72
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r2 = r2.getPoints()     // Catch: java.lang.Throwable -> Laf
            r2.reversePolyPtLinks()     // Catch: java.lang.Throwable -> Laf
        L72:
            int r0 = r0 + 1
            goto L3e
        L75:
            r9.joinCommonEdges()     // Catch: java.lang.Throwable -> Laf
        L78:
            java.util.List<com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutRec> r0 = r9.polyOuts     // Catch: java.lang.Throwable -> Laf
            int r0 = r0.size()     // Catch: java.lang.Throwable -> Laf
            if (r1 >= r0) goto L9d
            java.util.List<com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutRec> r0 = r9.polyOuts     // Catch: java.lang.Throwable -> Laf
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> Laf
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutRec r0 = (com.itextpdf.kernel.pdf.canvas.parser.clipper.Path.OutRec) r0     // Catch: java.lang.Throwable -> Laf
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r2 = r0.getPoints()     // Catch: java.lang.Throwable -> Laf
            if (r2 != 0) goto L8f
            goto L9a
        L8f:
            boolean r2 = r0.isOpen     // Catch: java.lang.Throwable -> Laf
            if (r2 == 0) goto L97
            r9.fixupOutPolyline(r0)     // Catch: java.lang.Throwable -> Laf
            goto L9a
        L97:
            r9.fixupOutPolygon(r0)     // Catch: java.lang.Throwable -> Laf
        L9a:
            int r1 = r1 + 1
            goto L78
        L9d:
            boolean r0 = r9.strictlySimple     // Catch: java.lang.Throwable -> Laf
            if (r0 == 0) goto La4
            r9.doSimplePolygons()     // Catch: java.lang.Throwable -> Laf
        La4:
            java.util.List<com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$Join> r0 = r9.joins
            r0.clear()
            java.util.List<com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$Join> r0 = r9.ghostJoins
            r0.clear()
            return r3
        Laf:
            r0 = move-exception
            java.util.List<com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$Join> r1 = r9.joins
            r1.clear()
            java.util.List<com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$Join> r1 = r9.ghostJoins
            r1.clear()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.canvas.parser.clipper.DefaultClipper.executeInternal():boolean");
    }

    private void fixupFirstLefts1(Path.OutRec outRec, Path.OutRec outRec2) {
        for (int i = 0; i < this.polyOuts.size(); i++) {
            Path.OutRec outRec3 = this.polyOuts.get(i);
            if (outRec3.getPoints() != null && outRec3.firstLeft != null && parseFirstLeft(outRec3.firstLeft).equals(outRec) && poly2ContainsPoly1(outRec3.getPoints(), outRec2.getPoints())) {
                outRec3.firstLeft = outRec2;
            }
        }
    }

    private void fixupFirstLefts2(Path.OutRec outRec, Path.OutRec outRec2) {
        for (Path.OutRec outRec3 : this.polyOuts) {
            if (outRec3.firstLeft == outRec) {
                outRec3.firstLeft = outRec2;
            }
        }
    }

    private boolean fixupIntersectionOrder() {
        Collections.sort(this.intersectList, this.intersectNodeComparer);
        copyAELToSEL();
        int size = this.intersectList.size();
        for (int i = 0; i < size; i++) {
            if (!EdgesAdjacent(this.intersectList.get(i))) {
                int i2 = i + 1;
                while (i2 < size && !EdgesAdjacent(this.intersectList.get(i2))) {
                    i2++;
                }
                if (i2 == size) {
                    return false;
                }
                IntersectNode intersectNode = this.intersectList.get(i);
                List<IntersectNode> list = this.intersectList;
                list.set(i, list.get(i2));
                this.intersectList.set(i2, intersectNode);
            }
            swapPositionsInSEL(this.intersectList.get(i).edge1, this.intersectList.get(i).Edge2);
        }
        return true;
    }

    private void fixupOutPolyline(Path.OutRec outRec) {
        Path.OutPt outPt = outRec.pts;
        Path.OutPt outPt2 = outPt.prev;
        while (outPt != outPt2) {
            outPt = outPt.next;
            if (outPt.f3170pt.equals(outPt.prev.f3170pt)) {
                if (outPt == outPt2) {
                    outPt2 = outPt.prev;
                }
                Path.OutPt outPt3 = outPt.prev;
                outPt3.next = outPt.next;
                outPt.next.prev = outPt3;
                outPt = outPt3;
            }
        }
        if (outPt == outPt.prev) {
            outRec.pts = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x008b, code lost:
    
        r9.setPoints(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008e, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void fixupOutPolygon(com.itextpdf.kernel.pdf.canvas.parser.clipper.Path.OutRec r9) {
        /*
            r8 = this;
            r0 = 0
            r9.bottomPt = r0
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r1 = r9.getPoints()
            boolean r2 = r8.preserveCollinear
            if (r2 != 0) goto L12
            boolean r2 = r8.strictlySimple
            if (r2 == 0) goto L10
            goto L12
        L10:
            r2 = 0
            goto L13
        L12:
            r2 = 1
        L13:
            r3 = r0
        L14:
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r4 = r1.prev
            if (r4 == r1) goto L8b
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r4 = r1.prev
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r5 = r1.next
            if (r4 != r5) goto L1f
            goto L8b
        L1f:
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r4 = r1.getPt()
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r5 = r1.next
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r5 = r5.getPt()
            boolean r4 = r4.equals(r5)
            if (r4 != 0) goto L7c
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r4 = r1.getPt()
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r5 = r1.prev
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r5 = r5.getPt()
            boolean r4 = r4.equals(r5)
            if (r4 != 0) goto L7c
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r4 = r1.prev
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r4 = r4.getPt()
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r5 = r1.getPt()
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r6 = r1.next
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r6 = r6.getPt()
            boolean r7 = r8.useFullRange
            boolean r4 = com.itextpdf.kernel.pdf.canvas.parser.clipper.Point.slopesEqual(r4, r5, r6, r7)
            if (r4 == 0) goto L70
            if (r2 == 0) goto L7c
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r4 = r1.prev
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r4 = r4.getPt()
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r5 = r1.getPt()
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r6 = r1.next
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Point$LongPoint r6 = r6.getPt()
            boolean r4 = com.itextpdf.kernel.pdf.canvas.parser.clipper.Point.isPt2BetweenPt1AndPt3(r4, r5, r6)
            if (r4 != 0) goto L70
            goto L7c
        L70:
            if (r1 != r3) goto L76
            r9.setPoints(r1)
            return
        L76:
            if (r3 != 0) goto L79
            r3 = r1
        L79:
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r1 = r1.next
            goto L14
        L7c:
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r3 = r1.prev
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r4 = r1.next
            r3.next = r4
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r3 = r1.next
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r4 = r1.prev
            r3.prev = r4
            com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutPt r1 = r1.prev
            goto L13
        L8b:
            r9.setPoints(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.canvas.parser.clipper.DefaultClipper.fixupOutPolygon(com.itextpdf.kernel.pdf.canvas.parser.clipper.Path$OutRec):void");
    }

    private Path.OutRec getOutRec(int i) {
        Path.OutRec outRec = this.polyOuts.get(i);
        while (true) {
            Path.OutRec outRec2 = outRec;
            if (outRec2 == this.polyOuts.get(outRec2.Idx)) {
                return outRec2;
            }
            outRec = this.polyOuts.get(outRec2.Idx);
        }
    }

    private void insertEdgeIntoAEL(Edge edge, Edge edge2) {
        Logger logger = LOGGER;
        logger.entering(DefaultClipper.class.getName(), "insertEdgeIntoAEL");
        Edge edge3 = this.activeEdges;
        if (edge3 == null) {
            edge.prevInAEL = null;
            edge.nextInAEL = null;
            logger.finest("Edge " + edge.outIdx + " -> null");
            this.activeEdges = edge;
            return;
        }
        if (edge2 == null && Edge.doesE2InsertBeforeE1(edge3, edge)) {
            edge.prevInAEL = null;
            edge.nextInAEL = this.activeEdges;
            logger.finest("Edge " + edge.outIdx + " -> " + edge.nextInAEL.outIdx);
            this.activeEdges.prevInAEL = edge;
            this.activeEdges = edge;
            return;
        }
        logger.finest("activeEdges unchanged");
        if (edge2 == null) {
            edge2 = this.activeEdges;
        }
        while (edge2.nextInAEL != null && !Edge.doesE2InsertBeforeE1(edge2.nextInAEL, edge)) {
            edge2 = edge2.nextInAEL;
        }
        edge.nextInAEL = edge2.nextInAEL;
        if (edge2.nextInAEL != null) {
            edge2.nextInAEL.prevInAEL = edge;
        }
        edge.prevInAEL = edge2;
        edge2.nextInAEL = edge;
    }

    private void insertLocalMinimaIntoAEL(long j) {
        LOGGER.entering(DefaultClipper.class.getName(), "insertLocalMinimaIntoAEL");
        while (this.currentLM != null && this.currentLM.f3161y == j) {
            Edge edge = this.currentLM.leftBound;
            Edge edge2 = this.currentLM.rightBound;
            popLocalMinima();
            if (edge == null) {
                insertEdgeIntoAEL(edge2, null);
                updateWindingCount(edge2);
                if (edge2.isContributing(this.clipFillType, this.subjFillType, this.clipType)) {
                    outPtAddLocalMinPoly = addOutPt(edge2, edge2.getBot());
                }
            } else if (edge2 == null) {
                insertEdgeIntoAEL(edge, null);
                updateWindingCount(edge);
                outPtAddLocalMinPoly = edge.isContributing(this.clipFillType, this.subjFillType, this.clipType) ? addOutPt(edge, edge.getBot()) : null;
                insertScanbeam(edge.getTop().getY());
            } else {
                insertEdgeIntoAEL(edge, null);
                insertEdgeIntoAEL(edge2, edge);
                updateWindingCount(edge);
                edge2.windCnt = edge.windCnt;
                edge2.windCnt2 = edge.windCnt2;
                outPtAddLocalMinPoly = edge.isContributing(this.clipFillType, this.subjFillType, this.clipType) ? addLocalMinPoly(edge, edge2, edge.getBot()) : null;
                insertScanbeam(edge.getTop().getY());
            }
            Path.OutPt outPt = outPtAddLocalMinPoly;
            if (edge2 != null) {
                if (edge2.isHorizontal()) {
                    addEdgeToSEL(edge2);
                } else {
                    insertScanbeam(edge2.getTop().getY());
                }
            }
            if (edge != null && edge2 != null) {
                if (outPt != null && edge2.isHorizontal() && this.ghostJoins.size() > 0 && edge2.windDelta != 0) {
                    for (int i = 0; i < this.ghostJoins.size(); i++) {
                        Path.Join join = this.ghostJoins.get(i);
                        if (doHorzSegmentsOverlap(join.outPt1.getPt().getX(), join.getOffPt().getX(), edge2.getBot().getX(), edge2.getTop().getX())) {
                            addJoin(join.outPt1, outPt, join.getOffPt());
                        }
                    }
                }
                if (edge.outIdx >= 0 && edge.prevInAEL != null && edge.prevInAEL.getCurrent().getX() == edge.getBot().getX() && edge.prevInAEL.outIdx >= 0 && Edge.slopesEqual(edge.prevInAEL, edge, this.useFullRange) && edge.windDelta != 0 && edge.prevInAEL.windDelta != 0) {
                    addJoin(outPt, addOutPt(edge.prevInAEL, edge.getBot()), edge.getTop());
                }
                if (edge.nextInAEL != edge2) {
                    if (edge2.outIdx >= 0 && edge2.prevInAEL.outIdx >= 0 && Edge.slopesEqual(edge2.prevInAEL, edge2, this.useFullRange) && edge2.windDelta != 0 && edge2.prevInAEL.windDelta != 0) {
                        addJoin(outPt, addOutPt(edge2.prevInAEL, edge2.getBot()), edge2.getTop());
                    }
                    Edge edge3 = edge.nextInAEL;
                    if (edge3 != null) {
                        while (edge3 != edge2) {
                            intersectEdges(edge2, edge3, edge.getCurrent());
                            edge3 = edge3.nextInAEL;
                        }
                    }
                }
            }
        }
    }

    private void intersectEdges(Edge edge, Edge edge2, Point.LongPoint longPoint) {
        IClipper.PolyFillType polyFillType;
        IClipper.PolyFillType polyFillType2;
        IClipper.PolyFillType polyFillType3;
        IClipper.PolyFillType polyFillType4;
        int iAbs;
        int iAbs2;
        int iAbs3;
        int iAbs4;
        LOGGER.entering(DefaultClipper.class.getName(), "insersectEdges");
        boolean z = edge.outIdx >= 0;
        boolean z2 = edge2.outIdx >= 0;
        setZ(longPoint, edge, edge2);
        if (edge.windDelta == 0 || edge2.windDelta == 0) {
            if (edge.windDelta == 0 && edge2.windDelta == 0) {
                return;
            }
            if (edge.polyTyp == edge2.polyTyp && edge.windDelta != edge2.windDelta && this.clipType == IClipper.ClipType.UNION) {
                if (edge.windDelta == 0) {
                    if (z2) {
                        addOutPt(edge, longPoint);
                        if (z) {
                            edge.outIdx = -1;
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (z) {
                    addOutPt(edge2, longPoint);
                    if (z2) {
                        edge2.outIdx = -1;
                        return;
                    }
                    return;
                }
                return;
            }
            if (edge.polyTyp != edge2.polyTyp) {
                if (edge.windDelta == 0 && Math.abs(edge2.windCnt) == 1 && (this.clipType != IClipper.ClipType.UNION || edge2.windCnt2 == 0)) {
                    addOutPt(edge, longPoint);
                    if (z) {
                        edge.outIdx = -1;
                        return;
                    }
                    return;
                }
                if (edge2.windDelta == 0 && Math.abs(edge.windCnt) == 1) {
                    if (this.clipType != IClipper.ClipType.UNION || edge.windCnt2 == 0) {
                        addOutPt(edge2, longPoint);
                        if (z2) {
                            edge2.outIdx = -1;
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (edge.polyTyp == edge2.polyTyp) {
            if (edge.isEvenOddFillType(this.clipFillType, this.subjFillType)) {
                int i = edge.windCnt;
                edge.windCnt = edge2.windCnt;
                edge2.windCnt = i;
            } else {
                if (edge.windCnt + edge2.windDelta == 0) {
                    edge.windCnt = -edge.windCnt;
                } else {
                    edge.windCnt += edge2.windDelta;
                }
                if (edge2.windCnt - edge.windDelta == 0) {
                    edge2.windCnt = -edge2.windCnt;
                } else {
                    edge2.windCnt -= edge.windDelta;
                }
            }
        } else {
            if (!edge2.isEvenOddFillType(this.clipFillType, this.subjFillType)) {
                edge.windCnt2 += edge2.windDelta;
            } else {
                edge.windCnt2 = edge.windCnt2 == 0 ? 1 : 0;
            }
            if (!edge.isEvenOddFillType(this.clipFillType, this.subjFillType)) {
                edge2.windCnt2 -= edge.windDelta;
            } else {
                edge2.windCnt2 = edge2.windCnt2 == 0 ? 1 : 0;
            }
        }
        if (edge.polyTyp == IClipper.PolyType.SUBJECT) {
            polyFillType = this.subjFillType;
            polyFillType2 = this.clipFillType;
        } else {
            polyFillType = this.clipFillType;
            polyFillType2 = this.subjFillType;
        }
        if (edge2.polyTyp == IClipper.PolyType.SUBJECT) {
            polyFillType3 = this.subjFillType;
            polyFillType4 = this.clipFillType;
        } else {
            polyFillType3 = this.clipFillType;
            polyFillType4 = this.subjFillType;
        }
        int i2 = C34802.f3165x682d75a5[polyFillType.ordinal()];
        if (i2 == 1) {
            iAbs = edge.windCnt;
        } else if (i2 == 2) {
            iAbs = -edge.windCnt;
        } else {
            iAbs = Math.abs(edge.windCnt);
        }
        int i3 = C34802.f3165x682d75a5[polyFillType3.ordinal()];
        if (i3 == 1) {
            iAbs2 = edge2.windCnt;
        } else if (i3 == 2) {
            iAbs2 = -edge2.windCnt;
        } else {
            iAbs2 = Math.abs(edge2.windCnt);
        }
        if (z && z2) {
            if ((iAbs != 0 && iAbs != 1) || ((iAbs2 != 0 && iAbs2 != 1) || (edge.polyTyp != edge2.polyTyp && this.clipType != IClipper.ClipType.XOR))) {
                addLocalMaxPoly(edge, edge2, longPoint);
                return;
            }
            addOutPt(edge, longPoint);
            addOutPt(edge2, longPoint);
            Edge.swapSides(edge, edge2);
            Edge.swapPolyIndexes(edge, edge2);
            return;
        }
        if (z) {
            if (iAbs2 == 0 || iAbs2 == 1) {
                addOutPt(edge, longPoint);
                Edge.swapSides(edge, edge2);
                Edge.swapPolyIndexes(edge, edge2);
                return;
            }
            return;
        }
        if (z2) {
            if (iAbs == 0 || iAbs == 1) {
                addOutPt(edge2, longPoint);
                Edge.swapSides(edge, edge2);
                Edge.swapPolyIndexes(edge, edge2);
                return;
            }
            return;
        }
        if (iAbs == 0 || iAbs == 1) {
            if (iAbs2 == 0 || iAbs2 == 1) {
                int i4 = C34802.f3165x682d75a5[polyFillType2.ordinal()];
                if (i4 == 1) {
                    iAbs3 = edge.windCnt2;
                } else if (i4 == 2) {
                    iAbs3 = -edge.windCnt2;
                } else {
                    iAbs3 = Math.abs(edge.windCnt2);
                }
                int i5 = C34802.f3165x682d75a5[polyFillType4.ordinal()];
                if (i5 == 1) {
                    iAbs4 = edge2.windCnt2;
                } else if (i5 == 2) {
                    iAbs4 = -edge2.windCnt2;
                } else {
                    iAbs4 = Math.abs(edge2.windCnt2);
                }
                if (edge.polyTyp != edge2.polyTyp) {
                    addLocalMinPoly(edge, edge2, longPoint);
                    return;
                }
                if (iAbs == 1 && iAbs2 == 1) {
                    int i6 = C34802.f3164xa4df9306[this.clipType.ordinal()];
                    if (i6 == 1) {
                        if (iAbs3 <= 0 || iAbs4 <= 0) {
                            return;
                        }
                        addLocalMinPoly(edge, edge2, longPoint);
                        return;
                    }
                    if (i6 == 2) {
                        if (iAbs3 > 0 || iAbs4 > 0) {
                            return;
                        }
                        addLocalMinPoly(edge, edge2, longPoint);
                        return;
                    }
                    if (i6 != 3) {
                        if (i6 != 4) {
                            return;
                        }
                        addLocalMinPoly(edge, edge2, longPoint);
                        return;
                    } else {
                        if ((edge.polyTyp != IClipper.PolyType.CLIP || iAbs3 <= 0 || iAbs4 <= 0) && (edge.polyTyp != IClipper.PolyType.SUBJECT || iAbs3 > 0 || iAbs4 > 0)) {
                            return;
                        }
                        addLocalMinPoly(edge, edge2, longPoint);
                        return;
                    }
                }
                Edge.swapSides(edge, edge2);
            }
        }
    }

    /* JADX INFO: renamed from: com.itextpdf.kernel.pdf.canvas.parser.clipper.DefaultClipper$2 */
    static /* synthetic */ class C34802 {

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$clipper$IClipper$ClipType */
        static final /* synthetic */ int[] f3164xa4df9306;

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$clipper$IClipper$PolyFillType */
        static final /* synthetic */ int[] f3165x682d75a5;

        static {
            int[] iArr = new int[IClipper.ClipType.values().length];
            f3164xa4df9306 = iArr;
            try {
                iArr[IClipper.ClipType.INTERSECTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3164xa4df9306[IClipper.ClipType.UNION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3164xa4df9306[IClipper.ClipType.DIFFERENCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3164xa4df9306[IClipper.ClipType.XOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[IClipper.PolyFillType.values().length];
            f3165x682d75a5 = iArr2;
            try {
                iArr2[IClipper.PolyFillType.POSITIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3165x682d75a5[IClipper.PolyFillType.NEGATIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private void intersectPoint(Edge edge, Edge edge2, Point.LongPoint[] longPointArr) {
        Point.LongPoint longPoint = new Point.LongPoint();
        longPointArr[0] = longPoint;
        if (edge.deltaX == edge2.deltaX) {
            longPoint.setY(Long.valueOf(edge.getCurrent().getY()));
            longPoint.setX(Long.valueOf(Edge.topX(edge, longPoint.getY())));
            return;
        }
        if (edge.getDelta().getX() == 0) {
            longPoint.setX(Long.valueOf(edge.getBot().getX()));
            if (edge2.isHorizontal()) {
                longPoint.setY(Long.valueOf(edge2.getBot().getY()));
            } else {
                longPoint.setY(Long.valueOf(Math.round((longPoint.getX() / edge2.deltaX) + (edge2.getBot().getY() - (edge2.getBot().getX() / edge2.deltaX)))));
            }
        } else if (edge2.getDelta().getX() == 0) {
            longPoint.setX(Long.valueOf(edge2.getBot().getX()));
            if (edge.isHorizontal()) {
                longPoint.setY(Long.valueOf(edge.getBot().getY()));
            } else {
                longPoint.setY(Long.valueOf(Math.round((longPoint.getX() / edge.deltaX) + (edge.getBot().getY() - (edge.getBot().getX() / edge.deltaX)))));
            }
        } else {
            double x = edge.getBot().getX() - (edge.getBot().getY() * edge.deltaX);
            double x2 = edge2.getBot().getX() - (edge2.getBot().getY() * edge2.deltaX);
            double d = (x2 - x) / (edge.deltaX - edge2.deltaX);
            longPoint.setY(Long.valueOf(Math.round(d)));
            if (Math.abs(edge.deltaX) < Math.abs(edge2.deltaX)) {
                longPoint.setX(Long.valueOf(Math.round((edge.deltaX * d) + x)));
            } else {
                longPoint.setX(Long.valueOf(Math.round((edge2.deltaX * d) + x2)));
            }
        }
        if (longPoint.getY() < edge.getTop().getY() || longPoint.getY() < edge2.getTop().getY()) {
            if (edge.getTop().getY() > edge2.getTop().getY()) {
                longPoint.setY(Long.valueOf(edge.getTop().getY()));
            } else {
                longPoint.setY(Long.valueOf(edge2.getTop().getY()));
            }
            if (Math.abs(edge.deltaX) < Math.abs(edge2.deltaX)) {
                longPoint.setX(Long.valueOf(Edge.topX(edge, longPoint.getY())));
            } else {
                longPoint.setX(Long.valueOf(Edge.topX(edge2, longPoint.getY())));
            }
        }
        if (longPoint.getY() > edge.getCurrent().getY()) {
            longPoint.setY(Long.valueOf(edge.getCurrent().getY()));
            if (Math.abs(edge.deltaX) > Math.abs(edge2.deltaX)) {
                longPoint.setX(Long.valueOf(Edge.topX(edge2, longPoint.getY())));
            } else {
                longPoint.setX(Long.valueOf(Edge.topX(edge, longPoint.getY())));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void joinCommonEdges() {
        /*
            Method dump skipped, instruction units count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.canvas.parser.clipper.DefaultClipper.joinCommonEdges():void");
    }

    private long popScanbeam() {
        LOGGER.entering(DefaultClipper.class.getName(), "popBeam");
        long j = this.scanbeam.f3162y;
        this.scanbeam = this.scanbeam.next;
        return j;
    }

    private void processEdgesAtTopOfScanbeam(long j) {
        LOGGER.entering(DefaultClipper.class.getName(), "processEdgesAtTopOfScanbeam");
        Edge edge = this.activeEdges;
        while (edge != null) {
            double d = j;
            boolean zIsMaxima = edge.isMaxima(d);
            if (zIsMaxima) {
                Edge maximaPair = edge.getMaximaPair();
                zIsMaxima = maximaPair == null || !maximaPair.isHorizontal();
            }
            if (zIsMaxima) {
                if (this.strictlySimple) {
                    InsertMaxima(edge.getTop().getX());
                }
                Edge edge2 = edge.prevInAEL;
                doMaxima(edge);
                if (edge2 == null) {
                    edge = this.activeEdges;
                } else {
                    edge = edge2.nextInAEL;
                }
            } else {
                if (edge.isIntermediate(d) && edge.nextInLML.isHorizontal()) {
                    Edge[] edgeArr = {edge};
                    updateEdgeIntoAEL(edgeArr);
                    edge = edgeArr[0];
                    if (edge.outIdx >= 0) {
                        addOutPt(edge, edge.getBot());
                    }
                    addEdgeToSEL(edge);
                } else {
                    edge.getCurrent().setX(Long.valueOf(Edge.topX(edge, j)));
                    edge.getCurrent().setY(Long.valueOf(j));
                }
                if (this.strictlySimple) {
                    Edge edge3 = edge.prevInAEL;
                    if (edge.outIdx >= 0 && edge.windDelta != 0 && edge3 != null && edge3.outIdx >= 0 && edge3.getCurrent().getX() == edge.getCurrent().getX() && edge3.windDelta != 0) {
                        Point.LongPoint longPoint = new Point.LongPoint(edge.getCurrent());
                        setZ(longPoint, edge3, edge);
                        addJoin(addOutPt(edge3, longPoint), addOutPt(edge, longPoint), longPoint);
                    }
                }
                edge = edge.nextInAEL;
            }
        }
        processHorizontals();
        this.maxima = null;
        Edge edge4 = this.activeEdges;
        while (edge4 != null) {
            if (edge4.isIntermediate(j)) {
                Path.OutPt outPtAddOutPt = edge4.outIdx >= 0 ? addOutPt(edge4, edge4.getTop()) : null;
                Edge[] edgeArr2 = {edge4};
                updateEdgeIntoAEL(edgeArr2);
                edge4 = edgeArr2[0];
                Edge edge5 = edge4.prevInAEL;
                Edge edge6 = edge4.nextInAEL;
                if (edge5 != null && edge5.getCurrent().equals(edge4.getBot()) && outPtAddOutPt != null && edge5.outIdx >= 0 && edge5.getCurrent().getY() > edge5.getTop().getY() && Edge.slopesEqual(edge4, edge5, this.useFullRange) && edge4.windDelta != 0 && edge5.windDelta != 0) {
                    addJoin(outPtAddOutPt, addOutPt(edge5, edge4.getBot()), edge4.getTop());
                } else if (edge6 != null && edge6.getCurrent().equals(edge4.getBot()) && outPtAddOutPt != null && edge6.outIdx >= 0 && edge6.getCurrent().getY() > edge6.getTop().getY() && Edge.slopesEqual(edge4, edge6, this.useFullRange) && edge4.windDelta != 0 && edge6.windDelta != 0) {
                    addJoin(outPtAddOutPt, addOutPt(edge6, edge4.getBot()), edge4.getTop());
                }
            }
            edge4 = edge4.nextInAEL;
        }
        LOGGER.exiting(DefaultClipper.class.getName(), "processEdgesAtTopOfScanbeam");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0174 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0204 A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void processHorizontal(com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge r27) {
        /*
            Method dump skipped, instruction units count: 957
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.canvas.parser.clipper.DefaultClipper.processHorizontal(com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge):void");
    }

    private void processHorizontals() {
        LOGGER.entering(DefaultClipper.class.getName(), "processHorizontals");
        Edge edge = this.sortedEdges;
        while (edge != null) {
            deleteFromSEL(edge);
            processHorizontal(edge);
            edge = this.sortedEdges;
        }
    }

    private boolean processIntersections(long j) {
        LOGGER.entering(DefaultClipper.class.getName(), "processIntersections");
        if (this.activeEdges == null) {
            return true;
        }
        try {
            buildIntersectList(j);
            if (this.intersectList.size() == 0) {
                return true;
            }
            if (this.intersectList.size() != 1 && !fixupIntersectionOrder()) {
                return false;
            }
            processIntersectList();
            this.sortedEdges = null;
            return true;
        } catch (Exception e) {
            this.sortedEdges = null;
            this.intersectList.clear();
            throw new IllegalStateException("ProcessIntersections error", e);
        }
    }

    private void processIntersectList() {
        for (int i = 0; i < this.intersectList.size(); i++) {
            IntersectNode intersectNode = this.intersectList.get(i);
            intersectEdges(intersectNode.edge1, intersectNode.Edge2, intersectNode.getPt());
            swapPositionsInAEL(intersectNode.edge1, intersectNode.Edge2);
        }
        this.intersectList.clear();
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.clipper.ClipperBase
    protected void reset() {
        super.reset();
        this.scanbeam = null;
        this.maxima = null;
        this.activeEdges = null;
        this.sortedEdges = null;
        for (ClipperBase.LocalMinima localMinima = this.minimaList; localMinima != null; localMinima = localMinima.next) {
            insertScanbeam(localMinima.f3161y);
        }
    }

    private void setHoleState(Edge edge, Path.OutRec outRec) {
        boolean z = false;
        for (Edge edge2 = edge.prevInAEL; edge2 != null; edge2 = edge2.prevInAEL) {
            if (edge2.outIdx >= 0 && edge2.windDelta != 0) {
                z = !z;
                if (outRec.firstLeft == null) {
                    outRec.firstLeft = this.polyOuts.get(edge2.outIdx);
                }
            }
        }
        if (z) {
            outRec.isHole = true;
        }
    }

    private void setZ(Point.LongPoint longPoint, Edge edge, Edge edge2) {
        if (longPoint.getZ() != 0 || this.zFillFunction == null) {
            return;
        }
        if (longPoint.equals(edge.getBot())) {
            longPoint.setZ(Long.valueOf(edge.getBot().getZ()));
            return;
        }
        if (longPoint.equals(edge.getTop())) {
            longPoint.setZ(Long.valueOf(edge.getTop().getZ()));
            return;
        }
        if (longPoint.equals(edge2.getBot())) {
            longPoint.setZ(Long.valueOf(edge2.getBot().getZ()));
        } else if (longPoint.equals(edge2.getTop())) {
            longPoint.setZ(Long.valueOf(edge2.getTop().getZ()));
        } else {
            this.zFillFunction.zFill(edge.getBot(), edge.getTop(), edge2.getBot(), edge2.getTop(), longPoint);
        }
    }

    private void swapPositionsInAEL(Edge edge, Edge edge2) {
        Logger logger = LOGGER;
        logger.entering(DefaultClipper.class.getName(), "swapPositionsInAEL");
        if (edge.nextInAEL == edge.prevInAEL || edge2.nextInAEL == edge2.prevInAEL) {
            return;
        }
        if (edge.nextInAEL == edge2) {
            Edge edge3 = edge2.nextInAEL;
            if (edge3 != null) {
                edge3.prevInAEL = edge;
            }
            Edge edge4 = edge.prevInAEL;
            if (edge4 != null) {
                edge4.nextInAEL = edge2;
            }
            edge2.prevInAEL = edge4;
            edge2.nextInAEL = edge;
            edge.prevInAEL = edge2;
            edge.nextInAEL = edge3;
        } else if (edge2.nextInAEL == edge) {
            Edge edge5 = edge.nextInAEL;
            if (edge5 != null) {
                edge5.prevInAEL = edge2;
            }
            Edge edge6 = edge2.prevInAEL;
            if (edge6 != null) {
                edge6.nextInAEL = edge;
            }
            edge.prevInAEL = edge6;
            edge.nextInAEL = edge2;
            edge2.prevInAEL = edge;
            edge2.nextInAEL = edge5;
        } else {
            Edge edge7 = edge.nextInAEL;
            Edge edge8 = edge.prevInAEL;
            edge.nextInAEL = edge2.nextInAEL;
            if (edge.nextInAEL != null) {
                edge.nextInAEL.prevInAEL = edge;
            }
            edge.prevInAEL = edge2.prevInAEL;
            if (edge.prevInAEL != null) {
                edge.prevInAEL.nextInAEL = edge;
            }
            edge2.nextInAEL = edge7;
            if (edge2.nextInAEL != null) {
                edge2.nextInAEL.prevInAEL = edge2;
            }
            edge2.prevInAEL = edge8;
            if (edge2.prevInAEL != null) {
                edge2.prevInAEL.nextInAEL = edge2;
            }
        }
        if (edge.prevInAEL == null) {
            this.activeEdges = edge;
        } else if (edge2.prevInAEL == null) {
            this.activeEdges = edge2;
        }
        logger.exiting(DefaultClipper.class.getName(), "swapPositionsInAEL");
    }

    private void swapPositionsInSEL(Edge edge, Edge edge2) {
        if (edge.nextInSEL == null && edge.prevInSEL == null) {
            return;
        }
        if (edge2.nextInSEL == null && edge2.prevInSEL == null) {
            return;
        }
        if (edge.nextInSEL == edge2) {
            Edge edge3 = edge2.nextInSEL;
            if (edge3 != null) {
                edge3.prevInSEL = edge;
            }
            Edge edge4 = edge.prevInSEL;
            if (edge4 != null) {
                edge4.nextInSEL = edge2;
            }
            edge2.prevInSEL = edge4;
            edge2.nextInSEL = edge;
            edge.prevInSEL = edge2;
            edge.nextInSEL = edge3;
        } else if (edge2.nextInSEL == edge) {
            Edge edge5 = edge.nextInSEL;
            if (edge5 != null) {
                edge5.prevInSEL = edge2;
            }
            Edge edge6 = edge2.prevInSEL;
            if (edge6 != null) {
                edge6.nextInSEL = edge;
            }
            edge.prevInSEL = edge6;
            edge.nextInSEL = edge2;
            edge2.prevInSEL = edge;
            edge2.nextInSEL = edge5;
        } else {
            Edge edge7 = edge.nextInSEL;
            Edge edge8 = edge.prevInSEL;
            edge.nextInSEL = edge2.nextInSEL;
            if (edge.nextInSEL != null) {
                edge.nextInSEL.prevInSEL = edge;
            }
            edge.prevInSEL = edge2.prevInSEL;
            if (edge.prevInSEL != null) {
                edge.prevInSEL.nextInSEL = edge;
            }
            edge2.nextInSEL = edge7;
            if (edge2.nextInSEL != null) {
                edge2.nextInSEL.prevInSEL = edge2;
            }
            edge2.prevInSEL = edge8;
            if (edge2.prevInSEL != null) {
                edge2.prevInSEL.nextInSEL = edge2;
            }
        }
        if (edge.prevInSEL == null) {
            this.sortedEdges = edge;
        } else if (edge2.prevInSEL == null) {
            this.sortedEdges = edge2;
        }
    }

    private void updateEdgeIntoAEL(Edge[] edgeArr) {
        Edge edge = edgeArr[0];
        if (edge.nextInLML == null) {
            throw new IllegalStateException("UpdateEdgeIntoAEL: invalid call");
        }
        Edge edge2 = edge.prevInAEL;
        Edge edge3 = edge.nextInAEL;
        edge.nextInLML.outIdx = edge.outIdx;
        if (edge2 != null) {
            edge2.nextInAEL = edge.nextInLML;
        } else {
            this.activeEdges = edge.nextInLML;
        }
        if (edge3 != null) {
            edge3.prevInAEL = edge.nextInLML;
        }
        edge.nextInLML.side = edge.side;
        edge.nextInLML.windDelta = edge.windDelta;
        edge.nextInLML.windCnt = edge.windCnt;
        edge.nextInLML.windCnt2 = edge.windCnt2;
        Edge edge4 = edge.nextInLML;
        edgeArr[0] = edge4;
        edge4.setCurrent(edge4.getBot());
        edge4.prevInAEL = edge2;
        edge4.nextInAEL = edge3;
        if (edge4.isHorizontal()) {
            return;
        }
        insertScanbeam(edge4.getTop().getY());
    }

    private void updateOutPtIdxs(Path.OutRec outRec) {
        Path.OutPt points = outRec.getPoints();
        do {
            points.idx = outRec.Idx;
            points = points.prev;
        } while (points != outRec.getPoints());
    }

    private void updateWindingCount(Edge edge) {
        Edge edge2;
        LOGGER.entering(DefaultClipper.class.getName(), "updateWindingCount");
        Edge edge3 = edge.prevInAEL;
        while (edge3 != null && (edge3.polyTyp != edge.polyTyp || edge3.windDelta == 0)) {
            edge3 = edge3.prevInAEL;
        }
        if (edge3 == null) {
            edge.windCnt = edge.windDelta == 0 ? 1 : edge.windDelta;
            edge.windCnt2 = 0;
            edge2 = this.activeEdges;
        } else if (edge.windDelta == 0 && this.clipType != IClipper.ClipType.UNION) {
            edge.windCnt = 1;
            edge.windCnt2 = edge3.windCnt2;
            edge2 = edge3.nextInAEL;
        } else if (edge.isEvenOddFillType(this.clipFillType, this.subjFillType)) {
            if (edge.windDelta == 0) {
                int i = 1;
                for (Edge edge4 = edge3.prevInAEL; edge4 != null; edge4 = edge4.prevInAEL) {
                    if (edge4.polyTyp == edge3.polyTyp && edge4.windDelta != 0) {
                        i ^= 1;
                    }
                }
                edge.windCnt = i ^ 1;
            } else {
                edge.windCnt = edge.windDelta;
            }
            edge.windCnt2 = edge3.windCnt2;
            edge2 = edge3.nextInAEL;
        } else {
            if (edge3.windCnt * edge3.windDelta < 0) {
                if (Math.abs(edge3.windCnt) > 1) {
                    if (edge3.windDelta * edge.windDelta < 0) {
                        edge.windCnt = edge3.windCnt;
                    } else {
                        edge.windCnt = edge3.windCnt + edge.windDelta;
                    }
                } else {
                    edge.windCnt = edge.windDelta == 0 ? 1 : edge.windDelta;
                }
            } else if (edge.windDelta == 0) {
                edge.windCnt = edge3.windCnt < 0 ? edge3.windCnt - 1 : edge3.windCnt + 1;
            } else if (edge3.windDelta * edge.windDelta < 0) {
                edge.windCnt = edge3.windCnt;
            } else {
                edge.windCnt = edge3.windCnt + edge.windDelta;
            }
            edge.windCnt2 = edge3.windCnt2;
            edge2 = edge3.nextInAEL;
        }
        if (!edge.isEvenOddAltFillType(this.clipFillType, this.subjFillType)) {
            while (edge2 != edge) {
                edge.windCnt2 += edge2.windDelta;
                edge2 = edge2.nextInAEL;
            }
        } else {
            while (edge2 != edge) {
                if (edge2.windDelta != 0) {
                    edge.windCnt2 = edge.windCnt2 == 0 ? 1 : 0;
                }
                edge2 = edge2.nextInAEL;
            }
        }
    }
}
