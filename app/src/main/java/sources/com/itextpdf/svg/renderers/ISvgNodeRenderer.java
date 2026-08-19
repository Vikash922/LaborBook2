package com.itextpdf.svg.renderers;

import com.itextpdf.kernel.geom.Rectangle;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public interface ISvgNodeRenderer {
    ISvgNodeRenderer createDeepCopy();

    void draw(SvgDrawContext svgDrawContext);

    String getAttribute(String str);

    Map<String, String> getAttributeMapCopy();

    Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext);

    ISvgNodeRenderer getParent();

    void setAttribute(String str, String str2);

    void setAttributesAndStyles(Map<String, String> map);

    void setParent(ISvgNodeRenderer iSvgNodeRenderer);
}
