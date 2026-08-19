package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.geom.Vector;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.svg.MarkerVertexType;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import com.itextpdf.svg.exceptions.SvgProcessingException;
import com.itextpdf.svg.renderers.IMarkerCapable;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import com.itextpdf.svg.utils.SvgCoordinateUtils;
import com.itextpdf.svg.utils.SvgCssUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PolylineSvgNodeRenderer extends AbstractSvgNodeRenderer implements IMarkerCapable {
    protected List<Point> points = new ArrayList();

    protected List<Point> getPoints() {
        return this.points;
    }

    protected void setPoints(String str) {
        if (str == null) {
            return;
        }
        List<String> listSplitValueList = SvgCssUtils.splitValueList(str);
        if (listSplitValueList.size() % 2 != 0) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.POINTS_ATTRIBUTE_INVALID_LIST).setMessageParams(str);
        }
        this.points.clear();
        for (int i = 0; i < listSplitValueList.size(); i += 2) {
            this.points.add(new Point(CssDimensionParsingUtils.parseAbsoluteLength(listSplitValueList.get(i)), CssDimensionParsingUtils.parseAbsoluteLength(listSplitValueList.get(i + 1))));
        }
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        setPoints(getAttribute(SvgConstants.Attributes.POINTS));
        if (this.points.size() <= 1) {
            return null;
        }
        Point point = this.points.get(0);
        double x = point.getX();
        double y = point.getY();
        double dMin = y;
        double dMin2 = x;
        for (int i = 1; i < this.points.size(); i++) {
            Point point2 = this.points.get(i);
            double x2 = point2.getX();
            dMin2 = Math.min(dMin2, x2);
            x = Math.max(x, x2);
            double y2 = point2.getY();
            dMin = Math.min(dMin, y2);
            y = Math.max(y, y2);
        }
        return new Rectangle((float) dMin2, (float) dMin, (float) (x - dMin2), (float) (y - dMin));
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected void doDraw(SvgDrawContext svgDrawContext) {
        setPoints(this.attributesAndStyles.containsKey(SvgConstants.Attributes.POINTS) ? this.attributesAndStyles.get(SvgConstants.Attributes.POINTS) : null);
        PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
        currentCanvas.writeLiteral("% polyline\n");
        if (this.points.size() > 1) {
            Point point = this.points.get(0);
            currentCanvas.moveTo(point.getX(), point.getY());
            for (int i = 1; i < this.points.size(); i++) {
                Point point2 = this.points.get(i);
                currentCanvas.lineTo(point2.getX(), point2.getY());
            }
        }
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        PolylineSvgNodeRenderer polylineSvgNodeRenderer = new PolylineSvgNodeRenderer();
        deepCopyAttributesAndStyles(polylineSvgNodeRenderer);
        return polylineSvgNodeRenderer;
    }

    @Override // com.itextpdf.svg.renderers.IMarkerCapable
    public void drawMarker(SvgDrawContext svgDrawContext, MarkerVertexType markerVertexType) {
        Point point;
        if (MarkerVertexType.MARKER_START.equals(markerVertexType)) {
            point = this.points.get(0);
        } else if (MarkerVertexType.MARKER_END.equals(markerVertexType)) {
            point = this.points.get(r0.size() - 1);
        } else {
            point = null;
        }
        if (point != null) {
            MarkerSvgNodeRenderer.drawMarker(svgDrawContext, SvgCssUtils.convertDoubleToString(CssUtils.convertPtsToPx(point.f2960x)), SvgCssUtils.convertDoubleToString(CssUtils.convertPtsToPx(point.f2961y)), markerVertexType, this);
        }
    }

    @Override // com.itextpdf.svg.renderers.IMarkerCapable
    public double getAutoOrientAngle(MarkerSvgNodeRenderer markerSvgNodeRenderer, boolean z) {
        Vector vector;
        if (this.points.size() <= 1) {
            return 0.0d;
        }
        Vector vector2 = new Vector(0.0f, 0.0f, 0.0f);
        if (SvgConstants.Attributes.MARKER_END.equals(markerSvgNodeRenderer.attributesAndStyles.get(SvgConstants.Tags.MARKER))) {
            List<Point> list = this.points;
            Point point = list.get(list.size() - 1);
            Point point2 = this.points.get(r0.size() - 2);
            vector = new Vector((float) (point.getX() - point2.getX()), (float) (point.getY() - point2.getY()), 0.0f);
        } else {
            if (SvgConstants.Attributes.MARKER_START.equals(markerSvgNodeRenderer.attributesAndStyles.get(SvgConstants.Tags.MARKER))) {
                Point point3 = this.points.get(0);
                Point point4 = this.points.get(1);
                vector = new Vector((float) (point4.getX() - point3.getX()), (float) (point4.getY() - point3.getY()), 0.0f);
            }
            double dCalculateAngleBetweenTwoVectors = SvgCoordinateUtils.calculateAngleBetweenTwoVectors(new Vector(1.0f, 0.0f, 0.0f), vector2);
            return (vector2.get(1) >= 0.0f || z) ? dCalculateAngleBetweenTwoVectors * (-1.0d) : dCalculateAngleBetweenTwoVectors;
        }
        vector2 = vector;
        double dCalculateAngleBetweenTwoVectors2 = SvgCoordinateUtils.calculateAngleBetweenTwoVectors(new Vector(1.0f, 0.0f, 0.0f), vector2);
        if (vector2.get(1) >= 0.0f) {
        }
    }
}
