package com.itextpdf.kernel.colors.gradients;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public class GradientColorStop {
    private double hintOffset;
    private HintOffsetType hintOffsetType;
    private double offset;
    private OffsetType offsetType;
    private final float opacity;
    private final float[] rgb;

    public enum HintOffsetType {
        ABSOLUTE_ON_GRADIENT,
        RELATIVE_ON_GRADIENT,
        RELATIVE_BETWEEN_COLORS,
        NONE
    }

    public enum OffsetType {
        ABSOLUTE,
        AUTO,
        RELATIVE
    }

    private static float normalize(float f) {
        float f2 = 1.0f;
        if (f <= 1.0f) {
            f2 = 0.0f;
            if (f > 0.0f) {
                return f;
            }
        }
        return f2;
    }

    public GradientColorStop(float[] fArr) {
        this(fArr, 1.0f, 0.0d, OffsetType.AUTO);
    }

    public GradientColorStop(float[] fArr, double d, OffsetType offsetType) {
        this(fArr, 1.0f, d, offsetType);
    }

    public GradientColorStop(GradientColorStop gradientColorStop, double d, OffsetType offsetType) {
        this(gradientColorStop.getRgbArray(), gradientColorStop.getOpacity(), d, offsetType);
    }

    private GradientColorStop(float[] fArr, float f, double d, OffsetType offsetType) {
        this.hintOffset = 0.0d;
        this.hintOffsetType = HintOffsetType.NONE;
        this.rgb = copyRgbArray(fArr);
        this.opacity = normalize(f);
        setOffset(d, offsetType);
    }

    public float[] getRgbArray() {
        return copyRgbArray(this.rgb);
    }

    private float getOpacity() {
        return this.opacity;
    }

    public OffsetType getOffsetType() {
        return this.offsetType;
    }

    public double getOffset() {
        return this.offset;
    }

    public double getHintOffset() {
        return this.hintOffset;
    }

    public HintOffsetType getHintOffsetType() {
        return this.hintOffsetType;
    }

    public GradientColorStop setOffset(double d, OffsetType offsetType) {
        if (offsetType == null) {
            offsetType = OffsetType.AUTO;
        }
        this.offsetType = offsetType;
        if (offsetType == OffsetType.AUTO) {
            d = 0.0d;
        }
        this.offset = d;
        return this;
    }

    public GradientColorStop setHint(double d, HintOffsetType hintOffsetType) {
        if (hintOffsetType == null) {
            hintOffsetType = HintOffsetType.NONE;
        }
        this.hintOffsetType = hintOffsetType;
        if (hintOffsetType == HintOffsetType.NONE) {
            d = 0.0d;
        }
        this.hintOffset = d;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        GradientColorStop gradientColorStop = (GradientColorStop) obj;
        return Float.compare(gradientColorStop.opacity, this.opacity) == 0 && Double.compare(gradientColorStop.offset, this.offset) == 0 && Double.compare(gradientColorStop.hintOffset, this.hintOffset) == 0 && Arrays.equals(this.rgb, gradientColorStop.rgb) && this.offsetType == gradientColorStop.offsetType && this.hintOffsetType == gradientColorStop.hintOffsetType;
    }

    public int hashCode() {
        return (((((Objects.hash(Float.valueOf(this.opacity), Double.valueOf(this.offset), Double.valueOf(this.hintOffset)) * 31) + this.offsetType.hashCode()) * 31) + this.hintOffsetType.hashCode()) * 31) + Arrays.hashCode(this.rgb);
    }

    private static float[] copyRgbArray(float[] fArr) {
        if (fArr == null || fArr.length < 3) {
            return new float[]{0.0f, 0.0f, 0.0f};
        }
        return new float[]{normalize(fArr[0]), normalize(fArr[1]), normalize(fArr[2])};
    }
}
