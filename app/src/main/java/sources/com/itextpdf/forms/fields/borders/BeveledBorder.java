package com.itextpdf.forms.fields.borders;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.colors.DeviceCmyk;
import com.itextpdf.kernel.colors.DeviceGray;
import com.itextpdf.kernel.colors.DeviceRgb;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.borders.SolidBorder;

/* JADX INFO: loaded from: classes6.dex */
class BeveledBorder extends AbstractFormBorder {
    private final Color backgroundColor;

    @Override // com.itextpdf.layout.borders.Border
    public int getType() {
        return 1002;
    }

    public BeveledBorder(Color color, float f, Color color2) {
        super(color, f);
        this.backgroundColor = color2;
    }

    @Override // com.itextpdf.layout.borders.Border
    public void draw(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Border.Side side, float f5, float f6) {
        new SolidBorder(getColor(), this.width).draw(pdfCanvas, f, f2, f3, f4, side, f5, f6);
        float width = getWidth();
        float f7 = width + width;
        Color color = this.backgroundColor;
        Color darkerColor = color != null ? getDarkerColor(color) : ColorConstants.LIGHT_GRAY;
        if (Border.Side.TOP.equals(side)) {
            new SolidBorder(ColorConstants.WHITE, width).draw(pdfCanvas, f7, f2 - width, f3 - width, f4 - width, Border.Side.TOP, width, width);
            return;
        }
        if (Border.Side.BOTTOM.equals(side)) {
            new SolidBorder(darkerColor, width).draw(pdfCanvas, f - width, f7, f7, f7, Border.Side.BOTTOM, width, width);
        } else if (Border.Side.LEFT.equals(side)) {
            new SolidBorder(ColorConstants.WHITE, width).draw(pdfCanvas, f7, f7, f7, f4 - width, Border.Side.LEFT, width, width);
        } else if (Border.Side.RIGHT.equals(side)) {
            new SolidBorder(darkerColor, width).draw(pdfCanvas, f - width, f2 - width, f3 - width, f7, Border.Side.RIGHT, width, width);
        }
    }

    @Override // com.itextpdf.layout.borders.Border
    public void drawCellBorder(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Border.Side side) {
        throw new UnsupportedOperationException();
    }

    private Color getDarkerColor(Color color) {
        if (color instanceof DeviceRgb) {
            return DeviceRgb.makeDarker((DeviceRgb) color);
        }
        if (color instanceof DeviceCmyk) {
            return DeviceCmyk.makeDarker((DeviceCmyk) color);
        }
        return color instanceof DeviceGray ? DeviceGray.makeDarker((DeviceGray) color) : color;
    }
}
