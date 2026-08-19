package com.itextpdf.barcodes;

import com.itextpdf.barcodes.exceptions.BarcodeExceptionMessageConstant;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import java.awt.Image;

/* JADX INFO: loaded from: classes6.dex */
public class BarcodeEANSUPP extends Barcode1D {
    protected Barcode1D ean;
    protected Barcode1D supp;

    public BarcodeEANSUPP(Barcode1D barcode1D, Barcode1D barcode1D2) {
        super(barcode1D.document);
        this.f2833n = 8.0f;
        this.ean = barcode1D;
        this.supp = barcode1D2;
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Rectangle getBarcodeSize() {
        Rectangle barcodeSize = this.ean.getBarcodeSize();
        barcodeSize.setWidth(barcodeSize.getWidth() + this.supp.getBarcodeSize().getWidth() + this.f2833n);
        return barcodeSize;
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Rectangle placeBarcode(PdfCanvas pdfCanvas, Color color, Color color2) {
        if (this.supp.getFont() != null) {
            this.supp.setBarHeight((this.ean.getBarHeight() + this.supp.getBaseline()) - (this.supp.getFont().getFontProgram().getFontMetrics().getCapHeight() * (this.supp.getSize() / 1000.0f)));
        } else {
            this.supp.setBarHeight(this.ean.getBarHeight());
        }
        Rectangle barcodeSize = this.ean.getBarcodeSize();
        pdfCanvas.saveState();
        this.ean.placeBarcode(pdfCanvas, color, color2);
        pdfCanvas.restoreState();
        pdfCanvas.saveState();
        pdfCanvas.concatMatrix(1.0d, 0.0d, 0.0d, 1.0d, barcodeSize.getWidth() + this.f2833n, barcodeSize.getHeight() - this.ean.getBarHeight());
        this.supp.placeBarcode(pdfCanvas, color, color2);
        pdfCanvas.restoreState();
        return getBarcodeSize();
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Image createAwtImage(java.awt.Color color, java.awt.Color color2) {
        throw new UnsupportedOperationException(BarcodeExceptionMessageConstant.TWO_BARCODE_MUST_BE_EXTERNALLY);
    }
}
