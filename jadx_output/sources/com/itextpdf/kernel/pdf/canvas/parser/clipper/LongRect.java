package com.itextpdf.kernel.pdf.canvas.parser.clipper;

/* JADX INFO: loaded from: classes6.dex */
public class LongRect {
    public long bottom;
    public long left;
    public long right;
    public long top;

    public LongRect() {
    }

    public LongRect(long j, long j2, long j3, long j4) {
        this.left = j;
        this.top = j2;
        this.right = j3;
        this.bottom = j4;
    }

    public LongRect(LongRect longRect) {
        this.left = longRect.left;
        this.top = longRect.top;
        this.right = longRect.right;
        this.bottom = longRect.bottom;
    }
}
