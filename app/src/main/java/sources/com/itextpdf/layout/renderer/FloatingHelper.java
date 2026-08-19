package com.itextpdf.layout.renderer;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.borders.SolidBorder;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.margincollapse.MarginsCollapseHandler;
import com.itextpdf.layout.minmaxwidth.MinMaxWidth;
import com.itextpdf.layout.properties.ClearPropertyValue;
import com.itextpdf.layout.properties.FloatPropertyValue;
import com.itextpdf.layout.properties.OverflowPropertyValue;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class FloatingHelper {
    private FloatingHelper() {
    }

    static void adjustLineAreaAccordingToFloats(List<Rectangle> list, Rectangle rectangle) {
        adjustLayoutBoxAccordingToFloats(list, rectangle, null, 0.0f, null);
    }

    static float adjustLayoutBoxAccordingToFloats(List<Rectangle> list, Rectangle rectangle, Float f, float f2, MarginsCollapseHandler marginsCollapseHandler) {
        float right;
        float left;
        Rectangle[] rectangleArrFindLastLeftAndRightBoxes = null;
        do {
            if (rectangleArrFindLastLeftAndRightBoxes != null) {
                Rectangle rectangle2 = rectangleArrFindLastLeftAndRightBoxes[0];
                float bottom = rectangle2 != null ? rectangle2.getBottom() : Float.MAX_VALUE;
                Rectangle rectangle3 = rectangleArrFindLastLeftAndRightBoxes[1];
                f2 = rectangle.getHeight() - (Math.min(bottom, rectangle3 != null ? rectangle3.getBottom() : Float.MAX_VALUE) - rectangle.getY());
            }
            List<Rectangle> boxesAtYLevel = getBoxesAtYLevel(list, rectangle.getTop() - f2);
            if (boxesAtYLevel.isEmpty()) {
                applyClearance(rectangle, marginsCollapseHandler, f2, false);
                return f2;
            }
            rectangleArrFindLastLeftAndRightBoxes = findLastLeftAndRightBoxes(rectangle, boxesAtYLevel);
            Rectangle rectangle4 = rectangleArrFindLastLeftAndRightBoxes[0];
            right = rectangle4 != null ? rectangle4.getRight() : Float.MIN_VALUE;
            Rectangle rectangle5 = rectangleArrFindLastLeftAndRightBoxes[1];
            left = rectangle5 != null ? rectangle5.getLeft() : Float.MAX_VALUE;
            if (right > left || right > rectangle.getRight() || left < rectangle.getLeft()) {
                right = rectangle.getLeft();
                left = right;
            } else {
                if (left > rectangle.getRight()) {
                    left = rectangle.getRight();
                }
                if (right < rectangle.getLeft()) {
                    right = rectangle.getLeft();
                }
            }
            if (f == null) {
                break;
            }
        } while (f.floatValue() > left - right);
        float f3 = left - right;
        if (rectangle.getWidth() > f3) {
            rectangle.setX(right).setWidth(f3);
        }
        applyClearance(rectangle, marginsCollapseHandler, f2, false);
        return f2;
    }

    static Float calculateLineShiftUnderFloats(List<Rectangle> list, Rectangle rectangle) {
        float bottom;
        List<Rectangle> boxesAtYLevel = getBoxesAtYLevel(list, rectangle.getTop());
        if (boxesAtYLevel.isEmpty()) {
            return null;
        }
        Rectangle[] rectangleArrFindLastLeftAndRightBoxes = findLastLeftAndRightBoxes(rectangle, boxesAtYLevel);
        Rectangle rectangle2 = rectangleArrFindLastLeftAndRightBoxes[0];
        float right = rectangle2 != null ? rectangle2.getRight() : rectangle.getLeft();
        Rectangle rectangle3 = rectangleArrFindLastLeftAndRightBoxes[1];
        float left = rectangle3 != null ? rectangle3.getLeft() : rectangle.getRight();
        if (rectangle.getLeft() >= right && rectangle.getRight() <= left) {
            return null;
        }
        Rectangle rectangle4 = rectangleArrFindLastLeftAndRightBoxes[0];
        if (rectangle4 != null && rectangleArrFindLastLeftAndRightBoxes[1] != null) {
            bottom = Math.max(rectangle4.getBottom(), rectangleArrFindLastLeftAndRightBoxes[1].getBottom());
        } else if (rectangle4 != null) {
            bottom = rectangle4.getBottom();
        } else {
            bottom = rectangleArrFindLastLeftAndRightBoxes[1].getBottom();
        }
        return Float.valueOf((rectangle.getTop() - bottom) + 1.0E-4f);
    }

    static void adjustFloatedTableLayoutBox(TableRenderer tableRenderer, Rectangle rectangle, float f, List<Rectangle> list, FloatPropertyValue floatPropertyValue) {
        tableRenderer.setProperty(28, null);
        UnitValue[] margins = tableRenderer.getMargins();
        if (!margins[1].isPointValue()) {
            LoggerFactory.getLogger((Class<?>) FloatingHelper.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 45));
        }
        if (!margins[3].isPointValue()) {
            LoggerFactory.getLogger((Class<?>) FloatingHelper.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 44));
        }
        adjustBlockAreaAccordingToFloatRenderers(list, rectangle, f + margins[1].getValue() + margins[3].getValue(), FloatPropertyValue.LEFT.equals(floatPropertyValue));
    }

    static Float adjustFloatedBlockLayoutBox(AbstractRenderer abstractRenderer, Rectangle rectangle, Float f, List<Rectangle> list, FloatPropertyValue floatPropertyValue, OverflowPropertyValue overflowPropertyValue) {
        float fFloatValue;
        abstractRenderer.setProperty(28, null);
        boolean zIsOverflowFit = AbstractRenderer.isOverflowFit(overflowPropertyValue);
        if (f != null) {
            fFloatValue = f.floatValue() + AbstractRenderer.calculateAdditionalWidth(abstractRenderer);
            if (zIsOverflowFit && fFloatValue > rectangle.getWidth()) {
                fFloatValue = rectangle.getWidth();
            }
        } else {
            MinMaxWidth minMaxWidthCalculateMinMaxWidthForFloat = calculateMinMaxWidthForFloat(abstractRenderer, floatPropertyValue);
            float maxWidth = minMaxWidthCalculateMinMaxWidthForFloat.getMaxWidth();
            if (maxWidth > rectangle.getWidth()) {
                maxWidth = rectangle.getWidth();
            }
            if (!zIsOverflowFit && minMaxWidthCalculateMinMaxWidthForFloat.getMinWidth() > rectangle.getWidth()) {
                maxWidth = minMaxWidthCalculateMinMaxWidthForFloat.getMinWidth();
            }
            fFloatValue = maxWidth + 1.0E-4f;
            f = Float.valueOf((maxWidth - minMaxWidthCalculateMinMaxWidthForFloat.getAdditionalWidth()) + 1.0E-4f);
        }
        adjustBlockAreaAccordingToFloatRenderers(list, rectangle, fFloatValue, FloatPropertyValue.LEFT.equals(floatPropertyValue));
        return f;
    }

    private static void adjustBlockAreaAccordingToFloatRenderers(List<Rectangle> list, Rectangle rectangle, float f, boolean z) {
        float top;
        if (list.isEmpty()) {
            if (z) {
                return;
            }
            adjustBoxForFloatRight(rectangle, f);
            return;
        }
        if (list.get(list.size() - 1).getTop() < rectangle.getTop()) {
            top = list.get(list.size() - 1).getTop();
        } else {
            top = rectangle.getTop();
        }
        float left = 0.0f;
        Rectangle[] rectangleArrFindLastLeftAndRightBoxes = null;
        float right = 0.0f;
        while (true) {
            if (rectangleArrFindLastLeftAndRightBoxes != null) {
                float f2 = left - right;
                if (f2 >= f) {
                    rectangle.setX(right);
                    rectangle.setWidth(f2);
                    if (z) {
                        return;
                    }
                    adjustBoxForFloatRight(rectangle, f);
                    return;
                }
            }
            if (rectangleArrFindLastLeftAndRightBoxes != null) {
                if (z) {
                    Rectangle rectangle2 = rectangleArrFindLastLeftAndRightBoxes[0];
                    if (rectangle2 == null) {
                        rectangle2 = rectangleArrFindLastLeftAndRightBoxes[1];
                    }
                    top = rectangle2.getBottom();
                } else {
                    Rectangle rectangle3 = rectangleArrFindLastLeftAndRightBoxes[1];
                    if (rectangle3 == null) {
                        rectangle3 = rectangleArrFindLastLeftAndRightBoxes[0];
                    }
                    top = rectangle3.getBottom();
                }
            }
            rectangle.setHeight(top - rectangle.getY());
            List<Rectangle> boxesAtYLevel = getBoxesAtYLevel(list, top);
            if (boxesAtYLevel.isEmpty()) {
                if (z) {
                    return;
                }
                adjustBoxForFloatRight(rectangle, f);
                return;
            } else {
                rectangleArrFindLastLeftAndRightBoxes = findLastLeftAndRightBoxes(rectangle, boxesAtYLevel);
                Rectangle rectangle4 = rectangleArrFindLastLeftAndRightBoxes[0];
                right = rectangle4 != null ? rectangle4.getRight() : rectangle.getLeft();
                Rectangle rectangle5 = rectangleArrFindLastLeftAndRightBoxes[1];
                left = rectangle5 != null ? rectangle5.getLeft() : rectangle.getRight();
            }
        }
    }

    static void removeFloatsAboveRendererBottom(List<Rectangle> list, IRenderer iRenderer) {
        if (isRendererFloating(iRenderer)) {
            return;
        }
        float bottom = iRenderer.getOccupiedArea().getBBox().getBottom();
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).getBottom() >= bottom) {
                list.remove(size);
            }
        }
    }

    static LayoutArea adjustResultOccupiedAreaForFloatAndClear(IRenderer iRenderer, List<Rectangle> list, Rectangle rectangle, float f, boolean z) {
        LayoutArea occupiedArea = iRenderer.getOccupiedArea();
        if (isRendererFloating(iRenderer)) {
            LayoutArea layoutAreaMo3122clone = occupiedArea.mo3122clone();
            if (occupiedArea.getBBox().getWidth() > 0.0f) {
                list.add(occupiedArea.getBBox());
            }
            layoutAreaMo3122clone.getBBox().setY(rectangle.getTop());
            layoutAreaMo3122clone.getBBox().setHeight(0.0f);
            return layoutAreaMo3122clone;
        }
        if (f <= 0.0f || z) {
            return occupiedArea;
        }
        LayoutArea layoutAreaMo3122clone2 = occupiedArea.mo3122clone();
        layoutAreaMo3122clone2.getBBox().increaseHeight(f);
        return layoutAreaMo3122clone2;
    }

    static void includeChildFloatsInOccupiedArea(List<Rectangle> list, IRenderer iRenderer, Set<Rectangle> set) {
        iRenderer.getOccupiedArea().setBBox(includeChildFloatsInOccupiedArea(list, iRenderer.getOccupiedArea().getBBox(), set));
    }

    static Rectangle includeChildFloatsInOccupiedArea(List<Rectangle> list, Rectangle rectangle, Set<Rectangle> set) {
        for (Rectangle rectangle2 : list) {
            if (!set.contains(rectangle2)) {
                rectangle = Rectangle.getCommonRectangle(rectangle, rectangle2);
            }
        }
        return rectangle;
    }

    static MinMaxWidth calculateMinMaxWidthForFloat(AbstractRenderer abstractRenderer, FloatPropertyValue floatPropertyValue) {
        boolean zHasOwnProperty = abstractRenderer.hasOwnProperty(99);
        abstractRenderer.setProperty(99, FloatPropertyValue.NONE);
        MinMaxWidth minMaxWidth = abstractRenderer.getMinMaxWidth();
        if (zHasOwnProperty) {
            abstractRenderer.setProperty(99, floatPropertyValue);
        } else {
            abstractRenderer.deleteOwnProperty(99);
        }
        return minMaxWidth;
    }

    static float calculateClearHeightCorrection(IRenderer iRenderer, List<Rectangle> list, Rectangle rectangle) {
        float top;
        float bottom;
        ClearPropertyValue clearPropertyValue = (ClearPropertyValue) iRenderer.getProperty(100);
        if (clearPropertyValue == null || list.isEmpty()) {
            return 0.0f;
        }
        if (list.get(list.size() - 1).getTop() < rectangle.getTop()) {
            top = list.get(list.size() - 1).getTop();
        } else {
            top = rectangle.getTop();
        }
        Rectangle[] rectangleArrFindLastLeftAndRightBoxes = findLastLeftAndRightBoxes(rectangle, getBoxesAtYLevel(list, top));
        boolean zEquals = clearPropertyValue.equals(ClearPropertyValue.BOTH);
        if ((clearPropertyValue.equals(ClearPropertyValue.LEFT) || zEquals) && rectangleArrFindLastLeftAndRightBoxes[0] != null) {
            bottom = Float.MAX_VALUE;
            for (Rectangle rectangle2 : list) {
                if (rectangle2.getBottom() < bottom && rectangle2.getLeft() <= rectangleArrFindLastLeftAndRightBoxes[0].getLeft()) {
                    bottom = rectangle2.getBottom();
                }
            }
        } else {
            bottom = Float.MAX_VALUE;
        }
        if ((clearPropertyValue.equals(ClearPropertyValue.RIGHT) || zEquals) && rectangleArrFindLastLeftAndRightBoxes[1] != null) {
            for (Rectangle rectangle3 : list) {
                if (rectangle3.getBottom() < bottom && rectangle3.getRight() >= rectangleArrFindLastLeftAndRightBoxes[1].getRight()) {
                    bottom = rectangle3.getBottom();
                }
            }
        }
        if (bottom < Float.MAX_VALUE) {
            return (rectangle.getTop() - bottom) + 1.0E-4f;
        }
        return 0.0f;
    }

    static void applyClearance(Rectangle rectangle, MarginsCollapseHandler marginsCollapseHandler, float f, boolean z) {
        if (f <= 0.0f) {
            return;
        }
        if (marginsCollapseHandler == null || z) {
            rectangle.decreaseHeight(f);
        } else {
            marginsCollapseHandler.applyClearance(f);
        }
    }

    static boolean isRendererFloating(IRenderer iRenderer) {
        return isRendererFloating(iRenderer, (FloatPropertyValue) iRenderer.getProperty(99));
    }

    static boolean isRendererFloating(IRenderer iRenderer, FloatPropertyValue floatPropertyValue) {
        Integer num = (Integer) iRenderer.getProperty(52);
        return ((num != null && num.intValue() == 3) || floatPropertyValue == null || floatPropertyValue.equals(FloatPropertyValue.NONE)) ? false : true;
    }

    static boolean isClearanceApplied(List<IRenderer> list, ClearPropertyValue clearPropertyValue) {
        if (clearPropertyValue != null && !clearPropertyValue.equals(ClearPropertyValue.NONE)) {
            Iterator<IRenderer> it = list.iterator();
            while (it.hasNext()) {
                FloatPropertyValue floatPropertyValue = (FloatPropertyValue) it.next().getProperty(99);
                if (clearPropertyValue.equals(ClearPropertyValue.BOTH)) {
                    return true;
                }
                if (floatPropertyValue.equals(FloatPropertyValue.LEFT) && clearPropertyValue.equals(ClearPropertyValue.LEFT)) {
                    return true;
                }
                if (floatPropertyValue.equals(FloatPropertyValue.RIGHT) && clearPropertyValue.equals(ClearPropertyValue.RIGHT)) {
                    return true;
                }
            }
        }
        return false;
    }

    static void removeParentArtifactsOnPageSplitIfOnlyFloatsOverflow(IRenderer iRenderer) {
        iRenderer.setProperty(6, null);
        iRenderer.setProperty(90, null);
        iRenderer.setProperty(106, null);
        Border[] borders = AbstractRenderer.getBorders(iRenderer);
        iRenderer.setProperty(13, null);
        iRenderer.setProperty(10, null);
        if (borders[1] != null) {
            iRenderer.setProperty(12, new SolidBorder(ColorConstants.BLACK, borders[1].getWidth(), 0.0f));
        }
        if (borders[3] != null) {
            iRenderer.setProperty(11, new SolidBorder(ColorConstants.BLACK, borders[3].getWidth(), 0.0f));
        }
        iRenderer.setProperty(46, UnitValue.createPointValue(0.0f));
        iRenderer.setProperty(43, UnitValue.createPointValue(0.0f));
        iRenderer.setProperty(50, UnitValue.createPointValue(0.0f));
        iRenderer.setProperty(47, UnitValue.createPointValue(0.0f));
    }

    private static void adjustBoxForFloatRight(Rectangle rectangle, float f) {
        rectangle.setX(rectangle.getRight() - f);
        rectangle.setWidth(f);
    }

    private static Rectangle[] findLastLeftAndRightBoxes(Rectangle rectangle, List<Rectangle> list) {
        float left = rectangle.getLeft();
        for (Rectangle rectangle2 : list) {
            if (rectangle2.getLeft() < left) {
                left = rectangle2.getLeft();
            }
        }
        Rectangle rectangle3 = null;
        Rectangle rectangle4 = null;
        for (Rectangle rectangle5 : list) {
            if (left < rectangle5.getLeft() || left >= rectangle5.getRight()) {
                rectangle4 = rectangle5;
            } else {
                left = rectangle5.getRight();
                rectangle3 = rectangle5;
            }
        }
        return new Rectangle[]{rectangle3, rectangle4};
    }

    private static List<Rectangle> getBoxesAtYLevel(List<Rectangle> list, float f) {
        ArrayList arrayList = new ArrayList();
        for (Rectangle rectangle : list) {
            if (rectangle.getBottom() + 1.0E-4f < f && rectangle.getTop() + 1.0E-4f >= f) {
                arrayList.add(rectangle);
            }
        }
        return arrayList;
    }
}
