package com.itextpdf.svg.renderers;

import com.itextpdf.svg.MarkerVertexType;
import com.itextpdf.svg.renderers.impl.MarkerSvgNodeRenderer;

/* JADX INFO: loaded from: classes6.dex */
public interface IMarkerCapable {
    void drawMarker(SvgDrawContext svgDrawContext, MarkerVertexType markerVertexType);

    double getAutoOrientAngle(MarkerSvgNodeRenderer markerSvgNodeRenderer, boolean z);
}
