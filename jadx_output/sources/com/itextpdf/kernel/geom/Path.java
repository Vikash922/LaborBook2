package com.itextpdf.kernel.geom;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class Path {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String START_PATH_ERR_MSG = "Path shall start with \"re\" or \"m\" operator";
    private Point currentPoint;
    private List<Subpath> subpaths = new ArrayList();

    public Path() {
    }

    public Path(List<? extends Subpath> list) {
        addSubpaths(list);
    }

    public Path(Path path) {
        addSubpaths(path.getSubpaths());
    }

    public List<Subpath> getSubpaths() {
        return this.subpaths;
    }

    public void addSubpath(Subpath subpath) {
        this.subpaths.add(subpath);
        this.currentPoint = subpath.getLastPoint();
    }

    public void addSubpaths(List<? extends Subpath> list) {
        if (list.size() > 0) {
            Iterator<? extends Subpath> it = list.iterator();
            while (it.hasNext()) {
                this.subpaths.add(new Subpath(it.next()));
            }
            this.currentPoint = this.subpaths.get(list.size() - 1).getLastPoint();
        }
    }

    public Point getCurrentPoint() {
        return this.currentPoint;
    }

    public void moveTo(float f, float f2) {
        Subpath subpath;
        this.currentPoint = new Point(f, f2);
        if (this.subpaths.size() > 0) {
            subpath = this.subpaths.get(r4.size() - 1);
        } else {
            subpath = null;
        }
        if (subpath != null && subpath.isSinglePointOpen()) {
            subpath.setStartPoint(this.currentPoint);
        } else {
            this.subpaths.add(new Subpath(this.currentPoint));
        }
    }

    public void lineTo(float f, float f2) {
        if (this.currentPoint == null) {
            throw new RuntimeException(START_PATH_ERR_MSG);
        }
        Point point = new Point(f, f2);
        getLastSubpath().addSegment(new Line(this.currentPoint, point));
        this.currentPoint = point;
    }

    public void curveTo(float f, float f2, float f3, float f4, float f5, float f6) {
        if (this.currentPoint == null) {
            throw new RuntimeException(START_PATH_ERR_MSG);
        }
        Point point = new Point(f, f2);
        Point point2 = new Point(f3, f4);
        Point point3 = new Point(f5, f6);
        getLastSubpath().addSegment(new BezierCurve(new ArrayList(Arrays.asList(this.currentPoint, point, point2, point3))));
        this.currentPoint = point3;
    }

    public void curveTo(float f, float f2, float f3, float f4) {
        Point point = this.currentPoint;
        if (point == null) {
            throw new RuntimeException(START_PATH_ERR_MSG);
        }
        curveTo((float) point.getX(), (float) this.currentPoint.getY(), f, f2, f3, f4);
    }

    public void curveFromTo(float f, float f2, float f3, float f4) {
        if (this.currentPoint == null) {
            throw new RuntimeException(START_PATH_ERR_MSG);
        }
        curveTo(f, f2, f3, f4, f3, f4);
    }

    public void rectangle(Rectangle rectangle) {
        rectangle(rectangle.getX(), rectangle.getY(), rectangle.getWidth(), rectangle.getHeight());
    }

    public void rectangle(float f, float f2, float f3, float f4) {
        moveTo(f, f2);
        float f5 = f3 + f;
        lineTo(f5, f2);
        float f6 = f2 + f4;
        lineTo(f5, f6);
        lineTo(f, f6);
        closeSubpath();
    }

    public void closeSubpath() {
        if (isEmpty()) {
            return;
        }
        Subpath lastSubpath = getLastSubpath();
        lastSubpath.setClosed(true);
        Point startPoint = lastSubpath.getStartPoint();
        moveTo((float) startPoint.getX(), (float) startPoint.getY());
    }

    public void closeAllSubpaths() {
        Iterator<Subpath> it = this.subpaths.iterator();
        while (it.hasNext()) {
            it.next().setClosed(true);
        }
    }

    public List<Integer> replaceCloseWithLine() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Subpath subpath : this.subpaths) {
            if (subpath.isClosed()) {
                subpath.setClosed(false);
                subpath.addSegment(new Line(subpath.getLastPoint(), subpath.getStartPoint()));
                arrayList.add(Integer.valueOf(i));
            }
            i++;
        }
        return arrayList;
    }

    public boolean isEmpty() {
        return this.subpaths.size() == 0;
    }

    private Subpath getLastSubpath() {
        return this.subpaths.get(r0.size() - 1);
    }
}
