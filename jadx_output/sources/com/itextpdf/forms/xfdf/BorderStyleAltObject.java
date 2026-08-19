package com.itextpdf.forms.xfdf;

/* JADX INFO: loaded from: classes6.dex */
public class BorderStyleAltObject {
    private String content;
    private float[] dashPattern;
    private float hCornerRadius;
    private float vCornerRadius;
    private float width;

    public BorderStyleAltObject(float f, float f2, float f3) {
        this.hCornerRadius = f;
        this.vCornerRadius = f2;
        this.width = f3;
    }

    public float getHCornerRadius() {
        return this.hCornerRadius;
    }

    public float getVCornerRadius() {
        return this.vCornerRadius;
    }

    public float getWidth() {
        return this.width;
    }

    public float[] getDashPattern() {
        return this.dashPattern;
    }

    public BorderStyleAltObject setDashPattern(float[] fArr) {
        this.dashPattern = fArr;
        return this;
    }

    public String getContent() {
        return this.content;
    }

    public BorderStyleAltObject setContent(String str) {
        this.content = str;
        return this;
    }
}
