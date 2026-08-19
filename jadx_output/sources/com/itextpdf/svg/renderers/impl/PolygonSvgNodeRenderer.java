package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.Point;
import com.itextpdf.svg.renderers.IMarkerCapable;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;

/* JADX INFO: loaded from: classes6.dex */
public class PolygonSvgNodeRenderer extends PolylineSvgNodeRenderer implements IMarkerCapable {
    @Override // com.itextpdf.svg.renderers.impl.PolylineSvgNodeRenderer
    protected void setPoints(String str) {
        super.setPoints(str);
        connectPoints();
    }

    private void connectPoints() {
        if (this.points.size() < 2) {
            return;
        }
        Point point = this.points.get(0);
        Point point2 = this.points.get(this.points.size() - 1);
        if (Double.compare(point.f2960x, point2.f2960x) == 0 && Double.compare(point.f2961y, point2.f2961y) == 0) {
            return;
        }
        this.points.add(new Point(point.f2960x, point.f2961y));
    }

    @Override // com.itextpdf.svg.renderers.impl.PolylineSvgNodeRenderer, com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        PolygonSvgNodeRenderer polygonSvgNodeRenderer = new PolygonSvgNodeRenderer();
        deepCopyAttributesAndStyles(polygonSvgNodeRenderer);
        return polygonSvgNodeRenderer;
    }
}
