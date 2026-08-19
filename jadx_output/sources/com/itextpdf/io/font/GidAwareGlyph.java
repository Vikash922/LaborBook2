package com.itextpdf.io.font;

import com.itextpdf.io.font.otf.Glyph;

/* JADX INFO: loaded from: classes6.dex */
class GidAwareGlyph extends Glyph {
    private int gid;

    public GidAwareGlyph(int i, int i2, int i3, int[] iArr) {
        super(i, i2, i3, iArr);
    }

    public void setGid(int i) {
        this.gid = i;
    }

    public int getGid() {
        return this.gid;
    }
}
