package com.itextpdf.layout.properties;

import com.itextpdf.kernel.colors.Color;

/* JADX INFO: loaded from: classes6.dex */
public class Underline {
    protected int lineCapStyle;
    protected float thickness;
    protected float thicknessMul;
    protected TransparentColor transparentColor;
    protected float yPosition;
    protected float yPositionMul;

    public Underline(Color color, float f, float f2, float f3, float f4, int i) {
        this(color, 1.0f, f, f2, f3, f4, i);
    }

    public Underline(Color color, float f, float f2, float f3, float f4, float f5, int i) {
        this.lineCapStyle = 0;
        this.transparentColor = new TransparentColor(color, f);
        this.thickness = f2;
        this.thicknessMul = f3;
        this.yPosition = f4;
        this.yPositionMul = f5;
        this.lineCapStyle = i;
    }

    public Color getColor() {
        return this.transparentColor.getColor();
    }

    public float getOpacity() {
        return this.transparentColor.getOpacity();
    }

    public float getThickness(float f) {
        return this.thickness + (this.thicknessMul * f);
    }

    public float getYPosition(float f) {
        return this.yPosition + (this.yPositionMul * f);
    }

    public float getYPositionMul() {
        return this.yPositionMul;
    }

    public int getLineCapStyle() {
        return this.lineCapStyle;
    }
}
