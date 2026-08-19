package com.itextpdf.forms.fields.borders;

import androidx.core.view.PointerIconCompat;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.borders.SolidBorder;

/* JADX INFO: loaded from: classes6.dex */
class InsetBorder extends AbstractFormBorder {
    @Override // com.itextpdf.layout.borders.Border
    public int getType() {
        return PointerIconCompat.TYPE_HELP;
    }

    public InsetBorder(Color color, float f) {
        super(color, f);
    }

    @Override // com.itextpdf.layout.borders.Border
    public void draw(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Border.Side side, float f5, float f6) {
        new SolidBorder(getColor(), this.width).draw(pdfCanvas, f, f2, f3, f4, side, f5, f6);
        float width = getWidth();
        float f7 = width + width;
        if (Border.Side.BOTTOM.equals(side)) {
            new SolidBorder(ColorConstants.LIGHT_GRAY, width).draw(pdfCanvas, f - width, f7, f7, f7, Border.Side.BOTTOM, width, width);
            return;
        }
        if (Border.Side.TOP.equals(side)) {
            new SolidBorder(ColorConstants.DARK_GRAY, width).draw(pdfCanvas, f7, f2 - width, f3 - width, f4 - width, Border.Side.TOP, width, width);
        } else if (Border.Side.LEFT.equals(side)) {
            new SolidBorder(ColorConstants.DARK_GRAY, width).draw(pdfCanvas, f7, f7, f7, f4 - width, Border.Side.LEFT, width, width);
        } else if (Border.Side.RIGHT.equals(side)) {
            new SolidBorder(ColorConstants.LIGHT_GRAY, width).draw(pdfCanvas, f - width, f2 - width, f3 - width, f7, Border.Side.RIGHT, width, width);
        }
    }

    @Override // com.itextpdf.layout.borders.Border
    public void drawCellBorder(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Border.Side side) {
        throw new UnsupportedOperationException();
    }
}
