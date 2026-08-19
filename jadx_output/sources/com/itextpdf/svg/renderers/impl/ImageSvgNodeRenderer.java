package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;

/* JADX INFO: loaded from: classes6.dex */
public class ImageSvgNodeRenderer extends AbstractSvgNodeRenderer {
    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        return null;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        ImageSvgNodeRenderer imageSvgNodeRenderer = new ImageSvgNodeRenderer();
        deepCopyAttributesAndStyles(imageSvgNodeRenderer);
        return imageSvgNodeRenderer;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:75:0x0154. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0151  */
    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void doDraw(com.itextpdf.svg.renderers.SvgDrawContext r11) {
        /*
            Method dump skipped, instruction units count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.svg.renderers.impl.ImageSvgNodeRenderer.doDraw(com.itextpdf.svg.renderers.SvgDrawContext):void");
    }
}
