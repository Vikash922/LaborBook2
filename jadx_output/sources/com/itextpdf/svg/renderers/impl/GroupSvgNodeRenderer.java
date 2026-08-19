package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;

/* JADX INFO: loaded from: classes6.dex */
public class GroupSvgNodeRenderer extends AbstractBranchSvgNodeRenderer {
    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        return null;
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer, com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected void doDraw(SvgDrawContext svgDrawContext) {
        PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
        for (ISvgNodeRenderer iSvgNodeRenderer : getChildren()) {
            currentCanvas.saveState();
            iSvgNodeRenderer.draw(svgDrawContext);
            currentCanvas.restoreState();
        }
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer, com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        AbstractBranchSvgNodeRenderer groupSvgNodeRenderer = new GroupSvgNodeRenderer();
        deepCopyAttributesAndStyles(groupSvgNodeRenderer);
        deepCopyChildren(groupSvgNodeRenderer);
        return groupSvgNodeRenderer;
    }
}
