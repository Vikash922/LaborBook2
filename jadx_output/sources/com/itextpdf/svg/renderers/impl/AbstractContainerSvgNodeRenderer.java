package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.renderers.SvgDrawContext;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractContainerSvgNodeRenderer extends AbstractBranchSvgNodeRenderer {
    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    public boolean canConstructViewPort() {
        return true;
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected boolean canElementFill() {
        return false;
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer, com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected void doDraw(SvgDrawContext svgDrawContext) {
        svgDrawContext.addViewPort(calculateViewPort(svgDrawContext));
        super.doDraw(svgDrawContext);
    }

    Rectangle calculateViewPort(SvgDrawContext svgDrawContext) {
        Rectangle currentViewPort = svgDrawContext.getCurrentViewPort();
        float x = currentViewPort.getX();
        float y = currentViewPort.getY();
        float width = currentViewPort.getWidth();
        float height = currentViewPort.getHeight();
        if (this.attributesAndStyles != null) {
            if (this.attributesAndStyles.containsKey(SvgConstants.Attributes.f3330X)) {
                x = CssDimensionParsingUtils.parseAbsoluteLength(this.attributesAndStyles.get(SvgConstants.Attributes.f3330X));
            }
            if (this.attributesAndStyles.containsKey(SvgConstants.Attributes.f3333Y)) {
                y = CssDimensionParsingUtils.parseAbsoluteLength(this.attributesAndStyles.get(SvgConstants.Attributes.f3333Y));
            }
            if (this.attributesAndStyles.containsKey("width")) {
                width = CssDimensionParsingUtils.parseAbsoluteLength(this.attributesAndStyles.get("width"));
            }
            if (this.attributesAndStyles.containsKey("height")) {
                height = CssDimensionParsingUtils.parseAbsoluteLength(this.attributesAndStyles.get("height"));
            }
        }
        return new Rectangle(x, y, width, height);
    }
}
