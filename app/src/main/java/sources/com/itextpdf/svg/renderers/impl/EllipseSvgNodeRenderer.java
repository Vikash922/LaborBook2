package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import com.itextpdf.svg.utils.DrawUtils;

/* JADX INFO: loaded from: classes6.dex */
public class EllipseSvgNodeRenderer extends AbstractSvgNodeRenderer {

    /* JADX INFO: renamed from: cx */
    float f3339cx;

    /* JADX INFO: renamed from: cy */
    float f3340cy;

    /* JADX INFO: renamed from: rx */
    float f3341rx;

    /* JADX INFO: renamed from: ry */
    float f3342ry;

    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected void doDraw(SvgDrawContext svgDrawContext) {
        PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
        currentCanvas.writeLiteral("% ellipse\n");
        if (setParameters()) {
            currentCanvas.moveTo(((double) this.f3339cx) + ((double) this.f3341rx), this.f3340cy);
            float f = this.f3339cx;
            float f2 = this.f3341rx;
            float f3 = this.f3340cy;
            float f4 = this.f3342ry;
            DrawUtils.arc(((double) f) - ((double) f2), ((double) f3) - ((double) f4), ((double) f) + ((double) f2), ((double) f4) + ((double) f3), 0.0d, 360.0d, currentCanvas);
        }
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        if (!setParameters()) {
            return null;
        }
        float f = this.f3339cx;
        float f2 = this.f3341rx;
        float f3 = this.f3340cy;
        float f4 = this.f3342ry;
        return new Rectangle(f - f2, f3 - f4, f2 + f2, f4 + f4);
    }

    protected boolean setParameters() {
        this.f3339cx = 0.0f;
        this.f3340cy = 0.0f;
        if (getAttribute(SvgConstants.Attributes.f3321CX) != null) {
            this.f3339cx = CssDimensionParsingUtils.parseAbsoluteLength(getAttribute(SvgConstants.Attributes.f3321CX));
        }
        if (getAttribute(SvgConstants.Attributes.f3322CY) != null) {
            this.f3340cy = CssDimensionParsingUtils.parseAbsoluteLength(getAttribute(SvgConstants.Attributes.f3322CY));
        }
        if (getAttribute(SvgConstants.Attributes.f3328RX) != null && CssDimensionParsingUtils.parseAbsoluteLength(getAttribute(SvgConstants.Attributes.f3328RX)) > 0.0f) {
            this.f3341rx = CssDimensionParsingUtils.parseAbsoluteLength(getAttribute(SvgConstants.Attributes.f3328RX));
            if (getAttribute(SvgConstants.Attributes.f3329RY) != null && CssDimensionParsingUtils.parseAbsoluteLength(getAttribute(SvgConstants.Attributes.f3329RY)) > 0.0f) {
                this.f3342ry = CssDimensionParsingUtils.parseAbsoluteLength(getAttribute(SvgConstants.Attributes.f3329RY));
                return true;
            }
        }
        return false;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        EllipseSvgNodeRenderer ellipseSvgNodeRenderer = new EllipseSvgNodeRenderer();
        deepCopyAttributesAndStyles(ellipseSvgNodeRenderer);
        return ellipseSvgNodeRenderer;
    }
}
