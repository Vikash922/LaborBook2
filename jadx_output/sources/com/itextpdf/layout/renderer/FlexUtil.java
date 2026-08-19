package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.layout.exceptions.LayoutExceptionMessageConstant;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.properties.AlignmentPropertyValue;
import com.itextpdf.layout.properties.FlexWrapPropertyValue;
import com.itextpdf.layout.properties.JustifyContent;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
final class FlexUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final float EPSILON = 1.0E-4f;
    private static final float FLEX_GROW_INITIAL_VALUE = 0.0f;
    private static final float FLEX_SHRINK_INITIAL_VALUE = 1.0f;
    private static Logger logger = LoggerFactory.getLogger((Class<?>) FlexUtil.class);

    private FlexUtil() {
    }

    public static List<List<FlexItemInfo>> calculateChildrenRectangles(Rectangle rectangle, FlexContainerRenderer flexContainerRenderer) {
        Rectangle rectangleMo3120clone = rectangle.mo3120clone();
        flexContainerRenderer.applyMarginsBordersPaddings(rectangleMo3120clone, false);
        float width = rectangleMo3120clone.getWidth();
        Float fRetrieveWidth = flexContainerRenderer.retrieveWidth(width);
        if (fRetrieveWidth == null) {
            fRetrieveWidth = Float.valueOf(width);
        }
        Float fRetrieveHeight = flexContainerRenderer.retrieveHeight();
        Float fRetrieveMinHeight = flexContainerRenderer.retrieveMinHeight();
        Float fRetrieveMaxHeight = flexContainerRenderer.retrieveMaxHeight();
        List<FlexItemCalculationInfo> listCreateFlexItemCalculationInfos = createFlexItemCalculationInfos(flexContainerRenderer, fRetrieveWidth.floatValue());
        determineFlexBasisAndHypotheticalMainSizeForFlexItems(listCreateFlexItemCalculationInfos);
        boolean z = !flexContainerRenderer.hasProperty(128) || FlexWrapPropertyValue.NOWRAP == flexContainerRenderer.getProperty(128);
        List<List<FlexItemCalculationInfo>> listCollectFlexItemsIntoFlexLines = collectFlexItemsIntoFlexLines(listCreateFlexItemCalculationInfos, fRetrieveWidth.floatValue(), z);
        resolveFlexibleLengths(listCollectFlexItemsIntoFlexLines, fRetrieveWidth.floatValue());
        determineHypotheticalCrossSizeForFlexItems(listCollectFlexItemsIntoFlexLines);
        List<Float> listCalculateCrossSizeOfEachFlexLine = calculateCrossSizeOfEachFlexLine(listCollectFlexItemsIntoFlexLines, z, fRetrieveMinHeight, fRetrieveHeight, fRetrieveMaxHeight);
        Iterator<Float> it = listCalculateCrossSizeOfEachFlexLine.iterator();
        float fFloatValue = 0.0f;
        while (it.hasNext()) {
            fFloatValue += it.next().floatValue();
        }
        handleAlignContentStretch(flexContainerRenderer, fRetrieveHeight, fFloatValue, listCalculateCrossSizeOfEachFlexLine);
        determineUsedCrossSizeOfEachFlexItem(listCollectFlexItemsIntoFlexLines, listCalculateCrossSizeOfEachFlexLine, flexContainerRenderer);
        applyJustifyContent(listCollectFlexItemsIntoFlexLines, flexContainerRenderer, fRetrieveWidth.floatValue());
        applyAlignItemsAndAlignSelf(listCollectFlexItemsIntoFlexLines, flexContainerRenderer, listCalculateCrossSizeOfEachFlexLine);
        ArrayList arrayList = new ArrayList();
        for (List<FlexItemCalculationInfo> list : listCollectFlexItemsIntoFlexLines) {
            ArrayList arrayList2 = new ArrayList();
            for (FlexItemCalculationInfo flexItemCalculationInfo : list) {
                arrayList2.add(new FlexItemInfo(flexItemCalculationInfo.renderer, flexItemCalculationInfo.toRectangle()));
            }
            arrayList.add(arrayList2);
        }
        return arrayList;
    }

    static void determineFlexBasisAndHypotheticalMainSizeForFlexItems(List<FlexItemCalculationInfo> list) {
        for (FlexItemCalculationInfo flexItemCalculationInfo : list) {
            AbstractRenderer abstractRenderer = flexItemCalculationInfo.renderer;
            Float fRetrieveHeight = abstractRenderer.retrieveHeight();
            if (abstractRenderer.hasAspectRatio() && flexItemCalculationInfo.flexBasisContent && fRetrieveHeight != null) {
                flexItemCalculationInfo.flexBaseSize = fRetrieveHeight.floatValue() * abstractRenderer.getAspectRatio().floatValue();
            } else {
                flexItemCalculationInfo.flexBaseSize = flexItemCalculationInfo.flexBasis;
            }
            flexItemCalculationInfo.hypotheticalMainSize = Math.max(0.0f, Math.min(Math.max(flexItemCalculationInfo.minContent, flexItemCalculationInfo.flexBaseSize), flexItemCalculationInfo.maxContent));
            flexItemCalculationInfo.mainSize = flexItemCalculationInfo.hypotheticalMainSize;
        }
    }

    static List<List<FlexItemCalculationInfo>> collectFlexItemsIntoFlexLines(List<FlexItemCalculationInfo> list, float f, boolean z) {
        FlexItemCalculationInfo next;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (z) {
            arrayList2.addAll(list);
        } else {
            Iterator<FlexItemCalculationInfo> it = list.iterator();
            loop0: while (true) {
                float outerMainSize = 0.0f;
                while (it.hasNext()) {
                    next = it.next();
                    outerMainSize += next.getOuterMainSize(next.hypotheticalMainSize);
                    if (outerMainSize > 1.0E-4f + f) {
                        if (arrayList2.isEmpty()) {
                            break;
                        }
                        arrayList.add(arrayList2);
                        arrayList2 = new ArrayList();
                        arrayList2.add(next);
                        outerMainSize = next.hypotheticalMainSize;
                    } else {
                        arrayList2.add(next);
                    }
                }
                arrayList2.add(next);
                arrayList.add(arrayList2);
                arrayList2 = new ArrayList();
            }
        }
        if (!arrayList2.isEmpty()) {
            arrayList.add(arrayList2);
        }
        return arrayList;
    }

    static void resolveFlexibleLengths(List<List<FlexItemCalculationInfo>> list, float f) {
        for (List<FlexItemCalculationInfo> list2 : list) {
            float outerMainSize = 0.0f;
            for (FlexItemCalculationInfo flexItemCalculationInfo : list2) {
                outerMainSize += flexItemCalculationInfo.getOuterMainSize(flexItemCalculationInfo.hypotheticalMainSize);
            }
            boolean z = outerMainSize < f;
            for (FlexItemCalculationInfo flexItemCalculationInfo2 : list2) {
                if (z) {
                    if (isZero(flexItemCalculationInfo2.flexGrow) || flexItemCalculationInfo2.flexBaseSize > flexItemCalculationInfo2.hypotheticalMainSize) {
                        flexItemCalculationInfo2.mainSize = flexItemCalculationInfo2.hypotheticalMainSize;
                        flexItemCalculationInfo2.isFrozen = true;
                    }
                } else if (isZero(flexItemCalculationInfo2.flexShrink) || flexItemCalculationInfo2.flexBaseSize < flexItemCalculationInfo2.hypotheticalMainSize) {
                    flexItemCalculationInfo2.mainSize = flexItemCalculationInfo2.hypotheticalMainSize;
                    flexItemCalculationInfo2.isFrozen = true;
                }
            }
            float fCalculateFreeSpace = calculateFreeSpace(list2, f);
            while (hasFlexibleItems(list2)) {
                float fCalculateFreeSpace2 = calculateFreeSpace(list2, f);
                float f2 = 0.0f;
                for (FlexItemCalculationInfo flexItemCalculationInfo3 : list2) {
                    if (!flexItemCalculationInfo3.isFrozen) {
                        f2 += z ? flexItemCalculationInfo3.flexGrow : flexItemCalculationInfo3.flexShrink;
                    }
                }
                if (f2 < 1.0f) {
                    float f3 = fCalculateFreeSpace * f2;
                    if (Math.abs(fCalculateFreeSpace2) > Math.abs(f3)) {
                        fCalculateFreeSpace2 = f3;
                    }
                }
                if (!isZero(fCalculateFreeSpace2)) {
                    float f4 = 0.0f;
                    for (FlexItemCalculationInfo flexItemCalculationInfo4 : list2) {
                        if (!flexItemCalculationInfo4.isFrozen) {
                            if (z) {
                                flexItemCalculationInfo4.mainSize = flexItemCalculationInfo4.flexBaseSize + ((flexItemCalculationInfo4.flexGrow / f2) * fCalculateFreeSpace2);
                            } else {
                                flexItemCalculationInfo4.scaledFlexShrinkFactor = flexItemCalculationInfo4.flexShrink * flexItemCalculationInfo4.flexBaseSize;
                                f4 += flexItemCalculationInfo4.scaledFlexShrinkFactor;
                            }
                        }
                    }
                    if (!isZero(f4)) {
                        for (FlexItemCalculationInfo flexItemCalculationInfo5 : list2) {
                            if (!flexItemCalculationInfo5.isFrozen && !z) {
                                flexItemCalculationInfo5.mainSize = flexItemCalculationInfo5.flexBaseSize - (Math.abs(fCalculateFreeSpace2) * (flexItemCalculationInfo5.scaledFlexShrinkFactor / f4));
                            }
                        }
                    }
                } else {
                    for (FlexItemCalculationInfo flexItemCalculationInfo6 : list2) {
                        if (!flexItemCalculationInfo6.isFrozen) {
                            flexItemCalculationInfo6.mainSize = flexItemCalculationInfo6.flexBaseSize;
                        }
                    }
                }
                float f5 = 0.0f;
                for (FlexItemCalculationInfo flexItemCalculationInfo7 : list2) {
                    if (!flexItemCalculationInfo7.isFrozen) {
                        float fMin = Math.min(Math.max(flexItemCalculationInfo7.mainSize, flexItemCalculationInfo7.minContent), flexItemCalculationInfo7.maxContent);
                        if (flexItemCalculationInfo7.mainSize > fMin) {
                            flexItemCalculationInfo7.isMaxViolated = true;
                        } else if (flexItemCalculationInfo7.mainSize < fMin) {
                            flexItemCalculationInfo7.isMinViolated = true;
                        }
                        f5 += fMin - flexItemCalculationInfo7.mainSize;
                        flexItemCalculationInfo7.mainSize = fMin;
                    }
                }
                for (FlexItemCalculationInfo flexItemCalculationInfo8 : list2) {
                    if (!flexItemCalculationInfo8.isFrozen && (isZero(f5) || ((0.0f < f5 && flexItemCalculationInfo8.isMinViolated) || (0.0f > f5 && flexItemCalculationInfo8.isMaxViolated)))) {
                        flexItemCalculationInfo8.isFrozen = true;
                    }
                }
            }
        }
    }

    static void determineHypotheticalCrossSizeForFlexItems(List<List<FlexItemCalculationInfo>> list) {
        Iterator<List<FlexItemCalculationInfo>> it = list.iterator();
        while (it.hasNext()) {
            Iterator<FlexItemCalculationInfo> it2 = it.next().iterator();
            while (it2.hasNext()) {
                determineHypotheticalCrossSizeForFlexItem(it2.next());
            }
        }
    }

    private static void determineHypotheticalCrossSizeForFlexItem(FlexItemCalculationInfo flexItemCalculationInfo) {
        if ((flexItemCalculationInfo.renderer instanceof FlexContainerRenderer) && ((FlexContainerRenderer) flexItemCalculationInfo.renderer).getHypotheticalCrossSize(Float.valueOf(flexItemCalculationInfo.mainSize)) != null) {
            flexItemCalculationInfo.hypotheticalCrossSize = ((FlexContainerRenderer) flexItemCalculationInfo.renderer).getHypotheticalCrossSize(Float.valueOf(flexItemCalculationInfo.mainSize)).floatValue();
            return;
        }
        UnitValue unitValue = (UnitValue) flexItemCalculationInfo.renderer.replaceOwnProperty(77, UnitValue.createPointValue(flexItemCalculationInfo.mainSize));
        UnitValue unitValue2 = (UnitValue) flexItemCalculationInfo.renderer.replaceOwnProperty(80, null);
        LayoutResult layoutResultLayout = flexItemCalculationInfo.renderer.layout(new LayoutContext(new LayoutArea(0, new Rectangle(1000000.0f, 1000000.0f))));
        flexItemCalculationInfo.renderer.returnBackOwnProperty(80, unitValue2);
        flexItemCalculationInfo.renderer.returnBackOwnProperty(77, unitValue);
        if (layoutResultLayout.getStatus() == 1) {
            flexItemCalculationInfo.hypotheticalCrossSize = flexItemCalculationInfo.getInnerCrossSize(layoutResultLayout.getOccupiedArea().getBBox().getHeight());
            if (flexItemCalculationInfo.renderer instanceof FlexContainerRenderer) {
                ((FlexContainerRenderer) flexItemCalculationInfo.renderer).setHypotheticalCrossSize(Float.valueOf(flexItemCalculationInfo.mainSize), Float.valueOf(flexItemCalculationInfo.hypotheticalCrossSize));
                return;
            }
            return;
        }
        logger.error(IoLogMessageConstant.FLEX_ITEM_LAYOUT_RESULT_IS_NOT_FULL);
        flexItemCalculationInfo.hypotheticalCrossSize = 0.0f;
    }

    static List<Float> calculateCrossSizeOfEachFlexLine(List<List<FlexItemCalculationInfo>> list, boolean z, Float f, Float f2, Float f3) {
        ArrayList arrayList = new ArrayList();
        if (z && f2 != null && !list.isEmpty()) {
            arrayList.add(Float.valueOf(f2.floatValue()));
        } else {
            Iterator<List<FlexItemCalculationInfo>> it = list.iterator();
            while (it.hasNext()) {
                float outerCrossSize = 0.0f;
                float fMin = 0.0f;
                for (FlexItemCalculationInfo flexItemCalculationInfo : it.next()) {
                    if (outerCrossSize < flexItemCalculationInfo.getOuterCrossSize(flexItemCalculationInfo.hypotheticalCrossSize)) {
                        outerCrossSize = flexItemCalculationInfo.getOuterCrossSize(flexItemCalculationInfo.hypotheticalCrossSize);
                    }
                    fMin = Math.max(0.0f, outerCrossSize);
                }
                if (z && !list.isEmpty()) {
                    if (f != null) {
                        fMin = Math.max(f.floatValue(), fMin);
                    }
                    if (f3 != null) {
                        fMin = Math.min(f3.floatValue(), fMin);
                    }
                }
                arrayList.add(Float.valueOf(fMin));
            }
        }
        return arrayList;
    }

    static void handleAlignContentStretch(FlexContainerRenderer flexContainerRenderer, Float f, float f2, List<Float> list) {
        AlignmentPropertyValue alignmentPropertyValue = (AlignmentPropertyValue) flexContainerRenderer.getProperty(130, AlignmentPropertyValue.STRETCH);
        if (f == null || alignmentPropertyValue != AlignmentPropertyValue.STRETCH || f2 >= f.floatValue() - 1.0E-4f) {
            return;
        }
        float fFloatValue = (f.floatValue() - f2) / list.size();
        for (int i = 0; i < list.size(); i++) {
            list.set(i, Float.valueOf(list.get(i).floatValue() + fFloatValue));
        }
    }

    static void determineUsedCrossSizeOfEachFlexItem(List<List<FlexItemCalculationInfo>> list, List<Float> list2, FlexContainerRenderer flexContainerRenderer) {
        AlignmentPropertyValue alignmentPropertyValue = (AlignmentPropertyValue) flexContainerRenderer.getProperty(134, AlignmentPropertyValue.STRETCH);
        for (int i = 0; i < list.size(); i++) {
            for (FlexItemCalculationInfo flexItemCalculationInfo : list.get(i)) {
                AbstractRenderer abstractRenderer = flexItemCalculationInfo.renderer;
                AlignmentPropertyValue alignmentPropertyValue2 = (AlignmentPropertyValue) abstractRenderer.getProperty(129, alignmentPropertyValue);
                if ((alignmentPropertyValue2 == AlignmentPropertyValue.STRETCH || alignmentPropertyValue2 == AlignmentPropertyValue.NORMAL) && flexItemCalculationInfo.renderer.getProperty(27) == null) {
                    flexItemCalculationInfo.crossSize = flexItemCalculationInfo.getInnerCrossSize(list2.get(i).floatValue());
                    Float fRetrieveMaxHeight = abstractRenderer.retrieveMaxHeight();
                    if (fRetrieveMaxHeight != null) {
                        flexItemCalculationInfo.crossSize = Math.min(fRetrieveMaxHeight.floatValue(), flexItemCalculationInfo.crossSize);
                    }
                    Float fRetrieveMinHeight = abstractRenderer.retrieveMinHeight();
                    if (fRetrieveMinHeight != null) {
                        flexItemCalculationInfo.crossSize = Math.max(fRetrieveMinHeight.floatValue(), flexItemCalculationInfo.crossSize);
                    }
                } else {
                    flexItemCalculationInfo.crossSize = flexItemCalculationInfo.hypotheticalCrossSize;
                }
            }
        }
    }

    private static void applyAlignItemsAndAlignSelf(List<List<FlexItemCalculationInfo>> list, FlexContainerRenderer flexContainerRenderer, List<Float> list2) {
        AlignmentPropertyValue alignmentPropertyValue = (AlignmentPropertyValue) flexContainerRenderer.getProperty(134, AlignmentPropertyValue.STRETCH);
        for (int i = 0; i < list.size(); i++) {
            float fFloatValue = list2.get(i).floatValue();
            for (FlexItemCalculationInfo flexItemCalculationInfo : list.get(i)) {
                AlignmentPropertyValue alignmentPropertyValue2 = (AlignmentPropertyValue) flexItemCalculationInfo.renderer.getProperty(129, alignmentPropertyValue);
                float outerCrossSize = fFloatValue - flexItemCalculationInfo.getOuterCrossSize(flexItemCalculationInfo.crossSize);
                int i2 = C35141.$SwitchMap$com$itextpdf$layout$properties$AlignmentPropertyValue[alignmentPropertyValue2.ordinal()];
                if (i2 == 1 || i2 == 2 || i2 == 3) {
                    flexItemCalculationInfo.yShift = outerCrossSize;
                } else if (i2 == 4) {
                    flexItemCalculationInfo.yShift = outerCrossSize / 2.0f;
                }
            }
        }
    }

    private static void applyJustifyContent(List<List<FlexItemCalculationInfo>> list, FlexContainerRenderer flexContainerRenderer, float f) {
        JustifyContent justifyContent = (JustifyContent) flexContainerRenderer.getProperty(133, JustifyContent.FLEX_START);
        for (List<FlexItemCalculationInfo> list2 : list) {
            float outerMainSize = 0.0f;
            for (FlexItemCalculationInfo flexItemCalculationInfo : list2) {
                outerMainSize += flexItemCalculationInfo.getOuterMainSize(flexItemCalculationInfo.mainSize);
            }
            float f2 = f - outerMainSize;
            int i = C35141.$SwitchMap$com$itextpdf$layout$properties$JustifyContent[justifyContent.ordinal()];
            if (i == 1 || i == 2 || i == 3 || i == 4) {
                list2.get(0).xShift = f2;
            } else if (i == 5) {
                list2.get(0).xShift = f2 / 2.0f;
            }
        }
    }

    /* JADX INFO: renamed from: com.itextpdf.layout.renderer.FlexUtil$1 */
    static /* synthetic */ class C35141 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$layout$properties$AlignmentPropertyValue;
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$layout$properties$JustifyContent;

        static {
            int[] iArr = new int[JustifyContent.values().length];
            $SwitchMap$com$itextpdf$layout$properties$JustifyContent = iArr;
            try {
                iArr[JustifyContent.RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$JustifyContent[JustifyContent.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$JustifyContent[JustifyContent.SELF_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$JustifyContent[JustifyContent.FLEX_END.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$JustifyContent[JustifyContent.CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$JustifyContent[JustifyContent.NORMAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$JustifyContent[JustifyContent.STRETCH.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$JustifyContent[JustifyContent.START.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$JustifyContent[JustifyContent.LEFT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$JustifyContent[JustifyContent.SELF_START.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$JustifyContent[JustifyContent.FLEX_START.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr2 = new int[AlignmentPropertyValue.values().length];
            $SwitchMap$com$itextpdf$layout$properties$AlignmentPropertyValue = iArr2;
            try {
                iArr2[AlignmentPropertyValue.SELF_END.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$AlignmentPropertyValue[AlignmentPropertyValue.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$AlignmentPropertyValue[AlignmentPropertyValue.FLEX_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$AlignmentPropertyValue[AlignmentPropertyValue.CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$AlignmentPropertyValue[AlignmentPropertyValue.START.ordinal()] = 5;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$AlignmentPropertyValue[AlignmentPropertyValue.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$AlignmentPropertyValue[AlignmentPropertyValue.SELF_START.ordinal()] = 7;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$AlignmentPropertyValue[AlignmentPropertyValue.STRETCH.ordinal()] = 8;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$AlignmentPropertyValue[AlignmentPropertyValue.NORMAL.ordinal()] = 9;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$AlignmentPropertyValue[AlignmentPropertyValue.FLEX_START.ordinal()] = 10;
            } catch (NoSuchFieldError unused21) {
            }
        }
    }

    private static float calculateFreeSpace(List<FlexItemCalculationInfo> list, float f) {
        float outerMainSize;
        for (FlexItemCalculationInfo flexItemCalculationInfo : list) {
            if (flexItemCalculationInfo.isFrozen) {
                outerMainSize = flexItemCalculationInfo.getOuterMainSize(flexItemCalculationInfo.mainSize);
            } else {
                outerMainSize = flexItemCalculationInfo.getOuterMainSize(flexItemCalculationInfo.flexBaseSize);
            }
            f -= outerMainSize;
        }
        return f;
    }

    private static boolean hasFlexibleItems(List<FlexItemCalculationInfo> list) {
        Iterator<FlexItemCalculationInfo> it = list.iterator();
        while (it.hasNext()) {
            if (!it.next().isFrozen) {
                return true;
            }
        }
        return false;
    }

    static boolean isZero(float f) {
        return Math.abs(f) < 1.0E-4f;
    }

    private static List<FlexItemCalculationInfo> createFlexItemCalculationInfos(FlexContainerRenderer flexContainerRenderer, float f) {
        boolean z;
        List<IRenderer> childRenderers = flexContainerRenderer.getChildRenderers();
        ArrayList arrayList = new ArrayList();
        for (IRenderer iRenderer : childRenderers) {
            if (iRenderer instanceof AbstractRenderer) {
                AbstractRenderer abstractRenderer = (AbstractRenderer) iRenderer;
                float fCalculateMaxWidth = calculateMaxWidth(abstractRenderer, f);
                if (iRenderer.getProperty(131) == null) {
                    z = true;
                } else {
                    fCalculateMaxWidth = abstractRenderer.retrieveUnitValue(f, 131).floatValue();
                    if (AbstractRenderer.isBorderBoxSizing(abstractRenderer)) {
                        fCalculateMaxWidth -= AbstractRenderer.calculatePaddingBorderWidth(abstractRenderer);
                    }
                    z = false;
                }
                arrayList.add(new FlexItemCalculationInfo(abstractRenderer, Math.max(fCalculateMaxWidth, 0.0f), ((Float) iRenderer.getProperty(132, Float.valueOf(0.0f))).floatValue(), ((Float) iRenderer.getProperty(127, Float.valueOf(1.0f))).floatValue(), f, z));
            }
        }
        return arrayList;
    }

    private static float calculateMaxWidth(AbstractRenderer abstractRenderer, float f) {
        Float fValueOf;
        if (abstractRenderer instanceof TableRenderer) {
            fValueOf = Float.valueOf(abstractRenderer.applyMarginsBordersPaddings(new Rectangle(Float.valueOf(abstractRenderer.getMinMaxWidth().getMaxWidth()).floatValue(), 0.0f), false).getWidth());
        } else {
            Float fRetrieveWidth = abstractRenderer.retrieveWidth(f);
            Float fRetrieveMaxWidth = fRetrieveWidth == null ? abstractRenderer.retrieveMaxWidth(f) : fRetrieveWidth;
            if (fRetrieveMaxWidth != null) {
                fValueOf = fRetrieveMaxWidth;
            } else if (abstractRenderer instanceof ImageRenderer) {
                fValueOf = Float.valueOf(((ImageRenderer) abstractRenderer).getImageWidth());
            } else {
                fValueOf = Float.valueOf(abstractRenderer.applyMarginsBordersPaddings(new Rectangle(abstractRenderer.getMinMaxWidth().getMaxWidth(), 0.0f), false).getWidth());
            }
        }
        return fValueOf.floatValue();
    }

    static class FlexItemCalculationInfo {
        float crossSize;
        float flexBaseSize;
        float flexBasis;
        boolean flexBasisContent;
        float flexGrow;
        float flexShrink;
        float hypotheticalCrossSize;
        float hypotheticalMainSize;
        float mainSize;
        float maxContent;
        float minContent;
        AbstractRenderer renderer;
        float scaledFlexShrinkFactor;
        float xShift;
        float yShift;
        boolean isFrozen = false;
        boolean isMinViolated = false;
        boolean isMaxViolated = false;

        public FlexItemCalculationInfo(AbstractRenderer abstractRenderer, float f, float f2, float f3, float f4, boolean z) {
            this.flexBasisContent = z;
            this.renderer = abstractRenderer;
            this.flexBasis = f;
            if (f3 < 0.0f) {
                throw new IllegalArgumentException(LayoutExceptionMessageConstant.FLEX_SHRINK_CANNOT_BE_NEGATIVE);
            }
            this.flexShrink = f3;
            if (f2 < 0.0f) {
                throw new IllegalArgumentException(LayoutExceptionMessageConstant.FLEX_GROW_CANNOT_BE_NEGATIVE);
            }
            this.flexGrow = f2;
            Float fRetrieveMinWidth = abstractRenderer.retrieveMinWidth(f4);
            this.minContent = fRetrieveMinWidth == null ? calculateMinContentAuto(f4) : fRetrieveMinWidth.floatValue();
            Float fRetrieveMaxWidth = this.renderer.retrieveMaxWidth(f4);
            this.maxContent = fRetrieveMaxWidth == null ? 1000000.0f : fRetrieveMaxWidth.floatValue();
        }

        public Rectangle toRectangle() {
            return new Rectangle(this.xShift, this.yShift, getOuterMainSize(this.mainSize), getOuterCrossSize(this.crossSize));
        }

        float getOuterMainSize(float f) {
            return this.renderer.applyMarginsBordersPaddings(new Rectangle(f, 0.0f), true).getWidth();
        }

        float getInnerMainSize(float f) {
            return this.renderer.applyMarginsBordersPaddings(new Rectangle(f, 0.0f), false).getWidth();
        }

        float getOuterCrossSize(float f) {
            return this.renderer.applyMarginsBordersPaddings(new Rectangle(0.0f, f), true).getHeight();
        }

        float getInnerCrossSize(float f) {
            return this.renderer.applyMarginsBordersPaddings(new Rectangle(0.0f, f), false).getHeight();
        }

        private float calculateMinContentAuto(float f) {
            Float fCalculateSpecifiedSizeSuggestion = calculateSpecifiedSizeSuggestion(f);
            float fCalculateContentSizeSuggestion = calculateContentSizeSuggestion(f);
            if (!this.renderer.hasAspectRatio() || fCalculateSpecifiedSizeSuggestion != null) {
                return fCalculateSpecifiedSizeSuggestion == null ? fCalculateContentSizeSuggestion : Math.min(fCalculateContentSizeSuggestion, fCalculateSpecifiedSizeSuggestion.floatValue());
            }
            Float fCalculateTransferredSizeSuggestion = calculateTransferredSizeSuggestion();
            return fCalculateTransferredSizeSuggestion == null ? fCalculateContentSizeSuggestion : Math.min(fCalculateContentSizeSuggestion, fCalculateTransferredSizeSuggestion.floatValue());
        }

        private Float calculateTransferredSizeSuggestion() {
            Float fRetrieveHeight = this.renderer.retrieveHeight();
            if (!this.renderer.hasAspectRatio() || fRetrieveHeight == null) {
                return null;
            }
            return Float.valueOf(clampValueByCrossSizesConvertedThroughAspectRatio(Float.valueOf(fRetrieveHeight.floatValue() * this.renderer.getAspectRatio().floatValue()).floatValue()));
        }

        private Float calculateSpecifiedSizeSuggestion(float f) {
            if (this.renderer.hasProperty(77)) {
                return this.renderer.retrieveWidth(f);
            }
            return null;
        }

        private float calculateContentSizeSuggestion(float f) {
            UnitValue unitValue = (UnitValue) this.renderer.replaceOwnProperty(77, null);
            UnitValue unitValue2 = (UnitValue) this.renderer.replaceOwnProperty(27, null);
            float innerMainSize = getInnerMainSize(this.renderer.getMinMaxWidth().getMinWidth());
            this.renderer.returnBackOwnProperty(27, unitValue2);
            this.renderer.returnBackOwnProperty(77, unitValue);
            if (this.renderer.hasAspectRatio()) {
                innerMainSize = clampValueByCrossSizesConvertedThroughAspectRatio(innerMainSize);
            }
            Float fRetrieveMaxWidth = this.renderer.retrieveMaxWidth(f);
            if (fRetrieveMaxWidth == null) {
                fRetrieveMaxWidth = Float.valueOf(1000000.0f);
            }
            return Math.min(innerMainSize, fRetrieveMaxWidth.floatValue());
        }

        private float clampValueByCrossSizesConvertedThroughAspectRatio(float f) {
            Float fRetrieveMaxHeight = this.renderer.retrieveMaxHeight();
            if (fRetrieveMaxHeight == null || !this.renderer.hasProperty(84)) {
                fRetrieveMaxHeight = Float.valueOf(1000000.0f);
            }
            Float fRetrieveMinHeight = this.renderer.retrieveMinHeight();
            if (fRetrieveMinHeight == null || !this.renderer.hasProperty(85)) {
                fRetrieveMinHeight = Float.valueOf(0.0f);
            }
            return Math.min(Math.max(fRetrieveMinHeight.floatValue() * this.renderer.getAspectRatio().floatValue(), f), fRetrieveMaxHeight.floatValue() * this.renderer.getAspectRatio().floatValue());
        }
    }
}
