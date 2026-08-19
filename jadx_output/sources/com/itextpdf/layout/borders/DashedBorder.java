package com.itextpdf.layout.borders;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.borders.Border;

/* JADX INFO: loaded from: classes6.dex */
public class DashedBorder extends Border {
    private static final float DASH_MODIFIER = 5.0f;
    private static final float GAP_MODIFIER = 3.5f;

    @Override // com.itextpdf.layout.borders.Border
    public int getType() {
        return 1;
    }

    public DashedBorder(float f) {
        super(f);
    }

    public DashedBorder(Color color, float f) {
        super(color, f);
    }

    public DashedBorder(Color color, float f, float f2) {
        super(color, f, f2);
    }

    @Override // com.itextpdf.layout.borders.Border
    public void draw(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Border.Side side, float f5, float f6) {
        float f7 = this.width * GAP_MODIFIER;
        float f8 = this.width * DASH_MODIFIER;
        float f9 = f3 - f;
        float f10 = f4 - f2;
        float dotsGap = super.getDotsGap(Math.sqrt((f9 * f9) + (f10 * f10)), f7 + f8);
        if (dotsGap > f8) {
            dotsGap -= f8;
        }
        float f11 = dotsGap;
        new FixedDashedBorder(getColor(), this.width, getOpacity(), f8, f11, f8 + (f11 / 2.0f)).draw(pdfCanvas, f, f2, f3, f4, side, f5, f6);
    }

    @Override // com.itextpdf.layout.borders.Border
    public void draw(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, Border.Side side, float f9, float f10) {
        float f11 = this.width * GAP_MODIFIER;
        float f12 = this.width * DASH_MODIFIER;
        float f13 = f3 - f;
        float f14 = f4 - f2;
        float dotsGap = super.getDotsGap(Math.sqrt((f13 * f13) + (f14 * f14)), f11 + f12);
        if (dotsGap > f12) {
            dotsGap -= f12;
        }
        float f15 = dotsGap;
        new FixedDashedBorder(getColor(), this.width, getOpacity(), f12, f15, f12 + (f15 / 2.0f)).draw(pdfCanvas, f, f2, f3, f4, f5, f6, f7, f8, side, f9, f10);
    }

    @Override // com.itextpdf.layout.borders.Border
    public void drawCellBorder(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Border.Side side) {
        float f5 = this.width * GAP_MODIFIER;
        float f6 = this.width * DASH_MODIFIER;
        float f7 = f3 - f;
        float f8 = f4 - f2;
        float dotsGap = super.getDotsGap(Math.sqrt((f7 * f7) + (f8 * f8)), f5 + f6);
        if (dotsGap > f6) {
            dotsGap -= f6;
        }
        float f9 = dotsGap;
        new FixedDashedBorder(getColor(), this.width, getOpacity(), f6, f9, f6 + (f9 / 2.0f)).drawCellBorder(pdfCanvas, f, f2, f3, f4, side);
    }
}
