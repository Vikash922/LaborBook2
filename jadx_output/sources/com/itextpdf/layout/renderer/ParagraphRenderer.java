package com.itextpdf.layout.renderer;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.layout.LineLayoutContext;
import com.itextpdf.layout.layout.LineLayoutResult;
import com.itextpdf.layout.layout.MinMaxWidthLayoutResult;
import com.itextpdf.layout.margincollapse.MarginsCollapseHandler;
import com.itextpdf.layout.minmaxwidth.MinMaxWidth;
import com.itextpdf.layout.minmaxwidth.MinMaxWidthUtils;
import com.itextpdf.layout.properties.BaseDirection;
import com.itextpdf.layout.properties.FloatPropertyValue;
import com.itextpdf.layout.properties.Leading;
import com.itextpdf.layout.properties.OverflowPropertyValue;
import com.itextpdf.layout.properties.ParagraphOrphansControl;
import com.itextpdf.layout.properties.ParagraphWidowsControl;
import com.itextpdf.layout.properties.RenderingMode;
import com.itextpdf.layout.properties.TextAlignment;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.shadow.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class ParagraphRenderer extends BlockRenderer {
    protected List<LineRenderer> lines;

    public ParagraphRenderer(Paragraph paragraph) {
        super(paragraph);
        this.lines = null;
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer, com.itextpdf.layout.renderer.IRenderer
    public LayoutResult layout(LayoutContext layoutContext) {
        ParagraphOrphansControl paragraphOrphansControl = (ParagraphOrphansControl) getProperty(121);
        ParagraphWidowsControl paragraphWidowsControl = (ParagraphWidowsControl) getProperty(122);
        if (paragraphOrphansControl != null || paragraphWidowsControl != null) {
            return OrphansWidowsLayoutHelper.orphansWidowsAwareLayout(this, layoutContext, paragraphOrphansControl, paragraphWidowsControl);
        }
        LayoutResult layoutResultDirectLayout = directLayout(layoutContext);
        updateParentLines(this);
        updateParentLines((ParagraphRenderer) layoutResultDirectLayout.getSplitRenderer());
        return layoutResultDirectLayout;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r50v0, types: [com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer, com.itextpdf.layout.renderer.ParagraphRenderer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24, types: [com.itextpdf.layout.renderer.IRenderer] */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v31 */
    /* JADX WARN: Type inference failed for: r5v32, types: [com.itextpdf.layout.renderer.IRenderer] */
    /* JADX WARN: Type inference failed for: r5v33 */
    protected LayoutResult directLayout(LayoutContext layoutContext) {
        float f;
        boolean z;
        List<Rectangle> listInitElementAreas;
        LineLayoutResult lineLayoutResult;
        boolean z2;
        float minWidth;
        float maxWidth;
        float f2;
        float f3;
        UnitValue[] unitValueArr;
        Border[] borderArr;
        MarginsCollapseHandler marginsCollapseHandler;
        Rectangle rectangle;
        boolean z3;
        List<Rectangle> list;
        OverflowPropertyValue overflowPropertyValue;
        MinMaxWidth minMaxWidth;
        boolean z4;
        MarginsCollapseHandler marginsCollapseHandler2;
        Rectangle rectangle2;
        boolean z5;
        ?? r10;
        float yLine;
        float bottomLeadingIndent;
        boolean z6;
        LineRenderer lineRenderer;
        boolean zIsClippedHeight = layoutContext.isClippedHeight();
        int pageNumber = layoutContext.getArea().getPageNumber();
        LineRenderer lineRenderer2 = (LineRenderer) new LineRenderer().setParent(this);
        Rectangle rectangleMo3120clone = layoutContext.getArea().getBBox().mo3120clone();
        boolean zEquals = Boolean.TRUE.equals(getPropertyAsBoolean(89));
        MarginsCollapseHandler marginsCollapseHandler3 = zEquals ? new MarginsCollapseHandler(this, layoutContext.getMarginsCollapseInfo()) : null;
        OverflowPropertyValue overflowPropertyValue2 = (OverflowPropertyValue) getProperty(103);
        lineRenderer2.setProperty(118, getPropertyAsBoolean(118));
        List<Rectangle> floatRendererAreas = layoutContext.getFloatRendererAreas();
        FloatPropertyValue floatPropertyValue = (FloatPropertyValue) getProperty(99);
        float fCalculateClearHeightCorrection = FloatingHelper.calculateClearHeightCorrection(this, floatRendererAreas, rectangleMo3120clone);
        FloatingHelper.applyClearance(rectangleMo3120clone, marginsCollapseHandler3, fCalculateClearHeightCorrection, FloatingHelper.isRendererFloating(this));
        Float fRetrieveWidth = retrieveWidth(rectangleMo3120clone.getWidth());
        if (FloatingHelper.isRendererFloating(this, floatPropertyValue)) {
            f = fCalculateClearHeightCorrection;
            fRetrieveWidth = FloatingHelper.adjustFloatedBlockLayoutBox(this, rectangleMo3120clone, fRetrieveWidth, floatRendererAreas, floatPropertyValue, overflowPropertyValue2);
            floatRendererAreas = new ArrayList<>();
        } else {
            f = fCalculateClearHeightCorrection;
        }
        List list2 = floatRendererAreas;
        if (this.childRenderers.size() == 0) {
            lineRenderer2 = null;
            z = true;
        } else {
            z = false;
        }
        boolean zIsPositioned = isPositioned();
        Float propertyAsFloat = getPropertyAsFloat(55);
        Float fRetrieveMaxHeight = retrieveMaxHeight();
        OverflowPropertyValue overflowPropertyValue3 = ((fRetrieveMaxHeight == null || fRetrieveMaxHeight.floatValue() > rectangleMo3120clone.getHeight()) && !zIsClippedHeight) ? OverflowPropertyValue.FIT : (OverflowPropertyValue) getProperty(104);
        if (propertyAsFloat != null || isFixedLayout()) {
            rectangleMo3120clone.moveDown(1000000.0f - rectangleMo3120clone.getHeight()).setHeight(1000000.0f);
        }
        if (propertyAsFloat != null && !FloatingHelper.isRendererFloating(this)) {
            fRetrieveWidth = RotationUtils.retrieveRotatedLayoutWidth(rectangleMo3120clone.getWidth(), this);
        }
        if (zEquals) {
            marginsCollapseHandler3.startMarginsCollapse(rectangleMo3120clone);
        }
        Border[] borders = getBorders();
        UnitValue[] paddings = getPaddings();
        float width = rectangleMo3120clone.getWidth();
        applyMargins(rectangleMo3120clone, false);
        applyBorderBox(rectangleMo3120clone, borders, false);
        if (isFixedLayout()) {
            rectangleMo3120clone.setX(getPropertyAsFloat(34).floatValue());
        }
        applyPaddings(rectangleMo3120clone, paddings, false);
        float width2 = width - rectangleMo3120clone.getWidth();
        applyWidth(rectangleMo3120clone, fRetrieveWidth, overflowPropertyValue2);
        UnitValue[] unitValueArr2 = paddings;
        OverflowPropertyValue overflowPropertyValue4 = overflowPropertyValue3;
        Border[] borderArr2 = borders;
        LineRenderer lineRenderer3 = lineRenderer2;
        boolean zApplyMaxHeight = applyMaxHeight(rectangleMo3120clone, fRetrieveMaxHeight, marginsCollapseHandler3, false, zIsClippedHeight, overflowPropertyValue4);
        MinMaxWidth minMaxWidth2 = new MinMaxWidth(width2);
        MaxMaxWidthHandler maxMaxWidthHandler = new MaxMaxWidthHandler(minMaxWidth2);
        if (zIsPositioned) {
            listInitElementAreas = Collections.singletonList(rectangleMo3120clone);
        } else {
            listInitElementAreas = initElementAreas(new LayoutArea(pageNumber, rectangleMo3120clone));
        }
        List<Rectangle> list3 = listInitElementAreas;
        this.occupiedArea = new LayoutArea(pageNumber, new Rectangle(rectangleMo3120clone.getX(), rectangleMo3120clone.getY() + rectangleMo3120clone.getHeight(), rectangleMo3120clone.getWidth(), 0.0f));
        shrinkOccupiedAreaForAbsolutePosition();
        TargetCounterHandler.addPageByID(this);
        Rectangle rectangleMo3120clone2 = list3.get(0).mo3120clone();
        this.lines = new ArrayList();
        boolean z7 = false;
        for (IRenderer iRenderer : this.childRenderers) {
            if (z7 || !FloatingHelper.isRendererFloating(iRenderer)) {
                lineRenderer = lineRenderer3;
                z7 = true;
            } else {
                z7 = false;
                lineRenderer = lineRenderer3;
            }
            lineRenderer.addChild(iRenderer);
            lineRenderer3 = lineRenderer;
        }
        LineRenderer lineRenderer4 = lineRenderer3;
        float y = rectangleMo3120clone2.getY() + rectangleMo3120clone2.getHeight();
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet(list2);
        if (zEquals && this.childRenderers.size() > 0) {
            marginsCollapseHandler3.startChildMarginsHandling(null, rectangleMo3120clone2);
        }
        boolean zIsRendererCreateBfc = BlockFormattingContextUtil.isRendererCreateBfc(this);
        Rectangle rectangle3 = rectangleMo3120clone2;
        MarginsCollapseHandler marginsCollapseHandler4 = marginsCollapseHandler3;
        boolean z8 = z;
        boolean z9 = false;
        boolean z10 = true;
        int i = 0;
        float y2 = 0.0f;
        float f4 = 0.0f;
        float yLine2 = y;
        boolean z11 = false;
        while (lineRenderer4 != null) {
            boolean z12 = z11;
            lineRenderer4.setProperty(67, getPropertyAsFloat(67));
            lineRenderer4.setProperty(69, getProperty(69));
            float fFloatValue = z8 ? 0.0f : getPropertyAsFloat(18).floatValue();
            HashSet hashSet2 = hashSet;
            List<Rectangle> list4 = list3;
            MinMaxWidth minMaxWidth3 = minMaxWidth2;
            boolean z13 = zEquals;
            Rectangle rectangle4 = new Rectangle(rectangle3.getX(), rectangle3.getY(), rectangle3.getWidth(), rectangle3.getHeight());
            lineRenderer4.setProperty(103, overflowPropertyValue2);
            OverflowPropertyValue overflowPropertyValue5 = overflowPropertyValue4;
            lineRenderer4.setProperty(104, overflowPropertyValue5);
            LineLayoutContext floatOverflowedToNextPageWithNothing = new LineLayoutContext(new LayoutArea(pageNumber, rectangle4), null, list2, zApplyMaxHeight || zIsClippedHeight).setTextIndent(fFloatValue).setFloatOverflowedToNextPageWithNothing(z9);
            LineLayoutResult lineLayoutResult2 = (LineLayoutResult) ((LineRenderer) lineRenderer4.setParent(this)).layout(floatOverflowedToNextPageWithNothing);
            if (lineLayoutResult2.getStatus() == 3) {
                if (layoutContext.isClippedHeight()) {
                    OverflowPropertyValue overflowPropertyValue6 = (OverflowPropertyValue) lineRenderer4.getProperty(104);
                    lineRenderer4.setProperty(104, OverflowPropertyValue.VISIBLE);
                    floatOverflowedToNextPageWithNothing.setClippedHeight(true);
                    LineLayoutResult lineLayoutResult3 = (LineLayoutResult) ((LineRenderer) lineRenderer4.setParent(this)).layout(floatOverflowedToNextPageWithNothing);
                    lineRenderer4.setProperty(104, overflowPropertyValue6);
                    lineLayoutResult2 = lineLayoutResult3;
                    z6 = true;
                } else {
                    z6 = false;
                }
                Float fCalculateLineShiftUnderFloats = FloatingHelper.calculateLineShiftUnderFloats(list2, rectangle3);
                if (fCalculateLineShiftUnderFloats != null) {
                    rectangle3.decreaseHeight(fCalculateLineShiftUnderFloats.floatValue());
                    overflowPropertyValue4 = overflowPropertyValue5;
                    z11 = z12;
                    hashSet = hashSet2;
                    list3 = list4;
                    minMaxWidth2 = minMaxWidth3;
                    zEquals = z13;
                    z10 = true;
                } else {
                    boolean z14 = !lineRenderer4.childRenderers.isEmpty();
                    Iterator<IRenderer> it = lineRenderer4.childRenderers.iterator();
                    while (it.hasNext()) {
                        z14 = z14 && FloatingHelper.isRendererFloating(it.next());
                    }
                    z2 = z6;
                    if (z14) {
                        z12 = true;
                    }
                    lineLayoutResult = lineLayoutResult2;
                }
            } else {
                lineLayoutResult = lineLayoutResult2;
                z2 = false;
            }
            boolean zIsFloatOverflowedToNextPageWithNothing = floatOverflowedToNextPageWithNothing.isFloatOverflowedToNextPageWithNothing();
            if (lineLayoutResult.getFloatsOverflowedToNextPage() != null) {
                arrayList.addAll(lineLayoutResult.getFloatsOverflowedToNextPage());
            }
            if (lineLayoutResult instanceof MinMaxWidthLayoutResult) {
                minWidth = lineLayoutResult.getMinMaxWidth().getMinWidth();
                maxWidth = lineLayoutResult.getMinMaxWidth().getMaxWidth();
            } else {
                minWidth = 0.0f;
                maxWidth = 0.0f;
            }
            maxMaxWidthHandler.updateMinChildWidth(minWidth);
            maxMaxWidthHandler.updateMaxChildWidth(maxWidth);
            LineRenderer lineRenderer5 = (LineRenderer) lineLayoutResult.getSplitRenderer();
            if (lineRenderer5 == null && lineLayoutResult.getStatus() == 1) {
                lineRenderer5 = lineRenderer4;
            }
            LineRenderer lineRenderer6 = z12 ? null : lineRenderer5;
            boolean z15 = zIsClippedHeight;
            LineRenderer lineRenderer7 = lineRenderer4;
            int i2 = pageNumber;
            ArrayList arrayList2 = arrayList;
            MaxMaxWidthHandler maxMaxWidthHandler2 = maxMaxWidthHandler;
            LineRenderer lineRenderer8 = lineRenderer6;
            Rectangle rectangle5 = rectangle3;
            applyTextAlignment((TextAlignment) getProperty(70, TextAlignment.LEFT), lineLayoutResult, lineRenderer6, rectangle3, list2, z12, fFloatValue);
            Leading leading = RenderingMode.HTML_MODE.equals(getProperty(123)) ? null : (Leading) getProperty(33);
            boolean z16 = lineRenderer8 != null && lineRenderer8.getOccupiedArea().getBBox().getHeight() > 0.0f;
            boolean z17 = lineRenderer8 != null;
            if (!z17 || RenderingMode.HTML_MODE.equals(getProperty(123))) {
                f2 = 0.0f;
            } else {
                if (z16) {
                    float topLeadingIndent = ((f4 - y2) - (leading != null ? lineRenderer8.getTopLeadingIndent(leading) : 0.0f)) - lineRenderer8.getMaxAscent();
                    if (lineRenderer8.containsImage()) {
                        topLeadingIndent += f4;
                    }
                    yLine = (yLine2 + topLeadingIndent) - lineRenderer8.getYLine();
                    bottomLeadingIndent = leading != null ? lineRenderer8.getBottomLeadingIndent(leading) : 0.0f;
                    if (bottomLeadingIndent < 0.0f && lineRenderer8.containsImage()) {
                        bottomLeadingIndent = 0.0f;
                    }
                } else {
                    yLine = 0.0f;
                    bottomLeadingIndent = y2;
                }
                if (z10) {
                    yLine = (lineRenderer8 == null || leading == null) ? 0.0f : -lineRenderer8.getTopLeadingIndent(leading);
                }
                boolean z18 = !z2 ? !(leading == null || lineRenderer8.getOccupiedArea().getBBox().getY() + yLine >= rectangle5.getY()) : !(leading == null || (lineRenderer8.getOccupiedArea().getBBox().getY() + yLine) - bottomLeadingIndent >= rectangle5.getY());
                y2 = bottomLeadingIndent;
                f2 = yLine;
                z17 = z18;
            }
            if (!z17 && (lineRenderer8 == null || isOverflowFit(overflowPropertyValue5))) {
                int i3 = i + 1;
                if (i3 < list4.size()) {
                    list = list4;
                    Rectangle rectangleMo3120clone3 = list.get(i3).mo3120clone();
                    i = i3;
                    rectangle = rectangleMo3120clone3;
                    yLine2 = rectangleMo3120clone3.getY() + rectangleMo3120clone3.getHeight();
                    f3 = f;
                    unitValueArr = unitValueArr2;
                    borderArr = borderArr2;
                    marginsCollapseHandler = marginsCollapseHandler4;
                    z11 = z12;
                    z3 = z13;
                    overflowPropertyValue = overflowPropertyValue5;
                    minMaxWidth = minMaxWidth3;
                    z10 = true;
                } else {
                    if (isKeepTogether(lineLayoutResult.getCauseOfNothing())) {
                        list2.retainAll(hashSet2);
                        return new MinMaxWidthLayoutResult(3, null, null, this, lineLayoutResult.getCauseOfNothing() == null ? this : lineLayoutResult.getCauseOfNothing());
                    }
                    if (z13 && z8 && z7) {
                        marginsCollapseHandler2 = marginsCollapseHandler4;
                        rectangle2 = rectangle5;
                        marginsCollapseHandler2.endChildMarginsHandling(rectangle2);
                    } else {
                        marginsCollapseHandler2 = marginsCollapseHandler4;
                        rectangle2 = rectangle5;
                    }
                    boolean z19 = !z12 || zIsRendererCreateBfc;
                    if (z19) {
                        FloatingHelper.includeChildFloatsInOccupiedArea((List<Rectangle>) list2, (IRenderer) this, hashSet2);
                        fixOccupiedAreaIfOverflowedX(overflowPropertyValue2, rectangle2);
                    }
                    if (z13) {
                        marginsCollapseHandler2.endMarginsCollapse(rectangle2);
                    }
                    if (z19) {
                        z5 = false;
                    } else {
                        z5 = applyMinHeight(overflowPropertyValue5, rectangle2) != null;
                        applyVerticalAlignment();
                    }
                    ParagraphRenderer[] paragraphRendererArrSplit = split();
                    char c = 0;
                    paragraphRendererArrSplit[0].lines = this.lines;
                    Iterator<LineRenderer> it2 = this.lines.iterator();
                    while (it2.hasNext()) {
                        paragraphRendererArrSplit[c].childRenderers.addAll(it2.next().getChildRenderers());
                        c = 0;
                    }
                    paragraphRendererArrSplit[1].childRenderers.addAll(arrayList2);
                    if (lineRenderer8 != null) {
                        paragraphRendererArrSplit[1].childRenderers.addAll(lineRenderer8.getChildRenderers());
                    }
                    if (lineLayoutResult.getOverflowRenderer() != null) {
                        paragraphRendererArrSplit[1].childRenderers.addAll(lineLayoutResult.getOverflowRenderer().getChildRenderers());
                    }
                    if (z12 && !zIsRendererCreateBfc && !z5) {
                        FloatingHelper.removeParentArtifactsOnPageSplitIfOnlyFloatsOverflow(paragraphRendererArrSplit[1]);
                    }
                    float height = this.occupiedArea.getBBox().getHeight();
                    if (z19) {
                        r10 = 1;
                    } else {
                        r10 = 1;
                        height = Rectangle.getCommonRectangle(rectangle2, this.occupiedArea.getBBox()).getHeight();
                    }
                    updateHeightsOnSplit(height, zApplyMaxHeight, this, paragraphRendererArrSplit[r10], z19);
                    correctFixedLayout(rectangle2);
                    applyPaddings(this.occupiedArea.getBBox(), unitValueArr2, r10);
                    applyBorderBox(this.occupiedArea.getBBox(), borderArr2, r10);
                    applyMargins(this.occupiedArea.getBBox(), r10);
                    applyAbsolutePositionIfNeeded(layoutContext);
                    LayoutArea layoutAreaAdjustResultOccupiedAreaForFloatAndClear = FloatingHelper.adjustResultOccupiedAreaForFloatAndClear(this, layoutContext.getFloatRendererAreas(), layoutContext.getArea().getBBox(), f, z13);
                    if (zApplyMaxHeight) {
                        return new MinMaxWidthLayoutResult(r10, layoutAreaAdjustResultOccupiedAreaForFloatAndClear, paragraphRendererArrSplit[0], null).setMinMaxWidth(minMaxWidth3);
                    }
                    if (z8) {
                        return new MinMaxWidthLayoutResult(2, layoutAreaAdjustResultOccupiedAreaForFloatAndClear, paragraphRendererArrSplit[0], paragraphRendererArrSplit[r10]).setMinMaxWidth(minMaxWidth3);
                    }
                    if (Boolean.TRUE.equals(getPropertyAsBoolean(26))) {
                        this.occupiedArea.setBBox(Rectangle.getCommonRectangle(this.occupiedArea.getBBox(), lineRenderer7.getOccupiedArea().getBBox()));
                        fixOccupiedAreaIfOverflowedX(overflowPropertyValue2, rectangle2);
                        this.parent.setProperty(25, true);
                        this.lines.add(lineRenderer7);
                        if (2 == lineLayoutResult.getStatus()) {
                            int iIndexOf = lineRenderer7.childRenderers.indexOf(lineLayoutResult.getCauseOfNothing());
                            lineRenderer7.childRenderers.retainAll(lineRenderer7.childRenderers.subList(0, iIndexOf));
                            Iterator<IRenderer> it3 = lineRenderer7.getChildRenderers().iterator();
                            while (it3.hasNext()) {
                                it3.next().setParent(lineRenderer7);
                            }
                            paragraphRendererArrSplit[1].childRenderers.removeAll(paragraphRendererArrSplit[1].childRenderers.subList(0, iIndexOf));
                            return new MinMaxWidthLayoutResult(2, layoutAreaAdjustResultOccupiedAreaForFloatAndClear, this, paragraphRendererArrSplit[1], null).setMinMaxWidth(minMaxWidth3);
                        }
                        return new MinMaxWidthLayoutResult(1, layoutAreaAdjustResultOccupiedAreaForFloatAndClear, null, null, this).setMinMaxWidth(minMaxWidth3);
                    }
                    list2.retainAll(hashSet2);
                    return new MinMaxWidthLayoutResult(3, null, null, this, lineLayoutResult.getCauseOfNothing() == null ? this : lineLayoutResult.getCauseOfNothing());
                }
            } else {
                f3 = f;
                unitValueArr = unitValueArr2;
                borderArr = borderArr2;
                marginsCollapseHandler = marginsCollapseHandler4;
                rectangle = rectangle5;
                z3 = z13;
                list = list4;
                overflowPropertyValue = overflowPropertyValue5;
                minMaxWidth = minMaxWidth3;
                if (leading != null) {
                    lineRenderer8.applyLeading(f2);
                    if (z16) {
                        yLine2 = lineRenderer8.getYLine();
                    }
                }
                if (z16) {
                    z4 = false;
                    this.occupiedArea.setBBox(Rectangle.getCommonRectangle(this.occupiedArea.getBBox(), lineRenderer8.getOccupiedArea().getBBox()));
                    fixOccupiedAreaIfOverflowedX(overflowPropertyValue2, rectangle);
                } else {
                    z4 = false;
                }
                rectangle.setHeight(lineRenderer8.getOccupiedArea().getBBox().getY() - rectangle.getY());
                this.lines.add(lineRenderer8);
                LineRenderer lineRenderer9 = (LineRenderer) lineLayoutResult.getOverflowRenderer();
                float maxDescent = lineRenderer8.getMaxDescent();
                if (arrayList2.isEmpty() || lineLayoutResult.getOverflowRenderer() != null) {
                    lineRenderer7 = lineRenderer9;
                    f4 = maxDescent;
                    z10 = z4;
                    z11 = z12;
                } else {
                    lineRenderer7 = new LineRenderer();
                    f4 = maxDescent;
                    z10 = z4;
                    z11 = true;
                }
                z8 = true;
            }
            marginsCollapseHandler4 = marginsCollapseHandler;
            overflowPropertyValue4 = overflowPropertyValue;
            unitValueArr2 = unitValueArr;
            arrayList = arrayList2;
            rectangle3 = rectangle;
            maxMaxWidthHandler = maxMaxWidthHandler2;
            lineRenderer4 = lineRenderer7;
            z9 = zIsFloatOverflowedToNextPageWithNothing;
            pageNumber = i2;
            zEquals = z3;
            f = f3;
            borderArr2 = borderArr;
            minMaxWidth2 = minMaxWidth;
            list3 = list;
            hashSet = hashSet2;
            zIsClippedHeight = z15;
        }
        HashSet hashSet3 = hashSet;
        MinMaxWidth minMaxWidth4 = minMaxWidth2;
        Rectangle rectangle6 = rectangle3;
        boolean z20 = zEquals;
        float f5 = f;
        OverflowPropertyValue overflowPropertyValue7 = overflowPropertyValue4;
        UnitValue[] unitValueArr3 = unitValueArr2;
        Border[] borderArr3 = borderArr2;
        MarginsCollapseHandler marginsCollapseHandler5 = marginsCollapseHandler4;
        if (!RenderingMode.HTML_MODE.equals(getProperty(123))) {
            if (isOverflowFit(overflowPropertyValue7) && y2 > this.occupiedArea.getBBox().getY() - rectangle6.getY()) {
                y2 = this.occupiedArea.getBBox().getY() - rectangle6.getY();
            }
            float f6 = y2;
            this.occupiedArea.getBBox().moveDown(f6);
            this.occupiedArea.getBBox().setHeight(this.occupiedArea.getBBox().getHeight() + f6);
        }
        if (z20 && this.childRenderers.size() > 0 && z7) {
            marginsCollapseHandler5.endChildMarginsHandling(rectangle6);
        }
        if (zIsRendererCreateBfc) {
            FloatingHelper.includeChildFloatsInOccupiedArea((List<Rectangle>) list2, (IRenderer) this, hashSet3);
            fixOccupiedAreaIfOverflowedX(overflowPropertyValue2, rectangle6);
        }
        if (zApplyMaxHeight) {
            fixOccupiedAreaIfOverflowedY(overflowPropertyValue7, rectangle6);
        }
        if (z20) {
            marginsCollapseHandler5.endMarginsCollapse(rectangle6);
        }
        AbstractRenderer abstractRendererApplyMinHeight = applyMinHeight(overflowPropertyValue7, rectangle6);
        if (abstractRendererApplyMinHeight != null && isKeepTogether()) {
            list2.retainAll(hashSet3);
            return new LayoutResult(3, null, null, this, this);
        }
        correctFixedLayout(rectangle6);
        applyPaddings(this.occupiedArea.getBBox(), unitValueArr3, true);
        applyBorderBox(this.occupiedArea.getBBox(), borderArr3, true);
        applyMargins(this.occupiedArea.getBBox(), true);
        applyAbsolutePositionIfNeeded(layoutContext);
        if (propertyAsFloat != null) {
            applyRotationLayout(layoutContext.getArea().getBBox().mo3120clone());
            if (isNotFittingLayoutArea(layoutContext.getArea())) {
                if (isNotFittingWidth(layoutContext.getArea()) && !isNotFittingHeight(layoutContext.getArea())) {
                    LoggerFactory.getLogger(getClass()).warn(MessageFormatUtil.format("Element does not fit current area. {0}", "It fits by height so it will be forced placed"));
                } else if (!Boolean.TRUE.equals(getPropertyAsBoolean(26))) {
                    list2.retainAll(hashSet3);
                    return new MinMaxWidthLayoutResult(3, null, null, this, this);
                }
            }
        }
        applyVerticalAlignment();
        FloatingHelper.removeFloatsAboveRendererBottom(list2, this);
        LayoutArea layoutAreaAdjustResultOccupiedAreaForFloatAndClear2 = FloatingHelper.adjustResultOccupiedAreaForFloatAndClear(this, layoutContext.getFloatRendererAreas(), layoutContext.getArea().getBBox(), f5, z20);
        if (abstractRendererApplyMinHeight == null) {
            return new MinMaxWidthLayoutResult(1, layoutAreaAdjustResultOccupiedAreaForFloatAndClear2, null, null, null).setMinMaxWidth(minMaxWidth4);
        }
        return new MinMaxWidthLayoutResult(2, layoutAreaAdjustResultOccupiedAreaForFloatAndClear2, this, abstractRendererApplyMinHeight, null).setMinMaxWidth(minMaxWidth4);
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        logWarningIfGetNextRendererNotOverridden(ParagraphRenderer.class, getClass());
        return new ParagraphRenderer((Paragraph) this.modelElement);
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getDefaultProperty(int i) {
        if ((i == 46 || i == 43) && (this.parent instanceof CellRenderer)) {
            return (T1) UnitValue.createPointValue(0.0f);
        }
        return (T1) super.getDefaultProperty(i);
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public String toString() {
        StringBuilder sb = new StringBuilder();
        List<LineRenderer> list = this.lines;
        if (list != null && list.size() > 0) {
            for (int i = 0; i < this.lines.size(); i++) {
                if (i > 0) {
                    sb.append(StringUtils.f4768LF);
                }
                sb.append(this.lines.get(i).toString());
            }
        } else {
            Iterator<IRenderer> it = this.childRenderers.iterator();
            while (it.hasNext()) {
                sb.append(it.next().toString());
            }
        }
        return sb.toString();
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public void drawChildren(DrawContext drawContext) {
        List<LineRenderer> list = this.lines;
        if (list != null) {
            Iterator<LineRenderer> it = list.iterator();
            while (it.hasNext()) {
                it.next().draw(drawContext);
            }
        }
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
    public void move(float f, float f2) {
        Logger logger = LoggerFactory.getLogger((Class<?>) ParagraphRenderer.class);
        if (this.occupiedArea == null) {
            logger.error(MessageFormatUtil.format(IoLogMessageConstant.OCCUPIED_AREA_HAS_NOT_BEEN_INITIALIZED, "Moving won't be performed."));
            return;
        }
        this.occupiedArea.getBBox().moveRight(f);
        this.occupiedArea.getBBox().moveUp(f2);
        List<LineRenderer> list = this.lines;
        if (list != null) {
            Iterator<LineRenderer> it = list.iterator();
            while (it.hasNext()) {
                it.next().move(f, f2);
            }
        }
    }

    public List<LineRenderer> getLines() {
        return this.lines;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    protected Float getFirstYLineRecursively() {
        List<LineRenderer> list = this.lines;
        if (list == null || list.size() == 0) {
            return null;
        }
        return this.lines.get(0).getFirstYLineRecursively();
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    protected Float getLastYLineRecursively() {
        List<LineRenderer> list;
        if (allowLastYLineRecursiveExtraction() && (list = this.lines) != null && list.size() != 0) {
            for (int size = this.lines.size() - 1; size >= 0; size--) {
                Float lastYLineRecursively = this.lines.get(size).getLastYLineRecursively();
                if (lastYLineRecursively != null) {
                    return lastYLineRecursively;
                }
            }
        }
        return null;
    }

    private ParagraphRenderer createOverflowRenderer() {
        return (ParagraphRenderer) getNextRenderer();
    }

    private ParagraphRenderer createSplitRenderer() {
        return (ParagraphRenderer) getNextRenderer();
    }

    protected ParagraphRenderer createOverflowRenderer(IRenderer iRenderer) {
        ParagraphRenderer paragraphRendererCreateOverflowRenderer = createOverflowRenderer();
        paragraphRendererCreateOverflowRenderer.parent = iRenderer;
        fixOverflowRenderer(paragraphRendererCreateOverflowRenderer);
        paragraphRendererCreateOverflowRenderer.addAllProperties(getOwnProperties());
        return paragraphRendererCreateOverflowRenderer;
    }

    protected ParagraphRenderer createSplitRenderer(IRenderer iRenderer) {
        ParagraphRenderer paragraphRendererCreateSplitRenderer = createSplitRenderer();
        paragraphRendererCreateSplitRenderer.parent = iRenderer;
        paragraphRendererCreateSplitRenderer.addAllProperties(getOwnProperties());
        return paragraphRendererCreateSplitRenderer;
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    protected AbstractRenderer createOverflowRenderer(int i) {
        return createOverflowRenderer(this.parent);
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer, com.itextpdf.layout.renderer.AbstractRenderer
    public MinMaxWidth getMinMaxWidth() {
        MinMaxWidth minMaxWidth = new MinMaxWidth();
        Float propertyAsFloat = getPropertyAsFloat(55);
        if (!setMinMaxWidthBasedOnFixedWidth(minMaxWidth)) {
            Float fRetrieveMinWidth = hasAbsoluteUnitValue(80) ? retrieveMinWidth(0.0f) : null;
            Float fRetrieveMaxWidth = hasAbsoluteUnitValue(79) ? retrieveMaxWidth(0.0f) : null;
            if (fRetrieveMinWidth == null || fRetrieveMaxWidth == null) {
                boolean zHasOwnProperty = hasOwnProperty(55);
                setProperty(55, null);
                MinMaxWidthLayoutResult minMaxWidthLayoutResult = (MinMaxWidthLayoutResult) layout(new LayoutContext(new LayoutArea(1, new Rectangle(MinMaxWidthUtils.getInfWidth(), 1000000.0f))));
                if (zHasOwnProperty) {
                    setProperty(55, propertyAsFloat);
                } else {
                    deleteOwnProperty(55);
                }
                minMaxWidth = minMaxWidthLayoutResult.getMinMaxWidth();
            }
            if (fRetrieveMinWidth != null) {
                minMaxWidth.setChildrenMinWidth(fRetrieveMinWidth.floatValue());
            }
            if (fRetrieveMaxWidth != null) {
                minMaxWidth.setChildrenMaxWidth(fRetrieveMaxWidth.floatValue());
            }
            if (minMaxWidth.getChildrenMinWidth() > minMaxWidth.getChildrenMaxWidth()) {
                minMaxWidth.setChildrenMaxWidth(minMaxWidth.getChildrenMaxWidth());
            }
        } else {
            minMaxWidth.setAdditionalWidth(calculateAdditionalWidth(this));
        }
        return propertyAsFloat != null ? RotationUtils.countRotationMinMaxWidth(minMaxWidth, this) : minMaxWidth;
    }

    protected ParagraphRenderer[] split() {
        ParagraphRenderer paragraphRendererCreateSplitRenderer = createSplitRenderer(this.parent);
        paragraphRendererCreateSplitRenderer.occupiedArea = this.occupiedArea;
        paragraphRendererCreateSplitRenderer.isLastRendererForModelElement = false;
        return new ParagraphRenderer[]{paragraphRendererCreateSplitRenderer, createOverflowRenderer(this.parent)};
    }

    private void fixOverflowRenderer(ParagraphRenderer paragraphRenderer) {
        if (paragraphRenderer.getPropertyAsFloat(18).floatValue() != 0.0f) {
            paragraphRenderer.setProperty(18, Float.valueOf(0.0f));
        }
    }

    private void alignStaticKids(LineRenderer lineRenderer, float f) {
        lineRenderer.getOccupiedArea().getBBox().moveRight(f);
        for (IRenderer iRenderer : lineRenderer.getChildRenderers()) {
            if (!FloatingHelper.isRendererFloating(iRenderer)) {
                iRenderer.move(f, 0.0f);
            }
        }
    }

    private void applyTextAlignment(TextAlignment textAlignment, LineLayoutResult lineLayoutResult, LineRenderer lineRenderer, Rectangle rectangle, List<Rectangle> list, boolean z, float f) {
        if ((textAlignment == TextAlignment.JUSTIFIED && lineLayoutResult.getStatus() == 2 && !lineLayoutResult.isSplitForcedByNewline() && !z) || textAlignment == TextAlignment.JUSTIFIED_ALL) {
            if (lineRenderer != null) {
                Rectangle rectangleMo3120clone = rectangle.mo3120clone();
                FloatingHelper.adjustLineAreaAccordingToFloats(list, rectangleMo3120clone);
                lineRenderer.justify(rectangleMo3120clone.getWidth() - f);
                return;
            }
            return;
        }
        if (textAlignment == TextAlignment.LEFT || lineRenderer == null) {
            return;
        }
        Rectangle rectangleMo3120clone2 = rectangle.mo3120clone();
        FloatingHelper.adjustLineAreaAccordingToFloats(list, rectangleMo3120clone2);
        float fMax = Math.max(0.0f, (rectangleMo3120clone2.getWidth() - f) - lineRenderer.getOccupiedArea().getBBox().getWidth());
        int i = C35191.$SwitchMap$com$itextpdf$layout$properties$TextAlignment[textAlignment.ordinal()];
        if (i == 1) {
            alignStaticKids(lineRenderer, fMax);
            return;
        }
        if (i == 2) {
            alignStaticKids(lineRenderer, fMax / 2.0f);
        } else if (i == 3 && BaseDirection.RIGHT_TO_LEFT.equals(getProperty(7))) {
            alignStaticKids(lineRenderer, fMax);
        }
    }

    /* JADX INFO: renamed from: com.itextpdf.layout.renderer.ParagraphRenderer$1 */
    static /* synthetic */ class C35191 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$layout$properties$TextAlignment;

        static {
            int[] iArr = new int[TextAlignment.values().length];
            $SwitchMap$com$itextpdf$layout$properties$TextAlignment = iArr;
            try {
                iArr[TextAlignment.RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$TextAlignment[TextAlignment.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$TextAlignment[TextAlignment.JUSTIFIED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static void updateParentLines(ParagraphRenderer paragraphRenderer) {
        if (paragraphRenderer == null) {
            return;
        }
        Iterator<LineRenderer> it = paragraphRenderer.lines.iterator();
        while (it.hasNext()) {
            it.next().setParent(paragraphRenderer);
        }
        for (IRenderer iRenderer : paragraphRenderer.getChildRenderers()) {
            IRenderer parent = iRenderer.getParent();
            if (!(parent instanceof LineRenderer) || !paragraphRenderer.lines.contains((LineRenderer) parent)) {
                iRenderer.setParent(null);
            }
        }
    }
}
