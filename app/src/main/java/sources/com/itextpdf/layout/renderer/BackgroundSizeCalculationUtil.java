package com.itextpdf.layout.renderer;

import com.itextpdf.layout.properties.BackgroundImage;
import com.itextpdf.layout.properties.BackgroundSize;
import com.itextpdf.layout.properties.UnitValue;

/* JADX INFO: loaded from: classes6.dex */
final class BackgroundSizeCalculationUtil {
    private static final int PERCENT_100 = 100;
    private static final UnitValue PERCENT_VALUE_100 = UnitValue.createPercentValue(100.0f);

    private BackgroundSizeCalculationUtil() {
    }

    public static float[] calculateBackgroundImageSize(BackgroundImage backgroundImage, float f, float f2) {
        BackgroundSize backgroundSize;
        boolean z = backgroundImage.getLinearGradientBuilder() != null;
        if (!z && backgroundImage.getBackgroundSize().isSpecificSize()) {
            backgroundSize = calculateBackgroundSizeForArea(backgroundImage, f, f2);
        } else {
            backgroundSize = backgroundImage.getBackgroundSize();
        }
        UnitValue backgroundWidthSize = backgroundSize.getBackgroundWidthSize();
        UnitValue backgroundHeightSize = backgroundSize.getBackgroundHeightSize();
        Float[] fArr = new Float[2];
        if (backgroundWidthSize != null && backgroundWidthSize.getValue() >= 0.0f) {
            calculateBackgroundWidth(backgroundWidthSize, f, !z && backgroundHeightSize == null, backgroundImage, fArr);
        }
        if (backgroundHeightSize != null && backgroundHeightSize.getValue() >= 0.0f) {
            calculateBackgroundHeight(backgroundHeightSize, f2, !z && backgroundWidthSize == null, backgroundImage, fArr);
        }
        setDefaultSizeIfNull(fArr, f, f2, backgroundImage, z);
        return new float[]{fArr[0].floatValue(), fArr[1].floatValue()};
    }

    private static BackgroundSize calculateBackgroundSizeForArea(BackgroundImage backgroundImage, float f, float f2) {
        double imageWidth = f / backgroundImage.getImageWidth();
        double imageHeight = f2 / backgroundImage.getImageHeight();
        if (backgroundImage.getBackgroundSize().isCover()) {
            return createSizeWithMaxValueSide(imageWidth > imageHeight);
        }
        if (backgroundImage.getBackgroundSize().isContain()) {
            return createSizeWithMaxValueSide(imageWidth < imageHeight);
        }
        return new BackgroundSize();
    }

    private static BackgroundSize createSizeWithMaxValueSide(boolean z) {
        BackgroundSize backgroundSize = new BackgroundSize();
        if (z) {
            backgroundSize.setBackgroundSizeToValues(PERCENT_VALUE_100, null);
        } else {
            backgroundSize.setBackgroundSizeToValues(null, PERCENT_VALUE_100);
        }
        return backgroundSize;
    }

    private static void calculateBackgroundWidth(UnitValue unitValue, float f, boolean z, BackgroundImage backgroundImage, Float[] fArr) {
        if (z) {
            if (unitValue.isPercentValue()) {
                scaleWidth((f * unitValue.getValue()) / 100.0f, backgroundImage, fArr);
                return;
            } else {
                scaleWidth(unitValue.getValue(), backgroundImage, fArr);
                return;
            }
        }
        if (unitValue.isPercentValue()) {
            fArr[0] = Float.valueOf((f * unitValue.getValue()) / 100.0f);
        } else {
            fArr[0] = Float.valueOf(unitValue.getValue());
        }
    }

    private static void calculateBackgroundHeight(UnitValue unitValue, float f, boolean z, BackgroundImage backgroundImage, Float[] fArr) {
        if (z) {
            if (unitValue.isPercentValue()) {
                scaleHeight((f * unitValue.getValue()) / 100.0f, backgroundImage, fArr);
                return;
            } else {
                scaleHeight(unitValue.getValue(), backgroundImage, fArr);
                return;
            }
        }
        if (unitValue.isPercentValue()) {
            fArr[1] = Float.valueOf((f * unitValue.getValue()) / 100.0f);
        } else {
            fArr[1] = Float.valueOf(unitValue.getValue());
        }
    }

    private static void scaleWidth(float f, BackgroundImage backgroundImage, Float[] fArr) {
        float imageWidth = backgroundImage.getImageWidth() == 0.0f ? 1.0f : f / backgroundImage.getImageWidth();
        fArr[0] = Float.valueOf(f);
        fArr[1] = Float.valueOf(backgroundImage.getImageHeight() * imageWidth);
    }

    private static void scaleHeight(float f, BackgroundImage backgroundImage, Float[] fArr) {
        fArr[0] = Float.valueOf(backgroundImage.getImageWidth() * (backgroundImage.getImageHeight() == 0.0f ? 1.0f : f / backgroundImage.getImageHeight()));
        fArr[1] = Float.valueOf(f);
    }

    private static void setDefaultSizeIfNull(Float[] fArr, float f, float f2, BackgroundImage backgroundImage, boolean z) {
        if (z) {
            Float f3 = fArr[0];
            if (f3 != null) {
                f = f3.floatValue();
            }
            fArr[0] = Float.valueOf(f);
            Float f4 = fArr[1];
            if (f4 != null) {
                f2 = f4.floatValue();
            }
            fArr[1] = Float.valueOf(f2);
            return;
        }
        Float f5 = fArr[0];
        fArr[0] = Float.valueOf(f5 == null ? backgroundImage.getImageWidth() : f5.floatValue());
        Float f6 = fArr[1];
        fArr[1] = Float.valueOf(f6 == null ? backgroundImage.getImageHeight() : f6.floatValue());
    }
}
