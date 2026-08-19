package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.layout.properties.InlineVerticalAlignment;
import com.itextpdf.layout.properties.InlineVerticalAlignmentType;
import com.itextpdf.layout.properties.LineHeight;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes6.dex */
final class InlineVerticalAlignmentHelper {
    private static final float ADJUSTMENT_THRESHOLD = 0.001f;
    private static final float SUB_OFFSET = -0.2f;
    private static final float SUPER_OFFSET = 0.3f;

    static /* synthetic */ boolean lambda$adjustChildrenYLineHtmlMode$4(InlineVerticalAlignment inlineVerticalAlignment) {
        return true;
    }

    private InlineVerticalAlignmentHelper() {
    }

    public static void adjustChildrenYLineHtmlMode(LineRenderer lineRenderer) {
        float y = (lineRenderer.occupiedArea.getBBox().getY() + lineRenderer.occupiedArea.getBBox().getHeight()) - lineRenderer.maxDescent;
        processRenderers(lineRenderer, lineRenderer.getChildRenderers(), y, new Predicate() { // from class: com.itextpdf.layout.renderer.InlineVerticalAlignmentHelper$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return InlineVerticalAlignmentHelper.lambda$adjustChildrenYLineHtmlMode$0((InlineVerticalAlignment) obj);
            }
        }, new Predicate() { // from class: com.itextpdf.layout.renderer.InlineVerticalAlignmentHelper$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return InlineVerticalAlignmentHelper.lambda$adjustChildrenYLineHtmlMode$1((InlineVerticalAlignment) obj);
            }
        });
        processRenderers(lineRenderer, (List) lineRenderer.getChildRenderers().stream().sorted(new Comparator() { // from class: com.itextpdf.layout.renderer.InlineVerticalAlignmentHelper$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Math.round((((IRenderer) obj2).getOccupiedArea().getBBox().getHeight() - ((IRenderer) obj).getOccupiedArea().getBBox().getHeight()) * 1000.0f);
            }
        }).collect(Collectors.toList()), y, new Predicate() { // from class: com.itextpdf.layout.renderer.InlineVerticalAlignmentHelper$$ExternalSyntheticLambda3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return InlineVerticalAlignmentHelper.isBoxOrientedVerticalAlignment((InlineVerticalAlignment) obj);
            }
        }, new Predicate() { // from class: com.itextpdf.layout.renderer.InlineVerticalAlignmentHelper$$ExternalSyntheticLambda4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return InlineVerticalAlignmentHelper.lambda$adjustChildrenYLineHtmlMode$4((InlineVerticalAlignment) obj);
            }
        });
    }

    static /* synthetic */ boolean lambda$adjustChildrenYLineHtmlMode$0(InlineVerticalAlignment inlineVerticalAlignment) {
        return !isBoxOrientedVerticalAlignment(inlineVerticalAlignment);
    }

    static /* synthetic */ boolean lambda$adjustChildrenYLineHtmlMode$1(InlineVerticalAlignment inlineVerticalAlignment) {
        return !isBoxOrientedVerticalAlignment(inlineVerticalAlignment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isBoxOrientedVerticalAlignment(InlineVerticalAlignment inlineVerticalAlignment) {
        return inlineVerticalAlignment.getType() == InlineVerticalAlignmentType.TOP || inlineVerticalAlignment.getType() == InlineVerticalAlignmentType.BOTTOM;
    }

    private static void processRenderers(LineRenderer lineRenderer, List<IRenderer> list, float f, Predicate<InlineVerticalAlignment> predicate, Predicate<InlineVerticalAlignment> predicate2) {
        float f2;
        float f3;
        float f4;
        float f5;
        Iterator<IRenderer> it;
        InlineVerticalAlignment inlineVerticalAlignment;
        IRenderer iRenderer;
        float f6;
        float f7;
        float f8;
        float[] actualFontInfo = LineHeightHelper.getActualFontInfo(lineRenderer);
        float f9 = f + actualFontInfo[0];
        float f10 = actualFontInfo[3];
        float f11 = f9 - (f10 / 2.0f);
        float f12 = (f + actualFontInfo[1]) - (f10 / 2.0f);
        float f13 = actualFontInfo[2];
        Iterator<IRenderer> it2 = list.iterator();
        float f14 = Float.MIN_VALUE;
        float fMax = Float.MIN_VALUE;
        boolean z = false;
        float f15 = Float.MAX_VALUE;
        while (it2.hasNext()) {
            IRenderer next = it2.next();
            if (!FloatingHelper.isRendererFloating(next)) {
                InlineVerticalAlignment inlineVerticalAlignment2 = (InlineVerticalAlignment) next.getProperty(136);
                if (inlineVerticalAlignment2 == null) {
                    inlineVerticalAlignment2 = new InlineVerticalAlignment();
                }
                InlineVerticalAlignment inlineVerticalAlignment3 = inlineVerticalAlignment2;
                if (predicate.test(inlineVerticalAlignment3)) {
                    Rectangle adjustedArea = getAdjustedArea(next);
                    Rectangle rectangle = new Rectangle(lineRenderer.occupiedArea.getBBox().getX(), Math.min(f15, lineRenderer.occupiedArea.getBBox().getY()), lineRenderer.occupiedArea.getBBox().getWidth(), Math.max(fMax, lineRenderer.occupiedArea.getBBox().getHeight()));
                    float f16 = f11;
                    f3 = f11;
                    iRenderer = next;
                    float f17 = f12;
                    f4 = f12;
                    f6 = f15;
                    it = it2;
                    inlineVerticalAlignment = inlineVerticalAlignment3;
                    float f18 = f10;
                    f2 = f10;
                    f7 = f14;
                    float f19 = f13;
                    f5 = f13;
                    f8 = fMax;
                    float fCalculateOffset = calculateOffset(next, adjustedArea, inlineVerticalAlignment3, f, f16, f17, f18, f19, rectangle);
                    if (Math.abs(fCalculateOffset) > ADJUSTMENT_THRESHOLD) {
                        iRenderer.move(0.0f, fCalculateOffset);
                    }
                } else {
                    f2 = f10;
                    f3 = f11;
                    f4 = f12;
                    f5 = f13;
                    it = it2;
                    inlineVerticalAlignment = inlineVerticalAlignment3;
                    iRenderer = next;
                    f6 = f15;
                    f7 = f14;
                    f8 = fMax;
                }
                if (predicate2.test(inlineVerticalAlignment)) {
                    Rectangle adjustedArea2 = getAdjustedArea(iRenderer);
                    float fMax2 = Math.max(f7, adjustedArea2.getTop());
                    float fMin = Math.min(f6, adjustedArea2.getBottom());
                    fMax = Math.max(f8, adjustedArea2.getHeight());
                    f14 = fMax2;
                    f15 = fMin;
                    z = true;
                } else {
                    f14 = f7;
                    f15 = f6;
                    fMax = f8;
                }
                it2 = it;
                f11 = f3;
                f12 = f4;
                f10 = f2;
                f13 = f5;
            }
        }
        float f20 = f15;
        float f21 = f14;
        float f22 = fMax;
        if (z) {
            adjustBBox(lineRenderer, f22, f21, f20);
        }
    }

    private static Rectangle getAdjustedArea(IRenderer iRenderer) {
        Rectangle rectangleMo3120clone = iRenderer.getOccupiedArea().getBBox().mo3120clone();
        if ((iRenderer instanceof AbstractRenderer) && !(iRenderer instanceof BlockRenderer) && !iRenderer.hasProperty(136)) {
            AbstractRenderer abstractRenderer = (AbstractRenderer) iRenderer;
            abstractRenderer.applyBorderBox(rectangleMo3120clone, false);
            abstractRenderer.applyPaddings(rectangleMo3120clone, false);
        }
        return rectangleMo3120clone;
    }

    private static void adjustBBox(LineRenderer lineRenderer, float f, float f2, float f3) {
        float fMax = ((LineHeight) lineRenderer.getProperty(124)) != null ? Math.max(f, LineHeightHelper.calculateLineHeight(lineRenderer)) : f;
        float f4 = (fMax - f) / 2.0f;
        float f5 = f2 + f4;
        float fMax2 = Math.max(fMax, f5 - (f3 - f4));
        float top = lineRenderer.occupiedArea.getBBox().getTop();
        lineRenderer.occupiedArea.getBBox().setHeight(fMax2);
        lineRenderer.occupiedArea.getBBox().moveUp(top - lineRenderer.occupiedArea.getBBox().getTop());
        float f6 = top - f5;
        Iterator<IRenderer> it = lineRenderer.getChildRenderers().iterator();
        while (it.hasNext()) {
            it.next().move(0.0f, f6);
        }
    }

    /* JADX INFO: renamed from: com.itextpdf.layout.renderer.InlineVerticalAlignmentHelper$1 */
    static /* synthetic */ class C35151 {

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$layout$properties$InlineVerticalAlignmentType */
        static final /* synthetic */ int[] f3229x5eeb7c52;

        static {
            int[] iArr = new int[InlineVerticalAlignmentType.values().length];
            f3229x5eeb7c52 = iArr;
            try {
                iArr[InlineVerticalAlignmentType.BASELINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3229x5eeb7c52[InlineVerticalAlignmentType.TEXT_TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3229x5eeb7c52[InlineVerticalAlignmentType.TEXT_BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3229x5eeb7c52[InlineVerticalAlignmentType.FIXED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3229x5eeb7c52[InlineVerticalAlignmentType.SUPER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3229x5eeb7c52[InlineVerticalAlignmentType.SUB.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3229x5eeb7c52[InlineVerticalAlignmentType.FRACTION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3229x5eeb7c52[InlineVerticalAlignmentType.MIDDLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3229x5eeb7c52[InlineVerticalAlignmentType.BOTTOM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f3229x5eeb7c52[InlineVerticalAlignmentType.TOP.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    private static float calculateOffset(IRenderer iRenderer, Rectangle rectangle, InlineVerticalAlignment inlineVerticalAlignment, float f, float f2, float f3, float f4, float f5, Rectangle rectangle2) {
        float value;
        float bottom;
        float bottom2;
        switch (C35151.f3229x5eeb7c52[inlineVerticalAlignment.getType().ordinal()]) {
            case 1:
                return f - getChildBaseline(iRenderer, f4);
            case 2:
                return f2 - rectangle.getTop();
            case 3:
                return f3 - rectangle.getBottom();
            case 4:
                return (f + inlineVerticalAlignment.getValue()) - getChildBaseline(iRenderer, f4);
            case 5:
            case 6:
            case 7:
                if (inlineVerticalAlignment.getType() == InlineVerticalAlignmentType.SUPER) {
                    value = 0.3f;
                } else {
                    value = inlineVerticalAlignment.getType() == InlineVerticalAlignmentType.SUB ? SUB_OFFSET : inlineVerticalAlignment.getValue();
                }
                return (f + ((f2 - f3) * value)) - getChildBaseline(iRenderer, f4);
            case 8:
                return (f + (f5 / 2.0f)) - (rectangle.getBottom() + (rectangle.getHeight() / 2.0f));
            case 9:
                bottom = rectangle2.getBottom();
                bottom2 = rectangle.getBottom();
                break;
            case 10:
                bottom = rectangle2.getTop();
                bottom2 = rectangle.getTop();
                break;
            default:
                return 0.0f;
        }
        return bottom - bottom2;
    }

    private static float getChildBaseline(IRenderer iRenderer, float f) {
        if (iRenderer instanceof ILeafElementRenderer) {
            return iRenderer.getOccupiedArea().getBBox().getBottom() - ((ILeafElementRenderer) iRenderer).getDescent();
        }
        Float lastYLineRecursively = (LineRenderer.isInlineBlockChild(iRenderer) && (iRenderer instanceof AbstractRenderer)) ? ((AbstractRenderer) iRenderer).getLastYLineRecursively() : null;
        return lastYLineRecursively == null ? iRenderer.getOccupiedArea().getBBox().getBottom() : lastYLineRecursively.floatValue() - (f / 2.0f);
    }
}
