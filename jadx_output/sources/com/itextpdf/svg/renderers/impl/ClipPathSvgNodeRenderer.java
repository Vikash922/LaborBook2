package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;

/* JADX INFO: loaded from: classes6.dex */
public class ClipPathSvgNodeRenderer extends AbstractBranchSvgNodeRenderer {
    private AbstractSvgNodeRenderer clippedRenderer;

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        return null;
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    void preDraw(SvgDrawContext svgDrawContext) {
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer, com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        AbstractBranchSvgNodeRenderer clipPathSvgNodeRenderer = new ClipPathSvgNodeRenderer();
        deepCopyAttributesAndStyles(clipPathSvgNodeRenderer);
        deepCopyChildren(clipPathSvgNodeRenderer);
        return clipPathSvgNodeRenderer;
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer, com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected void doDraw(SvgDrawContext svgDrawContext) {
        PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
        for (ISvgNodeRenderer iSvgNodeRenderer : getChildren()) {
            currentCanvas.saveState();
            boolean z = iSvgNodeRenderer instanceof AbstractSvgNodeRenderer;
            if (z) {
                ((AbstractSvgNodeRenderer) iSvgNodeRenderer).setPartOfClipPath(true);
            }
            iSvgNodeRenderer.draw(svgDrawContext);
            if (z) {
                ((AbstractSvgNodeRenderer) iSvgNodeRenderer).setPartOfClipPath(false);
            }
            AbstractSvgNodeRenderer abstractSvgNodeRenderer = this.clippedRenderer;
            if (abstractSvgNodeRenderer != null) {
                abstractSvgNodeRenderer.preDraw(svgDrawContext);
                this.clippedRenderer.doDraw(svgDrawContext);
                this.clippedRenderer.postDraw(svgDrawContext);
            }
            currentCanvas.restoreState();
        }
    }

    public void setClippedRenderer(AbstractSvgNodeRenderer abstractSvgNodeRenderer) {
        this.clippedRenderer = abstractSvgNodeRenderer;
    }
}
