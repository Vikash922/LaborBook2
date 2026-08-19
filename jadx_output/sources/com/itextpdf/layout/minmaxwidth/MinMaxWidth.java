package com.itextpdf.layout.minmaxwidth;

/* JADX INFO: loaded from: classes6.dex */
public class MinMaxWidth {
    private float additionalWidth;
    private float childrenMaxWidth;
    private float childrenMinWidth;

    public MinMaxWidth() {
        this(0.0f);
    }

    public MinMaxWidth(float f) {
        this(0.0f, 0.0f, f);
    }

    public MinMaxWidth(float f, float f2, float f3) {
        this.childrenMinWidth = f;
        this.childrenMaxWidth = f2;
        this.additionalWidth = f3;
    }

    public float getChildrenMinWidth() {
        return this.childrenMinWidth;
    }

    public void setChildrenMinWidth(float f) {
        this.childrenMinWidth = f;
    }

    public float getChildrenMaxWidth() {
        return this.childrenMaxWidth;
    }

    public void setChildrenMaxWidth(float f) {
        this.childrenMaxWidth = f;
    }

    public float getAdditionalWidth() {
        return this.additionalWidth;
    }

    public void setAdditionalWidth(float f) {
        this.additionalWidth = f;
    }

    public float getMaxWidth() {
        return Math.min(this.childrenMaxWidth + this.additionalWidth, MinMaxWidthUtils.getInfWidth());
    }

    public float getMinWidth() {
        return Math.min(this.childrenMinWidth + this.additionalWidth, getMaxWidth());
    }

    public String toString() {
        return "min=" + (this.childrenMinWidth + this.additionalWidth) + ", max=" + (this.childrenMaxWidth + this.additionalWidth);
    }
}
