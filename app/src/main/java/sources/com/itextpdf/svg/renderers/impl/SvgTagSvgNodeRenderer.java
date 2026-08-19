package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;

/* JADX INFO: loaded from: classes6.dex */
public class SvgTagSvgNodeRenderer extends AbstractContainerSvgNodeRenderer {
    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        return null;
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer, com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        AbstractBranchSvgNodeRenderer svgTagSvgNodeRenderer = new SvgTagSvgNodeRenderer();
        deepCopyAttributesAndStyles(svgTagSvgNodeRenderer);
        deepCopyChildren(svgTagSvgNodeRenderer);
        return svgTagSvgNodeRenderer;
    }
}
