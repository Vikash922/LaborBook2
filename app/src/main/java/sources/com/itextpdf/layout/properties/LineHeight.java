package com.itextpdf.layout.properties;

/* JADX INFO: loaded from: classes6.dex */
public class LineHeight {
    private static final int FIXED = 1;
    private static final int MULTIPLIED = 2;
    private static final int NORMAL = 4;
    private int type;
    private float value;

    private LineHeight(int i, float f) {
        this.type = i;
        this.value = f;
    }

    public float getValue() {
        return this.value;
    }

    public static LineHeight createFixedValue(float f) {
        return new LineHeight(1, f);
    }

    public static LineHeight createMultipliedValue(float f) {
        return new LineHeight(2, f);
    }

    public static LineHeight createNormalValue() {
        return new LineHeight(4, 0.0f);
    }

    public boolean isFixedValue() {
        return this.type == 1;
    }

    public boolean isMultipliedValue() {
        return this.type == 2;
    }

    public boolean isNormalValue() {
        return this.type == 4;
    }
}
