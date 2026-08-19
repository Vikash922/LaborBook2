package com.itextpdf.kernel.pdf.canvas.parser.clipper;

import com.itextpdf.kernel.pdf.canvas.parser.clipper.PolyNode;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class Paths extends ArrayList<Path> {
    public static Paths closedPathsFromPolyTree(PolyTree polyTree) {
        Paths paths = new Paths();
        paths.addPolyNode(polyTree, PolyNode.NodeType.CLOSED);
        return paths;
    }

    public static Paths makePolyTreeToPaths(PolyTree polyTree) {
        Paths paths = new Paths();
        paths.addPolyNode(polyTree, PolyNode.NodeType.ANY);
        return paths;
    }

    public static Paths openPathsFromPolyTree(PolyTree polyTree) {
        Paths paths = new Paths();
        for (PolyNode polyNode : polyTree.getChilds()) {
            if (polyNode.isOpen()) {
                paths.add(polyNode.getPolygon());
            }
        }
        return paths;
    }

    public Paths() {
    }

    public Paths(int i) {
        super(i);
    }

    /* JADX INFO: renamed from: com.itextpdf.kernel.pdf.canvas.parser.clipper.Paths$1 */
    static /* synthetic */ class C34821 {

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$clipper$PolyNode$NodeType */
        static final /* synthetic */ int[] f3171x16f7cf2e;

        static {
            int[] iArr = new int[PolyNode.NodeType.values().length];
            f3171x16f7cf2e = iArr;
            try {
                iArr[PolyNode.NodeType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3171x16f7cf2e[PolyNode.NodeType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public void addPolyNode(PolyNode polyNode, PolyNode.NodeType nodeType) {
        int i = C34821.f3171x16f7cf2e[nodeType.ordinal()];
        if (i != 1) {
            boolean zIsOpen = i == 2 ? true ^ polyNode.isOpen() : true;
            if (polyNode.getPolygon().size() > 0 && zIsOpen) {
                add(polyNode.getPolygon());
            }
            Iterator<PolyNode> it = polyNode.getChilds().iterator();
            while (it.hasNext()) {
                addPolyNode(it.next(), nodeType);
            }
        }
    }

    public Paths cleanPolygons() {
        return cleanPolygons(1.415d);
    }

    public Paths cleanPolygons(double d) {
        Paths paths = new Paths(size());
        for (int i = 0; i < size(); i++) {
            paths.add(get(i).cleanPolygon(d));
        }
        return paths;
    }

    public LongRect getBounds() {
        int size = size();
        LongRect longRect = new LongRect();
        int i = 0;
        while (i < size && get(i).isEmpty()) {
            i++;
        }
        if (i == size) {
            return longRect;
        }
        longRect.left = get(i).get(0).getX();
        longRect.right = longRect.left;
        longRect.top = get(i).get(0).getY();
        longRect.bottom = longRect.top;
        while (i < size) {
            for (int i2 = 0; i2 < get(i).size(); i2++) {
                if (get(i).get(i2).getX() < longRect.left) {
                    longRect.left = get(i).get(i2).getX();
                } else if (get(i).get(i2).getX() > longRect.right) {
                    longRect.right = get(i).get(i2).getX();
                }
                if (get(i).get(i2).getY() < longRect.top) {
                    longRect.top = get(i).get(i2).getY();
                } else if (get(i).get(i2).getY() > longRect.bottom) {
                    longRect.bottom = get(i).get(i2).getY();
                }
            }
            i++;
        }
        return longRect;
    }

    public void reversePaths() {
        Iterator<Path> it = iterator();
        while (it.hasNext()) {
            it.next().reverse();
        }
    }
}
