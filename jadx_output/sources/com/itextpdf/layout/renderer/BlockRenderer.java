package com.itextpdf.layout.renderer;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.tagutils.TagTreePointer;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.element.IElement;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.margincollapse.MarginsCollapseHandler;
import com.itextpdf.layout.margincollapse.MarginsCollapseInfo;
import com.itextpdf.layout.minmaxwidth.MinMaxWidth;
import com.itextpdf.layout.minmaxwidth.MinMaxWidthUtils;
import com.itextpdf.layout.properties.OverflowPropertyValue;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.properties.VerticalAlignment;
import com.itextpdf.layout.tagging.LayoutTaggingHelper;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BlockRenderer extends AbstractRenderer {
    Rectangle recalculateLayoutBoxBeforeChildLayout(Rectangle rectangle, IRenderer iRenderer, Rectangle rectangle2) {
        return rectangle;
    }

    boolean stopLayoutingChildrenIfChildResultNotFull(LayoutResult layoutResult) {
        return true;
    }

    protected BlockRenderer(IElement iElement) {
        super(iElement);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0573  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x057d  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x05a0  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x05aa  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x05b4  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x05ca  */
    /* JADX WARN: Type inference failed for: r0v77, types: [com.itextpdf.layout.renderer.IRenderer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v1, types: [com.itextpdf.layout.renderer.BlockRenderer, com.itextpdf.layout.renderer.IRenderer] */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r33v10 */
    /* JADX WARN: Type inference failed for: r33v16 */
    /* JADX WARN: Type inference failed for: r33v7 */
    /* JADX WARN: Type inference failed for: r33v8 */
    /* JADX WARN: Type inference failed for: r35v0 */
    /* JADX WARN: Type inference failed for: r35v1, types: [com.itextpdf.layout.renderer.IRenderer] */
    /* JADX WARN: Type inference failed for: r35v10 */
    /* JADX WARN: Type inference failed for: r35v11 */
    /* JADX WARN: Type inference failed for: r35v12 */
    /* JADX WARN: Type inference failed for: r35v13 */
    /* JADX WARN: Type inference failed for: r35v15 */
    /* JADX WARN: Type inference failed for: r35v16 */
    /* JADX WARN: Type inference failed for: r35v17 */
    /* JADX WARN: Type inference failed for: r35v18 */
    /* JADX WARN: Type inference failed for: r35v3 */
    /* JADX WARN: Type inference failed for: r35v5 */
    /* JADX WARN: Type inference failed for: r35v6, types: [com.itextpdf.layout.renderer.IRenderer] */
    /* JADX WARN: Type inference failed for: r35v7 */
    /* JADX WARN: Type inference failed for: r35v8 */
    /* JADX WARN: Type inference failed for: r35v9 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v5, types: [com.itextpdf.layout.renderer.BlockRenderer, com.itextpdf.layout.renderer.IRenderer] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [com.itextpdf.layout.renderer.BlockRenderer] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v18, types: [com.itextpdf.layout.renderer.IRenderer] */
    @Override // com.itextpdf.layout.renderer.IRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.itextpdf.layout.layout.LayoutResult layout(com.itextpdf.layout.layout.LayoutContext r52) {
        /*
            Method dump skipped, instruction units count: 2128
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.BlockRenderer.layout(com.itextpdf.layout.layout.LayoutContext):com.itextpdf.layout.layout.LayoutResult");
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
    public void draw(DrawContext drawContext) {
        LayoutTaggingHelper layoutTaggingHelper;
        Rectangle rectangle;
        Logger logger = LoggerFactory.getLogger((Class<?>) BlockRenderer.class);
        if (this.occupiedArea == null) {
            logger.error(MessageFormatUtil.format(IoLogMessageConstant.OCCUPIED_AREA_HAS_NOT_BEEN_INITIALIZED, "Drawing won't be performed."));
            return;
        }
        boolean zIsTaggingEnabled = drawContext.isTaggingEnabled();
        if (zIsTaggingEnabled) {
            layoutTaggingHelper = (LayoutTaggingHelper) getProperty(108);
            if (layoutTaggingHelper == null) {
                zIsTaggingEnabled = false;
            } else {
                TagTreePointer tagTreePointerUseAutoTaggingPointerAndRememberItsPosition = layoutTaggingHelper.useAutoTaggingPointerAndRememberItsPosition(this);
                if (layoutTaggingHelper.createTag(this, tagTreePointerUseAutoTaggingPointerAndRememberItsPosition)) {
                    tagTreePointerUseAutoTaggingPointerAndRememberItsPosition.getProperties().addAttributes(0, AccessibleAttributesApplier.getListAttributes(this, tagTreePointerUseAutoTaggingPointerAndRememberItsPosition)).addAttributes(0, AccessibleAttributesApplier.getTableAttributes(this, tagTreePointerUseAutoTaggingPointerAndRememberItsPosition)).addAttributes(0, AccessibleAttributesApplier.getLayoutAttributes(this, tagTreePointerUseAutoTaggingPointerAndRememberItsPosition));
                }
            }
        } else {
            layoutTaggingHelper = null;
        }
        beginTransformationIfApplied(drawContext.getCanvas());
        applyDestinationsAndAnnotation(drawContext);
        boolean zIsRelativePosition = isRelativePosition();
        if (zIsRelativePosition) {
            applyRelativePositioningTranslation(false);
        }
        beginElementOpacityApplying(drawContext);
        beginRotationIfApplied(drawContext.getCanvas());
        boolean zIsOverflowProperty = isOverflowProperty(OverflowPropertyValue.HIDDEN, 103);
        boolean zIsOverflowProperty2 = isOverflowProperty(OverflowPropertyValue.HIDDEN, 104);
        boolean z = zIsOverflowProperty || zIsOverflowProperty2;
        drawBackground(drawContext);
        drawBorder(drawContext);
        if (z) {
            drawContext.getCanvas().saveState();
            int pageNumber = this.occupiedArea.getPageNumber();
            if (pageNumber < 1 || pageNumber > drawContext.getDocument().getNumberOfPages()) {
                rectangle = new Rectangle(-500000.0f, -500000.0f, 1000000.0f, 1000000.0f);
            } else {
                PdfPage page = drawContext.getDocument().getPage(pageNumber);
                if (page.isFlushed()) {
                    logger.error(MessageFormatUtil.format(IoLogMessageConstant.PAGE_WAS_FLUSHED_ACTION_WILL_NOT_BE_PERFORMED, "area clipping"));
                    rectangle = new Rectangle(-500000.0f, -500000.0f, 1000000.0f, 1000000.0f);
                } else {
                    rectangle = page.getPageSize();
                }
            }
            Rectangle borderAreaBBox = getBorderAreaBBox();
            if (zIsOverflowProperty) {
                rectangle.setX(borderAreaBBox.getX()).setWidth(borderAreaBBox.getWidth());
            }
            if (zIsOverflowProperty2) {
                rectangle.setY(borderAreaBBox.getY()).setHeight(borderAreaBBox.getHeight());
            }
            drawContext.getCanvas().rectangle(rectangle).clip().endPath();
        }
        drawChildren(drawContext);
        drawPositionedChildren(drawContext);
        if (z) {
            drawContext.getCanvas().restoreState();
        }
        endRotationIfApplied(drawContext.getCanvas());
        endElementOpacityApplying(drawContext);
        if (zIsRelativePosition) {
            applyRelativePositioningTranslation(true);
        }
        if (zIsTaggingEnabled) {
            if (this.isLastRendererForModelElement) {
                layoutTaggingHelper.finishTaggingHint(this);
            }
            layoutTaggingHelper.restoreAutoTaggingPointerPosition(this);
        }
        this.flushed = true;
        endTransformationIfApplied(drawContext.getCanvas());
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public Rectangle getOccupiedAreaBBox() {
        Rectangle rectangleMo3120clone = this.occupiedArea.getBBox().mo3120clone();
        if (((Float) getProperty(55)) != null) {
            if (!hasOwnProperty(57) || !hasOwnProperty(56)) {
                LoggerFactory.getLogger((Class<?>) BlockRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.ROTATION_WAS_NOT_CORRECTLY_PROCESSED_FOR_RENDERER, getClass().getSimpleName()));
            } else {
                rectangleMo3120clone.setWidth(getPropertyAsFloat(57).floatValue());
                rectangleMo3120clone.setHeight(getPropertyAsFloat(56).floatValue());
            }
        }
        return rectangleMo3120clone;
    }

    protected AbstractRenderer createSplitRenderer(int i) {
        AbstractRenderer abstractRenderer = (AbstractRenderer) getNextRenderer();
        abstractRenderer.parent = this.parent;
        abstractRenderer.modelElement = this.modelElement;
        abstractRenderer.occupiedArea = this.occupiedArea;
        abstractRenderer.isLastRendererForModelElement = false;
        abstractRenderer.addAllProperties(getOwnProperties());
        return abstractRenderer;
    }

    protected AbstractRenderer createOverflowRenderer(int i) {
        AbstractRenderer abstractRenderer = (AbstractRenderer) getNextRenderer();
        abstractRenderer.parent = this.parent;
        abstractRenderer.modelElement = this.modelElement;
        abstractRenderer.addAllProperties(getOwnProperties());
        return abstractRenderer;
    }

    void recalculateOccupiedAreaAfterChildLayout(Rectangle rectangle, Float f) {
        this.occupiedArea.setBBox(Rectangle.getCommonRectangle(this.occupiedArea.getBBox(), rectangle));
    }

    MarginsCollapseInfo startChildMarginsHandling(IRenderer iRenderer, Rectangle rectangle, MarginsCollapseHandler marginsCollapseHandler) {
        return marginsCollapseHandler.startChildMarginsHandling(iRenderer, rectangle);
    }

    AbstractRenderer[] createSplitAndOverflowRenderers(int i, int i2, LayoutResult layoutResult, Map<Integer, IRenderer> map, List<IRenderer> list) {
        AbstractRenderer abstractRendererCreateSplitRenderer = createSplitRenderer(i2);
        abstractRendererCreateSplitRenderer.childRenderers = new ArrayList(this.childRenderers.subList(0, i));
        if (layoutResult.getStatus() == 2 && layoutResult.getSplitRenderer() != null) {
            abstractRendererCreateSplitRenderer.childRenderers.add(layoutResult.getSplitRenderer());
        }
        replaceSplitRendererKidFloats(map, abstractRendererCreateSplitRenderer);
        Iterator<IRenderer> it = abstractRendererCreateSplitRenderer.childRenderers.iterator();
        while (it.hasNext()) {
            it.next().setParent(abstractRendererCreateSplitRenderer);
        }
        AbstractRenderer abstractRendererCreateOverflowRenderer = createOverflowRenderer(i2);
        abstractRendererCreateOverflowRenderer.childRenderers.addAll(list);
        if (layoutResult.getOverflowRenderer() != null) {
            abstractRendererCreateOverflowRenderer.childRenderers.add(layoutResult.getOverflowRenderer());
        }
        abstractRendererCreateOverflowRenderer.childRenderers.addAll(this.childRenderers.subList(i + 1, this.childRenderers.size()));
        if (layoutResult.getStatus() == 2) {
            abstractRendererCreateOverflowRenderer.deleteOwnProperty(26);
        }
        return new AbstractRenderer[]{abstractRendererCreateSplitRenderer, abstractRendererCreateOverflowRenderer};
    }

    protected void applyVerticalAlignment() {
        float bottom;
        VerticalAlignment verticalAlignment = (VerticalAlignment) getProperty(75);
        if (verticalAlignment == null || verticalAlignment == VerticalAlignment.TOP || this.childRenderers.isEmpty()) {
            return;
        }
        if (FloatingHelper.isRendererFloating(this) || (this instanceof CellRenderer)) {
            float bottom2 = Float.MAX_VALUE;
            for (IRenderer iRenderer : this.childRenderers) {
                if (iRenderer.getOccupiedArea().getBBox().getBottom() < bottom2) {
                    bottom2 = iRenderer.getOccupiedArea().getBBox().getBottom();
                }
            }
            bottom = bottom2;
        } else {
            int size = this.childRenderers.size() - 1;
            while (true) {
                if (size < 0) {
                    bottom = Float.MAX_VALUE;
                    break;
                }
                int i = size - 1;
                IRenderer iRenderer2 = this.childRenderers.get(size);
                if (!FloatingHelper.isRendererFloating(iRenderer2)) {
                    bottom = iRenderer2.getOccupiedArea().getBBox().getBottom();
                    break;
                }
                size = i;
            }
        }
        if (bottom == Float.MAX_VALUE) {
            return;
        }
        float y = bottom - getInnerAreaBBox().getY();
        if (y < 0.0f) {
            return;
        }
        int i2 = C35121.$SwitchMap$com$itextpdf$layout$properties$VerticalAlignment[verticalAlignment.ordinal()];
        if (i2 == 1) {
            Iterator<IRenderer> it = this.childRenderers.iterator();
            while (it.hasNext()) {
                it.next().move(0.0f, -y);
            }
        } else {
            if (i2 != 2) {
                return;
            }
            Iterator<IRenderer> it2 = this.childRenderers.iterator();
            while (it2.hasNext()) {
                it2.next().move(0.0f, (-y) / 2.0f);
            }
        }
    }

    /* JADX INFO: renamed from: com.itextpdf.layout.renderer.BlockRenderer$1 */
    static /* synthetic */ class C35121 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$layout$properties$VerticalAlignment;

        static {
            int[] iArr = new int[VerticalAlignment.values().length];
            $SwitchMap$com$itextpdf$layout$properties$VerticalAlignment = iArr;
            try {
                iArr[VerticalAlignment.BOTTOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$VerticalAlignment[VerticalAlignment.MIDDLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    protected void applyRotationLayout(Rectangle rectangle) {
        float fFloatValue = getPropertyAsFloat(55).floatValue();
        float x = this.occupiedArea.getBBox().getX();
        float y = this.occupiedArea.getBBox().getY();
        float height = this.occupiedArea.getBBox().getHeight();
        setProperty(57, Float.valueOf(this.occupiedArea.getBBox().getWidth()));
        setProperty(56, Float.valueOf(height));
        AffineTransform affineTransform = new AffineTransform();
        if (isPositioned()) {
            Float propertyAsFloat = getPropertyAsFloat(58);
            Float propertyAsFloat2 = getPropertyAsFloat(59);
            if (propertyAsFloat == null || propertyAsFloat2 == null) {
                propertyAsFloat = Float.valueOf(x);
                propertyAsFloat2 = Float.valueOf(y);
            }
            affineTransform.translate(propertyAsFloat.floatValue(), propertyAsFloat2.floatValue());
            affineTransform.rotate(fFloatValue);
            affineTransform.translate(-propertyAsFloat.floatValue(), -propertyAsFloat2.floatValue());
            Rectangle rectangleCalculateBBox = calculateBBox(transformPoints(rectangleToPointsList(this.occupiedArea.getBBox()), affineTransform));
            this.occupiedArea.getBBox().setWidth(rectangleCalculateBBox.getWidth());
            this.occupiedArea.getBBox().setHeight(rectangleCalculateBBox.getHeight());
            move(rectangleCalculateBBox.getX() - x, rectangleCalculateBBox.getY() - y);
            return;
        }
        List<Point> listTransformPoints = transformPoints(rectangleToPointsList(this.occupiedArea.getBBox()), AffineTransform.getRotateInstance(fFloatValue));
        float[] fArrCalculateShiftToPositionBBoxOfPointsAt = calculateShiftToPositionBBoxOfPointsAt(x, y + height, listTransformPoints);
        for (Point point : listTransformPoints) {
            point.setLocation(point.getX() + ((double) fArrCalculateShiftToPositionBBoxOfPointsAt[0]), point.getY() + ((double) fArrCalculateShiftToPositionBBoxOfPointsAt[1]));
        }
        Rectangle rectangleCalculateBBox2 = calculateBBox(listTransformPoints);
        this.occupiedArea.getBBox().setWidth(rectangleCalculateBBox2.getWidth());
        this.occupiedArea.getBBox().setHeight(rectangleCalculateBBox2.getHeight());
        move(0.0f, height - rectangleCalculateBBox2.getHeight());
    }

    protected AffineTransform createRotationTransformInsideOccupiedArea() {
        AffineTransform rotateInstance = AffineTransform.getRotateInstance(((Float) getProperty(55)).floatValue());
        float[] fArrCalculateShiftToPositionBBoxOfPointsAt = calculateShiftToPositionBBoxOfPointsAt(this.occupiedArea.getBBox().getLeft(), this.occupiedArea.getBBox().getTop(), transformPoints(rectangleToPointsList(getOccupiedAreaBBox()), rotateInstance));
        rotateInstance.preConcatenate(AffineTransform.getTranslateInstance(fArrCalculateShiftToPositionBBoxOfPointsAt[0], fArrCalculateShiftToPositionBBoxOfPointsAt[1]));
        return rotateInstance;
    }

    protected void beginRotationIfApplied(PdfCanvas pdfCanvas) {
        if (getPropertyAsFloat(55) != null) {
            if (!hasOwnProperty(56)) {
                LoggerFactory.getLogger((Class<?>) BlockRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.ROTATION_WAS_NOT_CORRECTLY_PROCESSED_FOR_RENDERER, getClass().getSimpleName()));
            } else {
                pdfCanvas.saveState().concatMatrix(createRotationTransformInsideOccupiedArea());
            }
        }
    }

    protected void endRotationIfApplied(PdfCanvas pdfCanvas) {
        if (getPropertyAsFloat(55) == null || !hasOwnProperty(56)) {
            return;
        }
        pdfCanvas.restoreState();
    }

    LayoutResult processNotFullChildResult(LayoutContext layoutContext, Map<Integer, IRenderer> map, List<IRenderer> list, boolean z, List<Rectangle> list2, boolean z2, float f, Border[] borderArr, UnitValue[] unitValueArr, List<Rectangle> list3, int i, Rectangle rectangle, Set<Rectangle> set, IRenderer iRenderer, boolean z3, int i2, LayoutResult layoutResult) {
        AbstractRenderer abstractRenderer;
        if (layoutResult.getStatus() == 2) {
            if (i + 1 == list3.size()) {
                AbstractRenderer[] abstractRendererArrCreateSplitAndOverflowRenderers = createSplitAndOverflowRenderers(i2, 2, layoutResult, map, list);
                AbstractRenderer abstractRenderer2 = abstractRendererArrCreateSplitAndOverflowRenderers[0];
                AbstractRenderer abstractRenderer3 = abstractRendererArrCreateSplitAndOverflowRenderers[1];
                abstractRenderer3.deleteOwnProperty(26);
                updateHeightsOnSplit(z, abstractRenderer2, abstractRenderer3);
                applyPaddings(this.occupiedArea.getBBox(), unitValueArr, true);
                applyBorderBox(this.occupiedArea.getBBox(), borderArr, true);
                applyMargins(this.occupiedArea.getBBox(), true);
                correctFixedLayout(rectangle);
                LayoutArea layoutAreaAdjustResultOccupiedAreaForFloatAndClear = FloatingHelper.adjustResultOccupiedAreaForFloatAndClear(this, layoutContext.getFloatRendererAreas(), layoutContext.getArea().getBBox(), f, z2);
                if (z) {
                    return new LayoutResult(1, layoutAreaAdjustResultOccupiedAreaForFloatAndClear, abstractRenderer2, null);
                }
                return new LayoutResult(2, layoutAreaAdjustResultOccupiedAreaForFloatAndClear, abstractRenderer2, abstractRenderer3, iRenderer);
            }
            this.childRenderers.set(i2, layoutResult.getSplitRenderer());
            this.childRenderers.add(i2 + 1, layoutResult.getOverflowRenderer());
            return null;
        }
        if (layoutResult.getStatus() != 3) {
            return null;
        }
        boolean zIsKeepTogether = isKeepTogether(iRenderer);
        int i3 = (!z3 || zIsKeepTogether) ? 3 : 2;
        int i4 = i3;
        AbstractRenderer[] abstractRendererArrCreateSplitAndOverflowRenderers2 = createSplitAndOverflowRenderers(i2, i3, layoutResult, map, list);
        AbstractRenderer abstractRenderer4 = abstractRendererArrCreateSplitAndOverflowRenderers2[0];
        AbstractRenderer abstractRenderer5 = abstractRendererArrCreateSplitAndOverflowRenderers2[1];
        if (isRelativePosition() && this.positionedRenderers.size() > 0) {
            abstractRenderer5.positionedRenderers = new ArrayList(this.positionedRenderers);
        }
        updateHeightsOnSplit(z, abstractRenderer4, abstractRenderer5);
        if (zIsKeepTogether) {
            abstractRenderer5.childRenderers.clear();
            abstractRenderer5.childRenderers = new ArrayList(this.childRenderers);
            abstractRenderer = null;
        } else {
            abstractRenderer = abstractRenderer4;
        }
        correctFixedLayout(rectangle);
        applyPaddings(this.occupiedArea.getBBox(), unitValueArr, true);
        applyBorderBox(this.occupiedArea.getBBox(), borderArr, true);
        applyMargins(this.occupiedArea.getBBox(), true);
        applyAbsolutePositionIfNeeded(layoutContext);
        if (Boolean.TRUE.equals(getPropertyAsBoolean(26)) || z) {
            return new LayoutResult(1, FloatingHelper.adjustResultOccupiedAreaForFloatAndClear(this, layoutContext.getFloatRendererAreas(), layoutContext.getArea().getBBox(), f, z2), abstractRenderer, null, null);
        }
        if (i4 != 3) {
            return new LayoutResult(i4, FloatingHelper.adjustResultOccupiedAreaForFloatAndClear(this, layoutContext.getFloatRendererAreas(), layoutContext.getArea().getBBox(), f, z2), abstractRenderer, abstractRenderer5, null).setAreaBreak(layoutResult.getAreaBreak());
        }
        list2.retainAll(set);
        return new LayoutResult(i4, null, null, abstractRenderer5, layoutResult.getCauseOfNothing()).setAreaBreak(layoutResult.getAreaBreak());
    }

    void decreaseLayoutBoxAfterChildPlacement(Rectangle rectangle, LayoutResult layoutResult, IRenderer iRenderer) {
        rectangle.setHeight(layoutResult.getOccupiedArea().getBBox().getY() - rectangle.getY());
    }

    void correctFixedLayout(Rectangle rectangle) {
        if (isFixedLayout()) {
            move(0.0f, getPropertyAsFloat(14).floatValue() - this.occupiedArea.getBBox().getY());
        }
    }

    void applyWidth(Rectangle rectangle, Float f, OverflowPropertyValue overflowPropertyValue) {
        Float propertyAsFloat = getPropertyAsFloat(55);
        if (f != null && (f.floatValue() < rectangle.getWidth() || isPositioned() || propertyAsFloat != null || !isOverflowFit(overflowPropertyValue))) {
            rectangle.setWidth(f.floatValue());
            return;
        }
        Float fRetrieveMinWidth = retrieveMinWidth(rectangle.getWidth());
        if (fRetrieveMinWidth == null || fRetrieveMinWidth.floatValue() <= rectangle.getWidth()) {
            return;
        }
        rectangle.setWidth(fRetrieveMinWidth.floatValue());
    }

    boolean applyMaxHeight(Rectangle rectangle, Float f, MarginsCollapseHandler marginsCollapseHandler, boolean z, boolean z2, OverflowPropertyValue overflowPropertyValue) {
        if (f != null && (f.floatValue() < rectangle.getHeight() || !isOverflowFit(overflowPropertyValue))) {
            z = f.floatValue() <= rectangle.getHeight();
            float height = rectangle.getHeight() - f.floatValue();
            if (marginsCollapseHandler != null && !z) {
                marginsCollapseHandler.processFixedHeightAdjustment(height);
            }
            rectangle.moveUp(height).setHeight(f.floatValue());
        }
        return z;
    }

    AbstractRenderer applyMinHeight(OverflowPropertyValue overflowPropertyValue, Rectangle rectangle) {
        Float fRetrieveMinHeight = retrieveMinHeight();
        if (!Boolean.TRUE.equals(getPropertyAsBoolean(26)) && fRetrieveMinHeight != null && fRetrieveMinHeight.floatValue() > this.occupiedArea.getBBox().getHeight()) {
            float bottom = this.occupiedArea.getBBox().getBottom() - (fRetrieveMinHeight.floatValue() - this.occupiedArea.getBBox().getHeight());
            if (!isFixedLayout() && isOverflowFit(overflowPropertyValue) && 1.0E-4f + bottom < rectangle.getBottom()) {
                this.occupiedArea.getBBox().increaseHeight(this.occupiedArea.getBBox().getBottom() - rectangle.getBottom()).setY(rectangle.getBottom());
                if (this.occupiedArea.getBBox().getHeight() < 0.0f) {
                    this.occupiedArea.getBBox().setHeight(0.0f);
                }
                this.isLastRendererForModelElement = false;
                AbstractRenderer abstractRendererCreateOverflowRenderer = createOverflowRenderer(2);
                abstractRendererCreateOverflowRenderer.updateMinHeight(UnitValue.createPointValue(fRetrieveMinHeight.floatValue() - this.occupiedArea.getBBox().getHeight()));
                if (!hasProperty(27)) {
                    return abstractRendererCreateOverflowRenderer;
                }
                abstractRendererCreateOverflowRenderer.updateHeight(UnitValue.createPointValue(retrieveHeight().floatValue() - this.occupiedArea.getBBox().getHeight()));
                return abstractRendererCreateOverflowRenderer;
            }
            this.occupiedArea.getBBox().setY(bottom).setHeight(fRetrieveMinHeight.floatValue());
        }
        return null;
    }

    void fixOccupiedAreaIfOverflowedX(OverflowPropertyValue overflowPropertyValue, Rectangle rectangle) {
        if (isOverflowFit(overflowPropertyValue)) {
            return;
        }
        if (this.occupiedArea.getBBox().getWidth() > rectangle.getWidth() || this.occupiedArea.getBBox().getLeft() < rectangle.getLeft()) {
            this.occupiedArea.getBBox().setX(rectangle.getX()).setWidth(rectangle.getWidth());
        }
    }

    void fixOccupiedAreaIfOverflowedY(OverflowPropertyValue overflowPropertyValue, Rectangle rectangle) {
        if (!isOverflowFit(overflowPropertyValue) && this.occupiedArea.getBBox().getBottom() < rectangle.getBottom()) {
            float bottom = rectangle.getBottom() - this.occupiedArea.getBBox().getBottom();
            this.occupiedArea.getBBox().moveUp(bottom).decreaseHeight(bottom);
        }
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public MinMaxWidth getMinMaxWidth() {
        MinMaxWidth minMaxWidthCountDefaultMinMaxWidth;
        MinMaxWidth minMaxWidth = new MinMaxWidth(calculateAdditionalWidth(this));
        if (!setMinMaxWidthBasedOnFixedWidth(minMaxWidth)) {
            Float fRetrieveMinWidth = hasAbsoluteUnitValue(80) ? retrieveMinWidth(0.0f) : null;
            Float fRetrieveMaxWidth = hasAbsoluteUnitValue(79) ? retrieveMaxWidth(0.0f) : null;
            if (fRetrieveMinWidth == null || fRetrieveMaxWidth == null) {
                MaxMaxWidthHandler maxMaxWidthHandler = new MaxMaxWidthHandler(minMaxWidth);
                float maxWidth = 0.0f;
                int iMax = 0;
                int i = 0;
                for (IRenderer iRenderer : this.childRenderers) {
                    iRenderer.setParent(this);
                    if (iRenderer instanceof AbstractRenderer) {
                        minMaxWidthCountDefaultMinMaxWidth = ((AbstractRenderer) iRenderer).getMinMaxWidth();
                    } else {
                        minMaxWidthCountDefaultMinMaxWidth = MinMaxWidthUtils.countDefaultMinMaxWidth(iRenderer);
                    }
                    maxMaxWidthHandler.updateMaxChildWidth(minMaxWidthCountDefaultMinMaxWidth.getMaxWidth() + (FloatingHelper.isRendererFloating(iRenderer) ? maxWidth : 0.0f));
                    maxMaxWidthHandler.updateMinChildWidth(minMaxWidthCountDefaultMinMaxWidth.getMinWidth());
                    maxWidth = FloatingHelper.isRendererFloating(iRenderer) ? maxWidth + minMaxWidthCountDefaultMinMaxWidth.getMaxWidth() : 0.0f;
                    if (FloatingHelper.isRendererFloating(iRenderer)) {
                        i++;
                    } else {
                        iMax = Math.max(iMax, i);
                        i = 0;
                    }
                }
                float fMax = Math.max(iMax, i) * 1.0E-4f;
                maxMaxWidthHandler.minMaxWidth.setChildrenMaxWidth(maxMaxWidthHandler.minMaxWidth.getChildrenMaxWidth() + fMax);
                maxMaxWidthHandler.minMaxWidth.setChildrenMinWidth(maxMaxWidthHandler.minMaxWidth.getChildrenMinWidth() + fMax);
            }
            if (fRetrieveMinWidth != null) {
                minMaxWidth.setChildrenMinWidth(fRetrieveMinWidth.floatValue());
            }
            if (fRetrieveMaxWidth != null) {
                minMaxWidth.setChildrenMaxWidth(fRetrieveMaxWidth.floatValue());
            } else if (minMaxWidth.getChildrenMinWidth() > minMaxWidth.getChildrenMaxWidth()) {
                minMaxWidth.setChildrenMaxWidth(minMaxWidth.getChildrenMinWidth());
            }
        }
        return getPropertyAsFloat(55) != null ? RotationUtils.countRotationMinMaxWidth(minMaxWidth, this) : minMaxWidth;
    }

    void handleForcedPlacement(boolean z) {
        if (z && hasOwnProperty(26)) {
            deleteOwnProperty(26);
        }
    }

    private void replaceSplitRendererKidFloats(Map<Integer, IRenderer> map, IRenderer iRenderer) {
        for (Map.Entry<Integer, IRenderer> entry : map.entrySet()) {
            if (entry.getValue() != null) {
                iRenderer.getChildRenderers().set(entry.getKey().intValue(), entry.getValue());
            } else {
                iRenderer.getChildRenderers().set(entry.getKey().intValue(), null);
            }
        }
        for (int size = iRenderer.getChildRenderers().size() - 1; size >= 0; size--) {
            if (iRenderer.getChildRenderers().get(size) == null) {
                iRenderer.getChildRenderers().remove(size);
            }
        }
    }

    private List<Point> clipPolygon(List<Point> list, Point point, Point point2) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        Point point3 = list.get(0);
        if (checkPointSide(point3, point, point2) >= 0) {
            arrayList.add(point3);
            z = true;
        }
        int i = 1;
        while (i < list.size() + 1) {
            Point point4 = list.get(i % list.size());
            if (checkPointSide(point4, point, point2) >= 0) {
                if (!z) {
                    arrayList.add(getIntersectionPoint(point3, point4, point, point2));
                }
                arrayList.add(point4);
                z = true;
            } else if (z) {
                arrayList.add(getIntersectionPoint(point3, point4, point, point2));
            }
            i++;
            point3 = point4;
        }
        return arrayList;
    }

    private int checkPointSide(Point point, Point point2, Point point3) {
        double x = ((point.getX() - point2.getX()) * (point3.getY() - point2.getY())) - ((point3.getX() - point2.getX()) * (point.getY() - point2.getY()));
        if (Math.abs(x) < 0.001d) {
            return 0;
        }
        if (x > 0.0d) {
            return 1;
        }
        return x < 0.0d ? -1 : 0;
    }

    private Point getIntersectionPoint(Point point, Point point2, Point point3, Point point4) {
        double y = point.getY() - point2.getY();
        double y2 = point3.getY() - point4.getY();
        double x = point2.getX() - point.getX();
        double x2 = point4.getX() - point3.getX();
        double x3 = (point.getX() * point2.getY()) - (point.getY() * point2.getX());
        double x4 = (point3.getX() * point4.getY()) - (point3.getY() * point4.getX());
        double d = (x * y2) - (x2 * y);
        return new Point(((x2 * x3) - (x * x4)) / d, ((x4 * y) - (x3 * y2)) / d);
    }
}
