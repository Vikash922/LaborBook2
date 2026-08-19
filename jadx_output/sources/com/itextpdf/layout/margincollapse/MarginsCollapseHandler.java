package com.itextpdf.layout.margincollapse;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.layout.IPropertyContainer;
import com.itextpdf.layout.properties.FloatPropertyValue;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.renderer.AbstractRenderer;
import com.itextpdf.layout.renderer.BlockFormattingContextUtil;
import com.itextpdf.layout.renderer.BlockRenderer;
import com.itextpdf.layout.renderer.CellRenderer;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.layout.renderer.LineRenderer;
import com.itextpdf.layout.renderer.TableRenderer;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class MarginsCollapseHandler {
    private MarginsCollapseInfo backupCollapseInfo;
    private Rectangle backupLayoutBox;
    private MarginsCollapseInfo childMarginInfo;
    private MarginsCollapseInfo collapseInfo;
    private boolean lastKidCollapsedAfterHasClearanceApplied;
    private MarginsCollapseInfo prevChildMarginInfo;
    private IRenderer renderer;
    private int firstNotEmptyKidIndex = 0;
    private int processedChildrenNum = 0;
    private List<IRenderer> rendererChildren = new ArrayList();

    public MarginsCollapseHandler(IRenderer iRenderer, MarginsCollapseInfo marginsCollapseInfo) {
        this.renderer = iRenderer;
        this.collapseInfo = marginsCollapseInfo == null ? new MarginsCollapseInfo() : marginsCollapseInfo;
    }

    public void processFixedHeightAdjustment(float f) {
        MarginsCollapseInfo marginsCollapseInfo = this.collapseInfo;
        marginsCollapseInfo.setBufferSpaceOnTop(marginsCollapseInfo.getBufferSpaceOnTop() + f);
        MarginsCollapseInfo marginsCollapseInfo2 = this.collapseInfo;
        marginsCollapseInfo2.setBufferSpaceOnBottom(marginsCollapseInfo2.getBufferSpaceOnBottom() + f);
    }

    public MarginsCollapseInfo startChildMarginsHandling(IRenderer iRenderer, Rectangle rectangle) {
        if (this.backupLayoutBox != null) {
            restoreLayoutBoxAfterFailedLayoutAttempt(rectangle);
            int i = this.processedChildrenNum - 1;
            this.processedChildrenNum = i;
            removeRendererChild(i);
            this.childMarginInfo = null;
        }
        this.rendererChildren.add(iRenderer);
        int i2 = this.processedChildrenNum;
        this.processedChildrenNum = i2 + 1;
        boolean z = !rendererIsFloated(iRenderer) && isBlockElement(iRenderer);
        this.backupLayoutBox = rectangle.mo3120clone();
        MarginsCollapseInfo marginsCollapseInfo = new MarginsCollapseInfo();
        this.backupCollapseInfo = marginsCollapseInfo;
        this.collapseInfo.copyTo(marginsCollapseInfo);
        prepareBoxForLayoutAttempt(rectangle, i2, z);
        if (z) {
            this.childMarginInfo = createMarginsInfoForBlockChild(i2);
        }
        return this.childMarginInfo;
    }

    public void applyClearance(float f) {
        this.collapseInfo.setClearanceApplied(true);
        this.collapseInfo.getCollapseBefore().joinMargin(f);
    }

    private MarginsCollapseInfo createMarginsInfoForBlockChild(int i) {
        MarginsCollapse ownCollapseAfter;
        boolean zLastChildMarginAdjoinedToParent = lastChildMarginAdjoinedToParent(this.renderer);
        boolean zFirstChildMarginAdjoinedToParent = i == this.firstNotEmptyKidIndex ? firstChildMarginAdjoinedToParent(this.renderer) : false;
        if (i == 0) {
            ownCollapseAfter = this.collapseInfo.getCollapseBefore();
            if (!zFirstChildMarginAdjoinedToParent) {
                ownCollapseAfter = new MarginsCollapse();
            }
        } else {
            MarginsCollapseInfo marginsCollapseInfo = this.prevChildMarginInfo;
            ownCollapseAfter = marginsCollapseInfo != null ? marginsCollapseInfo.getOwnCollapseAfter() : null;
            if (ownCollapseAfter == null) {
                ownCollapseAfter = new MarginsCollapse();
            }
        }
        MarginsCollapse marginsCollapseM3123clone = this.collapseInfo.getCollapseAfter().m3123clone();
        if (!zLastChildMarginAdjoinedToParent) {
            marginsCollapseM3123clone = new MarginsCollapse();
        }
        MarginsCollapseInfo marginsCollapseInfo2 = new MarginsCollapseInfo(zFirstChildMarginAdjoinedToParent, zLastChildMarginAdjoinedToParent, ownCollapseAfter, marginsCollapseM3123clone);
        if (zFirstChildMarginAdjoinedToParent && i == this.firstNotEmptyKidIndex) {
            marginsCollapseInfo2.setBufferSpaceOnTop(this.collapseInfo.getBufferSpaceOnTop());
        }
        if (zLastChildMarginAdjoinedToParent) {
            marginsCollapseInfo2.setBufferSpaceOnBottom(this.collapseInfo.getBufferSpaceOnBottom());
        }
        return marginsCollapseInfo2;
    }

    public void endChildMarginsHandling(Rectangle rectangle) {
        int i = this.processedChildrenNum;
        int i2 = i - 1;
        if (rendererIsFloated(getRendererChild(i2))) {
            return;
        }
        MarginsCollapseInfo marginsCollapseInfo = this.childMarginInfo;
        boolean z = false;
        if (marginsCollapseInfo != null) {
            if (this.firstNotEmptyKidIndex == i2 && marginsCollapseInfo.isSelfCollapsing()) {
                this.firstNotEmptyKidIndex = i;
            }
            MarginsCollapseInfo marginsCollapseInfo2 = this.collapseInfo;
            marginsCollapseInfo2.setSelfCollapsing(marginsCollapseInfo2.isSelfCollapsing() && this.childMarginInfo.isSelfCollapsing());
            if (this.childMarginInfo.isSelfCollapsing() && this.childMarginInfo.isClearanceApplied()) {
                z = true;
            }
            this.lastKidCollapsedAfterHasClearanceApplied = z;
        } else {
            this.lastKidCollapsedAfterHasClearanceApplied = false;
            this.collapseInfo.setSelfCollapsing(false);
        }
        if (this.prevChildMarginInfo != null) {
            fixPrevChildOccupiedArea(i2);
            updateCollapseBeforeIfPrevKidIsFirstAndSelfCollapsed(this.prevChildMarginInfo.getOwnCollapseAfter());
        }
        if (this.firstNotEmptyKidIndex == i2 && firstChildMarginAdjoinedToParent(this.renderer) && !this.collapseInfo.isSelfCollapsing()) {
            getRidOfCollapseArtifactsAtopOccupiedArea();
            if (this.childMarginInfo != null) {
                processUsedChildBufferSpaceOnTop(rectangle);
            }
        }
        this.prevChildMarginInfo = this.childMarginInfo;
        this.childMarginInfo = null;
        this.backupLayoutBox = null;
        this.backupCollapseInfo = null;
    }

    public void startMarginsCollapse(Rectangle rectangle) {
        this.collapseInfo.getCollapseBefore().joinMargin(defineTopMarginValueForCollapse(this.renderer));
        this.collapseInfo.getCollapseAfter().joinMargin(defineBottomMarginValueForCollapse(this.renderer));
        if (!firstChildMarginAdjoinedToParent(this.renderer)) {
            applyTopMargin(rectangle, this.collapseInfo.getCollapseBefore().getCollapsedMarginsSize());
        }
        if (!lastChildMarginAdjoinedToParent(this.renderer)) {
            applyBottomMargin(rectangle, this.collapseInfo.getCollapseAfter().getCollapsedMarginsSize());
        }
        ignoreModelTopMargin(this.renderer);
        ignoreModelBottomMargin(this.renderer);
    }

    public void endMarginsCollapse(Rectangle rectangle) {
        MarginsCollapse marginsCollapse;
        if (this.backupLayoutBox != null) {
            restoreLayoutBoxAfterFailedLayoutAttempt(rectangle);
        }
        MarginsCollapseInfo marginsCollapseInfo = this.prevChildMarginInfo;
        if (marginsCollapseInfo != null) {
            updateCollapseBeforeIfPrevKidIsFirstAndSelfCollapsed(marginsCollapseInfo.getCollapseAfter());
        }
        boolean z = marginsCouldBeSelfCollapsing(this.renderer) && !this.lastKidCollapsedAfterHasClearanceApplied;
        boolean zIsSelfCollapsing = this.collapseInfo.isSelfCollapsing();
        if (firstChildMarginAdjoinedToParent(this.renderer) && zIsSelfCollapsing && !z) {
            addNotYetAppliedTopMargin(rectangle);
        }
        MarginsCollapseInfo marginsCollapseInfo2 = this.collapseInfo;
        marginsCollapseInfo2.setSelfCollapsing(marginsCollapseInfo2.isSelfCollapsing() && z);
        if (!zIsSelfCollapsing && this.lastKidCollapsedAfterHasClearanceApplied) {
            applySelfCollapsedKidMarginWithClearance(rectangle);
        }
        MarginsCollapseInfo marginsCollapseInfo3 = this.prevChildMarginInfo;
        boolean z2 = (marginsCollapseInfo3 == null || !marginsCollapseInfo3.isIgnoreOwnMarginBottom() || this.lastKidCollapsedAfterHasClearanceApplied) ? false : true;
        if (z2) {
            marginsCollapse = this.prevChildMarginInfo.getOwnCollapseAfter();
        } else {
            marginsCollapse = new MarginsCollapse();
        }
        marginsCollapse.joinMargin(defineBottomMarginValueForCollapse(this.renderer));
        this.collapseInfo.setOwnCollapseAfter(marginsCollapse);
        if (this.collapseInfo.isSelfCollapsing()) {
            MarginsCollapseInfo marginsCollapseInfo4 = this.prevChildMarginInfo;
            if (marginsCollapseInfo4 != null) {
                this.collapseInfo.setCollapseAfter(marginsCollapseInfo4.getCollapseAfter());
            } else {
                this.collapseInfo.getCollapseAfter().joinMargin(this.collapseInfo.getCollapseBefore());
                this.collapseInfo.getOwnCollapseAfter().joinMargin(this.collapseInfo.getCollapseBefore());
            }
            if (!this.collapseInfo.isIgnoreOwnMarginBottom() && !this.collapseInfo.isIgnoreOwnMarginTop()) {
                overrideModelBottomMargin(this.renderer, this.collapseInfo.getCollapseAfter().getCollapsedMarginsSize());
            }
        } else {
            MarginsCollapse collapseBefore = this.collapseInfo.getCollapseBefore();
            if (!this.collapseInfo.isIgnoreOwnMarginTop()) {
                overrideModelTopMargin(this.renderer, collapseBefore.getCollapsedMarginsSize());
            }
            if (z2) {
                this.collapseInfo.setCollapseAfter(this.prevChildMarginInfo.getCollapseAfter());
            }
            if (!this.collapseInfo.isIgnoreOwnMarginBottom()) {
                overrideModelBottomMargin(this.renderer, this.collapseInfo.getCollapseAfter().getCollapsedMarginsSize());
            }
        }
        if (lastChildMarginAdjoinedToParent(this.renderer)) {
            if (this.prevChildMarginInfo != null || zIsSelfCollapsing) {
                applyBottomMargin(rectangle, this.collapseInfo.getCollapseAfter().getCollapsedMarginsSize());
            }
        }
    }

    private void updateCollapseBeforeIfPrevKidIsFirstAndSelfCollapsed(MarginsCollapse marginsCollapse) {
        if (this.prevChildMarginInfo.isSelfCollapsing() && this.prevChildMarginInfo.isIgnoreOwnMarginTop()) {
            this.collapseInfo.getCollapseBefore().joinMargin(marginsCollapse);
        }
    }

    private void prepareBoxForLayoutAttempt(Rectangle rectangle, int i, boolean z) {
        MarginsCollapseInfo marginsCollapseInfo = this.prevChildMarginInfo;
        if (marginsCollapseInfo != null) {
            if (!marginsCollapseInfo.isIgnoreOwnMarginBottom() && (!this.prevChildMarginInfo.isSelfCollapsing() || !this.prevChildMarginInfo.isIgnoreOwnMarginTop())) {
                rectangle.setHeight(rectangle.getHeight() + this.prevChildMarginInfo.getCollapseAfter().getCollapsedMarginsSize());
            }
            boolean z2 = (this.prevChildMarginInfo.isSelfCollapsing() && this.prevChildMarginInfo.isIgnoreOwnMarginTop()) ? false : true;
            if (!z && z2) {
                MarginsCollapse ownCollapseAfter = this.prevChildMarginInfo.getOwnCollapseAfter();
                rectangle.setHeight(rectangle.getHeight() - (ownCollapseAfter != null ? ownCollapseAfter.getCollapsedMarginsSize() : 0.0f));
            }
        } else if (i > this.firstNotEmptyKidIndex && lastChildMarginAdjoinedToParent(this.renderer)) {
            float collapsedMarginsSize = this.collapseInfo.getCollapseAfter().getCollapsedMarginsSize() - this.collapseInfo.getUsedBufferSpaceOnBottom();
            MarginsCollapseInfo marginsCollapseInfo2 = this.collapseInfo;
            marginsCollapseInfo2.setBufferSpaceOnBottom(marginsCollapseInfo2.getBufferSpaceOnBottom() + this.collapseInfo.getUsedBufferSpaceOnBottom());
            this.collapseInfo.setUsedBufferSpaceOnBottom(0.0f);
            rectangle.setY(rectangle.getY() - collapsedMarginsSize);
            rectangle.setHeight(rectangle.getHeight() + collapsedMarginsSize);
        }
        if (z) {
            return;
        }
        if (i == this.firstNotEmptyKidIndex && firstChildMarginAdjoinedToParent(this.renderer)) {
            applyTopMargin(rectangle, this.collapseInfo.getCollapseBefore().getCollapsedMarginsSize());
        }
        if (lastChildMarginAdjoinedToParent(this.renderer)) {
            applyBottomMargin(rectangle, this.collapseInfo.getCollapseAfter().getCollapsedMarginsSize());
        }
    }

    private void restoreLayoutBoxAfterFailedLayoutAttempt(Rectangle rectangle) {
        rectangle.setX(this.backupLayoutBox.getX()).setY(this.backupLayoutBox.getY()).setWidth(this.backupLayoutBox.getWidth()).setHeight(this.backupLayoutBox.getHeight());
        this.backupCollapseInfo.copyTo(this.collapseInfo);
        this.backupLayoutBox = null;
        this.backupCollapseInfo = null;
    }

    private void applyTopMargin(Rectangle rectangle, float f) {
        float bufferSpaceOnTop = this.collapseInfo.getBufferSpaceOnTop() - f;
        float bufferSpaceOnTop2 = bufferSpaceOnTop > 0.0f ? f : this.collapseInfo.getBufferSpaceOnTop();
        this.collapseInfo.setUsedBufferSpaceOnTop(bufferSpaceOnTop2);
        subtractUsedTopBufferFromBottomBuffer(bufferSpaceOnTop2);
        if (bufferSpaceOnTop >= 0.0f) {
            this.collapseInfo.setBufferSpaceOnTop(bufferSpaceOnTop);
            rectangle.moveDown(f);
        } else {
            rectangle.moveDown(this.collapseInfo.getBufferSpaceOnTop());
            this.collapseInfo.setBufferSpaceOnTop(0.0f);
            rectangle.setHeight(rectangle.getHeight() + bufferSpaceOnTop);
        }
    }

    private void applyBottomMargin(Rectangle rectangle, float f) {
        float bufferSpaceOnBottom = f - this.collapseInfo.getBufferSpaceOnBottom();
        if (bufferSpaceOnBottom < 0.0f) {
            this.collapseInfo.setUsedBufferSpaceOnBottom(f);
            this.collapseInfo.setBufferSpaceOnBottom(-bufferSpaceOnBottom);
            return;
        }
        MarginsCollapseInfo marginsCollapseInfo = this.collapseInfo;
        marginsCollapseInfo.setUsedBufferSpaceOnBottom(marginsCollapseInfo.getBufferSpaceOnBottom());
        this.collapseInfo.setBufferSpaceOnBottom(0.0f);
        rectangle.setY(rectangle.getY() + bufferSpaceOnBottom);
        rectangle.setHeight(rectangle.getHeight() - bufferSpaceOnBottom);
    }

    private void processUsedChildBufferSpaceOnTop(Rectangle rectangle) {
        float usedBufferSpaceOnTop = this.childMarginInfo.getUsedBufferSpaceOnTop();
        if (usedBufferSpaceOnTop > 0.0f) {
            if (usedBufferSpaceOnTop > this.collapseInfo.getBufferSpaceOnTop()) {
                usedBufferSpaceOnTop = this.collapseInfo.getBufferSpaceOnTop();
            }
            MarginsCollapseInfo marginsCollapseInfo = this.collapseInfo;
            marginsCollapseInfo.setBufferSpaceOnTop(marginsCollapseInfo.getBufferSpaceOnTop() - usedBufferSpaceOnTop);
            this.collapseInfo.setUsedBufferSpaceOnTop(usedBufferSpaceOnTop);
            rectangle.moveDown(usedBufferSpaceOnTop);
            subtractUsedTopBufferFromBottomBuffer(usedBufferSpaceOnTop);
        }
    }

    private void subtractUsedTopBufferFromBottomBuffer(float f) {
        if (this.collapseInfo.getBufferSpaceOnTop() > this.collapseInfo.getBufferSpaceOnBottom()) {
            float bufferSpaceOnTop = this.collapseInfo.getBufferSpaceOnTop() - f;
            if (bufferSpaceOnTop < this.collapseInfo.getBufferSpaceOnBottom()) {
                this.collapseInfo.setBufferSpaceOnBottom(bufferSpaceOnTop);
                return;
            }
            return;
        }
        MarginsCollapseInfo marginsCollapseInfo = this.collapseInfo;
        marginsCollapseInfo.setBufferSpaceOnBottom(marginsCollapseInfo.getBufferSpaceOnBottom() - f);
    }

    private void fixPrevChildOccupiedArea(int i) {
        IRenderer rendererChild = getRendererChild(i - 1);
        Rectangle bBox = rendererChild.getOccupiedArea().getBBox();
        if (!this.prevChildMarginInfo.isIgnoreOwnMarginBottom() && (!this.prevChildMarginInfo.isSelfCollapsing() || !this.prevChildMarginInfo.isIgnoreOwnMarginTop())) {
            float collapsedMarginsSize = this.prevChildMarginInfo.getCollapseAfter().getCollapsedMarginsSize();
            bBox.setHeight(bBox.getHeight() - collapsedMarginsSize);
            bBox.moveUp(collapsedMarginsSize);
            ignoreModelBottomMargin(rendererChild);
        }
        boolean zIsBlockElement = isBlockElement(getRendererChild(i));
        boolean z = (this.prevChildMarginInfo.isSelfCollapsing() && this.prevChildMarginInfo.isIgnoreOwnMarginTop()) ? false : true;
        if (zIsBlockElement || !z) {
            return;
        }
        float collapsedMarginsSize2 = this.prevChildMarginInfo.getOwnCollapseAfter().getCollapsedMarginsSize();
        bBox.setHeight(bBox.getHeight() + collapsedMarginsSize2);
        bBox.moveDown(collapsedMarginsSize2);
        overrideModelBottomMargin(rendererChild, collapsedMarginsSize2);
    }

    private void addNotYetAppliedTopMargin(Rectangle rectangle) {
        float collapsedMarginsSize = this.collapseInfo.getCollapseBefore().getCollapsedMarginsSize();
        this.renderer.getOccupiedArea().getBBox().moveDown(collapsedMarginsSize);
        applyTopMargin(rectangle, collapsedMarginsSize);
    }

    private void applySelfCollapsedKidMarginWithClearance(Rectangle rectangle) {
        float collapsedMarginsSize = this.prevChildMarginInfo.getOwnCollapseAfter().getCollapsedMarginsSize();
        this.renderer.getOccupiedArea().getBBox().increaseHeight(collapsedMarginsSize).moveDown(collapsedMarginsSize);
        rectangle.decreaseHeight(collapsedMarginsSize);
    }

    private IRenderer getRendererChild(int i) {
        return this.rendererChildren.get(i);
    }

    private IRenderer removeRendererChild(int i) {
        return this.rendererChildren.remove(i);
    }

    private void getRidOfCollapseArtifactsAtopOccupiedArea() {
        this.renderer.getOccupiedArea().getBBox().decreaseHeight(this.collapseInfo.getCollapseBefore().getCollapsedMarginsSize());
    }

    private static boolean marginsCouldBeSelfCollapsing(IRenderer iRenderer) {
        return ((iRenderer instanceof TableRenderer) || rendererIsFloated(iRenderer) || hasBottomBorders(iRenderer) || hasTopBorders(iRenderer) || hasBottomPadding(iRenderer) || hasTopPadding(iRenderer) || hasPositiveHeight(iRenderer) || (isBlockElement(iRenderer) && (iRenderer instanceof AbstractRenderer) && (((AbstractRenderer) iRenderer).getParent() instanceof LineRenderer))) ? false : true;
    }

    private static boolean firstChildMarginAdjoinedToParent(IRenderer iRenderer) {
        return (BlockFormattingContextUtil.isRendererCreateBfc(iRenderer) || (iRenderer instanceof TableRenderer) || hasTopBorders(iRenderer) || hasTopPadding(iRenderer)) ? false : true;
    }

    private static boolean lastChildMarginAdjoinedToParent(IRenderer iRenderer) {
        return (BlockFormattingContextUtil.isRendererCreateBfc(iRenderer) || (iRenderer instanceof TableRenderer) || hasBottomBorders(iRenderer) || hasBottomPadding(iRenderer) || hasHeightProp(iRenderer)) ? false : true;
    }

    private static boolean isBlockElement(IRenderer iRenderer) {
        return (iRenderer instanceof BlockRenderer) || (iRenderer instanceof TableRenderer);
    }

    private static boolean hasHeightProp(IRenderer iRenderer) {
        return iRenderer.getModelElement().hasProperty(27);
    }

    private static boolean hasPositiveHeight(IRenderer iRenderer) {
        float value;
        float height = iRenderer.getOccupiedArea().getBBox().getHeight();
        if (height == 0.0f) {
            UnitValue unitValue = (UnitValue) iRenderer.getProperty(27);
            UnitValue unitValue2 = (UnitValue) iRenderer.getProperty(85);
            if (unitValue2 != null) {
                value = unitValue2.getValue();
            } else if (unitValue != null) {
                value = unitValue.getValue();
            } else {
                height = 0.0f;
            }
            height = value;
        }
        return height > 0.0f;
    }

    private static boolean hasTopPadding(IRenderer iRenderer) {
        return hasPadding(iRenderer, 50);
    }

    private static boolean hasBottomPadding(IRenderer iRenderer) {
        return hasPadding(iRenderer, 47);
    }

    private static boolean hasTopBorders(IRenderer iRenderer) {
        return hasBorders(iRenderer, 13);
    }

    private static boolean hasBottomBorders(IRenderer iRenderer) {
        return hasBorders(iRenderer, 10);
    }

    private static boolean rendererIsFloated(IRenderer iRenderer) {
        FloatPropertyValue floatPropertyValue;
        return (iRenderer == null || (floatPropertyValue = (FloatPropertyValue) iRenderer.getProperty(99)) == null || floatPropertyValue.equals(FloatPropertyValue.NONE)) ? false : true;
    }

    private static float defineTopMarginValueForCollapse(IRenderer iRenderer) {
        return defineMarginValueForCollapse(iRenderer, 46);
    }

    private static void ignoreModelTopMargin(IRenderer iRenderer) {
        overrideModelTopMargin(iRenderer, 0.0f);
    }

    private static void overrideModelTopMargin(IRenderer iRenderer, float f) {
        overrideModelMargin(iRenderer, 46, f);
    }

    private static float defineBottomMarginValueForCollapse(IRenderer iRenderer) {
        return defineMarginValueForCollapse(iRenderer, 43);
    }

    private static void ignoreModelBottomMargin(IRenderer iRenderer) {
        overrideModelBottomMargin(iRenderer, 0.0f);
    }

    private static void overrideModelBottomMargin(IRenderer iRenderer, float f) {
        overrideModelMargin(iRenderer, 43, f);
    }

    private static float defineMarginValueForCollapse(IRenderer iRenderer, int i) {
        UnitValue unitValue = (UnitValue) iRenderer.getModelElement().getProperty(i);
        if (unitValue != null && !unitValue.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) MarginsCollapseHandler.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, Integer.valueOf(i)));
        }
        if (unitValue == null || (iRenderer instanceof CellRenderer)) {
            return 0.0f;
        }
        return unitValue.getValue();
    }

    private static void overrideModelMargin(IRenderer iRenderer, int i, float f) {
        iRenderer.setProperty(i, UnitValue.createPointValue(f));
    }

    private static boolean hasPadding(IRenderer iRenderer, int i) {
        UnitValue unitValue = (UnitValue) iRenderer.getModelElement().getProperty(i);
        if (unitValue != null && !unitValue.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) MarginsCollapseHandler.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, Integer.valueOf(i)));
        }
        return unitValue != null && unitValue.getValue() > 0.0f;
    }

    private static boolean hasBorders(IRenderer iRenderer, int i) {
        IPropertyContainer modelElement = iRenderer.getModelElement();
        return modelElement.hasProperty(i) || modelElement.hasProperty(9);
    }
}
