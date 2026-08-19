package com.itextpdf.io.image;

/* JADX INFO: loaded from: classes6.dex */
public class PngChromaticities {
    private float xB;
    private float xG;
    private float xR;
    private float xW;
    private float yB;
    private float yG;
    private float yR;
    private float yW;

    public PngChromaticities(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        this.xW = f;
        this.yW = f2;
        this.xR = f3;
        this.yR = f4;
        this.xG = f5;
        this.yG = f6;
        this.xB = f7;
        this.yB = f8;
    }

    public float getXW() {
        return this.xW;
    }

    public float getYW() {
        return this.yW;
    }

    public float getXR() {
        return this.xR;
    }

    public float getYR() {
        return this.yR;
    }

    public float getXG() {
        return this.xG;
    }

    public float getYG() {
        return this.yG;
    }

    public float getXB() {
        return this.xB;
    }

    public float getYB() {
        return this.yB;
    }
}
