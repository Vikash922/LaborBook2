package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class RectangleSvgNodeRenderer extends AbstractSvgNodeRenderer {
    private float height;
    private float width;

    /* JADX INFO: renamed from: x */
    private float f3349x = 0.0f;

    /* JADX INFO: renamed from: y */
    private float f3350y = 0.0f;
    private boolean rxPresent = false;
    private boolean ryPresent = false;

    /* JADX INFO: renamed from: rx */
    private float f3347rx = 0.0f;

    /* JADX INFO: renamed from: ry */
    private float f3348ry = 0.0f;

    float checkRadius(float f, float f2) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        float f3 = f2 / 2.0f;
        return f > f3 ? f3 : f;
    }

    public RectangleSvgNodeRenderer() {
        this.attributesAndStyles = new HashMap();
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected void doDraw(SvgDrawContext svgDrawContext) {
        PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
        currentCanvas.writeLiteral("% rect\n");
        setParameters();
        boolean z = this.rxPresent;
        boolean z2 = (z && !this.ryPresent) || (!z && this.ryPresent);
        if (!z && !this.ryPresent) {
            currentCanvas.rectangle(this.f3349x, this.f3350y, this.width, this.height);
            return;
        }
        if (z2) {
            currentCanvas.writeLiteral("% circle rounded rect\n");
            currentCanvas.roundRectangle(this.f3349x, this.f3350y, this.width, this.height, findCircularRadius(this.f3347rx, this.f3348ry, this.width, this.height));
            return;
        }
        currentCanvas.writeLiteral("% ellipse rounded rect\n");
        currentCanvas.moveTo(this.f3349x + this.f3347rx, this.f3350y);
        currentCanvas.lineTo((this.f3349x + this.width) - this.f3347rx, this.f3350y);
        float f = this.f3349x;
        float f2 = this.width;
        float f3 = (f + f2) - (this.f3347rx * 2.0f);
        float f4 = this.f3350y;
        arc(f3, f4, f + f2, f4 + (this.f3348ry * 2.0f), -90.0f, 90.0f, currentCanvas);
        currentCanvas.lineTo(this.f3349x + this.width, (this.f3350y + this.height) - this.f3348ry);
        float f5 = this.f3349x;
        float f6 = this.width;
        float f7 = this.f3350y;
        float f8 = this.height;
        arc(f5 + f6, (f7 + f8) - (this.f3348ry * 2.0f), (f5 + f6) - (this.f3347rx * 2.0f), f8 + f7, 0.0f, 90.0f, currentCanvas);
        currentCanvas.lineTo(this.f3349x + this.f3347rx, this.f3350y + this.height);
        float f9 = this.f3349x;
        float f10 = f9 + (this.f3347rx * 2.0f);
        float f11 = this.f3350y;
        float f12 = this.height;
        arc(f10, f11 + f12, f9, (f11 + f12) - (this.f3348ry * 2.0f), 90.0f, 90.0f, currentCanvas);
        currentCanvas.lineTo(this.f3349x, this.f3350y + this.f3348ry);
        float f13 = this.f3349x;
        float f14 = this.f3350y;
        arc(f13, f14 + (this.f3348ry * 2.0f), f13 + (this.f3347rx * 2.0f), f14, 180.0f, 90.0f, currentCanvas);
        currentCanvas.closePath();
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        setParameters();
        return new Rectangle(this.f3349x, this.f3350y, this.width, this.height);
    }

    private void setParameters() {
        if (getAttribute(SvgConstants.Attributes.f3330X) != null) {
            this.f3349x = CssDimensionParsingUtils.parseAbsoluteLength(getAttribute(SvgConstants.Attributes.f3330X));
        }
        if (getAttribute(SvgConstants.Attributes.f3333Y) != null) {
            this.f3350y = CssDimensionParsingUtils.parseAbsoluteLength(getAttribute(SvgConstants.Attributes.f3333Y));
        }
        this.width = CssDimensionParsingUtils.parseAbsoluteLength(getAttribute("width"));
        this.height = CssDimensionParsingUtils.parseAbsoluteLength(getAttribute("height"));
        if (this.attributesAndStyles.containsKey(SvgConstants.Attributes.f3328RX)) {
            this.f3347rx = checkRadius(CssDimensionParsingUtils.parseAbsoluteLength(getAttribute(SvgConstants.Attributes.f3328RX)), this.width);
            this.rxPresent = true;
        }
        if (this.attributesAndStyles.containsKey(SvgConstants.Attributes.f3329RY)) {
            this.f3348ry = checkRadius(CssDimensionParsingUtils.parseAbsoluteLength(getAttribute(SvgConstants.Attributes.f3329RY)), this.height);
            this.ryPresent = true;
        }
    }

    private void arc(float f, float f2, float f3, float f4, float f5, float f6, PdfCanvas pdfCanvas) {
        List<double[]> listBezierArc = PdfCanvas.bezierArc(f, f2, f3, f4, f5, f6);
        if (listBezierArc.isEmpty()) {
            return;
        }
        for (int i = 0; i < listBezierArc.size(); i++) {
            double[] dArr = listBezierArc.get(i);
            pdfCanvas.curveTo(dArr[2], dArr[3], dArr[4], dArr[5], dArr[6], dArr[7]);
        }
    }

    float findCircularRadius(float f, float f2, float f3, float f4) {
        return Math.min(Math.min(f3, f4) / 2.0f, Math.max(f, f2));
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        RectangleSvgNodeRenderer rectangleSvgNodeRenderer = new RectangleSvgNodeRenderer();
        deepCopyAttributesAndStyles(rectangleSvgNodeRenderer);
        return rectangleSvgNodeRenderer;
    }
}
