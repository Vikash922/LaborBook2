package com.itextpdf.layout.borders;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.borders.Border;

/* JADX INFO: loaded from: classes6.dex */
public class FixedDashedBorder extends Border {
    public static final float DEFAULT_UNITS_VALUE = 3.0f;
    private final float phase;
    private final float unitsOff;
    private final float unitsOn;

    @Override // com.itextpdf.layout.borders.Border
    public int getType() {
        return 9;
    }

    public FixedDashedBorder(float f) {
        this(ColorConstants.BLACK, f);
    }

    public FixedDashedBorder(Color color, float f) {
        this(color, f, 1.0f);
    }

    public FixedDashedBorder(Color color, float f, float f2) {
        this(color, f, f2, 3.0f, 3.0f, 0.0f);
    }

    public FixedDashedBorder(Color color, float f, float f2, float f3, float f4) {
        this(color, f, 1.0f, f2, f3, f4);
    }

    public FixedDashedBorder(Color color, float f, float f2, float f3, float f4, float f5) {
        super(color, f, f2);
        this.unitsOn = f3;
        this.unitsOff = f4;
        this.phase = f5;
    }

    @Override // com.itextpdf.layout.borders.Border
    public void draw(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Border.Side side, float f5, float f6) {
        float[] startingPointsForBorderSide = getStartingPointsForBorderSide(f, f2, f3, f4, side);
        float f7 = startingPointsForBorderSide[0];
        float f8 = startingPointsForBorderSide[1];
        float f9 = startingPointsForBorderSide[2];
        float f10 = startingPointsForBorderSide[3];
        pdfCanvas.saveState().setLineWidth(this.width).setStrokeColor(this.transparentColor.getColor());
        this.transparentColor.applyStrokeTransparency(pdfCanvas);
        pdfCanvas.setLineDash(this.unitsOn, this.unitsOff, this.phase).moveTo(f7, f8).lineTo(f9, f10).stroke().restoreState();
    }

    @Override // com.itextpdf.layout.borders.Border
    public void draw(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, Border.Side side, float f9, float f10) {
        pdfCanvas.saveState().setLineWidth(this.width).setStrokeColor(this.transparentColor.getColor());
        this.transparentColor.applyStrokeTransparency(pdfCanvas);
        pdfCanvas.setLineDash(this.unitsOn, this.unitsOff, this.phase);
        drawDiscontinuousBorders(pdfCanvas, new Rectangle(f, f2, f3 - f, f4 - f2), new float[]{f5, f7}, new float[]{f6, f8}, side, f9, f10);
    }

    @Override // com.itextpdf.layout.borders.Border
    public void drawCellBorder(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Border.Side side) {
        pdfCanvas.saveState().setStrokeColor(this.transparentColor.getColor());
        this.transparentColor.applyStrokeTransparency(pdfCanvas);
        pdfCanvas.setLineDash(this.unitsOn, this.unitsOff, this.phase).setLineWidth(this.width).moveTo(f, f2).lineTo(f3, f4).stroke().restoreState();
    }
}
