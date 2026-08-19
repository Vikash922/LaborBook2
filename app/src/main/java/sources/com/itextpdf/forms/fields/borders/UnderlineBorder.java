package com.itextpdf.forms.fields.borders;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.borders.SolidBorder;

/* JADX INFO: loaded from: classes6.dex */
class UnderlineBorder extends AbstractFormBorder {
    @Override // com.itextpdf.layout.borders.Border
    public int getType() {
        return 1001;
    }

    public UnderlineBorder(Color color, float f) {
        super(color, f);
    }

    @Override // com.itextpdf.layout.borders.Border
    public void draw(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Border.Side side, float f5, float f6) {
        float f7;
        float f8;
        if (Border.Side.BOTTOM.equals(side)) {
            if (f < f3) {
                f7 = f - this.width;
                f8 = this.width + f3;
            } else {
                f7 = this.width + f;
                f8 = f3 - this.width;
            }
            new SolidBorder(getColor(), this.width).draw(pdfCanvas, f7, f2, f8, f4, side, 0.0f, 0.0f);
        }
    }

    @Override // com.itextpdf.layout.borders.Border
    public void drawCellBorder(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Border.Side side) {
        throw new UnsupportedOperationException();
    }
}
