package com.itextpdf.layout.borders;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.borders.Border;

/* JADX INFO: loaded from: classes6.dex */
public class DottedBorder extends Border {
    private static final float GAP_MODIFIER = 1.5f;

    @Override // com.itextpdf.layout.borders.Border
    public int getType() {
        return 2;
    }

    public DottedBorder(float f) {
        super(f);
    }

    public DottedBorder(Color color, float f) {
        super(color, f);
    }

    public DottedBorder(Color color, float f, float f2) {
        super(color, f, f2);
    }

    @Override // com.itextpdf.layout.borders.Border
    public void draw(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Border.Side side, float f5, float f6) {
        float f7 = f3 - f;
        float f8 = f4 - f2;
        float dotsGap = super.getDotsGap(Math.sqrt((f7 * f7) + (f8 * f8)), (this.width * GAP_MODIFIER) + this.width);
        if (dotsGap > this.width) {
            dotsGap -= this.width;
        }
        float[] startingPointsForBorderSide = getStartingPointsForBorderSide(f, f2, f3, f4, side);
        float f9 = startingPointsForBorderSide[0];
        float f10 = startingPointsForBorderSide[1];
        float f11 = startingPointsForBorderSide[2];
        float f12 = startingPointsForBorderSide[3];
        pdfCanvas.saveState().setLineWidth(this.width).setStrokeColor(this.transparentColor.getColor());
        this.transparentColor.applyStrokeTransparency(pdfCanvas);
        pdfCanvas.setLineDash(this.width, dotsGap, this.width + (dotsGap / 2.0f)).moveTo(f9, f10).lineTo(f11, f12).stroke().restoreState();
    }

    @Override // com.itextpdf.layout.borders.Border
    public void draw(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, Border.Side side, float f9, float f10) {
        float f11 = f3 - f;
        float f12 = f4 - f2;
        float dotsGap = super.getDotsGap(Math.sqrt((f11 * f11) + (f12 * f12)), this.width * GAP_MODIFIER);
        if (dotsGap > this.width) {
            dotsGap -= this.width;
        }
        pdfCanvas.saveState().setLineWidth(this.width).setStrokeColor(this.transparentColor.getColor());
        this.transparentColor.applyStrokeTransparency(pdfCanvas);
        pdfCanvas.setLineDash(this.width, dotsGap, this.width + (dotsGap / 2.0f));
        drawDiscontinuousBorders(pdfCanvas, new Rectangle(f, f2, f11, f12), new float[]{f5, f7}, new float[]{f6, f8}, side, f9, f10);
    }

    @Override // com.itextpdf.layout.borders.Border
    public void drawCellBorder(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Border.Side side) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        float dotsGap = super.getDotsGap(Math.sqrt((f5 * f5) + (f6 * f6)), (this.width * GAP_MODIFIER) + this.width);
        if (dotsGap > this.width) {
            dotsGap -= this.width;
        }
        pdfCanvas.saveState().setLineWidth(this.width).setStrokeColor(this.transparentColor.getColor());
        this.transparentColor.applyStrokeTransparency(pdfCanvas);
        pdfCanvas.setLineDash(this.width, dotsGap, this.width + (dotsGap / 2.0f)).moveTo(f, f2).lineTo(f3, f4).stroke().restoreState();
    }
}
