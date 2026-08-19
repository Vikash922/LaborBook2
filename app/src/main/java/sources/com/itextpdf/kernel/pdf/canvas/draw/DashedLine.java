package com.itextpdf.kernel.pdf.canvas.draw;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;

/* JADX INFO: loaded from: classes6.dex */
public class DashedLine implements ILineDrawer {
    private Color color;
    private float lineWidth;

    public DashedLine() {
        this.lineWidth = 1.0f;
        this.color = ColorConstants.BLACK;
    }

    public DashedLine(float f) {
        this.lineWidth = 1.0f;
        this.color = ColorConstants.BLACK;
        this.lineWidth = f;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.draw.ILineDrawer
    public void draw(PdfCanvas pdfCanvas, Rectangle rectangle) {
        pdfCanvas.saveState().setLineWidth(this.lineWidth).setStrokeColor(this.color).setLineDash(2.0f, 2.0f).moveTo(rectangle.getX(), rectangle.getY() + (this.lineWidth / 2.0f)).lineTo(rectangle.getX() + rectangle.getWidth(), rectangle.getY() + (this.lineWidth / 2.0f)).stroke().restoreState();
    }

    @Override // com.itextpdf.kernel.pdf.canvas.draw.ILineDrawer
    public float getLineWidth() {
        return this.lineWidth;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.draw.ILineDrawer
    public void setLineWidth(float f) {
        this.lineWidth = f;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.draw.ILineDrawer
    public Color getColor() {
        return this.color;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.draw.ILineDrawer
    public void setColor(Color color) {
        this.color = color;
    }
}
