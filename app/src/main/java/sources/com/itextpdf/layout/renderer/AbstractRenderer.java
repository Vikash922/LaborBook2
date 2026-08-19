package com.itextpdf.layout.renderer;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.gradients.AbstractLinearGradientBuilder;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.action.PdfAction;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfLinkAnnotation;
import com.itextpdf.kernel.pdf.canvas.CanvasArtifact;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.extgstate.PdfExtGState;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.kernel.pdf.xobject.PdfXObject;
import com.itextpdf.layout.IPropertyContainer;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.element.Div;
import com.itextpdf.layout.element.IElement;
import com.itextpdf.layout.exceptions.LayoutExceptionMessageConstant;
import com.itextpdf.layout.font.FontCharacteristics;
import com.itextpdf.layout.font.FontProvider;
import com.itextpdf.layout.font.FontSet;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.PositionedLayoutContext;
import com.itextpdf.layout.minmaxwidth.MinMaxWidth;
import com.itextpdf.layout.minmaxwidth.MinMaxWidthUtils;
import com.itextpdf.layout.properties.Background;
import com.itextpdf.layout.properties.BackgroundBox;
import com.itextpdf.layout.properties.BackgroundImage;
import com.itextpdf.layout.properties.BaseDirection;
import com.itextpdf.layout.properties.BlendMode;
import com.itextpdf.layout.properties.BorderRadius;
import com.itextpdf.layout.properties.BoxSizingPropertyValue;
import com.itextpdf.layout.properties.HorizontalAlignment;
import com.itextpdf.layout.properties.OverflowPropertyValue;
import com.itextpdf.layout.properties.Property;
import com.itextpdf.layout.properties.Transform;
import com.itextpdf.layout.properties.TransparentColor;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.util.NumberUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractRenderer implements IRenderer {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ARC_BOTTOM_DEGREE = 270;
    private static final int ARC_LEFT_DEGREE = 180;
    private static final int ARC_QUARTER_CLOCKWISE_EXTENT = -90;
    private static final int ARC_RIGHT_DEGREE = 0;
    private static final int ARC_TOP_DEGREE = 90;
    static final int BOTTOM_SIDE = 2;
    protected static final float EPS = 1.0E-4f;
    protected static final float INF = 1000000.0f;
    static final int LEFT_SIDE = 3;
    public static final float OVERLAP_EPSILON = 1.0E-4f;
    static final int RIGHT_SIDE = 1;
    static final int TOP_SIDE = 0;
    protected List<IRenderer> childRenderers;
    protected boolean flushed;
    protected boolean isLastRendererForModelElement;
    protected IPropertyContainer modelElement;
    protected LayoutArea occupiedArea;
    protected IRenderer parent;
    protected List<IRenderer> positionedRenderers;
    protected Map<Integer, Object> properties;

    Float getAspectRatio() {
        return null;
    }

    protected Rectangle getBackgroundArea(Rectangle rectangle) {
        return rectangle;
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getDefaultProperty(int i) {
        return null;
    }

    boolean hasAspectRatio() {
        return false;
    }

    protected AbstractRenderer() {
        this.childRenderers = new ArrayList();
        this.positionedRenderers = new ArrayList();
        this.flushed = false;
        this.properties = new HashMap();
        this.isLastRendererForModelElement = true;
    }

    protected AbstractRenderer(IElement iElement) {
        this.childRenderers = new ArrayList();
        this.positionedRenderers = new ArrayList();
        this.flushed = false;
        this.properties = new HashMap();
        this.isLastRendererForModelElement = true;
        this.modelElement = iElement;
    }

    protected AbstractRenderer(AbstractRenderer abstractRenderer) {
        this.childRenderers = new ArrayList();
        this.positionedRenderers = new ArrayList();
        this.flushed = false;
        this.properties = new HashMap();
        this.isLastRendererForModelElement = true;
        this.childRenderers = abstractRenderer.childRenderers;
        this.positionedRenderers = abstractRenderer.positionedRenderers;
        this.modelElement = abstractRenderer.modelElement;
        this.flushed = abstractRenderer.flushed;
        LayoutArea layoutArea = abstractRenderer.occupiedArea;
        this.occupiedArea = layoutArea != null ? layoutArea.mo3122clone() : null;
        this.parent = abstractRenderer.parent;
        this.properties.putAll(abstractRenderer.properties);
        this.isLastRendererForModelElement = abstractRenderer.isLastRendererForModelElement;
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public void addChild(IRenderer iRenderer) {
        Integer num = (Integer) iRenderer.getProperty(52);
        if (num == null || num.intValue() == 2 || num.intValue() == 1) {
            this.childRenderers.add(iRenderer);
        } else if (num.intValue() == 4) {
            AbstractRenderer abstractRenderer = this;
            while (true) {
                IRenderer iRenderer2 = abstractRenderer.parent;
                if (!(iRenderer2 instanceof AbstractRenderer)) {
                    break;
                } else {
                    abstractRenderer = (AbstractRenderer) iRenderer2;
                }
            }
            if (abstractRenderer == this) {
                this.positionedRenderers.add(iRenderer);
            } else {
                abstractRenderer.addChild(iRenderer);
            }
        } else if (num.intValue() == 3) {
            boolean zNoAbsolutePositionInfo = noAbsolutePositionInfo(iRenderer);
            AbstractRenderer abstractRenderer2 = this;
            while (!abstractRenderer2.isPositioned() && !zNoAbsolutePositionInfo) {
                IRenderer iRenderer3 = abstractRenderer2.parent;
                if (!(iRenderer3 instanceof AbstractRenderer)) {
                    break;
                } else {
                    abstractRenderer2 = (AbstractRenderer) iRenderer3;
                }
            }
            if (abstractRenderer2 == this) {
                this.positionedRenderers.add(iRenderer);
            } else {
                abstractRenderer2.addChild(iRenderer);
            }
        }
        if (iRenderer instanceof AbstractRenderer) {
            AbstractRenderer abstractRenderer3 = (AbstractRenderer) iRenderer;
            if (abstractRenderer3.isPositioned() || abstractRenderer3.positionedRenderers.size() <= 0) {
                return;
            }
            List<IRenderer> list = abstractRenderer3.positionedRenderers;
            int i = 0;
            while (i < list.size()) {
                if (noAbsolutePositionInfo(list.get(i))) {
                    i++;
                } else {
                    this.positionedRenderers.add(list.get(i));
                    list.remove(i);
                }
            }
        }
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public IPropertyContainer getModelElement() {
        return this.modelElement;
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public List<IRenderer> getChildRenderers() {
        return this.childRenderers;
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public boolean hasProperty(int i) {
        IPropertyContainer iPropertyContainer;
        return hasOwnProperty(i) || ((iPropertyContainer = this.modelElement) != null && iPropertyContainer.hasProperty(i)) || (this.parent != null && Property.isPropertyInherited(i) && this.parent.hasProperty(i));
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public boolean hasOwnProperty(int i) {
        return this.properties.containsKey(Integer.valueOf(i));
    }

    public boolean hasOwnOrModelProperty(int i) {
        return hasOwnOrModelProperty(this, i);
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public void deleteOwnProperty(int i) {
        this.properties.remove(Integer.valueOf(i));
    }

    public void deleteProperty(int i) {
        if (this.properties.containsKey(Integer.valueOf(i))) {
            this.properties.remove(Integer.valueOf(i));
            return;
        }
        IPropertyContainer iPropertyContainer = this.modelElement;
        if (iPropertyContainer != null) {
            iPropertyContainer.deleteOwnProperty(i);
        }
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getProperty(int i) {
        T1 t1;
        T1 t12;
        T1 t13 = (T1) this.properties.get(Integer.valueOf(i));
        if (t13 != null || this.properties.containsKey(Integer.valueOf(i))) {
            return t13;
        }
        IPropertyContainer iPropertyContainer = this.modelElement;
        if (iPropertyContainer != null && ((t12 = (T1) iPropertyContainer.getProperty(i)) != null || this.modelElement.hasProperty(i))) {
            return t12;
        }
        if (this.parent != null && Property.isPropertyInherited(i) && (t1 = (T1) this.parent.getProperty(i)) != null) {
            return t1;
        }
        T1 t14 = (T1) getDefaultProperty(i);
        if (t14 != null) {
            return t14;
        }
        IPropertyContainer iPropertyContainer2 = this.modelElement;
        if (iPropertyContainer2 != null) {
            return (T1) iPropertyContainer2.getDefaultProperty(i);
        }
        return null;
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getOwnProperty(int i) {
        return (T1) this.properties.get(Integer.valueOf(i));
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public <T1> T1 getProperty(int i, T1 t1) {
        T1 t12 = (T1) getProperty(i);
        return t12 != null ? t12 : t1;
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public void setProperty(int i, Object obj) {
        this.properties.put(Integer.valueOf(i), obj);
    }

    public PdfFont getPropertyAsFont(int i) {
        return (PdfFont) getProperty(i);
    }

    public Color getPropertyAsColor(int i) {
        return (Color) getProperty(i);
    }

    public TransparentColor getPropertyAsTransparentColor(int i) {
        return (TransparentColor) getProperty(i);
    }

    public Float getPropertyAsFloat(int i) {
        return NumberUtil.asFloat(getProperty(i));
    }

    public Float getPropertyAsFloat(int i, Float f) {
        return NumberUtil.asFloat(getProperty(i, f));
    }

    public Boolean getPropertyAsBoolean(int i) {
        return (Boolean) getProperty(i);
    }

    public UnitValue getPropertyAsUnitValue(int i) {
        return (UnitValue) getProperty(i);
    }

    public Integer getPropertyAsInteger(int i) {
        return NumberUtil.asInteger(getProperty(i));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<IRenderer> it = this.childRenderers.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
        }
        return sb.toString();
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public LayoutArea getOccupiedArea() {
        return this.occupiedArea;
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public void draw(DrawContext drawContext) {
        applyDestinationsAndAnnotation(drawContext);
        boolean zIsRelativePosition = isRelativePosition();
        if (zIsRelativePosition) {
            applyRelativePositioningTranslation(false);
        }
        beginElementOpacityApplying(drawContext);
        drawBackground(drawContext);
        drawBorder(drawContext);
        drawChildren(drawContext);
        drawPositionedChildren(drawContext);
        endElementOpacityApplying(drawContext);
        if (zIsRelativePosition) {
            applyRelativePositioningTranslation(true);
        }
        this.flushed = true;
    }

    protected void beginElementOpacityApplying(DrawContext drawContext) {
        Float propertyAsFloat = getPropertyAsFloat(92);
        if (propertyAsFloat == null || propertyAsFloat.floatValue() >= 1.0f) {
            return;
        }
        PdfExtGState pdfExtGState = new PdfExtGState();
        pdfExtGState.setStrokeOpacity(propertyAsFloat.floatValue()).setFillOpacity(propertyAsFloat.floatValue());
        drawContext.getCanvas().saveState().setExtGState(pdfExtGState);
    }

    protected void endElementOpacityApplying(DrawContext drawContext) {
        Float propertyAsFloat = getPropertyAsFloat(92);
        if (propertyAsFloat == null || propertyAsFloat.floatValue() >= 1.0f) {
            return;
        }
        drawContext.getCanvas().restoreState();
    }

    public void drawBackground(DrawContext drawContext) {
        Background background = (Background) getProperty(6);
        List<BackgroundImage> list = (List) getProperty(90);
        if (background == null && list == null) {
            return;
        }
        Rectangle occupiedAreaBBox = getOccupiedAreaBBox();
        boolean zIsTaggingEnabled = drawContext.isTaggingEnabled();
        if (zIsTaggingEnabled) {
            drawContext.getCanvas().openTag(new CanvasArtifact());
        }
        boolean zDrawBackgroundImagesList = false;
        Rectangle backgroundArea = getBackgroundArea(applyMargins(occupiedAreaBBox, false));
        if (backgroundArea.getWidth() <= 0.0f || backgroundArea.getHeight() <= 0.0f) {
            LoggerFactory.getLogger((Class<?>) AbstractRenderer.class).info(MessageFormatUtil.format(IoLogMessageConstant.RECTANGLE_HAS_NEGATIVE_OR_ZERO_SIZES, CommonCssConstants.BACKGROUND));
        } else {
            if (background != null) {
                Rectangle rectangleApplyBackgroundBoxProperty = applyBackgroundBoxProperty(backgroundArea.mo3120clone(), background.getBackgroundClip());
                boolean zClipBackgroundArea = clipBackgroundArea(drawContext, rectangleApplyBackgroundBoxProperty);
                drawColorBackground(background, drawContext, rectangleApplyBackgroundBoxProperty);
                zDrawBackgroundImagesList = zClipBackgroundArea;
            }
            if (list != null) {
                zDrawBackgroundImagesList = drawBackgroundImagesList(list, zDrawBackgroundImagesList, drawContext, backgroundArea);
            }
            if (zDrawBackgroundImagesList) {
                drawContext.getCanvas().restoreState();
            }
        }
        if (zIsTaggingEnabled) {
            drawContext.getCanvas().closeTag();
        }
    }

    private void drawColorBackground(Background background, DrawContext drawContext, Rectangle rectangle) {
        TransparentColor transparentColor = new TransparentColor(background.getColor(), background.getOpacity());
        drawContext.getCanvas().saveState().setFillColor(transparentColor.getColor());
        transparentColor.applyFillTransparency(drawContext.getCanvas());
        drawContext.getCanvas().rectangle(((double) rectangle.getX()) - ((double) background.getExtraLeft()), ((double) rectangle.getY()) - ((double) background.getExtraBottom()), ((double) background.getExtraRight()) + ((double) rectangle.getWidth()) + ((double) background.getExtraLeft()), ((double) rectangle.getHeight()) + ((double) background.getExtraTop()) + ((double) background.getExtraBottom())).fill().restoreState();
    }

    private Rectangle applyBackgroundBoxProperty(Rectangle rectangle, BackgroundBox backgroundBox) {
        if (BackgroundBox.PADDING_BOX == backgroundBox) {
            applyBorderBox(rectangle, false);
        } else if (BackgroundBox.CONTENT_BOX == backgroundBox) {
            applyBorderBox(rectangle, false);
            applyPaddings(rectangle, false);
        }
        return rectangle;
    }

    private boolean drawBackgroundImagesList(List<BackgroundImage> list, boolean z, DrawContext drawContext, Rectangle rectangle) {
        for (int size = list.size() - 1; size >= 0; size--) {
            BackgroundImage backgroundImage = list.get(size);
            if (backgroundImage != null && backgroundImage.isBackgroundSpecified()) {
                if (!z) {
                    z = clipBackgroundArea(drawContext, rectangle);
                }
                drawBackgroundImage(backgroundImage, drawContext, rectangle);
            }
        }
        return z;
    }

    private void drawBackgroundImage(BackgroundImage backgroundImage, DrawContext drawContext, Rectangle rectangle) {
        Rectangle rectangle2;
        Rectangle rectangleApplyBackgroundBoxProperty = applyBackgroundBoxProperty(rectangle.mo3120clone(), backgroundImage.getBackgroundOrigin());
        float[] fArrCalculateBackgroundImageSize = BackgroundSizeCalculationUtil.calculateBackgroundImageSize(backgroundImage, rectangleApplyBackgroundBoxProperty.getWidth(), rectangleApplyBackgroundBoxProperty.getHeight());
        PdfXObject image = backgroundImage.getImage();
        if (image == null) {
            image = backgroundImage.getForm();
        }
        UnitValue unitValueCreatePointValue = UnitValue.createPointValue(0.0f);
        UnitValue unitValueCreatePointValue2 = UnitValue.createPointValue(0.0f);
        if (image == null) {
            AbstractLinearGradientBuilder linearGradientBuilder = backgroundImage.getLinearGradientBuilder();
            if (linearGradientBuilder == null) {
                return;
            }
            backgroundImage.getBackgroundPosition().calculatePositionValues(0.0f, 0.0f, unitValueCreatePointValue, unitValueCreatePointValue2);
            image = createXObject(linearGradientBuilder, rectangleApplyBackgroundBoxProperty, drawContext.getDocument());
            rectangle2 = new Rectangle(rectangleApplyBackgroundBoxProperty.getLeft() + unitValueCreatePointValue.getValue(), (rectangleApplyBackgroundBoxProperty.getTop() - fArrCalculateBackgroundImageSize[1]) - unitValueCreatePointValue2.getValue(), fArrCalculateBackgroundImageSize[0], fArrCalculateBackgroundImageSize[1]);
        } else {
            backgroundImage.getBackgroundPosition().calculatePositionValues(rectangleApplyBackgroundBoxProperty.getWidth() - fArrCalculateBackgroundImageSize[0], rectangleApplyBackgroundBoxProperty.getHeight() - fArrCalculateBackgroundImageSize[1], unitValueCreatePointValue, unitValueCreatePointValue2);
            rectangle2 = new Rectangle(rectangleApplyBackgroundBoxProperty.getLeft() + unitValueCreatePointValue.getValue(), (rectangleApplyBackgroundBoxProperty.getTop() - fArrCalculateBackgroundImageSize[1]) - unitValueCreatePointValue2.getValue(), fArrCalculateBackgroundImageSize[0], fArrCalculateBackgroundImageSize[1]);
        }
        PdfXObject pdfXObject = image;
        if (rectangle2.getWidth() <= 0.0f || rectangle2.getHeight() <= 0.0f) {
            LoggerFactory.getLogger((Class<?>) AbstractRenderer.class).info(MessageFormatUtil.format(IoLogMessageConstant.RECTANGLE_HAS_NEGATIVE_OR_ZERO_SIZES, CommonCssConstants.BACKGROUND_IMAGE));
            return;
        }
        drawContext.getCanvas().saveState().rectangle(applyBackgroundBoxProperty(rectangle.mo3120clone(), backgroundImage.getBackgroundClip())).clip().endPath();
        drawPdfXObject(rectangle2, backgroundImage, drawContext, pdfXObject, rectangle, rectangleApplyBackgroundBoxProperty);
        drawContext.getCanvas().restoreState();
    }

    private static void drawPdfXObject(Rectangle rectangle, BackgroundImage backgroundImage, DrawContext drawContext, PdfXObject pdfXObject, Rectangle rectangle2, Rectangle rectangle3) {
        boolean zOverlaps;
        BlendMode blendMode = backgroundImage.getBlendMode();
        if (blendMode != BlendMode.NORMAL) {
            drawContext.getCanvas().setExtGState(new PdfExtGState().setBlendMode(blendMode.getPdfRepresentation()));
        }
        Point pointPrepareRectangleToDrawingAndGetWhitespace = backgroundImage.getRepeat().prepareRectangleToDrawingAndGetWhitespace(rectangle, rectangle3, backgroundImage.getBackgroundSize());
        float x = rectangle.getX();
        boolean z = true;
        int i = 1;
        while (true) {
            drawPdfXObjectHorizontally(rectangle, backgroundImage, drawContext, pdfXObject, rectangle2, z, (float) pointPrepareRectangleToDrawingAndGetWhitespace.getX());
            rectangle.setX(x);
            boolean zOverlaps2 = rectangle.overlaps(rectangle2, 1.0E-4f);
            if (i % 2 == 1) {
                zOverlaps = rectangle.moveDown((rectangle.getHeight() + ((float) pointPrepareRectangleToDrawingAndGetWhitespace.getY())) * i).overlaps(rectangle2, 1.0E-4f);
            } else {
                zOverlaps = rectangle.moveUp((rectangle.getHeight() + ((float) pointPrepareRectangleToDrawingAndGetWhitespace.getY())) * i).overlaps(rectangle2, 1.0E-4f);
            }
            i++;
            if (backgroundImage.getRepeat().isNoRepeatOnYAxis()) {
                return;
            }
            if (!zOverlaps2 && !zOverlaps) {
                return;
            } else {
                z = false;
            }
        }
    }

    private static void drawPdfXObjectHorizontally(Rectangle rectangle, BackgroundImage backgroundImage, DrawContext drawContext, PdfXObject pdfXObject, Rectangle rectangle2, boolean z, float f) {
        boolean zOverlaps;
        int i = 1;
        while (true) {
            if (rectangle.overlaps(rectangle2, 1.0E-4f) || z) {
                drawContext.getCanvas().addXObjectFittedIntoRectangle(pdfXObject, rectangle);
                z = false;
            }
            boolean zOverlaps2 = rectangle.overlaps(rectangle2, 1.0E-4f);
            if (i % 2 == 1) {
                zOverlaps = rectangle.moveRight((rectangle.getWidth() + f) * i).overlaps(rectangle2, 1.0E-4f);
            } else {
                zOverlaps = rectangle.moveLeft((rectangle.getWidth() + f) * i).overlaps(rectangle2, 1.0E-4f);
            }
            i++;
            if (backgroundImage.getRepeat().isNoRepeatOnXAxis()) {
                return;
            }
            if (!zOverlaps2 && !zOverlaps) {
                return;
            }
        }
    }

    public static PdfFormXObject createXObject(AbstractLinearGradientBuilder abstractLinearGradientBuilder, Rectangle rectangle, PdfDocument pdfDocument) {
        Color colorBuildColor;
        Rectangle rectangle2 = new Rectangle(0.0f, 0.0f, rectangle.getWidth(), rectangle.getHeight());
        PdfFormXObject pdfFormXObject = new PdfFormXObject(rectangle2);
        if (abstractLinearGradientBuilder != null && (colorBuildColor = abstractLinearGradientBuilder.buildColor(rectangle2, null, pdfDocument)) != null) {
            new PdfCanvas(pdfFormXObject, pdfDocument).setColor(colorBuildColor, true).rectangle(rectangle2).fill();
        }
        return pdfFormXObject;
    }

    protected boolean clipBorderArea(DrawContext drawContext, Rectangle rectangle) {
        return clipArea(drawContext, rectangle, true, true, false, true);
    }

    protected boolean clipBackgroundArea(DrawContext drawContext, Rectangle rectangle) {
        return clipArea(drawContext, rectangle, true, false, false, false);
    }

    protected boolean clipBackgroundArea(DrawContext drawContext, Rectangle rectangle, boolean z) {
        return clipArea(drawContext, rectangle, true, false, z, false);
    }

    private boolean clipArea(DrawContext drawContext, Rectangle rectangle, boolean z, boolean z2, boolean z3, boolean z4) {
        float[] fArr;
        float[] fArrDecreaseBorderRadiiWithBorders = {0.0f, 0.0f, 0.0f, 0.0f};
        float[] fArr2 = {rectangle.getTop(), rectangle.getRight(), rectangle.getBottom(), rectangle.getLeft()};
        BorderRadius[] borderRadii = getBorderRadii();
        float[] fArrCalculateRadii = calculateRadii(borderRadii, rectangle, false);
        float[] fArrCalculateRadii2 = calculateRadii(borderRadii, rectangle, true);
        boolean z5 = false;
        for (int i = 0; i < 4; i++) {
            fArrCalculateRadii[i] = Math.min(fArrCalculateRadii[i], rectangle.getHeight() / 2.0f);
            float fMin = Math.min(fArrCalculateRadii2[i], rectangle.getWidth() / 2.0f);
            fArrCalculateRadii2[i] = fMin;
            if (!z5 && (0.0f != fArrCalculateRadii[i] || 0.0f != fMin)) {
                z5 = true;
            }
        }
        if (z5) {
            float f = fArr2[3];
            float f2 = fArrCalculateRadii2[0] + f;
            float f3 = fArr2[1];
            float[] fArr3 = {f2, f3 - fArrCalculateRadii2[1], f3 - fArrCalculateRadii2[2], f + fArrCalculateRadii2[3]};
            float f4 = fArr2[0];
            float f5 = f4 - fArrCalculateRadii[0];
            float f6 = f4 - fArrCalculateRadii[1];
            float f7 = fArr2[2];
            float[] fArr4 = {f5, f6, fArrCalculateRadii[2] + f7, f7 + fArrCalculateRadii[3]};
            PdfCanvas canvas = drawContext.getCanvas();
            canvas.saveState();
            if (z3) {
                fArr = fArr4;
                fArrDecreaseBorderRadiiWithBorders = decreaseBorderRadiiWithBorders(fArrCalculateRadii2, fArrCalculateRadii, fArr2, fArr3, fArr);
            } else {
                fArr = fArr4;
            }
            float[] fArrDecreaseBorderRadiiWithBorders2 = fArrDecreaseBorderRadiiWithBorders;
            if (z) {
                clipOuterArea(canvas, fArrCalculateRadii2, fArrCalculateRadii, fArr2, fArr3, fArr);
            }
            if (z4) {
                fArrDecreaseBorderRadiiWithBorders2 = decreaseBorderRadiiWithBorders(fArrCalculateRadii2, fArrCalculateRadii, fArr2, fArr3, fArr);
            }
            if (z2) {
                clipInnerArea(canvas, fArrCalculateRadii2, fArrCalculateRadii, fArr2, fArr3, fArr, fArrDecreaseBorderRadiiWithBorders2);
            }
        }
        return z5;
    }

    private void clipOuterArea(PdfCanvas pdfCanvas, float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5) {
        double d;
        double d2;
        double d3;
        PdfCanvas pdfCanvas2;
        double d4;
        double d5;
        double d6;
        double d7 = fArr3[0];
        char c = 1;
        double d8 = fArr3[1];
        double d9 = fArr3[2];
        double d10 = fArr3[3];
        float f = fArr[0];
        if (0.0f == f && 0.0f == fArr2[0]) {
            d2 = d9;
            d = d8;
            d3 = d10;
        } else {
            d = d8;
            PdfCanvas pdfCanvasArcContinuous = pdfCanvas.moveTo(d10, d9).arcContinuous(d10, ((double) fArr5[0]) - ((double) fArr2[0]), ((double) fArr4[0]) + ((double) f), d7, 180.0d, -90.0d);
            d7 = d7;
            d2 = d9;
            d3 = d10;
            pdfCanvasArcContinuous.lineTo(d, d7).lineTo(d, d2).lineTo(d3, d2);
            pdfCanvas.clip().endPath();
            c = 1;
        }
        float f2 = fArr[c];
        if (0.0f == f2 && 0.0f == fArr2[c]) {
            pdfCanvas2 = pdfCanvas;
            d4 = d2;
            d5 = d3;
            d6 = d7;
        } else {
            double d11 = ((double) fArr4[c]) - ((double) f2);
            double d12 = ((double) fArr5[c]) - ((double) fArr2[c]);
            pdfCanvas2 = pdfCanvas;
            d4 = d2;
            d5 = d3;
            d6 = d7;
            pdfCanvas2.moveTo(d3, d7).arcContinuous(d11, d7, d, d12, 90.0d, -90.0d).lineTo(d, d4).lineTo(d5, d4).lineTo(d5, d6);
            pdfCanvas.clip().endPath();
        }
        float f3 = fArr[2];
        if (0.0f != f3 || 0.0f != fArr2[2]) {
            pdfCanvas2.moveTo(d, d6).arcContinuous(d, ((double) fArr5[2]) + ((double) fArr2[2]), ((double) fArr4[2]) - ((double) f3), d4, 0.0d, -90.0d).lineTo(d5, d4).lineTo(d5, d6).lineTo(d, d6);
            pdfCanvas.clip().endPath();
        }
        float f4 = fArr[3];
        if (0.0f == f4 && 0.0f == fArr2[3]) {
            return;
        }
        pdfCanvas2.moveTo(d, d4).arcContinuous(((double) fArr4[3]) + ((double) f4), d4, d5, ((double) fArr5[3]) + ((double) fArr2[3]), 270.0d, -90.0d).lineTo(d5, d6).lineTo(d, d6).lineTo(d, d4);
        pdfCanvas.clip().endPath();
    }

    private void clipInnerArea(PdfCanvas pdfCanvas, float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5, float[] fArr6) {
        double d;
        double d2;
        double d3;
        double d4;
        double d5;
        double d6;
        double d7;
        double d8;
        double d9;
        double d10;
        double d11;
        double d12;
        double d13;
        double d14;
        char c;
        double d15;
        double d16;
        double d17;
        double d18;
        double d19;
        double d20;
        double d21;
        double d22;
        double d23;
        double d24;
        double d25;
        double d26;
        double d27 = fArr3[0];
        double d28 = fArr3[1];
        double d29 = fArr3[2];
        double d30 = fArr3[3];
        double d31 = fArr4[0];
        double d32 = fArr5[0];
        double d33 = fArr4[1];
        double d34 = fArr5[1];
        double d35 = fArr4[2];
        double d36 = fArr5[2];
        double d37 = fArr4[3];
        double d38 = fArr5[3];
        double d39 = fArr6[0];
        double d40 = fArr6[1];
        double d41 = fArr6[2];
        double d42 = fArr6[3];
        float f = fArr[0];
        if (0.0f == f && 0.0f == fArr2[0]) {
            d4 = d38;
            c = 1;
            d2 = d31;
            d3 = d30;
            d = d29;
            d5 = d42;
            d14 = d28;
            d6 = d33;
            d7 = d34;
            d8 = d35;
            d9 = d36;
            d10 = d37;
            d11 = d41;
            d12 = d40;
            d13 = d39;
        } else {
            d = d29;
            d2 = d31;
            d3 = d30;
            d4 = d38;
            d5 = d42;
            d6 = d33;
            d7 = d34;
            d8 = d35;
            d9 = d36;
            d10 = d37;
            d11 = d41;
            d12 = d40;
            d13 = d39;
            PdfCanvas pdfCanvasArc = pdfCanvas.arc(d30, d32 - ((double) fArr2[0]), d31 + ((double) f), d27, 180.0d, -90.0d);
            d27 = d27;
            d14 = d28;
            d32 = d32;
            double d43 = d3 - d5;
            double d44 = d - d11;
            double d45 = d14 + d12;
            PdfCanvas pdfCanvasLineTo = pdfCanvasArc.lineTo(d6, d27).lineTo(d14, d7).lineTo(d14, d9).lineTo(d8, d).lineTo(d10, d).lineTo(d3, d4).lineTo(d3, d32).lineTo(d43, d32).lineTo(d43, d44).lineTo(d45, d44);
            double d46 = d27 + d13;
            pdfCanvasLineTo.lineTo(d45, d46).lineTo(d43, d46).lineTo(d43, d32);
            pdfCanvas.clip().endPath();
            c = 1;
        }
        float f2 = fArr[c];
        if (0.0f == f2 && 0.0f == fArr2[c]) {
            d20 = d6;
            d19 = d32;
            d16 = d14;
            d21 = d27;
            d18 = d;
            d15 = d7;
            d17 = d9;
        } else {
            double d47 = d6;
            double d48 = d32;
            double d49 = d4;
            double d50 = d3;
            double d51 = d10;
            d15 = d7;
            d16 = d14;
            double d52 = d27;
            d17 = d9;
            d18 = d;
            d4 = d49;
            d10 = d51;
            d19 = d48;
            PdfCanvas pdfCanvasLineTo2 = pdfCanvas.arc(d6 - ((double) f2), d27, d14, d7 - ((double) fArr2[c]), 90.0d, -90.0d).lineTo(d16, d17).lineTo(d8, d18).lineTo(d51, d18).lineTo(d50, d49).lineTo(d50, d48).lineTo(d2, d52);
            d20 = d47;
            double d53 = d52 + d13;
            d21 = d52;
            double d54 = d50 - d5;
            d3 = d50;
            double d55 = d18 - d11;
            PdfCanvas pdfCanvasLineTo3 = pdfCanvasLineTo2.lineTo(d20, d52).lineTo(d20, d53).lineTo(d54, d53).lineTo(d54, d55);
            double d56 = d16 + d12;
            pdfCanvasLineTo3.lineTo(d56, d55).lineTo(d56, d53).lineTo(d20, d53);
            pdfCanvas.clip().endPath();
        }
        float f3 = fArr[2];
        if (0.0f == f3 && 0.0f == fArr2[2]) {
            d26 = d16;
            d24 = d20;
            d22 = d3;
            d23 = d21;
            d25 = d15;
        } else {
            d22 = d3;
            d23 = d21;
            PdfCanvas pdfCanvasLineTo4 = pdfCanvas.arc(d16, d17 + ((double) fArr2[2]), d8 - ((double) f3), d18, 0.0d, -90.0d).lineTo(d10, d18).lineTo(d22, d4).lineTo(d22, d19).lineTo(d2, d23).lineTo(d20, d23);
            d24 = d20;
            double d57 = d15;
            PdfCanvas pdfCanvasLineTo5 = pdfCanvasLineTo4.lineTo(d16, d57).lineTo(d16, d17);
            d25 = d57;
            double d58 = d16 + d12;
            d26 = d16;
            double d59 = d23 + d13;
            double d60 = d22 - d5;
            double d61 = d18 - d11;
            pdfCanvasLineTo5.lineTo(d58, d17).lineTo(d58, d59).lineTo(d60, d59).lineTo(d60, d61).lineTo(d58, d61).lineTo(d58, d17);
            pdfCanvas.clip().endPath();
        }
        float f4 = fArr[3];
        if (0.0f == f4 && 0.0f == fArr2[3]) {
            return;
        }
        double d62 = d26;
        PdfCanvas pdfCanvasLineTo6 = pdfCanvas.arc(d10 + ((double) f4), d18, d22, d4 + ((double) fArr2[3]), 270.0d, -90.0d).lineTo(d22, d19).lineTo(d2, d23).lineTo(d24, d23).lineTo(d62, d25).lineTo(d62, d17).lineTo(d8, d18);
        double d63 = d10;
        double d64 = d18 - d11;
        double d65 = d62 + d12;
        double d66 = d23 + d13;
        double d67 = d22 - d5;
        pdfCanvasLineTo6.lineTo(d63, d18).lineTo(d63, d64).lineTo(d65, d64).lineTo(d65, d66).lineTo(d67, d66).lineTo(d67, d64).lineTo(d63, d64);
        pdfCanvas.clip().endPath();
    }

    private float[] decreaseBorderRadiiWithBorders(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5) {
        Border[] borders = getBorders();
        float[] fArr6 = {0.0f, 0.0f, 0.0f, 0.0f};
        Border border = borders[0];
        if (border != null) {
            fArr6[0] = border.getWidth();
            float width = fArr3[0] - borders[0].getWidth();
            fArr3[0] = width;
            if (fArr5[1] > width) {
                fArr5[1] = width;
            }
            if (fArr5[0] > width) {
                fArr5[0] = width;
            }
            fArr2[0] = Math.max(0.0f, fArr2[0] - borders[0].getWidth());
            fArr2[1] = Math.max(0.0f, fArr2[1] - borders[0].getWidth());
        }
        Border border2 = borders[1];
        if (border2 != null) {
            fArr6[1] = border2.getWidth();
            float width2 = fArr3[1] - borders[1].getWidth();
            fArr3[1] = width2;
            if (fArr4[1] > width2) {
                fArr4[1] = width2;
            }
            float f = fArr4[2];
            float f2 = fArr3[1];
            if (f > f2) {
                fArr4[2] = f2;
            }
            fArr[1] = Math.max(0.0f, fArr[1] - borders[1].getWidth());
            fArr[2] = Math.max(0.0f, fArr[2] - borders[1].getWidth());
        }
        Border border3 = borders[2];
        if (border3 != null) {
            fArr6[2] = border3.getWidth();
            float width3 = fArr3[2] + borders[2].getWidth();
            fArr3[2] = width3;
            if (fArr5[2] < width3) {
                fArr5[2] = width3;
            }
            float f3 = fArr5[3];
            float f4 = fArr3[2];
            if (f3 < f4) {
                fArr5[3] = f4;
            }
            fArr2[2] = Math.max(0.0f, fArr2[2] - borders[2].getWidth());
            fArr2[3] = Math.max(0.0f, fArr2[3] - borders[2].getWidth());
        }
        Border border4 = borders[3];
        if (border4 != null) {
            fArr6[3] = border4.getWidth();
            float width4 = fArr3[3] + borders[3].getWidth();
            fArr3[3] = width4;
            if (fArr4[3] < width4) {
                fArr4[3] = width4;
            }
            float f5 = fArr4[0];
            float f6 = fArr3[3];
            if (f5 < f6) {
                fArr4[0] = f6;
            }
            fArr[3] = Math.max(0.0f, fArr[3] - borders[3].getWidth());
            fArr[0] = Math.max(0.0f, fArr[0] - borders[3].getWidth());
        }
        return fArr6;
    }

    public void drawChildren(DrawContext drawContext) {
        ArrayList arrayList = new ArrayList();
        for (IRenderer iRenderer : this.childRenderers) {
            Transform transform = (Transform) iRenderer.getProperty(53);
            RootRenderer rootRenderer = getRootRenderer();
            processWaitingDrawing(iRenderer, transform, (rootRenderer == null || rootRenderer.waitingDrawingElements.contains(iRenderer)) ? arrayList : rootRenderer.waitingDrawingElements);
            if (!FloatingHelper.isRendererFloating(iRenderer) && transform == null) {
                iRenderer.draw(drawContext);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((IRenderer) it.next()).draw(drawContext);
        }
    }

    public void drawBorder(DrawContext drawContext) {
        PdfCanvas pdfCanvas;
        Border[] borders = getBorders();
        boolean z = false;
        for (Border border : borders) {
            z = z || border != null;
        }
        if (z) {
            Border border2 = borders[0];
            float width = border2 != null ? border2.getWidth() : 0.0f;
            Border border3 = borders[1];
            float width2 = border3 != null ? border3.getWidth() : 0.0f;
            Border border4 = borders[2];
            float width3 = border4 != null ? border4.getWidth() : 0.0f;
            Border border5 = borders[3];
            float width4 = border5 != null ? border5.getWidth() : 0.0f;
            Rectangle borderAreaBBox = getBorderAreaBBox();
            if (borderAreaBBox.getWidth() < 0.0f || borderAreaBBox.getHeight() < 0.0f) {
                LoggerFactory.getLogger((Class<?>) AbstractRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.RECTANGLE_HAS_NEGATIVE_SIZE, CommonCssConstants.BORDER));
                return;
            }
            float x = borderAreaBBox.getX();
            float y = borderAreaBBox.getY();
            float x2 = borderAreaBBox.getX() + borderAreaBBox.getWidth();
            float y2 = borderAreaBBox.getY() + borderAreaBBox.getHeight();
            boolean zIsTaggingEnabled = drawContext.isTaggingEnabled();
            PdfCanvas canvas = drawContext.getCanvas();
            if (zIsTaggingEnabled) {
                canvas.openTag(new CanvasArtifact());
            }
            Rectangle rectangleApplyMargins = applyMargins(this.occupiedArea.getBBox().mo3120clone(), getMargins(), false);
            boolean zClipBorderArea = clipBorderArea(drawContext, rectangleApplyMargins);
            BorderRadius[] borderRadii = getBorderRadii();
            float[] fArrCalculateRadii = calculateRadii(borderRadii, rectangleApplyMargins, false);
            float[] fArrCalculateRadii2 = calculateRadii(borderRadii, rectangleApplyMargins, true);
            for (int i = 0; i < 4; i++) {
                fArrCalculateRadii[i] = Math.min(fArrCalculateRadii[i], rectangleApplyMargins.getHeight() / 2.0f);
                fArrCalculateRadii2[i] = Math.min(fArrCalculateRadii2[i], rectangleApplyMargins.getWidth() / 2.0f);
            }
            Border border6 = borders[0];
            if (border6 != null) {
                float f = fArrCalculateRadii2[0];
                if (0.0f != f || 0.0f != fArrCalculateRadii[0] || 0.0f != fArrCalculateRadii2[1] || 0.0f != fArrCalculateRadii[1]) {
                    pdfCanvas = canvas;
                    border6.draw(pdfCanvas, x, y2, x2, y2, f, fArrCalculateRadii[0], fArrCalculateRadii2[1], fArrCalculateRadii[1], Border.Side.TOP, width4, width2);
                } else {
                    pdfCanvas = canvas;
                    border6.draw(canvas, x, y2, x2, y2, Border.Side.TOP, width4, width2);
                }
            } else {
                pdfCanvas = canvas;
            }
            Border border7 = borders[1];
            if (border7 != null) {
                float f2 = fArrCalculateRadii2[1];
                if (0.0f != f2 || 0.0f != fArrCalculateRadii[1] || 0.0f != fArrCalculateRadii2[2] || 0.0f != fArrCalculateRadii[2]) {
                    border7.draw(pdfCanvas, x2, y2, x2, y, f2, fArrCalculateRadii[1], fArrCalculateRadii2[2], fArrCalculateRadii[2], Border.Side.RIGHT, width, width3);
                } else {
                    border7.draw(pdfCanvas, x2, y2, x2, y, Border.Side.RIGHT, width, width3);
                }
            }
            Border border8 = borders[2];
            if (border8 != null) {
                float f3 = fArrCalculateRadii2[2];
                if (0.0f != f3 || 0.0f != fArrCalculateRadii[2] || 0.0f != fArrCalculateRadii2[3] || 0.0f != fArrCalculateRadii[3]) {
                    border8.draw(pdfCanvas, x2, y, x, y, f3, fArrCalculateRadii[2], fArrCalculateRadii2[3], fArrCalculateRadii[3], Border.Side.BOTTOM, width2, width4);
                } else {
                    border8.draw(pdfCanvas, x2, y, x, y, Border.Side.BOTTOM, width2, width4);
                }
            }
            Border border9 = borders[3];
            if (border9 != null) {
                float f4 = fArrCalculateRadii2[3];
                if (0.0f != f4 || 0.0f != fArrCalculateRadii[3] || 0.0f != fArrCalculateRadii2[0] || 0.0f != fArrCalculateRadii[0]) {
                    border9.draw(pdfCanvas, x, y, x, y2, f4, fArrCalculateRadii[3], fArrCalculateRadii2[0], fArrCalculateRadii[0], Border.Side.LEFT, width3, width);
                } else {
                    border9.draw(pdfCanvas, x, y, x, y2, Border.Side.LEFT, width3, width);
                }
            }
            if (zClipBorderArea) {
                drawContext.getCanvas().restoreState();
            }
            if (zIsTaggingEnabled) {
                pdfCanvas.closeTag();
            }
        }
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public boolean isFlushed() {
        return this.flushed;
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public IRenderer setParent(IRenderer iRenderer) {
        this.parent = iRenderer;
        return this;
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public IRenderer getParent() {
        return this.parent;
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public void move(float f, float f2) {
        Logger logger = LoggerFactory.getLogger((Class<?>) AbstractRenderer.class);
        LayoutArea layoutArea = this.occupiedArea;
        if (layoutArea == null) {
            logger.error(MessageFormatUtil.format(IoLogMessageConstant.OCCUPIED_AREA_HAS_NOT_BEEN_INITIALIZED, "Moving won't be performed."));
            return;
        }
        layoutArea.getBBox().moveRight(f);
        this.occupiedArea.getBBox().moveUp(f2);
        Iterator<IRenderer> it = this.childRenderers.iterator();
        while (it.hasNext()) {
            it.next().move(f, f2);
        }
        Iterator<IRenderer> it2 = this.positionedRenderers.iterator();
        while (it2.hasNext()) {
            it2.next().move(f, f2);
        }
    }

    public List<Rectangle> initElementAreas(LayoutArea layoutArea) {
        return Collections.singletonList(layoutArea.getBBox());
    }

    public Rectangle getOccupiedAreaBBox() {
        return this.occupiedArea.getBBox().mo3120clone();
    }

    public Rectangle getBorderAreaBBox() {
        Rectangle occupiedAreaBBox = getOccupiedAreaBBox();
        applyMargins(occupiedAreaBBox, false);
        applyBorderBox(occupiedAreaBBox, false);
        return occupiedAreaBBox;
    }

    public Rectangle getInnerAreaBBox() {
        Rectangle occupiedAreaBBox = getOccupiedAreaBBox();
        applyMargins(occupiedAreaBBox, false);
        applyBorderBox(occupiedAreaBBox, false);
        applyPaddings(occupiedAreaBBox, false);
        return occupiedAreaBBox;
    }

    Rectangle applyMarginsBordersPaddings(Rectangle rectangle, boolean z) {
        applyMargins(rectangle, z);
        applyBorderBox(rectangle, z);
        applyPaddings(rectangle, z);
        return rectangle;
    }

    public Rectangle applyMargins(Rectangle rectangle, boolean z) {
        return applyMargins(rectangle, getMargins(), z);
    }

    public Rectangle applyBorderBox(Rectangle rectangle, boolean z) {
        return applyBorderBox(rectangle, getBorders(), z);
    }

    public Rectangle applyPaddings(Rectangle rectangle, boolean z) {
        return applyPaddings(rectangle, getPaddings(), z);
    }

    public boolean isFirstOnRootArea() {
        return isFirstOnRootArea(false);
    }

    protected void applyDestinationsAndAnnotation(DrawContext drawContext) {
        applyDestination(drawContext.getDocument());
        applyAction(drawContext.getDocument());
        applyLinkAnnotation(drawContext.getDocument());
    }

    protected static boolean isBorderBoxSizing(IRenderer iRenderer) {
        BoxSizingPropertyValue boxSizingPropertyValue = (BoxSizingPropertyValue) iRenderer.getProperty(105);
        return boxSizingPropertyValue != null && boxSizingPropertyValue.equals(BoxSizingPropertyValue.BORDER_BOX);
    }

    protected boolean isOverflowProperty(OverflowPropertyValue overflowPropertyValue, int i) {
        return isOverflowProperty(overflowPropertyValue, (OverflowPropertyValue) getProperty(i));
    }

    protected static boolean isOverflowProperty(OverflowPropertyValue overflowPropertyValue, IRenderer iRenderer, int i) {
        return isOverflowProperty(overflowPropertyValue, (OverflowPropertyValue) iRenderer.getProperty(i));
    }

    protected static boolean isOverflowProperty(OverflowPropertyValue overflowPropertyValue, OverflowPropertyValue overflowPropertyValue2) {
        return overflowPropertyValue.equals(overflowPropertyValue2) || (overflowPropertyValue.equals(OverflowPropertyValue.FIT) && overflowPropertyValue2 == null);
    }

    protected static boolean isOverflowFit(OverflowPropertyValue overflowPropertyValue) {
        return overflowPropertyValue == null || OverflowPropertyValue.FIT.equals(overflowPropertyValue);
    }

    <T> T replaceOwnProperty(int i, T t) {
        T t2 = (T) getOwnProperty(i);
        setProperty(i, t);
        return t2;
    }

    <T> void returnBackOwnProperty(int i, T t) {
        if (t == null) {
            deleteOwnProperty(i);
        } else {
            setProperty(i, t);
        }
    }

    static void processWaitingDrawing(IRenderer iRenderer, Transform transform, List<IRenderer> list) {
        if (FloatingHelper.isRendererFloating(iRenderer) || transform != null) {
            list.add(iRenderer);
        }
        Border border = (Border) iRenderer.getProperty(106);
        if (border == null || !(iRenderer instanceof AbstractRenderer)) {
            return;
        }
        AbstractRenderer abstractRenderer = (AbstractRenderer) iRenderer;
        if (abstractRenderer.isRelativePosition()) {
            abstractRenderer.applyRelativePositioningTranslation(false);
        }
        Div neutralRole = new Div().setNeutralRole();
        if (transform != null) {
            neutralRole.setProperty(53, transform);
        }
        neutralRole.setProperty(9, border);
        float width = ((Border) neutralRole.getProperty(9)).getWidth();
        if (abstractRenderer.getPropertyAsFloat(107) != null) {
            width += abstractRenderer.getPropertyAsFloat(107).floatValue();
        }
        DivRenderer divRenderer = new DivRenderer(neutralRole);
        divRenderer.setParent(abstractRenderer.getParent());
        Rectangle rectangleMoveDown = abstractRenderer.applyMargins(abstractRenderer.occupiedArea.mo3122clone().getBBox(), false).moveLeft(width).moveDown(width);
        float f = width * 2.0f;
        rectangleMoveDown.setWidth(rectangleMoveDown.getWidth() + f).setHeight(rectangleMoveDown.getHeight() + f);
        divRenderer.occupiedArea = new LayoutArea(abstractRenderer.getOccupiedArea().getPageNumber(), rectangleMoveDown);
        float width2 = ((Border) divRenderer.getProperty(9)).getWidth() * 2.0f;
        if (rectangleMoveDown.getWidth() >= width2 && rectangleMoveDown.getHeight() >= width2) {
            list.add(divRenderer);
        }
        if (abstractRenderer.isRelativePosition()) {
            abstractRenderer.applyRelativePositioningTranslation(true);
        }
    }

    protected Float retrieveWidth(float f) {
        Float fRetrieveUnitValue = retrieveUnitValue(f, 80);
        Float fRetrieveUnitValue2 = retrieveUnitValue(f, 79);
        if (fRetrieveUnitValue2 != null && fRetrieveUnitValue != null && fRetrieveUnitValue.floatValue() > fRetrieveUnitValue2.floatValue()) {
            fRetrieveUnitValue2 = fRetrieveUnitValue;
        }
        Float fRetrieveUnitValue3 = retrieveUnitValue(f, 77);
        if (fRetrieveUnitValue3 != null) {
            if (fRetrieveUnitValue2 != null) {
                if (fRetrieveUnitValue3.floatValue() <= fRetrieveUnitValue2.floatValue()) {
                    fRetrieveUnitValue2 = fRetrieveUnitValue3;
                }
                fRetrieveUnitValue3 = fRetrieveUnitValue2;
            }
            if (fRetrieveUnitValue != null) {
                if (fRetrieveUnitValue3.floatValue() >= fRetrieveUnitValue.floatValue()) {
                    fRetrieveUnitValue = fRetrieveUnitValue3;
                }
                fRetrieveUnitValue3 = fRetrieveUnitValue;
            }
        } else if (fRetrieveUnitValue2 != null) {
            if (fRetrieveUnitValue2.floatValue() >= f) {
                fRetrieveUnitValue2 = null;
            }
            fRetrieveUnitValue3 = fRetrieveUnitValue2;
        }
        if (fRetrieveUnitValue3 != null && isBorderBoxSizing(this)) {
            fRetrieveUnitValue3 = Float.valueOf(fRetrieveUnitValue3.floatValue() - calculatePaddingBorderWidth(this));
        }
        if (fRetrieveUnitValue3 != null) {
            return Float.valueOf(Math.max(0.0f, fRetrieveUnitValue3.floatValue()));
        }
        return null;
    }

    protected Float retrieveMaxWidth(float f) {
        Float fRetrieveUnitValue = retrieveUnitValue(f, 79);
        if (fRetrieveUnitValue == null) {
            return null;
        }
        Float fRetrieveUnitValue2 = retrieveUnitValue(f, 80);
        if (fRetrieveUnitValue2 != null && fRetrieveUnitValue2.floatValue() > fRetrieveUnitValue.floatValue()) {
            fRetrieveUnitValue = fRetrieveUnitValue2;
        }
        if (isBorderBoxSizing(this)) {
            fRetrieveUnitValue = Float.valueOf(fRetrieveUnitValue.floatValue() - calculatePaddingBorderWidth(this));
        }
        return Float.valueOf(fRetrieveUnitValue.floatValue() > 0.0f ? fRetrieveUnitValue.floatValue() : 0.0f);
    }

    protected Float retrieveMinWidth(float f) {
        Float fRetrieveUnitValue = retrieveUnitValue(f, 80);
        if (fRetrieveUnitValue == null) {
            return null;
        }
        if (isBorderBoxSizing(this)) {
            fRetrieveUnitValue = Float.valueOf(fRetrieveUnitValue.floatValue() - calculatePaddingBorderWidth(this));
        }
        return Float.valueOf(fRetrieveUnitValue.floatValue() > 0.0f ? fRetrieveUnitValue.floatValue() : 0.0f);
    }

    protected void updateWidth(UnitValue unitValue) {
        if (unitValue.isPointValue() && isBorderBoxSizing(this)) {
            unitValue.setValue(unitValue.getValue() + calculatePaddingBorderWidth(this));
        }
        setProperty(77, unitValue);
    }

    protected Float retrieveHeight() {
        Float fValueOf;
        Float fValueOf2;
        Float fValueOf3;
        UnitValue propertyAsUnitValue = getPropertyAsUnitValue(27);
        Float fRetrieveResolvedParentDeclaredHeight = retrieveResolvedParentDeclaredHeight();
        if (propertyAsUnitValue != null) {
            if (fRetrieveResolvedParentDeclaredHeight == null) {
                if (propertyAsUnitValue.isPercentValue()) {
                    fValueOf3 = null;
                    fValueOf = null;
                    fValueOf2 = null;
                } else {
                    UnitValue propertyAsUnitValue2 = getPropertyAsUnitValue(85);
                    fValueOf3 = (propertyAsUnitValue2 == null || !propertyAsUnitValue2.isPointValue()) ? null : Float.valueOf(propertyAsUnitValue2.getValue());
                    UnitValue propertyAsUnitValue3 = getPropertyAsUnitValue(84);
                    fValueOf2 = (propertyAsUnitValue3 == null || !propertyAsUnitValue3.isPointValue()) ? null : Float.valueOf(propertyAsUnitValue3.getValue());
                    fValueOf = Float.valueOf(propertyAsUnitValue.getValue());
                }
            } else {
                Float fRetrieveUnitValue = retrieveUnitValue(fRetrieveResolvedParentDeclaredHeight.floatValue(), 85);
                Float fRetrieveUnitValue2 = retrieveUnitValue(fRetrieveResolvedParentDeclaredHeight.floatValue(), 84);
                Float fRetrieveUnitValue3 = retrieveUnitValue(fRetrieveResolvedParentDeclaredHeight.floatValue(), 27);
                fValueOf2 = fRetrieveUnitValue2;
                fValueOf = fRetrieveUnitValue3;
                fValueOf3 = fRetrieveUnitValue;
            }
            if (fValueOf2 != null && fValueOf3 != null && fValueOf3.floatValue() > fValueOf2.floatValue()) {
                fValueOf2 = fValueOf3;
            }
            if (fValueOf != null) {
                if (fValueOf2 != null && fValueOf.floatValue() > fValueOf2.floatValue()) {
                    fValueOf = fValueOf2;
                }
                if (fValueOf3 != null) {
                    if (fValueOf.floatValue() >= fValueOf3.floatValue()) {
                        fValueOf3 = fValueOf;
                    }
                    fValueOf = fValueOf3;
                }
            }
            if (fValueOf != null && isBorderBoxSizing(this)) {
                fValueOf = Float.valueOf(fValueOf.floatValue() - calculatePaddingBorderHeight(this));
            }
        } else {
            fValueOf = null;
        }
        if (fValueOf != null) {
            return Float.valueOf(Math.max(0.0f, fValueOf.floatValue()));
        }
        return null;
    }

    private float[] calculateRadii(BorderRadius[] borderRadiusArr, Rectangle rectangle, boolean z) {
        float[] fArr = new float[4];
        for (int i = 0; i < 4; i++) {
            BorderRadius borderRadius = borderRadiusArr[i];
            if (borderRadius != null) {
                UnitValue horizontalRadius = z ? borderRadius.getHorizontalRadius() : borderRadius.getVerticalRadius();
                if (horizontalRadius != null) {
                    if (horizontalRadius.getUnitType() == 2) {
                        fArr[i] = (horizontalRadius.getValue() * (z ? rectangle.getWidth() : rectangle.getHeight())) / 100.0f;
                    } else {
                        fArr[i] = horizontalRadius.getValue();
                    }
                } else {
                    fArr[i] = 0.0f;
                }
            } else {
                fArr[i] = 0.0f;
            }
        }
        return fArr;
    }

    protected void updateHeight(UnitValue unitValue) {
        if (isBorderBoxSizing(this) && unitValue.isPointValue()) {
            unitValue.setValue(unitValue.getValue() + calculatePaddingBorderHeight(this));
        }
        setProperty(27, unitValue);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.Float retrieveMaxHeight() {
        /*
            r5 = this;
            java.lang.Float r0 = r5.retrieveDirectParentDeclaredHeight()
            r1 = 84
            com.itextpdf.layout.properties.UnitValue r2 = r5.getPropertyAsUnitValue(r1)
            if (r2 == 0) goto L7c
            r3 = 0
            if (r0 != 0) goto L3b
            boolean r0 = r2.isPercentValue()
            if (r0 == 0) goto L17
            r0 = r3
            goto L46
        L17:
            java.lang.Float r0 = r5.retrieveMinHeight()
            r1 = 85
            com.itextpdf.layout.properties.UnitValue r1 = r5.getPropertyAsUnitValue(r1)
            if (r1 == 0) goto L31
            boolean r3 = r1.isPointValue()
            if (r3 == 0) goto L31
            float r0 = r1.getValue()
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
        L31:
            r3 = r0
            float r0 = r2.getValue()
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            goto L43
        L3b:
            float r0 = r0.floatValue()
            java.lang.Float r0 = r5.retrieveUnitValue(r0, r1)
        L43:
            r4 = r3
            r3 = r0
            r0 = r4
        L46:
            if (r3 == 0) goto L7c
            if (r0 == 0) goto L57
            float r1 = r0.floatValue()
            float r2 = r3.floatValue()
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 <= 0) goto L57
            r3 = r0
        L57:
            boolean r0 = isBorderBoxSizing(r5)
            if (r0 == 0) goto L6a
            float r0 = r3.floatValue()
            float r1 = calculatePaddingBorderHeight(r5)
            float r0 = r0 - r1
            java.lang.Float r3 = java.lang.Float.valueOf(r0)
        L6a:
            float r0 = r3.floatValue()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L77
            float r1 = r3.floatValue()
        L77:
            java.lang.Float r0 = java.lang.Float.valueOf(r1)
            return r0
        L7c:
            java.lang.Float r0 = r5.retrieveHeight()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.AbstractRenderer.retrieveMaxHeight():java.lang.Float");
    }

    protected void updateMaxHeight(UnitValue unitValue) {
        if (isBorderBoxSizing(this) && unitValue.isPointValue()) {
            unitValue.setValue(unitValue.getValue() + calculatePaddingBorderHeight(this));
        }
        setProperty(84, unitValue);
    }

    protected Float retrieveMinHeight() {
        Float fRetrieveUnitValue;
        Float fRetrieveDirectParentDeclaredHeight = retrieveDirectParentDeclaredHeight();
        UnitValue propertyAsUnitValue = getPropertyAsUnitValue(this, 85);
        if (propertyAsUnitValue != null) {
            if (fRetrieveDirectParentDeclaredHeight == null) {
                fRetrieveUnitValue = propertyAsUnitValue.isPercentValue() ? null : Float.valueOf(propertyAsUnitValue.getValue());
            } else {
                fRetrieveUnitValue = retrieveUnitValue(fRetrieveDirectParentDeclaredHeight.floatValue(), 85);
            }
            if (fRetrieveUnitValue != null) {
                if (isBorderBoxSizing(this)) {
                    fRetrieveUnitValue = Float.valueOf(fRetrieveUnitValue.floatValue() - calculatePaddingBorderHeight(this));
                }
                return Float.valueOf(fRetrieveUnitValue.floatValue() > 0.0f ? fRetrieveUnitValue.floatValue() : 0.0f);
            }
        }
        return retrieveHeight();
    }

    protected void updateMinHeight(UnitValue unitValue) {
        if (isBorderBoxSizing(this) && unitValue.isPointValue()) {
            unitValue.setValue(unitValue.getValue() + calculatePaddingBorderHeight(this));
        }
        setProperty(85, unitValue);
    }

    protected Float retrieveUnitValue(float f, int i) {
        return retrieveUnitValue(f, i, false);
    }

    protected Float retrieveUnitValue(float f, int i, boolean z) {
        UnitValue unitValue = (UnitValue) getProperty(i);
        if (z && unitValue.getUnitType() == 1) {
            LoggerFactory.getLogger((Class<?>) AbstractRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, Integer.valueOf(i)));
        }
        if (unitValue == null) {
            return null;
        }
        if (unitValue.getUnitType() != 2) {
            return Float.valueOf(unitValue.getValue());
        }
        if (unitValue.getValue() != 100.0f) {
            f = (f * unitValue.getValue()) / 100.0f;
        }
        return Float.valueOf(f);
    }

    protected Map<Integer, Object> getOwnProperties() {
        return this.properties;
    }

    protected void addAllProperties(Map<Integer, Object> map) {
        this.properties.putAll(map);
    }

    protected Float getFirstYLineRecursively() {
        if (this.childRenderers.size() == 0) {
            return null;
        }
        return ((AbstractRenderer) this.childRenderers.get(0)).getFirstYLineRecursively();
    }

    protected Float getLastYLineRecursively() {
        Float lastYLineRecursively;
        if (!allowLastYLineRecursiveExtraction()) {
            return null;
        }
        for (int size = this.childRenderers.size() - 1; size >= 0; size--) {
            IRenderer iRenderer = this.childRenderers.get(size);
            if ((iRenderer instanceof AbstractRenderer) && (lastYLineRecursively = ((AbstractRenderer) iRenderer).getLastYLineRecursively()) != null) {
                return lastYLineRecursively;
            }
        }
        return null;
    }

    protected boolean allowLastYLineRecursiveExtraction() {
        return (isOverflowProperty(OverflowPropertyValue.HIDDEN, 103) || isOverflowProperty(OverflowPropertyValue.HIDDEN, 104)) ? false : true;
    }

    protected Rectangle applyMargins(Rectangle rectangle, UnitValue[] unitValueArr, boolean z) {
        if (!unitValueArr[0].isPointValue()) {
            LoggerFactory.getLogger((Class<?>) AbstractRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 46));
        }
        if (!unitValueArr[1].isPointValue()) {
            LoggerFactory.getLogger((Class<?>) AbstractRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 45));
        }
        if (!unitValueArr[2].isPointValue()) {
            LoggerFactory.getLogger((Class<?>) AbstractRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 43));
        }
        if (!unitValueArr[3].isPointValue()) {
            LoggerFactory.getLogger((Class<?>) AbstractRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 44));
        }
        return rectangle.applyMargins(unitValueArr[0].getValue(), unitValueArr[1].getValue(), unitValueArr[2].getValue(), unitValueArr[3].getValue(), z);
    }

    protected UnitValue[] getMargins() {
        return getMargins(this);
    }

    protected UnitValue[] getPaddings() {
        return getPaddings(this);
    }

    protected Rectangle applyPaddings(Rectangle rectangle, UnitValue[] unitValueArr, boolean z) {
        UnitValue unitValue = unitValueArr[0];
        if (unitValue != null && !unitValue.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) AbstractRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 50));
        }
        UnitValue unitValue2 = unitValueArr[1];
        if (unitValue2 != null && !unitValue2.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) AbstractRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 49));
        }
        UnitValue unitValue3 = unitValueArr[2];
        if (unitValue3 != null && !unitValue3.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) AbstractRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 47));
        }
        UnitValue unitValue4 = unitValueArr[3];
        if (unitValue4 != null && !unitValue4.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) AbstractRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 48));
        }
        UnitValue unitValue5 = unitValueArr[0];
        float value = unitValue5 != null ? unitValue5.getValue() : 0.0f;
        UnitValue unitValue6 = unitValueArr[1];
        float value2 = unitValue6 != null ? unitValue6.getValue() : 0.0f;
        UnitValue unitValue7 = unitValueArr[2];
        float value3 = unitValue7 != null ? unitValue7.getValue() : 0.0f;
        UnitValue unitValue8 = unitValueArr[3];
        return rectangle.applyMargins(value, value2, value3, unitValue8 != null ? unitValue8.getValue() : 3.0f, z);
    }

    protected Rectangle applyBorderBox(Rectangle rectangle, Border[] borderArr, boolean z) {
        Border border = borderArr[0];
        float width = border != null ? border.getWidth() : 0.0f;
        Border border2 = borderArr[1];
        float width2 = border2 != null ? border2.getWidth() : 0.0f;
        Border border3 = borderArr[2];
        float width3 = border3 != null ? border3.getWidth() : 0.0f;
        Border border4 = borderArr[3];
        return rectangle.applyMargins(width, width2, width3, border4 != null ? border4.getWidth() : 0.0f, z);
    }

    protected void applyAbsolutePosition(Rectangle rectangle) {
        Float propertyAsFloat = getPropertyAsFloat(73);
        Float propertyAsFloat2 = getPropertyAsFloat(14);
        Float propertyAsFloat3 = getPropertyAsFloat(34);
        Float propertyAsFloat4 = getPropertyAsFloat(54);
        Float fValueOf = Float.valueOf(0.0f);
        if (propertyAsFloat3 == null && propertyAsFloat4 == null && BaseDirection.RIGHT_TO_LEFT.equals(getProperty(7))) {
            propertyAsFloat4 = fValueOf;
        }
        if (propertyAsFloat == null && propertyAsFloat2 == null) {
            propertyAsFloat = fValueOf;
        }
        if (propertyAsFloat4 != null) {
            try {
                move((rectangle.getRight() - propertyAsFloat4.floatValue()) - this.occupiedArea.getBBox().getRight(), 0.0f);
            } catch (Exception unused) {
                LoggerFactory.getLogger((Class<?>) AbstractRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.OCCUPIED_AREA_HAS_NOT_BEEN_INITIALIZED, "Absolute positioning might be applied incorrectly."));
                return;
            }
        }
        if (propertyAsFloat3 != null) {
            move((rectangle.getLeft() + propertyAsFloat3.floatValue()) - this.occupiedArea.getBBox().getLeft(), 0.0f);
        }
        if (propertyAsFloat != null) {
            move(0.0f, (rectangle.getTop() - propertyAsFloat.floatValue()) - this.occupiedArea.getBBox().getTop());
        }
        if (propertyAsFloat2 != null) {
            move(0.0f, (rectangle.getBottom() + propertyAsFloat2.floatValue()) - this.occupiedArea.getBBox().getBottom());
        }
    }

    protected void applyRelativePositioningTranslation(boolean z) {
        Float fValueOf = Float.valueOf(0.0f);
        float fFloatValue = getPropertyAsFloat(73, fValueOf).floatValue();
        float fFloatValue2 = getPropertyAsFloat(14, fValueOf).floatValue();
        float fFloatValue3 = getPropertyAsFloat(34, fValueOf).floatValue();
        float fFloatValue4 = getPropertyAsFloat(54, fValueOf).floatValue();
        int i = z ? -1 : 1;
        float f = fFloatValue3 != 0.0f ? fFloatValue3 * i : i * (-fFloatValue4);
        float f2 = fFloatValue != 0.0f ? (-fFloatValue) * i : fFloatValue2 * i;
        if (f == 0.0f && f2 == 0.0f) {
            return;
        }
        move(f, f2);
    }

    protected void applyDestination(PdfDocument pdfDocument) {
        String str = (String) getProperty(17);
        if (str != null) {
            int pageNumber = this.occupiedArea.getPageNumber();
            if (pageNumber < 1 || pageNumber > pdfDocument.getNumberOfPages()) {
                LoggerFactory.getLogger((Class<?>) AbstractRenderer.class).warn(MessageFormatUtil.format(IoLogMessageConstant.f2899x4ac94ef4, "Property.DESTINATION, which specifies this element location as destination, see ElementPropertyContainer.setDestination."));
                return;
            }
            PdfArray pdfArray = new PdfArray();
            pdfArray.add(pdfDocument.getPage(pageNumber).getPdfObject());
            pdfArray.add(PdfName.XYZ);
            pdfArray.add(new PdfNumber(this.occupiedArea.getBBox().getX()));
            pdfArray.add(new PdfNumber(this.occupiedArea.getBBox().getY() + this.occupiedArea.getBBox().getHeight()));
            pdfArray.add(new PdfNumber(0));
            pdfDocument.addNamedDestination(str, pdfArray.makeIndirect(pdfDocument));
            deleteProperty(17);
        }
    }

    protected void applyAction(PdfDocument pdfDocument) {
        PdfAction pdfAction = (PdfAction) getProperty(1);
        if (pdfAction != null) {
            PdfLinkAnnotation pdfLinkAnnotation = (PdfLinkAnnotation) getProperty(88);
            if (pdfLinkAnnotation == null) {
                pdfLinkAnnotation = (PdfLinkAnnotation) new PdfLinkAnnotation(new Rectangle(0.0f, 0.0f, 0.0f, 0.0f)).setFlags(4);
                Border border = (Border) getProperty(9);
                if (border != null) {
                    pdfLinkAnnotation.setBorder(new PdfArray(new float[]{0.0f, 0.0f, border.getWidth()}));
                } else {
                    pdfLinkAnnotation.setBorder(new PdfArray(new float[]{0.0f, 0.0f, 0.0f}));
                }
                setProperty(88, pdfLinkAnnotation);
            }
            pdfLinkAnnotation.setAction(pdfAction);
        }
    }

    protected void applyLinkAnnotation(PdfDocument pdfDocument) {
        Logger logger = LoggerFactory.getLogger((Class<?>) AbstractRenderer.class);
        PdfLinkAnnotation pdfLinkAnnotation = (PdfLinkAnnotation) getProperty(88);
        if (pdfLinkAnnotation != null) {
            int pageNumber = this.occupiedArea.getPageNumber();
            if (pageNumber < 1 || pageNumber > pdfDocument.getNumberOfPages()) {
                logger.warn(MessageFormatUtil.format(IoLogMessageConstant.f2899x4ac94ef4, "Property.LINK_ANNOTATION, which specifies a link associated with this element content area, see com.itextpdf.layout.element.Link."));
                return;
            }
            PdfLinkAnnotation pdfLinkAnnotation2 = (PdfLinkAnnotation) PdfAnnotation.makeAnnotation((PdfDictionary) pdfLinkAnnotation.getPdfObject().m3121clone());
            pdfLinkAnnotation2.setRectangle(new PdfArray(calculateAbsolutePdfBBox()));
            PdfPage page = pdfDocument.getPage(pageNumber);
            if (page.isFlushed()) {
                logger.error(MessageFormatUtil.format(IoLogMessageConstant.PAGE_WAS_FLUSHED_ACTION_WILL_NOT_BE_PERFORMED, "link annotation applying"));
            } else {
                page.addAnnotation(pdfLinkAnnotation2);
            }
        }
    }

    private Float retrieveResolvedParentDeclaredHeight() {
        IRenderer iRenderer = this.parent;
        if (iRenderer == null || iRenderer.getProperty(27) == null) {
            return null;
        }
        UnitValue propertyAsUnitValue = getPropertyAsUnitValue(this.parent, 27);
        if (propertyAsUnitValue.isPointValue()) {
            return Float.valueOf(propertyAsUnitValue.getValue());
        }
        return ((AbstractRenderer) this.parent).retrieveHeight();
    }

    private Float retrieveDirectParentDeclaredHeight() {
        IRenderer iRenderer = this.parent;
        if (iRenderer == null || iRenderer.getProperty(27) == null) {
            return null;
        }
        UnitValue propertyAsUnitValue = getPropertyAsUnitValue(this.parent, 27);
        if (propertyAsUnitValue.isPointValue()) {
            return Float.valueOf(propertyAsUnitValue.getValue());
        }
        return null;
    }

    protected void updateHeightsOnSplit(boolean z, AbstractRenderer abstractRenderer, AbstractRenderer abstractRenderer2) {
        updateHeightsOnSplit(this.occupiedArea.getBBox().getHeight(), z, abstractRenderer, abstractRenderer2, true);
    }

    void updateHeightsOnSplit(float f, boolean z, AbstractRenderer abstractRenderer, AbstractRenderer abstractRenderer2, boolean z2) {
        if (z) {
            LoggerFactory.getLogger((Class<?>) BlockRenderer.class).warn(IoLogMessageConstant.CLIP_ELEMENT);
            if (z2) {
                Float fRetrieveMaxHeight = retrieveMaxHeight();
                abstractRenderer.occupiedArea.getBBox().moveDown(fRetrieveMaxHeight.floatValue() - f).setHeight(fRetrieveMaxHeight.floatValue());
                f = fRetrieveMaxHeight.floatValue();
            }
        }
        if (abstractRenderer2 == null || isKeepTogether()) {
            return;
        }
        Float fRetrieveResolvedParentDeclaredHeight = retrieveResolvedParentDeclaredHeight();
        UnitValue propertyAsUnitValue = getPropertyAsUnitValue(this, 84);
        if (propertyAsUnitValue != null) {
            if (propertyAsUnitValue.isPointValue()) {
                abstractRenderer2.updateMaxHeight(UnitValue.createPointValue(retrieveMaxHeight().floatValue() - f));
            } else if (fRetrieveResolvedParentDeclaredHeight != null) {
                abstractRenderer2.updateMinHeight(UnitValue.createPercentValue(propertyAsUnitValue.getValue() - ((f / fRetrieveResolvedParentDeclaredHeight.floatValue()) * 100.0f)));
            }
        }
        UnitValue propertyAsUnitValue2 = getPropertyAsUnitValue(this, 85);
        if (propertyAsUnitValue2 != null) {
            if (propertyAsUnitValue2.isPointValue()) {
                abstractRenderer2.updateMinHeight(UnitValue.createPointValue(retrieveMinHeight().floatValue() - f));
            } else if (fRetrieveResolvedParentDeclaredHeight != null) {
                abstractRenderer2.updateMinHeight(UnitValue.createPercentValue(propertyAsUnitValue2.getValue() - ((f / fRetrieveResolvedParentDeclaredHeight.floatValue()) * 100.0f)));
            }
        }
        UnitValue propertyAsUnitValue3 = getPropertyAsUnitValue(this, 27);
        if (propertyAsUnitValue3 != null) {
            if (propertyAsUnitValue3.isPointValue()) {
                abstractRenderer2.updateHeight(UnitValue.createPointValue(retrieveHeight().floatValue() - f));
            } else if (fRetrieveResolvedParentDeclaredHeight != null) {
                abstractRenderer2.updateMinHeight(UnitValue.createPercentValue(propertyAsUnitValue3.getValue() - ((f / fRetrieveResolvedParentDeclaredHeight.floatValue()) * 100.0f)));
            }
        }
    }

    public MinMaxWidth getMinMaxWidth() {
        return MinMaxWidthUtils.countDefaultMinMaxWidth(this);
    }

    protected boolean setMinMaxWidthBasedOnFixedWidth(MinMaxWidth minMaxWidth) {
        Float fRetrieveWidth;
        if (!hasAbsoluteUnitValue(77) || (fRetrieveWidth = retrieveWidth(0.0f)) == null) {
            return false;
        }
        minMaxWidth.setChildrenMaxWidth(fRetrieveWidth.floatValue());
        minMaxWidth.setChildrenMinWidth(fRetrieveWidth.floatValue());
        return true;
    }

    protected boolean isNotFittingHeight(LayoutArea layoutArea) {
        return !isPositioned() && this.occupiedArea.getBBox().getHeight() > layoutArea.getBBox().getHeight();
    }

    protected boolean isNotFittingWidth(LayoutArea layoutArea) {
        return !isPositioned() && this.occupiedArea.getBBox().getWidth() > layoutArea.getBBox().getWidth();
    }

    protected boolean isNotFittingLayoutArea(LayoutArea layoutArea) {
        return isNotFittingHeight(layoutArea) || isNotFittingWidth(layoutArea);
    }

    protected boolean isPositioned() {
        return !isStaticLayout();
    }

    protected boolean isFixedLayout() {
        Integer num = 4;
        return num.equals(getProperty(52));
    }

    protected boolean isStaticLayout() {
        Object property = getProperty(52);
        if (property == null) {
            return true;
        }
        Integer num = 1;
        return num.equals(property);
    }

    protected boolean isRelativePosition() {
        Integer num = 2;
        return num.equals(getPropertyAsInteger(52));
    }

    protected boolean isAbsolutePosition() {
        Integer num = 3;
        return num.equals(getPropertyAsInteger(52));
    }

    protected boolean isKeepTogether() {
        return isKeepTogether(null);
    }

    boolean isKeepTogether(IRenderer iRenderer) {
        return Boolean.TRUE.equals(getPropertyAsBoolean(32)) && !(iRenderer instanceof AreaBreakRenderer);
    }

    protected void alignChildHorizontally(IRenderer iRenderer, Rectangle rectangle) {
        float width = rectangle.getWidth();
        HorizontalAlignment horizontalAlignment = (HorizontalAlignment) iRenderer.getProperty(28);
        if (horizontalAlignment == null || horizontalAlignment == HorizontalAlignment.LEFT) {
            return;
        }
        float width2 = width - iRenderer.getOccupiedArea().getBBox().getWidth();
        if (width2 > 0.0f) {
            try {
                int i = C35101.$SwitchMap$com$itextpdf$layout$properties$HorizontalAlignment[horizontalAlignment.ordinal()];
                if (i == 1) {
                    iRenderer.move(width2, 0.0f);
                } else if (i == 2) {
                    iRenderer.move(width2 / 2.0f, 0.0f);
                }
            } catch (NullPointerException unused) {
                LoggerFactory.getLogger((Class<?>) AbstractRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.OCCUPIED_AREA_HAS_NOT_BEEN_INITIALIZED, "Some of the children might not end up aligned horizontally."));
            }
        }
    }

    /* JADX INFO: renamed from: com.itextpdf.layout.renderer.AbstractRenderer$1 */
    static /* synthetic */ class C35101 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$layout$properties$HorizontalAlignment;

        static {
            int[] iArr = new int[HorizontalAlignment.values().length];
            $SwitchMap$com$itextpdf$layout$properties$HorizontalAlignment = iArr;
            try {
                iArr[HorizontalAlignment.RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$HorizontalAlignment[HorizontalAlignment.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    protected Border[] getBorders() {
        return getBorders(this);
    }

    protected BorderRadius[] getBorderRadii() {
        return getBorderRadii(this);
    }

    protected AbstractRenderer setBorders(Border border, int i) {
        if (i == 0) {
            setProperty(13, border);
        } else if (i == 1) {
            setProperty(12, border);
        } else if (i == 2) {
            setProperty(10, border);
        } else if (i == 3) {
            setProperty(11, border);
        }
        return this;
    }

    protected Rectangle calculateAbsolutePdfBBox() {
        List<Point> listRectangleToPointsList = rectangleToPointsList(getOccupiedAreaBBox());
        for (AbstractRenderer abstractRenderer = this; abstractRenderer.parent != null; abstractRenderer = (AbstractRenderer) abstractRenderer.parent) {
            boolean z = abstractRenderer instanceof BlockRenderer;
            if (z && ((Float) abstractRenderer.getProperty(55)) != null) {
                transformPoints(listRectangleToPointsList, ((BlockRenderer) abstractRenderer).createRotationTransformInsideOccupiedArea());
            }
            if (abstractRenderer.getProperty(53) != null && (z || (abstractRenderer instanceof ImageRenderer) || (abstractRenderer instanceof TableRenderer))) {
                transformPoints(listRectangleToPointsList, abstractRenderer.createTransformationInsideOccupiedArea());
            }
        }
        return calculateBBox(listRectangleToPointsList);
    }

    protected Rectangle calculateBBox(List<Point> list) {
        return Rectangle.calculateBBox(list);
    }

    protected List<Point> rectangleToPointsList(Rectangle rectangle) {
        return Arrays.asList(rectangle.toPointsArray());
    }

    protected List<Point> transformPoints(List<Point> list, AffineTransform affineTransform) {
        for (Point point : list) {
            affineTransform.transform(point, point);
        }
        return list;
    }

    protected float[] calculateShiftToPositionBBoxOfPointsAt(float f, float f2, List<Point> list) {
        double dMin = Double.MAX_VALUE;
        double dMax = -1.7976931348623157E308d;
        for (Point point : list) {
            dMin = Math.min(point.getX(), dMin);
            dMax = Math.max(point.getY(), dMax);
        }
        return new float[]{(float) (((double) f) - dMin), (float) (((double) f2) - dMax)};
    }

    protected boolean hasAbsoluteUnitValue(int i) {
        UnitValue unitValue = (UnitValue) getProperty(i);
        return unitValue != null && unitValue.isPointValue();
    }

    protected boolean hasRelativeUnitValue(int i) {
        UnitValue unitValue = (UnitValue) getProperty(i);
        return unitValue != null && unitValue.isPercentValue();
    }

    boolean isFirstOnRootArea(boolean z) {
        boolean zIsEmptyArea;
        IRenderer parent = this;
        loop0: while (true) {
            zIsEmptyArea = true;
            while (zIsEmptyArea && parent.getParent() != null) {
                parent = parent.getParent();
                if (parent instanceof RootRenderer) {
                    zIsEmptyArea = ((RootRenderer) parent).currentArea.isEmptyArea();
                } else {
                    if (parent.getOccupiedArea() == null) {
                        break loop0;
                    }
                    if (z) {
                        continue;
                    } else {
                        if (parent.getOccupiedArea().getBBox().getHeight() < 1.0E-4f) {
                            break;
                        }
                        zIsEmptyArea = false;
                    }
                }
            }
        }
        return zIsEmptyArea;
    }

    PdfDocument getPdfDocument() {
        RootRenderer rootRenderer = getRootRenderer();
        if (rootRenderer instanceof DocumentRenderer) {
            return ((DocumentRenderer) rootRenderer).document.getPdfDocument();
        }
        if (rootRenderer instanceof CanvasRenderer) {
            return ((CanvasRenderer) rootRenderer).canvas.getPdfDocument();
        }
        return null;
    }

    RootRenderer getRootRenderer() {
        for (IRenderer parent = this; parent instanceof AbstractRenderer; parent = ((AbstractRenderer) parent).getParent()) {
            if (parent instanceof RootRenderer) {
                return (RootRenderer) parent;
            }
        }
        return null;
    }

    static float calculateAdditionalWidth(AbstractRenderer abstractRenderer) {
        Rectangle rectangle = new Rectangle(0.0f, 0.0f);
        abstractRenderer.applyMargins(rectangle, true);
        abstractRenderer.applyBorderBox(rectangle, true);
        abstractRenderer.applyPaddings(rectangle, true);
        return rectangle.getWidth();
    }

    static boolean noAbsolutePositionInfo(IRenderer iRenderer) {
        return (iRenderer.hasProperty(73) || iRenderer.hasProperty(14) || iRenderer.hasProperty(34) || iRenderer.hasProperty(54)) ? false : true;
    }

    static Float getPropertyAsFloat(IRenderer iRenderer, int i) {
        return NumberUtil.asFloat(iRenderer.getProperty(i));
    }

    static UnitValue getPropertyAsUnitValue(IRenderer iRenderer, int i) {
        return (UnitValue) iRenderer.getProperty(i);
    }

    void shrinkOccupiedAreaForAbsolutePosition() {
        if (isAbsolutePosition()) {
            Float propertyAsFloat = getPropertyAsFloat(34);
            Float propertyAsFloat2 = getPropertyAsFloat(54);
            UnitValue unitValue = (UnitValue) getProperty(77);
            if (propertyAsFloat == null && propertyAsFloat2 == null && unitValue == null) {
                this.occupiedArea.getBBox().setWidth(0.0f);
            }
        }
    }

    void drawPositionedChildren(DrawContext drawContext) {
        Iterator<IRenderer> it = this.positionedRenderers.iterator();
        while (it.hasNext()) {
            it.next().draw(drawContext);
        }
    }

    FontCharacteristics createFontCharacteristics() {
        FontCharacteristics fontCharacteristics = new FontCharacteristics();
        if (hasProperty(95)) {
            fontCharacteristics.setFontWeight((String) getProperty(95));
        }
        if (hasProperty(94)) {
            fontCharacteristics.setFontStyle((String) getProperty(94));
        }
        return fontCharacteristics;
    }

    PdfFont resolveFirstPdfFont() {
        Object property = getProperty(20);
        if (property instanceof PdfFont) {
            return (PdfFont) property;
        }
        if (property instanceof String[]) {
            FontProvider fontProvider = (FontProvider) getProperty(91);
            if (fontProvider == null) {
                throw new IllegalStateException(LayoutExceptionMessageConstant.FONT_PROVIDER_NOT_SET_FONT_FAMILY_NOT_RESOLVED);
            }
            FontSet fontSet = (FontSet) getProperty(98);
            if (fontProvider.getFontSet().isEmpty() && (fontSet == null || fontSet.isEmpty())) {
                throw new IllegalStateException(LayoutExceptionMessageConstant.FONT_PROVIDER_NOT_SET_FONT_FAMILY_NOT_RESOLVED);
            }
            return resolveFirstPdfFont((String[]) property, fontProvider, createFontCharacteristics(), fontSet);
        }
        throw new IllegalStateException("String[] or PdfFont expected as value of FONT property");
    }

    PdfFont resolveFirstPdfFont(String[] strArr, FontProvider fontProvider, FontCharacteristics fontCharacteristics, FontSet fontSet) {
        return fontProvider.getPdfFont(fontProvider.getFontSelector(Arrays.asList(strArr), fontCharacteristics, fontSet).bestMatch(), fontSet);
    }

    static Border[] getBorders(IRenderer iRenderer) {
        Border border = (Border) iRenderer.getProperty(9);
        Border[] borderArr = {(Border) iRenderer.getProperty(13), (Border) iRenderer.getProperty(12), (Border) iRenderer.getProperty(10), (Border) iRenderer.getProperty(11)};
        if (!hasOwnOrModelProperty(iRenderer, 13)) {
            borderArr[0] = border;
        }
        if (!hasOwnOrModelProperty(iRenderer, 12)) {
            borderArr[1] = border;
        }
        if (!hasOwnOrModelProperty(iRenderer, 10)) {
            borderArr[2] = border;
        }
        if (!hasOwnOrModelProperty(iRenderer, 11)) {
            borderArr[3] = border;
        }
        return borderArr;
    }

    void applyAbsolutePositionIfNeeded(LayoutContext layoutContext) {
        if (isAbsolutePosition()) {
            applyAbsolutePosition((layoutContext instanceof PositionedLayoutContext ? ((PositionedLayoutContext) layoutContext).getParentOccupiedArea() : layoutContext.getArea()).getBBox());
        }
    }

    void preparePositionedRendererAndAreaForLayout(IRenderer iRenderer, Rectangle rectangle, Rectangle rectangle2) {
        Float propertyAsFloat = getPropertyAsFloat(iRenderer, 34);
        Float propertyAsFloat2 = getPropertyAsFloat(iRenderer, 54);
        Float propertyAsFloat3 = getPropertyAsFloat(iRenderer, 73);
        Float propertyAsFloat4 = getPropertyAsFloat(iRenderer, 14);
        iRenderer.setParent(this);
        adjustPositionedRendererLayoutBoxWidth(iRenderer, rectangle, propertyAsFloat, propertyAsFloat2);
        Integer num = 3;
        if (num.equals(iRenderer.getProperty(52))) {
            updateMinHeightForAbsolutelyPositionedRenderer(iRenderer, rectangle2, propertyAsFloat3, propertyAsFloat4);
        }
    }

    private void updateMinHeightForAbsolutelyPositionedRenderer(IRenderer iRenderer, Rectangle rectangle, Float f, Float f2) {
        if (f == null || f2 == null || iRenderer.hasProperty(27)) {
            return;
        }
        UnitValue propertyAsUnitValue = getPropertyAsUnitValue(iRenderer, 84);
        UnitValue propertyAsUnitValue2 = getPropertyAsUnitValue(iRenderer, 85);
        float fMax = Math.max(0.0f, ((rectangle.getTop() - f.floatValue()) - rectangle.getBottom()) - f2.floatValue());
        Rectangle rectangle2 = new Rectangle(0.0f, 0.0f);
        if (!isBorderBoxSizing(iRenderer)) {
            applyPaddings(rectangle2, getPaddings(iRenderer), true);
            applyBorderBox(rectangle2, getBorders(iRenderer), true);
        }
        applyMargins(rectangle2, getMargins(iRenderer), true);
        float height = fMax - rectangle2.getHeight();
        if (propertyAsUnitValue2 != null) {
            height = Math.max(height, propertyAsUnitValue2.getValue());
        }
        if (propertyAsUnitValue != null) {
            height = Math.min(height, propertyAsUnitValue.getValue());
        }
        iRenderer.setProperty(85, UnitValue.createPointValue(height));
    }

    private void adjustPositionedRendererLayoutBoxWidth(IRenderer iRenderer, Rectangle rectangle, Float f, Float f2) {
        if (f != null) {
            rectangle.setWidth(rectangle.getWidth() - f.floatValue()).setX(rectangle.getX() + f.floatValue());
        }
        if (f2 != null) {
            rectangle.setWidth(rectangle.getWidth() - f2.floatValue());
        }
        if (f == null && f2 == null && !iRenderer.hasProperty(77)) {
            MinMaxWidth minMaxWidth = iRenderer instanceof BlockRenderer ? ((BlockRenderer) iRenderer).getMinMaxWidth() : null;
            if (minMaxWidth == null || minMaxWidth.getMaxWidth() >= rectangle.getWidth()) {
                return;
            }
            rectangle.setWidth(minMaxWidth.getMaxWidth() + 1.0E-4f);
        }
    }

    static float calculatePaddingBorderWidth(AbstractRenderer abstractRenderer) {
        Rectangle rectangle = new Rectangle(0.0f, 0.0f);
        abstractRenderer.applyBorderBox(rectangle, true);
        abstractRenderer.applyPaddings(rectangle, true);
        return rectangle.getWidth();
    }

    static float calculatePaddingBorderHeight(AbstractRenderer abstractRenderer) {
        Rectangle rectangle = new Rectangle(0.0f, 0.0f);
        abstractRenderer.applyBorderBox(rectangle, true);
        abstractRenderer.applyPaddings(rectangle, true);
        return rectangle.getHeight();
    }

    private AffineTransform createTransformationInsideOccupiedArea() {
        Rectangle rectangleApplyMargins = applyMargins(this.occupiedArea.mo3122clone().getBBox(), false);
        float x = rectangleApplyMargins.getX();
        float y = rectangleApplyMargins.getY();
        float height = rectangleApplyMargins.getHeight();
        float width = rectangleApplyMargins.getWidth();
        AffineTransform translateInstance = AffineTransform.getTranslateInstance(r1 * (-1.0f), (-1.0f) * r2);
        translateInstance.preConcatenate(Transform.getAffineTransform((Transform) getProperty(53), width, height));
        translateInstance.preConcatenate(AffineTransform.getTranslateInstance(x + (width / 2.0f), y + (height / 2.0f)));
        return translateInstance;
    }

    protected void beginTransformationIfApplied(PdfCanvas pdfCanvas) {
        if (getProperty(53) != null) {
            pdfCanvas.saveState().concatMatrix(createTransformationInsideOccupiedArea());
        }
    }

    protected void endTransformationIfApplied(PdfCanvas pdfCanvas) {
        if (getProperty(53) != null) {
            pdfCanvas.restoreState();
        }
    }

    void addChildRenderer(IRenderer iRenderer) {
        iRenderer.setParent(this);
        this.childRenderers.add(iRenderer);
    }

    void addAllChildRenderers(List<IRenderer> list) {
        if (list == null) {
            return;
        }
        setThisAsParent(list);
        this.childRenderers.addAll(list);
    }

    void addAllChildRenderers(int i, List<IRenderer> list) {
        setThisAsParent(list);
        this.childRenderers.addAll(i, list);
    }

    void setChildRenderers(List<IRenderer> list) {
        removeThisFromParents(this.childRenderers);
        this.childRenderers.clear();
        addAllChildRenderers(list);
    }

    IRenderer removeChildRenderer(int i) {
        IRenderer iRendererRemove = this.childRenderers.remove(i);
        removeThisFromParent(iRendererRemove);
        return iRendererRemove;
    }

    boolean removeAllChildRenderers(Collection<IRenderer> collection) {
        removeThisFromParents(collection);
        return this.childRenderers.removeAll(collection);
    }

    IRenderer setChildRenderer(int i, IRenderer iRenderer) {
        if (iRenderer != null) {
            iRenderer.setParent(this);
        }
        IRenderer iRenderer2 = this.childRenderers.set(i, iRenderer);
        removeThisFromParent(iRenderer2);
        return iRenderer2;
    }

    void setThisAsParent(Collection<IRenderer> collection) {
        Iterator<IRenderer> it = collection.iterator();
        while (it.hasNext()) {
            it.next().setParent(this);
        }
    }

    boolean logWarningIfGetNextRendererNotOverridden(Class<?> cls, Class<?> cls2) {
        if (cls == cls2) {
            return true;
        }
        LoggerFactory.getLogger(cls).warn(MessageFormatUtil.format(IoLogMessageConstant.GET_NEXT_RENDERER_SHOULD_BE_OVERRIDDEN, new Object[0]));
        return false;
    }

    private void removeThisFromParent(IRenderer iRenderer) {
        if (iRenderer == null || this != iRenderer.getParent() || this.childRenderers.contains(iRenderer)) {
            return;
        }
        iRenderer.setParent(null);
    }

    private void removeThisFromParents(Collection<IRenderer> collection) {
        for (IRenderer iRenderer : collection) {
            if (iRenderer != null && this == iRenderer.getParent()) {
                iRenderer.setParent(null);
            }
        }
    }

    private static UnitValue[] getMargins(IRenderer iRenderer) {
        return new UnitValue[]{(UnitValue) iRenderer.getProperty(46), (UnitValue) iRenderer.getProperty(45), (UnitValue) iRenderer.getProperty(43), (UnitValue) iRenderer.getProperty(44)};
    }

    private static BorderRadius[] getBorderRadii(IRenderer iRenderer) {
        BorderRadius borderRadius = (BorderRadius) iRenderer.getProperty(101);
        BorderRadius[] borderRadiusArr = {(BorderRadius) iRenderer.getProperty(110), (BorderRadius) iRenderer.getProperty(111), (BorderRadius) iRenderer.getProperty(112), (BorderRadius) iRenderer.getProperty(113)};
        if (!hasOwnOrModelProperty(iRenderer, 110)) {
            borderRadiusArr[0] = borderRadius;
        }
        if (!hasOwnOrModelProperty(iRenderer, 111)) {
            borderRadiusArr[1] = borderRadius;
        }
        if (!hasOwnOrModelProperty(iRenderer, 112)) {
            borderRadiusArr[2] = borderRadius;
        }
        if (!hasOwnOrModelProperty(iRenderer, 113)) {
            borderRadiusArr[3] = borderRadius;
        }
        return borderRadiusArr;
    }

    private static UnitValue[] getPaddings(IRenderer iRenderer) {
        return new UnitValue[]{(UnitValue) iRenderer.getProperty(50), (UnitValue) iRenderer.getProperty(49), (UnitValue) iRenderer.getProperty(47), (UnitValue) iRenderer.getProperty(48)};
    }

    private static boolean hasOwnOrModelProperty(IRenderer iRenderer, int i) {
        return iRenderer.hasOwnProperty(i) || (iRenderer.getModelElement() != null && iRenderer.getModelElement().hasProperty(i));
    }
}
