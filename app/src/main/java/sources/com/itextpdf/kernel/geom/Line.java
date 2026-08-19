package com.itextpdf.kernel.geom;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class Line implements IShape {

    /* JADX INFO: renamed from: p1 */
    private final Point f2938p1;

    /* JADX INFO: renamed from: p2 */
    private final Point f2939p2;

    public Line() {
        this(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public Line(float f, float f2, float f3, float f4) {
        this.f2938p1 = new Point(f, f2);
        this.f2939p2 = new Point(f3, f4);
    }

    public Line(Point point, Point point2) {
        this((float) point.getX(), (float) point.getY(), (float) point2.getX(), (float) point2.getY());
    }

    @Override // com.itextpdf.kernel.geom.IShape
    public List<Point> getBasePoints() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(this.f2938p1);
        arrayList.add(this.f2939p2);
        return arrayList;
    }
}
