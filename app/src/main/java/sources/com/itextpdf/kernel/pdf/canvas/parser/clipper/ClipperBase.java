package com.itextpdf.kernel.pdf.canvas.parser.clipper;

import com.itextpdf.kernel.pdf.canvas.parser.clipper.Edge;
import com.itextpdf.kernel.pdf.canvas.parser.clipper.IClipper;
import com.itextpdf.kernel.pdf.canvas.parser.clipper.Path;
import com.itextpdf.kernel.pdf.canvas.parser.clipper.Point;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ClipperBase implements IClipper {
    private static final long HI_RANGE = 4611686018427387903L;
    private static final Logger LOGGER = Logger.getLogger(IClipper.class.getName());
    private static final long LOW_RANGE = 1073741823;
    protected final boolean preserveCollinear;
    protected boolean useFullRange;
    protected LocalMinima minimaList = null;
    protected LocalMinima currentLM = null;
    protected boolean hasOpenPaths = false;
    private final List<List<Edge>> edges = new ArrayList();

    protected class LocalMinima {
        Edge leftBound;
        LocalMinima next;
        Edge rightBound;

        /* JADX INFO: renamed from: y */
        long f3161y;

        protected LocalMinima() {
        }
    }

    protected class Scanbeam {
        Scanbeam next;

        /* JADX INFO: renamed from: y */
        long f3162y;

        protected Scanbeam() {
        }
    }

    private static void initEdge(Edge edge, Edge edge2, Edge edge3, Point.LongPoint longPoint) {
        edge.next = edge2;
        edge.prev = edge3;
        edge.setCurrent(new Point.LongPoint(longPoint));
        edge.outIdx = -1;
    }

    private static void initEdge2(Edge edge, IClipper.PolyType polyType) {
        if (edge.getCurrent().getY() >= edge.next.getCurrent().getY()) {
            edge.setBot(new Point.LongPoint(edge.getCurrent()));
            edge.setTop(new Point.LongPoint(edge.next.getCurrent()));
        } else {
            edge.setTop(new Point.LongPoint(edge.getCurrent()));
            edge.setBot(new Point.LongPoint(edge.next.getCurrent()));
        }
        edge.updateDeltaX();
        edge.polyTyp = polyType;
    }

    private static boolean rangeTest(Point.LongPoint longPoint, boolean z) {
        if (z) {
            if (longPoint.getX() > 4611686018427387903L || longPoint.getY() > 4611686018427387903L || (-longPoint.getX()) > 4611686018427387903L || (-longPoint.getY()) > 4611686018427387903L) {
                throw new ClipperException(ClipperExceptionConstant.COORDINATE_OUTSIDE_ALLOWED_RANGE);
            }
        } else if (longPoint.getX() > 1073741823 || longPoint.getY() > 1073741823 || (-longPoint.getX()) > 1073741823 || (-longPoint.getY()) > 1073741823) {
            return rangeTest(longPoint, true);
        }
        return z;
    }

    private static Edge removeEdge(Edge edge) {
        edge.prev.next = edge.next;
        edge.next.prev = edge.prev;
        Edge edge2 = edge.next;
        edge.prev = null;
        return edge2;
    }

    protected ClipperBase(boolean z) {
        this.preserveCollinear = z;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.clipper.IClipper
    public boolean addPath(Path path, IClipper.PolyType polyType, boolean z) {
        boolean z2;
        if (!z && polyType == IClipper.PolyType.CLIP) {
            throw new IllegalStateException("AddPath: Open paths must be subject.");
        }
        int size = path.size() - 1;
        if (z) {
            while (size > 0 && path.get(size).equals(path.get(0))) {
                size--;
            }
        }
        while (size > 0 && path.get(size).equals(path.get(size - 1))) {
            size--;
        }
        if ((z && size < 2) || (!z && size < 1)) {
            return false;
        }
        ArrayList arrayList = new ArrayList(size + 1);
        for (int i = 0; i <= size; i++) {
            arrayList.add(new Edge());
        }
        ((Edge) arrayList.get(1)).setCurrent(new Point.LongPoint(path.get(1)));
        this.useFullRange = rangeTest(path.get(0), this.useFullRange);
        this.useFullRange = rangeTest(path.get(size), this.useFullRange);
        initEdge((Edge) arrayList.get(0), (Edge) arrayList.get(1), (Edge) arrayList.get(size), path.get(0));
        int i2 = size - 1;
        initEdge((Edge) arrayList.get(size), (Edge) arrayList.get(0), (Edge) arrayList.get(i2), path.get(size));
        while (i2 >= 1) {
            this.useFullRange = rangeTest(path.get(i2), this.useFullRange);
            initEdge((Edge) arrayList.get(i2), (Edge) arrayList.get(i2 + 1), (Edge) arrayList.get(i2 - 1), path.get(i2));
            i2--;
        }
        Edge edge = (Edge) arrayList.get(0);
        Edge edge2 = edge;
        Edge edgeRemoveEdge = edge2;
        while (true) {
            if (edge.getCurrent().equals(edge.next.getCurrent()) && (z || !edge.next.equals(edge2))) {
                if (edge == edge.next) {
                    break;
                }
                if (edge == edge2) {
                    edge2 = edge.next;
                }
                edgeRemoveEdge = removeEdge(edge);
                edge = edgeRemoveEdge;
            } else {
                if (edge.prev == edge.next) {
                    break;
                }
                if (z && Point.slopesEqual(edge.prev.getCurrent(), edge.getCurrent(), edge.next.getCurrent(), this.useFullRange) && (!isPreserveCollinear() || !Point.isPt2BetweenPt1AndPt3(edge.prev.getCurrent(), edge.getCurrent(), edge.next.getCurrent()))) {
                    if (edge == edge2) {
                        edge2 = edge.next;
                    }
                    edgeRemoveEdge = removeEdge(edge).prev;
                    edge = edgeRemoveEdge;
                } else {
                    edge = edge.next;
                    if (edge == edgeRemoveEdge || (!z && edge.next == edge2)) {
                        break;
                    }
                }
            }
        }
        if ((!z && edge == edge.next) || (z && edge.prev == edge.next)) {
            return false;
        }
        if (!z) {
            this.hasOpenPaths = true;
            edge2.prev.outIdx = -2;
        }
        Edge edgeProcessBound = edge2;
        boolean z3 = true;
        do {
            initEdge2(edgeProcessBound, polyType);
            edgeProcessBound = edgeProcessBound.next;
            if (z3 && edgeProcessBound.getCurrent().getY() != edge2.getCurrent().getY()) {
                z3 = false;
            }
        } while (edgeProcessBound != edge2);
        if (z3) {
            if (z) {
                return false;
            }
            edgeProcessBound.prev.outIdx = -2;
            LocalMinima localMinima = new LocalMinima();
            localMinima.next = null;
            localMinima.f3161y = edgeProcessBound.getBot().getY();
            localMinima.leftBound = null;
            localMinima.rightBound = edgeProcessBound;
            localMinima.rightBound.side = Edge.Side.RIGHT;
            localMinima.rightBound.windDelta = 0;
            while (true) {
                if (edgeProcessBound.getBot().getX() != edgeProcessBound.prev.getTop().getX()) {
                    edgeProcessBound.reverseHorizontal();
                }
                if (edgeProcessBound.next.outIdx != -2) {
                    edgeProcessBound.nextInLML = edgeProcessBound.next;
                    edgeProcessBound = edgeProcessBound.next;
                } else {
                    insertLocalMinima(localMinima);
                    this.edges.add(arrayList);
                    return true;
                }
            }
        } else {
            this.edges.add(arrayList);
            if (edgeProcessBound.prev.getBot().equals(edgeProcessBound.prev.getTop())) {
                edgeProcessBound = edgeProcessBound.next;
            }
            Edge edge3 = null;
            while (true) {
                Edge edgeFindNextLocMin = edgeProcessBound.findNextLocMin();
                if (edgeFindNextLocMin == edge3) {
                    return true;
                }
                if (edge3 == null) {
                    edge3 = edgeFindNextLocMin;
                }
                LocalMinima localMinima2 = new LocalMinima();
                localMinima2.next = null;
                localMinima2.f3161y = edgeFindNextLocMin.getBot().getY();
                if (edgeFindNextLocMin.deltaX < edgeFindNextLocMin.prev.deltaX) {
                    localMinima2.leftBound = edgeFindNextLocMin.prev;
                    localMinima2.rightBound = edgeFindNextLocMin;
                    z2 = false;
                } else {
                    localMinima2.leftBound = edgeFindNextLocMin;
                    localMinima2.rightBound = edgeFindNextLocMin.prev;
                    z2 = true;
                }
                localMinima2.leftBound.side = Edge.Side.LEFT;
                localMinima2.rightBound.side = Edge.Side.RIGHT;
                if (!z) {
                    localMinima2.leftBound.windDelta = 0;
                } else if (localMinima2.leftBound.next == localMinima2.rightBound) {
                    localMinima2.leftBound.windDelta = -1;
                } else {
                    localMinima2.leftBound.windDelta = 1;
                }
                localMinima2.rightBound.windDelta = -localMinima2.leftBound.windDelta;
                edgeProcessBound = processBound(localMinima2.leftBound, z2);
                if (edgeProcessBound.outIdx == -2) {
                    edgeProcessBound = processBound(edgeProcessBound, z2);
                }
                Edge edgeProcessBound2 = processBound(localMinima2.rightBound, !z2);
                if (edgeProcessBound2.outIdx == -2) {
                    edgeProcessBound2 = processBound(edgeProcessBound2, !z2);
                }
                if (localMinima2.leftBound.outIdx == -2) {
                    localMinima2.leftBound = null;
                } else if (localMinima2.rightBound.outIdx == -2) {
                    localMinima2.rightBound = null;
                }
                insertLocalMinima(localMinima2);
                if (!z2) {
                    edgeProcessBound = edgeProcessBound2;
                }
            }
        }
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.clipper.IClipper
    public boolean addPaths(Paths paths, IClipper.PolyType polyType, boolean z) {
        boolean z2 = false;
        for (int i = 0; i < paths.size(); i++) {
            if (addPath(paths.get(i), polyType, z)) {
                z2 = true;
            }
        }
        return z2;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.clipper.IClipper
    public void clear() {
        disposeLocalMinimaList();
        this.edges.clear();
        this.useFullRange = false;
        this.hasOpenPaths = false;
    }

    private void disposeLocalMinimaList() {
        while (true) {
            LocalMinima localMinima = this.minimaList;
            if (localMinima != null) {
                this.minimaList = localMinima.next;
            } else {
                this.currentLM = null;
                return;
            }
        }
    }

    private void insertLocalMinima(LocalMinima localMinima) {
        if (this.minimaList == null) {
            this.minimaList = localMinima;
            return;
        }
        if (localMinima.f3161y >= this.minimaList.f3161y) {
            localMinima.next = this.minimaList;
            this.minimaList = localMinima;
            return;
        }
        LocalMinima localMinima2 = this.minimaList;
        while (localMinima2.next != null && localMinima.f3161y < localMinima2.next.f3161y) {
            localMinima2 = localMinima2.next;
        }
        localMinima.next = localMinima2.next;
        localMinima2.next = localMinima;
    }

    public boolean isPreserveCollinear() {
        return this.preserveCollinear;
    }

    protected void popLocalMinima() {
        LOGGER.entering(ClipperBase.class.getName(), "popLocalMinima");
        LocalMinima localMinima = this.currentLM;
        if (localMinima == null) {
            return;
        }
        this.currentLM = localMinima.next;
    }

    private Edge processBound(Edge edge, boolean z) {
        Edge edge2;
        Edge edge3;
        if (edge.outIdx == -2) {
            Edge edge4 = edge;
            if (z) {
                while (edge4.getTop().getY() == edge4.next.getBot().getY()) {
                    edge4 = edge4.next;
                }
                while (edge4 != edge && edge4.deltaX == -3.4E38d) {
                    edge4 = edge4.prev;
                }
            } else {
                while (edge4.getTop().getY() == edge4.prev.getBot().getY()) {
                    edge4 = edge4.prev;
                }
                while (edge4 != edge && edge4.deltaX == -3.4E38d) {
                    edge4 = edge4.next;
                }
            }
            if (edge4 == edge) {
                if (z) {
                    return edge4.next;
                }
                return edge4.prev;
            }
            if (z) {
                edge3 = edge.next;
            } else {
                edge3 = edge.prev;
            }
            LocalMinima localMinima = new LocalMinima();
            localMinima.next = null;
            localMinima.f3161y = edge3.getBot().getY();
            localMinima.leftBound = null;
            localMinima.rightBound = edge3;
            edge3.windDelta = 0;
            Edge edgeProcessBound = processBound(edge3, z);
            insertLocalMinima(localMinima);
            return edgeProcessBound;
        }
        if (edge.deltaX == -3.4E38d) {
            if (z) {
                edge2 = edge.prev;
            } else {
                edge2 = edge.next;
            }
            if (edge2.deltaX == -3.4E38d) {
                if (edge2.getBot().getX() != edge.getBot().getX() && edge2.getTop().getX() != edge.getBot().getX()) {
                    edge.reverseHorizontal();
                }
            } else if (edge2.getBot().getX() != edge.getBot().getX()) {
                edge.reverseHorizontal();
            }
        }
        if (z) {
            Edge edge5 = edge;
            while (edge5.getTop().getY() == edge5.next.getBot().getY() && edge5.next.outIdx != -2) {
                edge5 = edge5.next;
            }
            if (edge5.deltaX == -3.4E38d && edge5.next.outIdx != -2) {
                Edge edge6 = edge5;
                while (edge6.prev.deltaX == -3.4E38d) {
                    edge6 = edge6.prev;
                }
                if (edge6.prev.getTop().getX() > edge5.next.getTop().getX()) {
                    edge5 = edge6.prev;
                }
            }
            Edge edge7 = edge;
            while (edge7 != edge5) {
                edge7.nextInLML = edge7.next;
                if (edge7.deltaX == -3.4E38d && edge7 != edge && edge7.getBot().getX() != edge7.prev.getTop().getX()) {
                    edge7.reverseHorizontal();
                }
                edge7 = edge7.next;
            }
            if (edge7.deltaX == -3.4E38d && edge7 != edge && edge7.getBot().getX() != edge7.prev.getTop().getX()) {
                edge7.reverseHorizontal();
            }
            return edge5.next;
        }
        Edge edge8 = edge;
        while (edge8.getTop().getY() == edge8.prev.getBot().getY() && edge8.prev.outIdx != -2) {
            edge8 = edge8.prev;
        }
        if (edge8.deltaX == -3.4E38d && edge8.prev.outIdx != -2) {
            Edge edge9 = edge8;
            while (edge9.next.deltaX == -3.4E38d) {
                edge9 = edge9.next;
            }
            if (edge9.next.getTop().getX() == edge8.prev.getTop().getX() || edge9.next.getTop().getX() > edge8.prev.getTop().getX()) {
                edge8 = edge9.next;
            }
        }
        Edge edge10 = edge;
        while (edge10 != edge8) {
            edge10.nextInLML = edge10.prev;
            if (edge10.deltaX == -3.4E38d && edge10 != edge && edge10.getBot().getX() != edge10.next.getTop().getX()) {
                edge10.reverseHorizontal();
            }
            edge10 = edge10.prev;
        }
        if (edge10.deltaX == -3.4E38d && edge10 != edge && edge10.getBot().getX() != edge10.next.getTop().getX()) {
            edge10.reverseHorizontal();
        }
        return edge8.prev;
    }

    protected static Path.OutRec parseFirstLeft(Path.OutRec outRec) {
        while (outRec != null && outRec.getPoints() == null) {
            outRec = outRec.firstLeft;
        }
        return outRec;
    }

    protected void reset() {
        LocalMinima localMinima = this.minimaList;
        this.currentLM = localMinima;
        if (localMinima == null) {
            return;
        }
        while (localMinima != null) {
            Edge edge = localMinima.leftBound;
            if (edge != null) {
                edge.setCurrent(new Point.LongPoint(edge.getBot()));
                edge.side = Edge.Side.LEFT;
                edge.outIdx = -1;
            }
            Edge edge2 = localMinima.rightBound;
            if (edge2 != null) {
                edge2.setCurrent(new Point.LongPoint(edge2.getBot()));
                edge2.side = Edge.Side.RIGHT;
                edge2.outIdx = -1;
            }
            localMinima = localMinima.next;
        }
    }
}
