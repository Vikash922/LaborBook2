package com.itextpdf.p017io.image;

/* JADX INFO: loaded from: classes6.dex */
public class PngChromaticities {

    /* JADX INFO: renamed from: xB */
    private float f2884xB;

    /* JADX INFO: renamed from: xG */
    private float f2885xG;

    /* JADX INFO: renamed from: xR */
    private float f2886xR;

    /* JADX INFO: renamed from: xW */
    private float f2887xW;

    /* JADX INFO: renamed from: yB */
    private float f2888yB;

    /* JADX INFO: renamed from: yG */
    private float f2889yG;

    /* JADX INFO: renamed from: yR */
    private float f2890yR;

    /* JADX INFO: renamed from: yW */
    private float f2891yW;

    public PngChromaticities(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        this.f2887xW = f;
        this.f2891yW = f2;
        this.f2886xR = f3;
        this.f2890yR = f4;
        this.f2885xG = f5;
        this.f2889yG = f6;
        this.f2884xB = f7;
        this.f2888yB = f8;
    }

    public float getXW() {
        return this.f2887xW;
    }

    public float getYW() {
        return this.f2891yW;
    }

    public float getXR() {
        return this.f2886xR;
    }

    public float getYR() {
        return this.f2890yR;
    }

    public float getXG() {
        return this.f2885xG;
    }

    public float getYG() {
        return this.f2889yG;
    }

    public float getXB() {
        return this.f2884xB;
    }

    public float getYB() {
        return this.f2888yB;
    }
}
