package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.colors.WebColors;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import com.itextpdf.svg.renderers.INoDrawSvgNodeRenderer;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;

/* JADX INFO: loaded from: classes6.dex */
public class StopSvgNodeRenderer extends AbstractBranchSvgNodeRenderer implements INoDrawSvgNodeRenderer {
    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        return null;
    }

    public double getOffset() {
        Double dValueOf;
        String attribute = getAttribute("offset");
        if (CssTypesValidationUtils.isPercentageValue(attribute)) {
            dValueOf = Double.valueOf(CssDimensionParsingUtils.parseRelativeValue(attribute, 1.0f));
        } else {
            dValueOf = CssTypesValidationUtils.isNumber(attribute) ? CssDimensionParsingUtils.parseDouble(attribute) : null;
        }
        double dDoubleValue = dValueOf != null ? dValueOf.doubleValue() : 0.0d;
        if (dDoubleValue > 1.0d) {
            return 1.0d;
        }
        if (dDoubleValue > 0.0d) {
            return dDoubleValue;
        }
        return 0.0d;
    }

    public float[] getStopColor() {
        String attribute = getAttribute(SvgConstants.Tags.STOP_COLOR);
        float[] rGBAColor = attribute != null ? WebColors.getRGBAColor(attribute) : null;
        return rGBAColor == null ? WebColors.getRGBAColor("black") : rGBAColor;
    }

    public float getStopOpacity() {
        String attribute = getAttribute(SvgConstants.Tags.STOP_OPACITY);
        Float f = (attribute == null || "none".equalsIgnoreCase(attribute)) ? null : CssDimensionParsingUtils.parseFloat(attribute);
        if (f != null) {
            return f.floatValue();
        }
        return 1.0f;
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer, com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        StopSvgNodeRenderer stopSvgNodeRenderer = new StopSvgNodeRenderer();
        deepCopyAttributesAndStyles(stopSvgNodeRenderer);
        return stopSvgNodeRenderer;
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer, com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected void doDraw(SvgDrawContext svgDrawContext) {
        throw new UnsupportedOperationException(SvgExceptionMessageConstant.DRAW_NO_DRAW);
    }
}
