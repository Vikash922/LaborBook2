package com.itextpdf.svg.renderers.impl;

import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;

/* JADX INFO: loaded from: classes6.dex */
public class CircleSvgNodeRenderer extends EllipseSvgNodeRenderer {
    @Override // com.itextpdf.svg.renderers.impl.EllipseSvgNodeRenderer
    protected boolean setParameters() {
        this.f3339cx = 0.0f;
        this.f3340cy = 0.0f;
        if (getAttribute(SvgConstants.Attributes.f3321CX) != null) {
            this.f3339cx = CssDimensionParsingUtils.parseAbsoluteLength(getAttribute(SvgConstants.Attributes.f3321CX));
        }
        if (getAttribute(SvgConstants.Attributes.f3322CY) != null) {
            this.f3340cy = CssDimensionParsingUtils.parseAbsoluteLength(getAttribute(SvgConstants.Attributes.f3322CY));
        }
        if (getAttribute("r") == null || CssDimensionParsingUtils.parseAbsoluteLength(getAttribute("r")) <= 0.0f) {
            return false;
        }
        this.f3341rx = CssDimensionParsingUtils.parseAbsoluteLength(getAttribute("r"));
        this.f3342ry = this.f3341rx;
        return true;
    }

    @Override // com.itextpdf.svg.renderers.impl.EllipseSvgNodeRenderer, com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        CircleSvgNodeRenderer circleSvgNodeRenderer = new CircleSvgNodeRenderer();
        deepCopyAttributesAndStyles(circleSvgNodeRenderer);
        return circleSvgNodeRenderer;
    }
}
