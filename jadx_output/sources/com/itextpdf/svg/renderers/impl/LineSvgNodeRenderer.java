package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.geom.Vector;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.svg.MarkerVertexType;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.renderers.IMarkerCapable;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import com.itextpdf.svg.utils.SvgCoordinateUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class LineSvgNodeRenderer extends AbstractSvgNodeRenderer implements IMarkerCapable {

    /* JADX INFO: renamed from: x1 */
    private float f3343x1 = 0.0f;

    /* JADX INFO: renamed from: y1 */
    private float f3345y1 = 0.0f;

    /* JADX INFO: renamed from: x2 */
    private float f3344x2 = 0.0f;

    /* JADX INFO: renamed from: y2 */
    private float f3346y2 = 0.0f;

    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected boolean canElementFill() {
        return false;
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    public void doDraw(SvgDrawContext svgDrawContext) {
        PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
        currentCanvas.writeLiteral("% line\n");
        if (setParameterss()) {
            currentCanvas.moveTo(this.f3343x1, this.f3345y1).lineTo(this.f3344x2, this.f3346y2);
        }
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        if (setParameterss()) {
            return new Rectangle(Math.min(this.f3343x1, this.f3344x2), Math.min(this.f3345y1, this.f3346y2), Math.abs(this.f3343x1 - this.f3344x2), Math.abs(this.f3345y1 - this.f3346y2));
        }
        return null;
    }

    float getAttribute(Map<String, String> map, String str) {
        String str2 = map.get(str);
        if (str2 == null || str2.isEmpty()) {
            return 0.0f;
        }
        return CssDimensionParsingUtils.parseAbsoluteLength(map.get(str));
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        LineSvgNodeRenderer lineSvgNodeRenderer = new LineSvgNodeRenderer();
        deepCopyAttributesAndStyles(lineSvgNodeRenderer);
        return lineSvgNodeRenderer;
    }

    @Override // com.itextpdf.svg.renderers.IMarkerCapable
    public void drawMarker(SvgDrawContext svgDrawContext, MarkerVertexType markerVertexType) {
        String str;
        String str2;
        if (MarkerVertexType.MARKER_START.equals(markerVertexType)) {
            str = this.attributesAndStyles.get(SvgConstants.Attributes.f3331X1);
            str2 = this.attributesAndStyles.get(SvgConstants.Attributes.f3334Y1);
        } else if (MarkerVertexType.MARKER_END.equals(markerVertexType)) {
            str = this.attributesAndStyles.get(SvgConstants.Attributes.f3332X2);
            str2 = this.attributesAndStyles.get(SvgConstants.Attributes.f3335Y2);
        } else {
            str = null;
            str2 = null;
        }
        if (str == null || str2 == null) {
            return;
        }
        MarkerSvgNodeRenderer.drawMarker(svgDrawContext, str, str2, markerVertexType, this);
    }

    @Override // com.itextpdf.svg.renderers.IMarkerCapable
    public double getAutoOrientAngle(MarkerSvgNodeRenderer markerSvgNodeRenderer, boolean z) {
        Vector vector = new Vector(getAttribute(this.attributesAndStyles, SvgConstants.Attributes.f3332X2) - getAttribute(this.attributesAndStyles, SvgConstants.Attributes.f3331X1), getAttribute(this.attributesAndStyles, SvgConstants.Attributes.f3335Y2) - getAttribute(this.attributesAndStyles, SvgConstants.Attributes.f3334Y1), 0.0f);
        double dCalculateAngleBetweenTwoVectors = SvgCoordinateUtils.calculateAngleBetweenTwoVectors(new Vector(1.0f, 0.0f, 0.0f), vector);
        return (vector.get(1) < 0.0f || z) ? dCalculateAngleBetweenTwoVectors * (-1.0d) : dCalculateAngleBetweenTwoVectors;
    }

    private boolean setParameterss() {
        if (this.attributesAndStyles.size() <= 0) {
            return false;
        }
        if (this.attributesAndStyles.containsKey(SvgConstants.Attributes.f3331X1)) {
            this.f3343x1 = getAttribute(this.attributesAndStyles, SvgConstants.Attributes.f3331X1);
        }
        if (this.attributesAndStyles.containsKey(SvgConstants.Attributes.f3334Y1)) {
            this.f3345y1 = getAttribute(this.attributesAndStyles, SvgConstants.Attributes.f3334Y1);
        }
        if (this.attributesAndStyles.containsKey(SvgConstants.Attributes.f3332X2)) {
            this.f3344x2 = getAttribute(this.attributesAndStyles, SvgConstants.Attributes.f3332X2);
        }
        if (!this.attributesAndStyles.containsKey(SvgConstants.Attributes.f3335Y2)) {
            return true;
        }
        this.f3346y2 = getAttribute(this.attributesAndStyles, SvgConstants.Attributes.f3335Y2);
        return true;
    }
}
