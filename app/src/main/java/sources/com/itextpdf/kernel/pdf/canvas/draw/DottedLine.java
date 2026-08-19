package com.itextpdf.kernel.pdf.canvas.draw;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;

/* JADX INFO: loaded from: classes6.dex */
public class DottedLine implements ILineDrawer {
    private Color color;
    protected float gap;
    private float lineWidth;

    public DottedLine() {
        this.gap = 4.0f;
        this.lineWidth = 1.0f;
        this.color = ColorConstants.BLACK;
    }

    public DottedLine(float f, float f2) {
        this.gap = 4.0f;
        this.lineWidth = 1.0f;
        this.color = ColorConstants.BLACK;
        this.lineWidth = f;
        this.gap = f2;
    }

    public DottedLine(float f) {
        this.gap = 4.0f;
        this.lineWidth = 1.0f;
        this.color = ColorConstants.BLACK;
        this.lineWidth = f;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.draw.ILineDrawer
    public void draw(PdfCanvas pdfCanvas, Rectangle rectangle) {
        PdfCanvas strokeColor = pdfCanvas.saveState().setLineWidth(this.lineWidth).setStrokeColor(this.color);
        float f = this.gap;
        strokeColor.setLineDash(0.0f, f, f / 2.0f).setLineCapStyle(1).moveTo(rectangle.getX(), rectangle.getY() + (this.lineWidth / 2.0f)).lineTo(rectangle.getX() + rectangle.getWidth(), rectangle.getY() + (this.lineWidth / 2.0f)).stroke().restoreState();
    }

    public float getGap() {
        return this.gap;
    }

    public void setGap(float f) {
        this.gap = f;
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
