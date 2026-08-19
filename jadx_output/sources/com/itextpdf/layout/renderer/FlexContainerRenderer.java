package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.element.Div;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.margincollapse.MarginsCollapseHandler;
import com.itextpdf.layout.margincollapse.MarginsCollapseInfo;
import com.itextpdf.layout.minmaxwidth.MinMaxWidth;
import com.itextpdf.layout.minmaxwidth.MinMaxWidthUtils;
import com.itextpdf.layout.properties.OverflowPropertyValue;
import com.itextpdf.layout.properties.UnitValue;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes6.dex */
public class FlexContainerRenderer extends DivRenderer {
    private final Map<Float, Float> hypotheticalCrossSizes;
    private List<List<FlexItemInfo>> lines;

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    void fixOccupiedAreaIfOverflowedX(OverflowPropertyValue overflowPropertyValue, Rectangle rectangle) {
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    void handleForcedPlacement(boolean z) {
    }

    public FlexContainerRenderer(Div div) {
        super(div);
        this.hypotheticalCrossSizes = new HashMap();
    }

    @Override // com.itextpdf.layout.renderer.DivRenderer, com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        logWarningIfGetNextRendererNotOverridden(FlexContainerRenderer.class, getClass());
        return new FlexContainerRenderer((Div) this.modelElement);
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer, com.itextpdf.layout.renderer.IRenderer
    public LayoutResult layout(LayoutContext layoutContext) {
        int i;
        Rectangle rectangleApplyMarginsBordersPaddings;
        Rectangle bBox = layoutContext.getArea().getBBox();
        setThisAsParent(getChildRenderers());
        this.lines = FlexUtil.calculateChildrenRectangles(bBox, this);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator<List<FlexItemInfo>> it = this.lines.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            for (FlexItemInfo flexItemInfo : it.next()) {
                if (AbstractRenderer.isBorderBoxSizing(flexItemInfo.getRenderer())) {
                    rectangleApplyMarginsBordersPaddings = flexItemInfo.getRenderer().applyMargins(flexItemInfo.getRectangle().mo3120clone(), false);
                } else {
                    rectangleApplyMarginsBordersPaddings = flexItemInfo.getRenderer().applyMarginsBordersPaddings(flexItemInfo.getRectangle().mo3120clone(), false);
                }
                arrayList.add(flexItemInfo.getRenderer().getProperty(77));
                arrayList2.add(flexItemInfo.getRenderer().getProperty(27));
                arrayList3.add(flexItemInfo.getRenderer().getProperty(85));
                flexItemInfo.getRenderer().setProperty(77, UnitValue.createPointValue(rectangleApplyMarginsBordersPaddings.getWidth()));
                flexItemInfo.getRenderer().setProperty(27, UnitValue.createPointValue(rectangleApplyMarginsBordersPaddings.getHeight()));
                flexItemInfo.getRenderer().setProperty(85, UnitValue.createPointValue(rectangleApplyMarginsBordersPaddings.getHeight()));
            }
        }
        LayoutResult layoutResultLayout = super.layout(layoutContext);
        Iterator<List<FlexItemInfo>> it2 = this.lines.iterator();
        while (it2.hasNext()) {
            for (FlexItemInfo flexItemInfo2 : it2.next()) {
                flexItemInfo2.getRenderer().setProperty(77, arrayList.get(i));
                flexItemInfo2.getRenderer().setProperty(27, arrayList2.get(i));
                flexItemInfo2.getRenderer().setProperty(85, arrayList3.get(i));
                i++;
            }
        }
        return layoutResultLayout;
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer, com.itextpdf.layout.renderer.AbstractRenderer
    public MinMaxWidth getMinMaxWidth() {
        MinMaxWidth minMaxWidth = new MinMaxWidth(calculateAdditionalWidth(this));
        MaxMaxWidthHandler maxMaxWidthHandler = new MaxMaxWidthHandler(minMaxWidth);
        if (!setMinMaxWidthBasedOnFixedWidth(minMaxWidth)) {
            Float fRetrieveMinWidth = hasAbsoluteUnitValue(80) ? retrieveMinWidth(0.0f) : null;
            Float fRetrieveMaxWidth = hasAbsoluteUnitValue(79) ? retrieveMaxWidth(0.0f) : null;
            if (fRetrieveMinWidth == null || fRetrieveMaxWidth == null) {
                findMinMaxWidthIfCorrespondingPropertiesAreNotSet(minMaxWidth, maxMaxWidthHandler);
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

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    AbstractRenderer[] createSplitAndOverflowRenderers(int i, int i2, LayoutResult layoutResult, Map<Integer, IRenderer> map, List<IRenderer> list) {
        AbstractRenderer abstractRendererCreateSplitRenderer = createSplitRenderer(i2);
        AbstractRenderer abstractRendererCreateOverflowRenderer = createOverflowRenderer(i2);
        final IRenderer iRenderer = getChildRenderers().get(i);
        boolean zEquals = Boolean.TRUE.equals(getProperty(26));
        boolean z = false;
        for (List<FlexItemInfo> list2 : this.lines) {
            boolean zAnyMatch = list2.stream().anyMatch(new Predicate() { // from class: com.itextpdf.layout.renderer.FlexContainerRenderer$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return FlexContainerRenderer.lambda$createSplitAndOverflowRenderers$0(iRenderer, (FlexItemInfo) obj);
                }
            });
            boolean z2 = z || zAnyMatch;
            if (zAnyMatch && !zEquals && i2 == 2) {
                fillSplitOverflowRenderersForPartialResult(abstractRendererCreateSplitRenderer, abstractRendererCreateOverflowRenderer, list2, iRenderer, layoutResult);
            } else {
                for (FlexItemInfo flexItemInfo : list2) {
                    if (z2 && !zEquals) {
                        abstractRendererCreateOverflowRenderer.addChildRenderer(flexItemInfo.getRenderer());
                    } else {
                        abstractRendererCreateSplitRenderer.addChildRenderer(flexItemInfo.getRenderer());
                    }
                }
            }
            z = z2;
        }
        abstractRendererCreateOverflowRenderer.deleteOwnProperty(26);
        return new AbstractRenderer[]{abstractRendererCreateSplitRenderer, abstractRendererCreateOverflowRenderer};
    }

    static /* synthetic */ boolean lambda$createSplitAndOverflowRenderers$0(IRenderer iRenderer, FlexItemInfo flexItemInfo) {
        return flexItemInfo.getRenderer() == iRenderer;
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    LayoutResult processNotFullChildResult(LayoutContext layoutContext, Map<Integer, IRenderer> map, List<IRenderer> list, boolean z, List<Rectangle> list2, boolean z2, float f, Border[] borderArr, UnitValue[] unitValueArr, List<Rectangle> list3, int i, Rectangle rectangle, Set<Rectangle> set, IRenderer iRenderer, boolean z3, int i2, LayoutResult layoutResult) {
        Rectangle rectangle2;
        boolean zIsKeepTogether = isKeepTogether(iRenderer);
        if (Boolean.TRUE.equals(getPropertyAsBoolean(26)) || z) {
            AbstractRenderer abstractRendererCreateSplitRenderer = zIsKeepTogether ? null : createSplitRenderer(layoutResult.getStatus());
            if (abstractRendererCreateSplitRenderer != null) {
                abstractRendererCreateSplitRenderer.setChildRenderers(getChildRenderers());
            }
            return new LayoutResult(1, getOccupiedAreaInCaseNothingWasWrappedWithFull(layoutResult, abstractRendererCreateSplitRenderer), abstractRendererCreateSplitRenderer, null, null);
        }
        AbstractRenderer[] abstractRendererArrCreateSplitAndOverflowRenderers = createSplitAndOverflowRenderers(i2, layoutResult.getStatus(), layoutResult, map, list);
        AbstractRenderer abstractRenderer = abstractRendererArrCreateSplitAndOverflowRenderers[0];
        AbstractRenderer abstractRenderer2 = abstractRendererArrCreateSplitAndOverflowRenderers[1];
        abstractRenderer2.deleteOwnProperty(26);
        updateHeightsOnSplit(z, abstractRenderer, abstractRenderer2);
        if (isRelativePosition() && !this.positionedRenderers.isEmpty()) {
            abstractRenderer2.positionedRenderers = new ArrayList(this.positionedRenderers);
        }
        if (zIsKeepTogether) {
            abstractRenderer2.setChildRenderers(getChildRenderers());
            rectangle2 = rectangle;
            abstractRenderer = null;
        } else {
            rectangle2 = rectangle;
        }
        correctFixedLayout(rectangle2);
        applyAbsolutePositionIfNeeded(layoutContext);
        applyPaddings(this.occupiedArea.getBBox(), unitValueArr, true);
        applyBorderBox(this.occupiedArea.getBBox(), borderArr, true);
        applyMargins(this.occupiedArea.getBBox(), true);
        if (abstractRenderer == null || abstractRenderer.getChildRenderers().isEmpty()) {
            return new LayoutResult(3, null, null, abstractRenderer2, layoutResult.getCauseOfNothing()).setAreaBreak(layoutResult.getAreaBreak());
        }
        return new LayoutResult(2, layoutContext.getArea(), abstractRenderer, abstractRenderer2, null).setAreaBreak(layoutResult.getAreaBreak());
    }

    LayoutArea getOccupiedAreaInCaseNothingWasWrappedWithFull(LayoutResult layoutResult, IRenderer iRenderer) {
        return layoutResult.getOccupiedArea() != null ? layoutResult.getOccupiedArea() : iRenderer.getOccupiedArea();
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    boolean stopLayoutingChildrenIfChildResultNotFull(LayoutResult layoutResult) {
        return layoutResult.getStatus() != 1;
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    void recalculateOccupiedAreaAfterChildLayout(Rectangle rectangle, Float f) {
        Rectangle rectangleMo3120clone = this.occupiedArea.getBBox().mo3120clone();
        Rectangle commonRectangle = Rectangle.getCommonRectangle(this.occupiedArea.getBBox(), rectangle);
        this.occupiedArea.getBBox().setY(commonRectangle.getY());
        this.occupiedArea.getBBox().setHeight(commonRectangle.getHeight());
        if (rectangleMo3120clone.getTop() < this.occupiedArea.getBBox().getTop()) {
            this.occupiedArea.getBBox().decreaseHeight(this.occupiedArea.getBBox().getTop() - rectangleMo3120clone.getTop());
        }
        if (f == null || this.occupiedArea.getBBox().getHeight() <= f.floatValue()) {
            return;
        }
        this.occupiedArea.getBBox().moveUp(this.occupiedArea.getBBox().getHeight() - f.floatValue());
        this.occupiedArea.getBBox().setHeight(f.floatValue());
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    MarginsCollapseInfo startChildMarginsHandling(IRenderer iRenderer, Rectangle rectangle, MarginsCollapseHandler marginsCollapseHandler) {
        return marginsCollapseHandler.startChildMarginsHandling(null, rectangle);
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    void decreaseLayoutBoxAfterChildPlacement(Rectangle rectangle, LayoutResult layoutResult, IRenderer iRenderer) {
        rectangle.decreaseWidth(layoutResult.getOccupiedArea().getBBox().getRight() - rectangle.getLeft());
        rectangle.setX(layoutResult.getOccupiedArea().getBBox().getRight());
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    Rectangle recalculateLayoutBoxBeforeChildLayout(Rectangle rectangle, IRenderer iRenderer, Rectangle rectangle2) {
        FlexItemInfo flexItemInfoFindFlexItemInfo;
        Rectangle rectangleMo3120clone = rectangle.mo3120clone();
        if ((iRenderer instanceof AbstractRenderer) && (flexItemInfoFindFlexItemInfo = findFlexItemInfo((AbstractRenderer) iRenderer)) != null) {
            rectangleMo3120clone.decreaseWidth(flexItemInfoFindFlexItemInfo.getRectangle().getX());
            rectangleMo3120clone.moveRight(flexItemInfoFindFlexItemInfo.getRectangle().getX());
            rectangleMo3120clone.decreaseHeight(flexItemInfoFindFlexItemInfo.getRectangle().getY());
        }
        return rectangleMo3120clone;
    }

    void setHypotheticalCrossSize(Float f, Float f2) {
        this.hypotheticalCrossSizes.put(Float.valueOf(f.floatValue()), f2);
    }

    Float getHypotheticalCrossSize(Float f) {
        return this.hypotheticalCrossSizes.get(Float.valueOf(f.floatValue()));
    }

    private FlexItemInfo findFlexItemInfo(AbstractRenderer abstractRenderer) {
        Iterator<List<FlexItemInfo>> it = this.lines.iterator();
        while (it.hasNext()) {
            for (FlexItemInfo flexItemInfo : it.next()) {
                if (flexItemInfo.getRenderer().equals(abstractRenderer)) {
                    return flexItemInfo;
                }
            }
        }
        return null;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
    public void addChild(IRenderer iRenderer) {
        iRenderer.setProperty(103, OverflowPropertyValue.VISIBLE);
        super.addChild(iRenderer);
    }

    private void fillSplitOverflowRenderersForPartialResult(AbstractRenderer abstractRenderer, AbstractRenderer abstractRenderer2, List<FlexItemInfo> list, IRenderer iRenderer, LayoutResult layoutResult) {
        abstractRenderer2.setProperty(134, null);
        float x = 0.0f;
        boolean z = false;
        for (FlexItemInfo flexItemInfo : list) {
            if (flexItemInfo.getRenderer() == iRenderer) {
                if (layoutResult.getSplitRenderer() != null) {
                    abstractRenderer.addChildRenderer(layoutResult.getSplitRenderer());
                }
                if (layoutResult.getOverflowRenderer() != null) {
                    abstractRenderer2.addChildRenderer(layoutResult.getOverflowRenderer());
                }
                z = true;
            } else if (z) {
                Rectangle rectangleMo3120clone = getOccupiedAreaBBox().mo3120clone();
                rectangleMo3120clone.setX(rectangleMo3120clone.getX() + x);
                rectangleMo3120clone.setWidth(flexItemInfo.getRectangle().getWidth());
                rectangleMo3120clone.setY(rectangleMo3120clone.getY() - flexItemInfo.getRectangle().getY());
                LayoutResult layoutResultLayout = flexItemInfo.getRenderer().layout(new LayoutContext(new LayoutArea(layoutResult.getOccupiedArea().getPageNumber(), rectangleMo3120clone)));
                if (layoutResultLayout.getStatus() == 2 && layoutResultLayout.getSplitRenderer() != null) {
                    abstractRenderer.addChildRenderer(layoutResultLayout.getSplitRenderer());
                } else if (layoutResultLayout.getStatus() == 1) {
                    abstractRenderer.addChildRenderer(flexItemInfo.getRenderer());
                }
                if (layoutResultLayout.getOverflowRenderer() != null) {
                    abstractRenderer2.addChildRenderer(layoutResultLayout.getOverflowRenderer());
                } else {
                    addSimulateDiv(abstractRenderer2, flexItemInfo.getRectangle().getWidth());
                }
            } else {
                abstractRenderer.addChildRenderer(flexItemInfo.getRenderer());
                addSimulateDiv(abstractRenderer2, flexItemInfo.getRectangle().getWidth());
            }
            x += flexItemInfo.getRectangle().getX() + flexItemInfo.getRectangle().getWidth();
        }
    }

    private void findMinMaxWidthIfCorrespondingPropertiesAreNotSet(MinMaxWidth minMaxWidth, AbstractWidthHandler abstractWidthHandler) {
        MinMaxWidth minMaxWidthCountDefaultMinMaxWidth;
        setThisAsParent(getChildRenderers());
        for (IRenderer iRenderer : getChildRenderers()) {
            iRenderer.setParent(this);
            if (iRenderer instanceof AbstractRenderer) {
                minMaxWidthCountDefaultMinMaxWidth = ((AbstractRenderer) iRenderer).getMinMaxWidth();
            } else {
                minMaxWidthCountDefaultMinMaxWidth = MinMaxWidthUtils.countDefaultMinMaxWidth(iRenderer);
            }
            abstractWidthHandler.updateMaxChildWidth(minMaxWidthCountDefaultMinMaxWidth.getMaxWidth() + minMaxWidth.getMaxWidth());
            abstractWidthHandler.updateMinChildWidth(minMaxWidthCountDefaultMinMaxWidth.getMinWidth() + minMaxWidth.getMinWidth());
        }
    }

    private static void addSimulateDiv(AbstractRenderer abstractRenderer, float f) {
        abstractRenderer.addChildRenderer(new DivRenderer(new Div().setMinWidth(f).setMaxWidth(f)));
    }
}
