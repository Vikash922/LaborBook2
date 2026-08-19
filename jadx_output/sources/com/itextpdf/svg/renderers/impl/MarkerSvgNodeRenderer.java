package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.svg.MarkerVertexType;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.logs.SvgLogMessageConstant;
import com.itextpdf.svg.renderers.IMarkerCapable;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import com.itextpdf.svg.utils.SvgTextUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class MarkerSvgNodeRenderer extends AbstractBranchSvgNodeRenderer {
    private static final float DEFAULT_MARKER_HEIGHT = 2.25f;
    private static final float DEFAULT_MARKER_WIDTH = 2.25f;
    private static final float DEFAULT_REF_X = 0.0f;
    private static final float DEFAULT_REF_Y = 0.0f;

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        return null;
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer, com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        AbstractBranchSvgNodeRenderer markerSvgNodeRenderer = new MarkerSvgNodeRenderer();
        deepCopyAttributesAndStyles(markerSvgNodeRenderer);
        deepCopyChildren(markerSvgNodeRenderer);
        return markerSvgNodeRenderer;
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    void preDraw(SvgDrawContext svgDrawContext) {
        super.preDraw(svgDrawContext);
        float[] markerWidthHeightValues = getMarkerWidthHeightValues();
        float f = markerWidthHeightValues[0];
        float f2 = markerWidthHeightValues[1];
        String attribute = getAttribute(SvgConstants.Attributes.f3330X);
        String attribute2 = getAttribute(SvgConstants.Attributes.f3333Y);
        svgDrawContext.addViewPort(new Rectangle(attribute == null ? 0.0f : CssDimensionParsingUtils.parseAbsoluteLength(attribute), attribute2 != null ? CssDimensionParsingUtils.parseAbsoluteLength(attribute2) : 0.0f, f, f2));
    }

    void applyMarkerAttributes(SvgDrawContext svgDrawContext) {
        applyRotation(svgDrawContext);
        applyUserSpaceScaling(svgDrawContext);
        applyCoordinatesTranslation(svgDrawContext);
    }

    static void drawMarker(SvgDrawContext svgDrawContext, String str, String str2, MarkerVertexType markerVertexType, AbstractSvgNodeRenderer abstractSvgNodeRenderer) {
        ISvgNodeRenderer namedObject = svgDrawContext.getNamedObject(SvgTextUtil.filterReferenceValue(abstractSvgNodeRenderer.attributesAndStyles.get(markerVertexType.toString())));
        ISvgNodeRenderer iSvgNodeRendererCreateDeepCopy = namedObject == null ? null : namedObject.createDeepCopy();
        if ((iSvgNodeRendererCreateDeepCopy instanceof MarkerSvgNodeRenderer) && markerWidthHeightAreCorrect((MarkerSvgNodeRenderer) iSvgNodeRendererCreateDeepCopy)) {
            iSvgNodeRendererCreateDeepCopy.setParent(abstractSvgNodeRenderer);
            iSvgNodeRendererCreateDeepCopy.setAttribute(SvgConstants.Tags.MARKER, markerVertexType.toString());
            iSvgNodeRendererCreateDeepCopy.setAttribute(SvgConstants.Attributes.f3330X, str);
            iSvgNodeRendererCreateDeepCopy.setAttribute(SvgConstants.Attributes.f3333Y, str2);
            iSvgNodeRendererCreateDeepCopy.draw(svgDrawContext);
            iSvgNodeRendererCreateDeepCopy.setParent(null);
        }
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer
    protected void applyViewBox(SvgDrawContext svgDrawContext) {
        if (this.attributesAndStyles != null) {
            float[] markerWidthHeightValues = getMarkerWidthHeightValues();
            super.calculateAndApplyViewBox(svgDrawContext, getViewBoxValues(markerWidthHeightValues[0], markerWidthHeightValues[1]), svgDrawContext.getCurrentViewPort());
        }
    }

    private float[] getMarkerWidthHeightValues() {
        float absoluteLength;
        float absoluteLength2 = 2.25f;
        if (this.attributesAndStyles.containsKey(SvgConstants.Attributes.MARKER_WIDTH)) {
            absoluteLength = CssDimensionParsingUtils.parseAbsoluteLength(this.attributesAndStyles.get(SvgConstants.Attributes.MARKER_WIDTH));
        } else {
            absoluteLength = this.attributesAndStyles.containsKey(SvgConstants.Attributes.MARKER_WIDTH.toLowerCase()) ? CssDimensionParsingUtils.parseAbsoluteLength(this.attributesAndStyles.get(SvgConstants.Attributes.MARKER_WIDTH.toLowerCase())) : 2.25f;
        }
        if (this.attributesAndStyles.containsKey(SvgConstants.Attributes.MARKER_HEIGHT)) {
            absoluteLength2 = CssDimensionParsingUtils.parseAbsoluteLength(this.attributesAndStyles.get(SvgConstants.Attributes.MARKER_HEIGHT));
        } else if (this.attributesAndStyles.containsKey(SvgConstants.Attributes.MARKER_HEIGHT.toLowerCase())) {
            absoluteLength2 = CssDimensionParsingUtils.parseAbsoluteLength(this.attributesAndStyles.get(SvgConstants.Attributes.MARKER_HEIGHT.toLowerCase()));
        }
        return new float[]{absoluteLength, absoluteLength2};
    }

    private static boolean markerWidthHeightAreCorrect(MarkerSvgNodeRenderer markerSvgNodeRenderer) {
        boolean z;
        Logger logger = LoggerFactory.getLogger((Class<?>) MarkerSvgNodeRenderer.class);
        String attribute = markerSvgNodeRenderer.getAttribute(SvgConstants.Attributes.MARKER_WIDTH);
        if (attribute == null) {
            attribute = markerSvgNodeRenderer.getAttribute(SvgConstants.Attributes.MARKER_WIDTH.toLowerCase());
        }
        String attribute2 = markerSvgNodeRenderer.getAttribute(SvgConstants.Attributes.MARKER_HEIGHT);
        if (attribute2 == null) {
            attribute2 = markerSvgNodeRenderer.getAttribute(SvgConstants.Attributes.MARKER_HEIGHT.toLowerCase());
        }
        if (attribute != null) {
            float absoluteLength = CssDimensionParsingUtils.parseAbsoluteLength(attribute);
            if (absoluteLength == 0.0f) {
                logger.warn(SvgLogMessageConstant.MARKER_WIDTH_IS_ZERO_VALUE);
            } else {
                if (absoluteLength < 0.0f) {
                    logger.warn(SvgLogMessageConstant.MARKER_WIDTH_IS_NEGATIVE_VALUE);
                }
                z = true;
            }
            z = false;
        } else {
            z = true;
        }
        if (attribute2 != null) {
            float absoluteLength2 = CssDimensionParsingUtils.parseAbsoluteLength(attribute2);
            if (absoluteLength2 == 0.0f) {
                logger.warn(SvgLogMessageConstant.MARKER_HEIGHT_IS_ZERO_VALUE);
                return false;
            }
            if (absoluteLength2 < 0.0f) {
                logger.warn(SvgLogMessageConstant.MARKER_HEIGHT_IS_NEGATIVE_VALUE);
                return false;
            }
        }
        return z;
    }

    private void applyRotation(SvgDrawContext svgDrawContext) {
        double autoOrientAngle;
        if (this.attributesAndStyles.containsKey(SvgConstants.Attributes.ORIENT)) {
            String str = this.attributesAndStyles.get(SvgConstants.Attributes.ORIENT);
            if ("auto".equals(str) || (SvgConstants.Values.AUTO_START_REVERSE.equals(str) && !SvgConstants.Attributes.MARKER_START.equals(this.attributesAndStyles.get(SvgConstants.Tags.MARKER)))) {
                autoOrientAngle = ((IMarkerCapable) getParent()).getAutoOrientAngle(this, false);
            } else if (SvgConstants.Values.AUTO_START_REVERSE.equals(str) && SvgConstants.Attributes.MARKER_START.equals(this.attributesAndStyles.get(SvgConstants.Tags.MARKER))) {
                autoOrientAngle = ((IMarkerCapable) getParent()).getAutoOrientAngle(this, true);
            } else {
                autoOrientAngle = (CssTypesValidationUtils.isAngleValue(str) || CssTypesValidationUtils.isNumber(str)) ? CssDimensionParsingUtils.parseAngle(this.attributesAndStyles.get(SvgConstants.Attributes.ORIENT)) : Double.NaN;
            }
            if (Double.isNaN(autoOrientAngle)) {
                return;
            }
            svgDrawContext.getCurrentCanvas().concatMatrix(AffineTransform.getRotateInstance(autoOrientAngle));
        }
    }

    private void applyUserSpaceScaling(SvgDrawContext svgDrawContext) {
        String attribute;
        boolean z = !this.attributesAndStyles.containsKey(SvgConstants.Attributes.MARKER_UNITS) || SvgConstants.Values.STROKEWIDTH.equals(this.attributesAndStyles.get(SvgConstants.Attributes.MARKER_UNITS));
        boolean z2 = !this.attributesAndStyles.containsKey(SvgConstants.Attributes.MARKER_UNITS.toLowerCase()) || SvgConstants.Values.STROKEWIDTH.equals(this.attributesAndStyles.get(SvgConstants.Attributes.MARKER_UNITS.toLowerCase()));
        if (z && z2 && (attribute = getParent().getAttribute(SvgConstants.Attributes.STROKE_WIDTH)) != null) {
            double height = svgDrawContext.getRootViewPort().getHeight();
            double width = svgDrawContext.getRootViewPort().getWidth();
            double dConvertPtsToPx = CssUtils.convertPtsToPx(parseAbsoluteLength(attribute, (float) CssUtils.convertPxToPts(Math.sqrt((height * height) + (width * width))), 1.0f, svgDrawContext));
            svgDrawContext.getCurrentCanvas().concatMatrix(AffineTransform.getScaleInstance(dConvertPtsToPx, dConvertPtsToPx));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void applyCoordinatesTranslation(com.itextpdf.svg.renderers.SvgDrawContext r8) {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.svg.renderers.impl.MarkerSvgNodeRenderer.applyCoordinatesTranslation(com.itextpdf.svg.renderers.SvgDrawContext):void");
    }

    private float[] getViewBoxValues(float f, float f2) {
        float[] viewBoxValues = super.getViewBoxValues();
        return viewBoxValues.length < 4 ? new float[]{0.0f, 0.0f, f, f2} : viewBoxValues;
    }
}
