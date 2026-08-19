package com.itextpdf.layout.renderer.objectfit;

import com.itextpdf.layout.properties.ObjectFit;

/* JADX INFO: loaded from: classes6.dex */
public final class ObjectFitCalculator {
    private ObjectFitCalculator() {
    }

    /* JADX INFO: renamed from: com.itextpdf.layout.renderer.objectfit.ObjectFitCalculator$1 */
    static /* synthetic */ class C35211 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$layout$properties$ObjectFit;

        static {
            int[] iArr = new int[ObjectFit.values().length];
            $SwitchMap$com$itextpdf$layout$properties$ObjectFit = iArr;
            try {
                iArr[ObjectFit.FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ObjectFit[ObjectFit.CONTAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ObjectFit[ObjectFit.COVER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ObjectFit[ObjectFit.SCALE_DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$ObjectFit[ObjectFit.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static ObjectFitApplyingResult calculateRenderedImageSize(ObjectFit objectFit, double d, double d2, double d3, double d4) {
        int i = C35211.$SwitchMap$com$itextpdf$layout$properties$ObjectFit[objectFit.ordinal()];
        if (i == 1) {
            return processFill(d3, d4);
        }
        if (i == 2) {
            return processContain(d, d2, d3, d4);
        }
        if (i == 3) {
            return processCover(d, d2, d3, d4);
        }
        if (i == 4) {
            return processScaleDown(d, d2, d3, d4);
        }
        if (i == 5) {
            return processNone(d, d2, d3, d4);
        }
        throw new IllegalArgumentException("Object fit parameter cannot be null!");
    }

    private static ObjectFitApplyingResult processFill(double d, double d2) {
        return new ObjectFitApplyingResult(d, d2, false);
    }

    private static ObjectFitApplyingResult processContain(double d, double d2, double d3, double d4) {
        return processToFitSide(d, d2, d3, d4, false);
    }

    private static ObjectFitApplyingResult processCover(double d, double d2, double d3, double d4) {
        return processToFitSide(d, d2, d3, d4, true);
    }

    private static ObjectFitApplyingResult processScaleDown(double d, double d2, double d3, double d4) {
        if (d3 >= d && d4 >= d2) {
            return new ObjectFitApplyingResult(d, d2, false);
        }
        return processToFitSide(d, d2, d3, d4, false);
    }

    private static ObjectFitApplyingResult processNone(double d, double d2, double d3, double d4) {
        return new ObjectFitApplyingResult(d, d2, d3 <= d || d4 <= d2);
    }

    private static ObjectFitApplyingResult processToFitSide(double d, double d2, double d3, double d4, boolean z) {
        if ((d4 / d2 > d3 / d) ^ z) {
            d4 = (d2 * d3) / d;
        } else {
            d3 = (d * d4) / d2;
        }
        return new ObjectFitApplyingResult(d3, d4, z);
    }
}
