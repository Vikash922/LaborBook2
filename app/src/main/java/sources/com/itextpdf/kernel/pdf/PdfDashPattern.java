package com.itextpdf.kernel.pdf;

/* JADX INFO: loaded from: classes6.dex */
public class PdfDashPattern {
    private float dash;
    private float gap;
    private float phase;

    public PdfDashPattern() {
        this.dash = -1.0f;
        this.gap = -1.0f;
        this.phase = -1.0f;
    }

    public PdfDashPattern(float f) {
        this.gap = -1.0f;
        this.phase = -1.0f;
        this.dash = f;
    }

    public PdfDashPattern(float f, float f2) {
        this.phase = -1.0f;
        this.dash = f;
        this.gap = f2;
    }

    public PdfDashPattern(float f, float f2, float f3) {
        this(f, f2);
        this.phase = f3;
    }

    public float getDash() {
        return this.dash;
    }

    public float getGap() {
        return this.gap;
    }

    public float getPhase() {
        return this.phase;
    }
}
