package com.itextpdf.svg.renderers.impl;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.colors.gradients.GradientSpreadMethod;
import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import com.itextpdf.svg.logs.SvgLogMessageConstant;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.ISvgPaintServer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import com.itextpdf.svg.utils.TransformUtils;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractGradientSvgNodeRenderer extends AbstractBranchSvgNodeRenderer implements ISvgPaintServer {
    @Override // com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer, com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    protected void doDraw(SvgDrawContext svgDrawContext) {
        throw new UnsupportedOperationException(SvgExceptionMessageConstant.DRAW_NO_DRAW);
    }

    protected boolean isObjectBoundingBoxUnits() {
        String attribute = getAttribute(SvgConstants.Attributes.GRADIENT_UNITS);
        if (attribute == null) {
            getAttribute(SvgConstants.Attributes.GRADIENT_UNITS.toLowerCase());
        }
        if (SvgConstants.Values.USER_SPACE_ON_USE.equals(attribute)) {
            return false;
        }
        if (attribute == null || SvgConstants.Values.OBJECT_BOUNDING_BOX.equals(attribute)) {
            return true;
        }
        LoggerFactory.getLogger(getClass()).warn(MessageFormatUtil.format(SvgLogMessageConstant.GRADIENT_INVALID_GRADIENT_UNITS_LOG, attribute));
        return true;
    }

    protected AffineTransform getGradientTransform() {
        String attribute = getAttribute(SvgConstants.Attributes.GRADIENT_TRANSFORM);
        if (attribute == null) {
            attribute = getAttribute(SvgConstants.Attributes.GRADIENT_TRANSFORM.toLowerCase());
        }
        if (attribute == null || attribute.isEmpty()) {
            return null;
        }
        return TransformUtils.parseTransform(attribute);
    }

    protected List<StopSvgNodeRenderer> getChildStopRenderers() {
        ArrayList arrayList = new ArrayList();
        for (ISvgNodeRenderer iSvgNodeRenderer : getChildren()) {
            if (iSvgNodeRenderer instanceof StopSvgNodeRenderer) {
                arrayList.add((StopSvgNodeRenderer) iSvgNodeRenderer);
            }
        }
        return arrayList;
    }

    protected GradientSpreadMethod parseSpreadMethod() {
        String attribute = getAttribute(SvgConstants.Attributes.SPREAD_METHOD);
        if (attribute == null) {
            attribute = getAttribute(SvgConstants.Attributes.SPREAD_METHOD.toLowerCase());
        }
        if (attribute == null) {
            return GradientSpreadMethod.PAD;
        }
        attribute.hashCode();
        switch (attribute) {
            case "repeat":
                break;
            case "pad":
                break;
            case "reflect":
                break;
            default:
                LoggerFactory.getLogger(getClass()).warn(MessageFormatUtil.format(SvgLogMessageConstant.GRADIENT_INVALID_SPREAD_METHOD_LOG, attribute));
                break;
        }
        return GradientSpreadMethod.PAD;
    }
}
