package com.itextpdf.svg.renderers;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.geom.Rectangle;

/* JADX INFO: loaded from: classes6.dex */
public interface ISvgPaintServer extends INoDrawSvgNodeRenderer {
    Color createColor(SvgDrawContext svgDrawContext, Rectangle rectangle, float f, float f2);
}
