package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import com.itextpdf.svg.renderers.INoDrawSvgNodeRenderer;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;

/* JADX INFO: loaded from: classes6.dex */
public class DefsSvgNodeRenderer extends AbstractBranchSvgNodeRenderer implements INoDrawSvgNodeRenderer {
    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        return null;
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer, com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected void doDraw(SvgDrawContext svgDrawContext) {
        throw new UnsupportedOperationException(SvgExceptionMessageConstant.DRAW_NO_DRAW);
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer, com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        DefsSvgNodeRenderer defsSvgNodeRenderer = new DefsSvgNodeRenderer();
        deepCopyAttributesAndStyles(defsSvgNodeRenderer);
        return defsSvgNodeRenderer;
    }
}
