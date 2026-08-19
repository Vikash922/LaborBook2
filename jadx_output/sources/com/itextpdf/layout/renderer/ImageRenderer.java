package com.itextpdf.layout.renderer;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.CanvasArtifact;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.tagutils.TagTreePointer;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.kernel.pdf.xobject.PdfImageXObject;
import com.itextpdf.kernel.pdf.xobject.PdfXObject;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.element.Image;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.layout.MinMaxWidthLayoutResult;
import com.itextpdf.layout.minmaxwidth.MinMaxWidth;
import com.itextpdf.layout.minmaxwidth.MinMaxWidthUtils;
import com.itextpdf.layout.properties.FloatPropertyValue;
import com.itextpdf.layout.properties.ObjectFit;
import com.itextpdf.layout.properties.OverflowPropertyValue;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.renderer.objectfit.ObjectFitApplyingResult;
import com.itextpdf.layout.renderer.objectfit.ObjectFitCalculator;
import com.itextpdf.layout.tagging.LayoutTaggingHelper;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class ImageRenderer extends AbstractRenderer implements ILeafElementRenderer {
    protected float deltaX;
    private boolean doesObjectFitRequireCutting;
    protected Float fixedXPosition;
    protected Float fixedYPosition;
    private Float height;
    protected float imageHeight;
    protected float imageWidth;
    private Rectangle initialOccupiedAreaBBox;
    float[] matrix;
    protected float pivotY;
    private float renderedImageHeight;
    private float renderedImageWidth;
    private float rotatedDeltaX;
    private float rotatedDeltaY;
    private Float width;

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    protected Rectangle applyPaddings(Rectangle rectangle, UnitValue[] unitValueArr, boolean z) {
        return rectangle;
    }

    @Override // com.itextpdf.layout.renderer.ILeafElementRenderer
    public float getDescent() {
        return 0.0f;
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        return null;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    boolean hasAspectRatio() {
        return true;
    }

    public ImageRenderer(Image image) {
        super(image);
        this.matrix = new float[6];
        this.imageWidth = image.getImageWidth();
        this.imageHeight = image.getImageHeight();
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public LayoutResult layout(LayoutContext layoutContext) {
        Image image;
        float fAdjustLayoutBoxAccordingToFloats;
        OverflowPropertyValue overflowPropertyValue;
        float f;
        float f2;
        boolean z;
        LayoutArea layoutAreaMo3122clone = layoutContext.getArea().mo3122clone();
        Rectangle rectangleMo3120clone = layoutAreaMo3122clone.getBBox().mo3120clone();
        AffineTransform affineTransform = new AffineTransform();
        Image image2 = (Image) getModelElement();
        PdfXObject xObject = image2.getXObject();
        calculateImageDimensions(rectangleMo3120clone, affineTransform, xObject);
        OverflowPropertyValue overflowPropertyValue2 = this.parent != null ? (OverflowPropertyValue) this.parent.getProperty(103) : OverflowPropertyValue.FIT;
        boolean zEquals = this.parent instanceof LineRenderer ? Boolean.TRUE.equals(this.parent.getOwnProperty(118)) : false;
        List<Rectangle> floatRendererAreas = layoutContext.getFloatRendererAreas();
        float fCalculateClearHeightCorrection = FloatingHelper.calculateClearHeightCorrection(this, floatRendererAreas, rectangleMo3120clone);
        FloatPropertyValue floatPropertyValue = (FloatPropertyValue) getProperty(99);
        if (FloatingHelper.isRendererFloating(this, floatPropertyValue)) {
            rectangleMo3120clone.decreaseHeight(fCalculateClearHeightCorrection);
            image = image2;
            FloatingHelper.adjustFloatedBlockLayoutBox(this, rectangleMo3120clone, this.width, floatRendererAreas, floatPropertyValue, overflowPropertyValue2);
            fAdjustLayoutBoxAccordingToFloats = fCalculateClearHeightCorrection;
        } else {
            image = image2;
            fAdjustLayoutBoxAccordingToFloats = FloatingHelper.adjustLayoutBoxAccordingToFloats(floatRendererAreas, rectangleMo3120clone, this.width, fCalculateClearHeightCorrection, null);
        }
        applyMargins(rectangleMo3120clone, false);
        Border[] borders = getBorders();
        applyBorderBox(rectangleMo3120clone, borders, false);
        Float fRetrieveMaxHeight = retrieveMaxHeight();
        if (this.parent == null || ((fRetrieveMaxHeight == null || fRetrieveMaxHeight.floatValue() > rectangleMo3120clone.getHeight()) && !layoutContext.isClippedHeight())) {
            overflowPropertyValue = OverflowPropertyValue.FIT;
        } else {
            overflowPropertyValue = (OverflowPropertyValue) this.parent.getProperty(104);
        }
        boolean z2 = !isOverflowFit(overflowPropertyValue2) || zEquals;
        boolean z3 = !isOverflowFit(overflowPropertyValue);
        if (isAbsolutePosition()) {
            applyAbsolutePosition(rectangleMo3120clone);
        }
        this.occupiedArea = new LayoutArea(layoutAreaMo3122clone.getPageNumber(), new Rectangle(rectangleMo3120clone.getX(), rectangleMo3120clone.getY() + rectangleMo3120clone.getHeight(), 0.0f, 0.0f));
        TargetCounterHandler.addPageByID(this);
        float fFloatValue = this.width.floatValue();
        float fFloatValue2 = this.height.floatValue();
        if (isFixedLayout()) {
            this.fixedXPosition = getPropertyAsFloat(34);
            this.fixedYPosition = getPropertyAsFloat(14);
        }
        Float propertyAsFloat = getPropertyAsFloat(55);
        if (propertyAsFloat == null) {
            propertyAsFloat = Float.valueOf(0.0f);
        }
        affineTransform.rotate(propertyAsFloat.floatValue());
        this.initialOccupiedAreaBBox = getOccupiedAreaBBox().mo3120clone();
        float fAdjustPositionAfterRotation = adjustPositionAfterRotation(propertyAsFloat.floatValue(), rectangleMo3120clone.getWidth(), rectangleMo3120clone.getHeight());
        float f3 = fFloatValue2 * fAdjustPositionAfterRotation;
        float f4 = fFloatValue * fAdjustPositionAfterRotation;
        this.initialOccupiedAreaBBox.moveDown(f3);
        this.initialOccupiedAreaBBox.setHeight(f3);
        this.initialOccupiedAreaBBox.setWidth(f4);
        if (xObject instanceof PdfFormXObject) {
            double d = fAdjustPositionAfterRotation;
            affineTransform.scale(d, d);
        }
        applyObjectFit(image.getObjectFit(), this.imageWidth, this.imageHeight);
        if (image.getObjectFit() == ObjectFit.FILL) {
            f = f4;
            f2 = f3;
        } else {
            f = this.renderedImageWidth;
            f2 = this.renderedImageHeight;
        }
        getMatrix(affineTransform, f, f2);
        if (this.width.floatValue() > rectangleMo3120clone.getWidth() + 1.0E-4f || this.height.floatValue() > rectangleMo3120clone.getHeight() + 1.0E-4f) {
            if (Boolean.TRUE.equals(getPropertyAsBoolean(26))) {
                z = true;
            } else {
                if (this.width.floatValue() <= rectangleMo3120clone.getWidth() + 1.0E-4f) {
                    z2 = true;
                }
                z = this.height.floatValue() > rectangleMo3120clone.getHeight() + 1.0E-4f ? z3 & z2 : z2;
            }
            if (!z) {
                applyMargins(this.initialOccupiedAreaBBox, true);
                applyBorderBox(this.initialOccupiedAreaBBox, true);
                this.occupiedArea.getBBox().setHeight(this.initialOccupiedAreaBBox.getHeight());
                return new MinMaxWidthLayoutResult(3, this.occupiedArea, null, this, this);
            }
        } else {
            z = false;
        }
        this.occupiedArea.getBBox().moveDown(this.height.floatValue());
        if (borders[3] != null) {
            float fSin = ((float) Math.sin(propertyAsFloat.floatValue())) * borders[3].getWidth();
            float fFloatValue3 = this.renderedImageHeight / this.height.floatValue();
            this.height = Float.valueOf(this.height.floatValue() + fSin);
            this.renderedImageHeight += fSin * fFloatValue3;
        }
        this.occupiedArea.getBBox().setHeight(this.height.floatValue());
        this.occupiedArea.getBBox().setWidth(this.width.floatValue());
        UnitValue propertyAsUnitValue = getPropertyAsUnitValue(44);
        if (!propertyAsUnitValue.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) ImageRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 44));
        }
        UnitValue propertyAsUnitValue2 = getPropertyAsUnitValue(46);
        if (!propertyAsUnitValue2.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) ImageRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 46));
        }
        if (0.0f != propertyAsUnitValue.getValue() || 0.0f != propertyAsUnitValue2.getValue()) {
            translateImage(propertyAsUnitValue.getValue(), propertyAsUnitValue2.getValue(), affineTransform);
            getMatrix(affineTransform, f4, f3);
        }
        applyBorderBox(this.occupiedArea.getBBox(), borders, true);
        applyMargins(this.occupiedArea.getBBox(), true);
        if (propertyAsFloat.floatValue() != 0.0f) {
            applyRotationLayout(propertyAsFloat.floatValue());
        }
        float width = this.occupiedArea.getBBox().getWidth() / fAdjustPositionAfterRotation;
        MinMaxWidth minMaxWidth = new MinMaxWidth(width, width, 0.0f);
        UnitValue unitValue = (UnitValue) getProperty(77);
        if (unitValue != null && unitValue.isPercentValue()) {
            minMaxWidth.setChildrenMinWidth(0.0f);
            minMaxWidth.setChildrenMaxWidth(width * (this.imageWidth / retrieveWidth(layoutAreaMo3122clone.getBBox().getWidth()).floatValue()));
        } else {
            boolean z4 = hasProperty(3) && ((Boolean) getProperty(3)).booleanValue();
            boolean z5 = hasProperty(5) && ((Boolean) getProperty(5)).booleanValue();
            if (z4 || z5) {
                minMaxWidth.setChildrenMinWidth(0.0f);
            }
        }
        FloatingHelper.removeFloatsAboveRendererBottom(floatRendererAreas, this);
        LayoutArea layoutAreaAdjustResultOccupiedAreaForFloatAndClear = FloatingHelper.adjustResultOccupiedAreaForFloatAndClear(this, floatRendererAreas, layoutContext.getArea().getBBox(), fAdjustLayoutBoxAccordingToFloats, false);
        applyAbsolutePositionIfNeeded(layoutContext);
        return new MinMaxWidthLayoutResult(1, layoutAreaAdjustResultOccupiedAreaForFloatAndClear, null, null, z ? this : null).setMinMaxWidth(minMaxWidth);
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
    public void draw(DrawContext drawContext) {
        boolean zIsArtifact;
        LayoutTaggingHelper layoutTaggingHelper;
        if (this.occupiedArea == null) {
            LoggerFactory.getLogger((Class<?>) ImageRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.OCCUPIED_AREA_HAS_NOT_BEEN_INITIALIZED, "Drawing won't be performed."));
            return;
        }
        boolean zIsRelativePosition = isRelativePosition();
        if (zIsRelativePosition) {
            applyRelativePositioningTranslation(false);
        }
        boolean zIsTaggingEnabled = drawContext.isTaggingEnabled();
        TagTreePointer tagTreePointerUseAutoTaggingPointerAndRememberItsPosition = null;
        if (zIsTaggingEnabled) {
            layoutTaggingHelper = (LayoutTaggingHelper) getProperty(108);
            if (layoutTaggingHelper == null) {
                zIsArtifact = true;
            } else {
                zIsArtifact = layoutTaggingHelper.isArtifact(this);
                if (!zIsArtifact) {
                    tagTreePointerUseAutoTaggingPointerAndRememberItsPosition = layoutTaggingHelper.useAutoTaggingPointerAndRememberItsPosition(this);
                    if (layoutTaggingHelper.createTag(this, tagTreePointerUseAutoTaggingPointerAndRememberItsPosition)) {
                        tagTreePointerUseAutoTaggingPointerAndRememberItsPosition.getProperties().addAttributes(0, AccessibleAttributesApplier.getLayoutAttributes(this, tagTreePointerUseAutoTaggingPointerAndRememberItsPosition));
                    }
                }
            }
        } else {
            zIsArtifact = false;
            layoutTaggingHelper = null;
        }
        beginTransformationIfApplied(drawContext.getCanvas());
        Float propertyAsFloat = getPropertyAsFloat(55);
        if (propertyAsFloat != null) {
            drawContext.getCanvas().saveState();
            applyConcatMatrix(drawContext, propertyAsFloat);
        }
        super.draw(drawContext);
        boolean zClipBackgroundArea = clipBackgroundArea(drawContext, applyMargins(getOccupiedAreaBBox(), false), true);
        applyMargins(this.occupiedArea.getBBox(), false);
        applyBorderBox(this.occupiedArea.getBBox(), getBorders(), false);
        if (this.fixedYPosition == null) {
            this.fixedYPosition = Float.valueOf(this.occupiedArea.getBBox().getY() + this.pivotY);
        }
        if (this.fixedXPosition == null) {
            this.fixedXPosition = Float.valueOf(this.occupiedArea.getBBox().getX());
        }
        if (propertyAsFloat != null) {
            this.fixedXPosition = Float.valueOf(this.fixedXPosition.floatValue() + this.rotatedDeltaX);
            this.fixedYPosition = Float.valueOf(this.fixedYPosition.floatValue() - this.rotatedDeltaY);
            drawContext.getCanvas().restoreState();
        }
        PdfCanvas canvas = drawContext.getCanvas();
        if (zIsTaggingEnabled) {
            if (zIsArtifact) {
                canvas.openTag(new CanvasArtifact());
            } else {
                canvas.openTag(tagTreePointerUseAutoTaggingPointerAndRememberItsPosition.getTagReference());
            }
        }
        beginObjectFitImageClipping(canvas);
        PdfXObject xObject = ((Image) getModelElement()).getXObject();
        beginElementOpacityApplying(drawContext);
        float fFloatValue = (this.width.floatValue() - this.renderedImageWidth) / 2.0f;
        float fFloatValue2 = (this.height.floatValue() - this.renderedImageHeight) / 2.0f;
        float[] fArr = this.matrix;
        canvas.addXObjectWithTransformationMatrix(xObject, fArr[0], fArr[1], fArr[2], fArr[3], this.fixedXPosition.floatValue() + this.deltaX + fFloatValue, this.fixedYPosition.floatValue() + fFloatValue2);
        endElementOpacityApplying(drawContext);
        endObjectFitImageClipping(canvas);
        endTransformationIfApplied(drawContext.getCanvas());
        if (Boolean.TRUE.equals(getPropertyAsBoolean(19))) {
            xObject.flush();
        }
        if (zIsTaggingEnabled) {
            canvas.closeTag();
        }
        if (zClipBackgroundArea) {
            canvas.restoreState();
        }
        if (zIsRelativePosition) {
            applyRelativePositioningTranslation(true);
        }
        applyBorderBox(this.occupiedArea.getBBox(), getBorders(), true);
        applyMargins(this.occupiedArea.getBBox(), true);
        if (!zIsTaggingEnabled || zIsArtifact) {
            return;
        }
        layoutTaggingHelper.finishTaggingHint(this);
        layoutTaggingHelper.restoreAutoTaggingPointerPosition(this);
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public Rectangle getBorderAreaBBox() {
        applyMargins(this.initialOccupiedAreaBBox, false);
        applyBorderBox(this.initialOccupiedAreaBBox, getBorders(), false);
        if (isRelativePosition()) {
            applyRelativePositioningTranslation(false);
        }
        applyMargins(this.initialOccupiedAreaBBox, true);
        applyBorderBox(this.initialOccupiedAreaBBox, true);
        return this.initialOccupiedAreaBBox;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    Float getAspectRatio() {
        return Float.valueOf(this.imageWidth / this.imageHeight);
    }

    public float getImageWidth() {
        return this.imageWidth;
    }

    public float getImageHeight() {
        return this.imageHeight;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
    public void move(float f, float f2) {
        super.move(f, f2);
        Rectangle rectangle = this.initialOccupiedAreaBBox;
        if (rectangle != null) {
            rectangle.moveRight(f);
            this.initialOccupiedAreaBBox.moveUp(f2);
        }
        Float f3 = this.fixedXPosition;
        if (f3 != null) {
            this.fixedXPosition = Float.valueOf(f3.floatValue() + f);
        }
        Float f4 = this.fixedYPosition;
        if (f4 != null) {
            this.fixedYPosition = Float.valueOf(f4.floatValue() + f2);
        }
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public MinMaxWidth getMinMaxWidth() {
        return ((MinMaxWidthLayoutResult) layout(new LayoutContext(new LayoutArea(1, new Rectangle(MinMaxWidthUtils.getInfWidth(), 1000000.0f))))).getMinMaxWidth();
    }

    protected ImageRenderer autoScale(LayoutArea layoutArea) {
        Rectangle rectangleMo3120clone = layoutArea.getBBox().mo3120clone();
        applyMargins(rectangleMo3120clone, false);
        applyBorderBox(rectangleMo3120clone, false);
        float fFloatValue = this.imageWidth / this.width.floatValue();
        if (this.width.floatValue() > rectangleMo3120clone.getWidth() * fFloatValue) {
            updateHeight(UnitValue.createPointValue((rectangleMo3120clone.getWidth() / this.width.floatValue()) * this.imageHeight));
            updateWidth(UnitValue.createPointValue(fFloatValue * rectangleMo3120clone.getWidth()));
        }
        return this;
    }

    private void applyObjectFit(ObjectFit objectFit, float f, float f2) {
        ObjectFitApplyingResult objectFitApplyingResultCalculateRenderedImageSize = ObjectFitCalculator.calculateRenderedImageSize(objectFit, f, f2, this.width.floatValue(), this.height.floatValue());
        this.renderedImageWidth = (float) objectFitApplyingResultCalculateRenderedImageSize.getRenderedImageWidth();
        this.renderedImageHeight = (float) objectFitApplyingResultCalculateRenderedImageSize.getRenderedImageHeight();
        this.doesObjectFitRequireCutting = objectFitApplyingResultCalculateRenderedImageSize.isImageCuttingRequired();
    }

    private void beginObjectFitImageClipping(PdfCanvas pdfCanvas) {
        if (this.doesObjectFitRequireCutting) {
            pdfCanvas.saveState();
            pdfCanvas.rectangle(new Rectangle(this.fixedXPosition.floatValue(), this.fixedYPosition.floatValue(), this.width.floatValue(), this.height.floatValue())).clip().endPath();
        }
    }

    private void endObjectFitImageClipping(PdfCanvas pdfCanvas) {
        if (this.doesObjectFitRequireCutting) {
            pdfCanvas.restoreState();
        }
    }

    private void calculateImageDimensions(Rectangle rectangle, AffineTransform affineTransform, PdfXObject pdfXObject) {
        this.width = getProperty(77) != null ? retrieveWidth(rectangle.getWidth()) : null;
        Float fRetrieveHeight = retrieveHeight();
        this.height = fRetrieveHeight;
        Float f = this.width;
        if (f == null && fRetrieveHeight == null) {
            Float fValueOf = Float.valueOf(this.imageWidth);
            this.width = fValueOf;
            this.height = Float.valueOf((fValueOf.floatValue() / this.imageWidth) * this.imageHeight);
        } else if (f == null) {
            this.width = Float.valueOf((fRetrieveHeight.floatValue() / this.imageHeight) * this.imageWidth);
        } else if (fRetrieveHeight == null) {
            this.height = Float.valueOf((f.floatValue() / this.imageWidth) * this.imageHeight);
        }
        Float propertyAsFloat = getPropertyAsFloat(29, Float.valueOf(1.0f));
        Float propertyAsFloat2 = getPropertyAsFloat(76, Float.valueOf(1.0f));
        boolean z = pdfXObject instanceof PdfFormXObject;
        if (z && this.width.floatValue() != this.imageWidth) {
            propertyAsFloat = Float.valueOf(propertyAsFloat.floatValue() * (this.width.floatValue() / this.imageWidth));
            propertyAsFloat2 = Float.valueOf(propertyAsFloat2.floatValue() * (this.height.floatValue() / this.imageHeight));
        }
        if (propertyAsFloat.floatValue() != 1.0f) {
            if (z) {
                affineTransform.scale(propertyAsFloat.floatValue(), 1.0d);
                this.width = Float.valueOf(this.imageWidth * propertyAsFloat.floatValue());
            } else {
                this.width = Float.valueOf(this.width.floatValue() * propertyAsFloat.floatValue());
            }
        }
        if (propertyAsFloat2.floatValue() != 1.0f) {
            if (z) {
                affineTransform.scale(1.0d, propertyAsFloat2.floatValue());
                this.height = Float.valueOf(this.imageHeight * propertyAsFloat2.floatValue());
            } else {
                this.height = Float.valueOf(this.height.floatValue() * propertyAsFloat2.floatValue());
            }
        }
        Float fRetrieveMinWidth = retrieveMinWidth(rectangle.getWidth());
        Float fRetrieveMaxWidth = retrieveMaxWidth(rectangle.getWidth());
        if (fRetrieveMinWidth != null && this.width.floatValue() < fRetrieveMinWidth.floatValue()) {
            this.height = Float.valueOf(this.height.floatValue() * (fRetrieveMinWidth.floatValue() / this.width.floatValue()));
            this.width = fRetrieveMinWidth;
        } else if (fRetrieveMaxWidth != null && this.width.floatValue() > fRetrieveMaxWidth.floatValue()) {
            this.height = Float.valueOf(this.height.floatValue() * (fRetrieveMaxWidth.floatValue() / this.width.floatValue()));
            this.width = fRetrieveMaxWidth;
        }
        Float fRetrieveMinHeight = retrieveMinHeight();
        Float fRetrieveMaxHeight = retrieveMaxHeight();
        if (fRetrieveMinHeight != null && this.height.floatValue() < fRetrieveMinHeight.floatValue()) {
            this.width = Float.valueOf(this.width.floatValue() * (fRetrieveMinHeight.floatValue() / this.height.floatValue()));
            this.height = fRetrieveMinHeight;
        } else if (fRetrieveMaxHeight != null && this.height.floatValue() > fRetrieveMaxHeight.floatValue()) {
            this.width = Float.valueOf(this.width.floatValue() * (fRetrieveMaxHeight.floatValue() / this.height.floatValue()));
            this.height = fRetrieveMaxHeight;
        } else {
            if (fRetrieveHeight == null || this.height.equals(fRetrieveHeight)) {
                return;
            }
            this.width = Float.valueOf(this.width.floatValue() * (fRetrieveHeight.floatValue() / this.height.floatValue()));
            this.height = fRetrieveHeight;
        }
    }

    private void getMatrix(AffineTransform affineTransform, float f, float f2) {
        affineTransform.getMatrix(this.matrix);
        if (((Image) getModelElement()).getXObject() instanceof PdfImageXObject) {
            float[] fArr = this.matrix;
            fArr[0] = fArr[0] * f;
            fArr[1] = fArr[1] * f;
            fArr[2] = fArr[2] * f2;
            fArr[3] = fArr[3] * f2;
        }
    }

    private float adjustPositionAfterRotation(float f, float f2, float f3) {
        float fFloatValue;
        if (f != 0.0f) {
            AffineTransform rotateInstance = AffineTransform.getRotateInstance(f);
            Point pointTransform = rotateInstance.transform(new Point(0, 0), new Point());
            Point pointTransform2 = rotateInstance.transform(new Point(0.0d, this.height.floatValue()), new Point());
            Point pointTransform3 = rotateInstance.transform(new Point(this.width.floatValue(), 0.0d), new Point());
            Point pointTransform4 = rotateInstance.transform(new Point(this.width.floatValue(), this.height.floatValue()), new Point());
            double[] dArr = {pointTransform2.getX(), pointTransform3.getX(), pointTransform4.getX()};
            double[] dArr2 = {pointTransform2.getY(), pointTransform3.getY(), pointTransform4.getY()};
            double x = pointTransform.getX();
            double y = pointTransform.getY();
            double dMax = x;
            for (int i = 0; i < 3; i++) {
                double d = dArr[i];
                x = Math.min(x, d);
                dMax = Math.max(dMax, d);
            }
            double dMin = y;
            for (int i2 = 0; i2 < 3; i2++) {
                double d2 = dArr2[i2];
                dMin = Math.min(dMin, d2);
                y = Math.max(y, d2);
            }
            this.height = Float.valueOf((float) (y - dMin));
            this.width = Float.valueOf((float) (dMax - x));
            this.pivotY = (float) (pointTransform.getY() - dMin);
            this.deltaX = -((float) x);
        }
        if (Boolean.TRUE.equals(getPropertyAsBoolean(3))) {
            if (f2 / this.width.floatValue() < f3 / this.height.floatValue()) {
                fFloatValue = f2 / this.width.floatValue();
                this.height = Float.valueOf(this.height.floatValue() * (f2 / this.width.floatValue()));
                this.width = Float.valueOf(f2);
            } else {
                fFloatValue = f3 / this.height.floatValue();
                this.width = Float.valueOf(this.width.floatValue() * (f3 / this.height.floatValue()));
                this.height = Float.valueOf(f3);
            }
        } else if (Boolean.TRUE.equals(getPropertyAsBoolean(5))) {
            fFloatValue = f2 / this.width.floatValue();
            this.height = Float.valueOf(this.height.floatValue() * fFloatValue);
            this.width = Float.valueOf(f2);
        } else if (Boolean.TRUE.equals(getPropertyAsBoolean(4))) {
            fFloatValue = f3 / this.height.floatValue();
            this.height = Float.valueOf(f3);
            this.width = Float.valueOf(this.width.floatValue() * fFloatValue);
        } else {
            fFloatValue = 1.0f;
        }
        this.pivotY *= fFloatValue;
        this.deltaX *= fFloatValue;
        return fFloatValue;
    }

    private void translateImage(float f, float f2, AffineTransform affineTransform) {
        affineTransform.translate(f, f2);
        affineTransform.getMatrix(this.matrix);
        Float f3 = this.fixedXPosition;
        if (f3 != null) {
            this.fixedXPosition = Float.valueOf(f3.floatValue() + ((float) affineTransform.getTranslateX()));
        }
        Float f4 = this.fixedYPosition;
        if (f4 != null) {
            this.fixedYPosition = Float.valueOf(f4.floatValue() + ((float) affineTransform.getTranslateY()));
        }
    }

    private void applyConcatMatrix(DrawContext drawContext, Float f) {
        AffineTransform rotateInstance = AffineTransform.getRotateInstance(f.floatValue());
        Rectangle borderAreaBBox = getBorderAreaBBox();
        float[] fArrCalculateShiftToPositionBBoxOfPointsAt = calculateShiftToPositionBBoxOfPointsAt(borderAreaBBox.getX(), borderAreaBBox.getY() + borderAreaBBox.getHeight(), transformPoints(rectangleToPointsList(borderAreaBBox), rotateInstance));
        double[] dArr = new double[6];
        rotateInstance.getMatrix(dArr);
        drawContext.getCanvas().concatMatrix(dArr[0], dArr[1], dArr[2], dArr[3], fArrCalculateShiftToPositionBBoxOfPointsAt[0], fArrCalculateShiftToPositionBBoxOfPointsAt[1]);
    }

    private void applyRotationLayout(float f) {
        Border[] borders = getBorders();
        Rectangle borderAreaBBox = getBorderAreaBBox();
        Border border = borders[3];
        float width = border == null ? 0.0f : border.getWidth();
        Border border2 = borders[1];
        float width2 = border2 == null ? 0.0f : border2.getWidth();
        Border border3 = borders[0];
        float width3 = border3 == null ? 0.0f : border3.getWidth();
        if (width != 0.0f) {
            double d = width;
            float fSqrt = (float) Math.sqrt(Math.pow(width3, 2.0d) + Math.pow(d, 2.0d));
            double dAtan = Math.atan(width3 / width);
            if (f < 0.0f) {
                dAtan = -dAtan;
            }
            this.rotatedDeltaX = Math.abs((float) ((((double) fSqrt) * Math.cos(((double) f) - dAtan)) - d));
        } else {
            this.rotatedDeltaX = 0.0f;
        }
        borderAreaBBox.moveRight(this.rotatedDeltaX);
        this.occupiedArea.getBBox().setWidth(this.occupiedArea.getBBox().getWidth() + this.rotatedDeltaX);
        if (width2 != 0.0f) {
            double d2 = width3;
            float fSqrt2 = (float) Math.sqrt(Math.pow(d2, 2.0d) + Math.pow(width, 2.0d));
            double dAtan2 = Math.atan(width2 / width3);
            if (f < 0.0f) {
                dAtan2 = -dAtan2;
            }
            this.rotatedDeltaY = Math.abs((float) ((((double) fSqrt2) * Math.cos(((double) f) - dAtan2)) - d2));
        } else {
            this.rotatedDeltaY = 0.0f;
        }
        borderAreaBBox.moveDown(this.rotatedDeltaY);
        if (f < 0.0f) {
            this.rotatedDeltaY += width2;
        }
        this.occupiedArea.getBBox().increaseHeight(this.rotatedDeltaY);
    }

    @Override // com.itextpdf.layout.renderer.ILeafElementRenderer
    public float getAscent() {
        return this.occupiedArea.getBBox().getHeight();
    }
}
