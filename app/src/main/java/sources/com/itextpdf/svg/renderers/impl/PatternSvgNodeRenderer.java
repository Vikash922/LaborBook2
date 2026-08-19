package com.itextpdf.svg.renderers.impl;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.PatternColor;
import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.canvas.PdfPatternCanvas;
import com.itextpdf.kernel.pdf.colorspace.PdfPattern;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.logs.SvgLogMessageConstant;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.ISvgPaintServer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import com.itextpdf.svg.utils.SvgCoordinateUtils;
import com.itextpdf.svg.utils.TransformUtils;
import java.util.Iterator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PatternSvgNodeRenderer extends AbstractBranchSvgNodeRenderer implements ISvgPaintServer {
    private static final double CONVERT_COEFF = 0.75d;
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) PatternSvgNodeRenderer.class);

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        return null;
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer, com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        AbstractBranchSvgNodeRenderer patternSvgNodeRenderer = new PatternSvgNodeRenderer();
        deepCopyAttributesAndStyles(patternSvgNodeRenderer);
        deepCopyChildren(patternSvgNodeRenderer);
        return patternSvgNodeRenderer;
    }

    @Override // com.itextpdf.svg.renderers.ISvgPaintServer
    public Color createColor(SvgDrawContext svgDrawContext, Rectangle rectangle, float f, float f2) {
        PatternColor patternColor = null;
        if (rectangle == null || !svgDrawContext.pushPatternId(getAttribute("id"))) {
            return null;
        }
        try {
            PdfPattern.Tiling tilingCreateTilingPattern = createTilingPattern(svgDrawContext, rectangle);
            drawPatternContent(svgDrawContext, tilingCreateTilingPattern);
            if (tilingCreateTilingPattern != null) {
                patternColor = new PatternColor(tilingCreateTilingPattern);
            }
            return patternColor;
        } finally {
            svgDrawContext.popPatternId();
        }
    }

    private PdfPattern.Tiling createTilingPattern(SvgDrawContext svgDrawContext, Rectangle rectangle) {
        double d;
        Rectangle rectangle2;
        double d2;
        double width;
        double height;
        boolean zIsObjectBoundingBoxInPatternUnits = isObjectBoundingBoxInPatternUnits();
        boolean zIsObjectBoundingBoxInPatternContentUnits = isObjectBoundingBoxInPatternContentUnits();
        Rectangle rectangleCalculateOriginalPatternRectangle = calculateOriginalPatternRectangle(svgDrawContext, zIsObjectBoundingBoxInPatternUnits);
        double width2 = rectangleCalculateOriginalPatternRectangle.getWidth();
        double height2 = rectangleCalculateOriginalPatternRectangle.getHeight();
        if (!xStepYStepAreValid(width2, height2)) {
            return null;
        }
        AffineTransform currentCanvasTransform = svgDrawContext.getCurrentCanvasTransform();
        currentCanvasTransform.concatenate(getPatternTransform());
        if (zIsObjectBoundingBoxInPatternUnits) {
            currentCanvasTransform.concatenate(getTransformToUserSpaceOnUse(rectangle));
        }
        currentCanvasTransform.translate(rectangleCalculateOriginalPatternRectangle.getX(), rectangleCalculateOriginalPatternRectangle.getY());
        float[] viewBoxValues = getViewBoxValues();
        if (viewBoxValues.length < 4) {
            if (zIsObjectBoundingBoxInPatternUnits != zIsObjectBoundingBoxInPatternContentUnits) {
                if (zIsObjectBoundingBoxInPatternContentUnits) {
                    width = ((double) rectangle.getWidth()) / CONVERT_COEFF;
                    height = ((double) rectangle.getHeight()) / CONVERT_COEFF;
                } else {
                    width = CONVERT_COEFF / ((double) rectangle.getWidth());
                    height = CONVERT_COEFF / ((double) rectangle.getHeight());
                }
                currentCanvasTransform.scale(width, height);
                width2 /= width;
                height2 /= height;
            }
            rectangle2 = new Rectangle(0.0f, 0.0f, (float) width2, (float) height2);
            d = width2;
            d2 = height2;
        } else {
            if (isViewBoxInvalid(viewBoxValues)) {
                return null;
            }
            if (zIsObjectBoundingBoxInPatternUnits) {
                double width3 = CONVERT_COEFF / ((double) rectangle.getWidth());
                double height3 = CONVERT_COEFF / ((double) rectangle.getHeight());
                currentCanvasTransform.scale(width3, height3);
                width2 /= width3;
                height2 /= height3;
            }
            double d3 = width2;
            double d4 = height2;
            Rectangle rectangle3 = new Rectangle(viewBoxValues[0], viewBoxValues[1], viewBoxValues[2], viewBoxValues[3]);
            Rectangle rectangleCalculateAppliedViewBox = calculateAppliedViewBox(rectangle3, d3, d4);
            currentCanvasTransform.translate(rectangleCalculateAppliedViewBox.getX(), rectangleCalculateAppliedViewBox.getY());
            double width4 = ((double) rectangleCalculateAppliedViewBox.getWidth()) / ((double) rectangle3.getWidth());
            double height4 = ((double) rectangleCalculateAppliedViewBox.getHeight()) / ((double) rectangle3.getHeight());
            currentCanvasTransform.scale(width4, height4);
            double d5 = d3 / width4;
            double d6 = d4 / height4;
            currentCanvasTransform.translate(-rectangle3.getX(), -rectangle3.getY());
            d = d5;
            rectangle2 = new Rectangle((float) (((double) rectangle3.getX()) - (((double) rectangleCalculateAppliedViewBox.getX()) / width4)), (float) (((double) rectangle3.getY()) - (((double) rectangleCalculateAppliedViewBox.getY()) / height4)), (float) d5, (float) d6);
            d2 = d6;
        }
        return createColoredTilingPatternInstance(currentCanvasTransform, rectangle2, d, d2);
    }

    private Rectangle calculateAppliedViewBox(Rectangle rectangle, double d, double d2) {
        String[] strArrRetrieveAlignAndMeet = retrieveAlignAndMeet();
        return SvgCoordinateUtils.applyViewBox(rectangle, new Rectangle(0.0f, 0.0f, (float) d, (float) d2), strArrRetrieveAlignAndMeet[0], strArrRetrieveAlignAndMeet[1]);
    }

    private void drawPatternContent(SvgDrawContext svgDrawContext, PdfPattern.Tiling tiling) {
        if (tiling == null) {
            return;
        }
        svgDrawContext.pushCanvas(new PdfPatternCanvas(tiling, svgDrawContext.getCurrentCanvas().getDocument()));
        try {
            Iterator<ISvgNodeRenderer> it = getChildren().iterator();
            while (it.hasNext()) {
                it.next().draw(svgDrawContext);
            }
        } finally {
            svgDrawContext.popCanvas();
        }
    }

    private Rectangle calculateOriginalPatternRectangle(SvgDrawContext svgDrawContext, boolean z) {
        double coordinateForUserSpaceOnUse;
        double coordinateForUserSpaceOnUse2;
        double coordinateForUserSpaceOnUse3;
        double coordinateForObjectBoundingBox;
        if (z) {
            coordinateForObjectBoundingBox = SvgCoordinateUtils.getCoordinateForObjectBoundingBox(getAttribute(SvgConstants.Attributes.f3330X), 0.0d) * CONVERT_COEFF;
            coordinateForUserSpaceOnUse = SvgCoordinateUtils.getCoordinateForObjectBoundingBox(getAttribute(SvgConstants.Attributes.f3333Y), 0.0d) * CONVERT_COEFF;
            coordinateForUserSpaceOnUse2 = SvgCoordinateUtils.getCoordinateForObjectBoundingBox(getAttribute("width"), 0.0d) * CONVERT_COEFF;
            coordinateForUserSpaceOnUse3 = SvgCoordinateUtils.getCoordinateForObjectBoundingBox(getAttribute("height"), 0.0d) * CONVERT_COEFF;
        } else {
            Rectangle currentViewPort = svgDrawContext.getCurrentViewPort();
            double x = currentViewPort.getX();
            double y = currentViewPort.getY();
            double width = currentViewPort.getWidth();
            double height = currentViewPort.getHeight();
            float currentFontSize = getCurrentFontSize();
            float rootFontSize = svgDrawContext.getCssContext().getRootFontSize();
            double coordinateForUserSpaceOnUse4 = SvgCoordinateUtils.getCoordinateForUserSpaceOnUse(getAttribute(SvgConstants.Attributes.f3330X), x, x, width, currentFontSize, rootFontSize);
            coordinateForUserSpaceOnUse = SvgCoordinateUtils.getCoordinateForUserSpaceOnUse(getAttribute(SvgConstants.Attributes.f3333Y), y, y, height, currentFontSize, rootFontSize);
            coordinateForUserSpaceOnUse2 = SvgCoordinateUtils.getCoordinateForUserSpaceOnUse(getAttribute("width"), x, x, width, currentFontSize, rootFontSize);
            coordinateForUserSpaceOnUse3 = SvgCoordinateUtils.getCoordinateForUserSpaceOnUse(getAttribute("height"), y, y, height, currentFontSize, rootFontSize);
            coordinateForObjectBoundingBox = coordinateForUserSpaceOnUse4;
        }
        return new Rectangle((float) coordinateForObjectBoundingBox, (float) coordinateForUserSpaceOnUse, (float) coordinateForUserSpaceOnUse2, (float) coordinateForUserSpaceOnUse3);
    }

    private boolean isObjectBoundingBoxInPatternUnits() {
        String attribute = getAttribute(SvgConstants.Attributes.PATTERN_UNITS);
        if (attribute == null) {
            attribute = getAttribute(SvgConstants.Attributes.PATTERN_UNITS.toLowerCase());
        }
        if (SvgConstants.Values.USER_SPACE_ON_USE.equals(attribute)) {
            return false;
        }
        if (attribute == null || SvgConstants.Values.OBJECT_BOUNDING_BOX.equals(attribute)) {
            return true;
        }
        LoggerFactory.getLogger(getClass()).warn(MessageFormatUtil.format(SvgLogMessageConstant.PATTERN_INVALID_PATTERN_UNITS_LOG, attribute));
        return true;
    }

    private boolean isObjectBoundingBoxInPatternContentUnits() {
        String attribute = getAttribute(SvgConstants.Attributes.PATTERN_CONTENT_UNITS);
        if (attribute == null) {
            attribute = getAttribute(SvgConstants.Attributes.PATTERN_CONTENT_UNITS.toLowerCase());
        }
        if (SvgConstants.Values.OBJECT_BOUNDING_BOX.equals(attribute)) {
            return true;
        }
        if (attribute == null || SvgConstants.Values.USER_SPACE_ON_USE.equals(attribute)) {
            return false;
        }
        LoggerFactory.getLogger(getClass()).warn(MessageFormatUtil.format(SvgLogMessageConstant.PATTERN_INVALID_PATTERN_CONTENT_UNITS_LOG, attribute));
        return false;
    }

    private static PdfPattern.Tiling createColoredTilingPatternInstance(AffineTransform affineTransform, Rectangle rectangle, double d, double d2) {
        PdfPattern.Tiling tiling = new PdfPattern.Tiling(rectangle, (float) d, (float) d2, true);
        setPatternMatrix(tiling, affineTransform);
        return tiling;
    }

    private static void setPatternMatrix(PdfPattern.Tiling tiling, AffineTransform affineTransform) {
        if (affineTransform.isIdentity()) {
            return;
        }
        double[] dArr = new double[6];
        affineTransform.getMatrix(dArr);
        tiling.setMatrix(new PdfArray(dArr));
    }

    private static AffineTransform getTransformToUserSpaceOnUse(Rectangle rectangle) {
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.translate(rectangle.getX(), rectangle.getY());
        affineTransform.scale(((double) rectangle.getWidth()) / CONVERT_COEFF, ((double) rectangle.getHeight()) / CONVERT_COEFF);
        return affineTransform;
    }

    private static boolean xStepYStepAreValid(double d, double d2) {
        if (d < 0.0d || d2 < 0.0d) {
            Logger logger = LOGGER;
            if (logger.isWarnEnabled()) {
                logger.warn(MessageFormatUtil.format(SvgLogMessageConstant.PATTERN_WIDTH_OR_HEIGHT_IS_NEGATIVE, new Object[0]));
            }
            return false;
        }
        if (d != 0.0d && d2 != 0.0d) {
            return true;
        }
        Logger logger2 = LOGGER;
        if (logger2.isInfoEnabled()) {
            logger2.info(MessageFormatUtil.format(SvgLogMessageConstant.PATTERN_WIDTH_OR_HEIGHT_IS_ZERO, new Object[0]));
        }
        return false;
    }

    private static boolean isViewBoxInvalid(float[] fArr) {
        if (fArr[2] != 0.0f && fArr[3] != 0.0f) {
            return false;
        }
        Logger logger = LOGGER;
        if (!logger.isInfoEnabled()) {
            return true;
        }
        logger.info(MessageFormatUtil.format(SvgLogMessageConstant.VIEWBOX_WIDTH_OR_HEIGHT_IS_ZERO, new Object[0]));
        return true;
    }

    private AffineTransform getPatternTransform() {
        String attribute = getAttribute(SvgConstants.Attributes.PATTERN_TRANSFORM);
        if (attribute == null) {
            attribute = getAttribute(SvgConstants.Attributes.PATTERN_TRANSFORM.toLowerCase());
        }
        if (attribute != null && !attribute.isEmpty()) {
            return TransformUtils.parseTransform(attribute);
        }
        return new AffineTransform();
    }
}
