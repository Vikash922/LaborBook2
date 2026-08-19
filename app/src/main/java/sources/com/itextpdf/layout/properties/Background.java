package com.itextpdf.layout.properties;

import com.itextpdf.kernel.colors.Color;

/* JADX INFO: loaded from: classes6.dex */
public class Background {
    private BackgroundBox backgroundClip;
    protected float extraBottom;
    protected float extraLeft;
    protected float extraRight;
    protected float extraTop;
    protected TransparentColor transparentColor;

    public Background(Color color) {
        this(color, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f);
    }

    public Background(Color color, float f) {
        this(color, f, 0.0f, 0.0f, 0.0f, 0.0f);
    }

    public Background(Color color, float f, float f2, float f3, float f4) {
        this(color, 1.0f, f, f2, f3, f4);
    }

    public Background(Color color, float f, float f2, float f3, float f4, float f5) {
        this.backgroundClip = BackgroundBox.BORDER_BOX;
        this.transparentColor = new TransparentColor(color, f);
        this.extraLeft = f2;
        this.extraRight = f4;
        this.extraTop = f3;
        this.extraBottom = f5;
    }

    public Background(Color color, float f, BackgroundBox backgroundBox) {
        this(color, f);
        this.backgroundClip = backgroundBox;
    }

    public Color getColor() {
        return this.transparentColor.getColor();
    }

    public float getOpacity() {
        return this.transparentColor.getOpacity();
    }

    public float getExtraLeft() {
        return this.extraLeft;
    }

    public float getExtraRight() {
        return this.extraRight;
    }

    public float getExtraTop() {
        return this.extraTop;
    }

    public float getExtraBottom() {
        return this.extraBottom;
    }

    public BackgroundBox getBackgroundClip() {
        return this.backgroundClip;
    }
}
