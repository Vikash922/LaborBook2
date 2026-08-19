package com.itextpdf.kernel.pdf.canvas.parser.filter;

import com.itextpdf.kernel.geom.LineSegment;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.geom.Vector;
import com.itextpdf.kernel.pdf.canvas.parser.EventType;
import com.itextpdf.kernel.pdf.canvas.parser.data.IEventData;
import com.itextpdf.kernel.pdf.canvas.parser.data.TextRenderInfo;

/* JADX INFO: loaded from: classes6.dex */
public class TextRegionEventFilter implements IEventFilter {
    private final Rectangle filterRect;

    public TextRegionEventFilter(Rectangle rectangle) {
        this.filterRect = rectangle;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.filter.IEventFilter
    public boolean accept(IEventData iEventData, EventType eventType) {
        if (!eventType.equals(EventType.RENDER_TEXT)) {
            return false;
        }
        LineSegment baseline = ((TextRenderInfo) iEventData).getBaseline();
        Vector startPoint = baseline.getStartPoint();
        Vector endPoint = baseline.getEndPoint();
        float f = startPoint.get(0);
        float f2 = startPoint.get(1);
        float f3 = endPoint.get(0);
        float f4 = endPoint.get(1);
        Rectangle rectangle = this.filterRect;
        return rectangle == null || rectangle.intersectsLine(f, f2, f3, f4);
    }
}
