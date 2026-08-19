package com.itextpdf.svg.renderers.path;

import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;

/* JADX INFO: loaded from: classes6.dex */
public interface IPathShape {
    void draw(PdfCanvas pdfCanvas);

    Point getEndingPoint();

    Rectangle getPathShapeRectangle(Point point);

    boolean isRelative();

    void setCoordinates(String[] strArr, Point point);
}
