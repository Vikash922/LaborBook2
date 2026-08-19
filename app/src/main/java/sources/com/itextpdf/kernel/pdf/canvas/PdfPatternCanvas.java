package com.itextpdf.kernel.pdf.canvas;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfResources;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import com.itextpdf.kernel.pdf.colorspace.PdfPattern;

/* JADX INFO: loaded from: classes6.dex */
public class PdfPatternCanvas extends PdfCanvas {
    private final PdfPattern.Tiling tilingPattern;

    public PdfPatternCanvas(PdfStream pdfStream, PdfResources pdfResources, PdfDocument pdfDocument) {
        super(pdfStream, pdfResources, pdfDocument);
        this.tilingPattern = new PdfPattern.Tiling(pdfStream);
    }

    public PdfPatternCanvas(PdfPattern.Tiling tiling, PdfDocument pdfDocument) {
        super((PdfStream) tiling.getPdfObject(), tiling.getResources(), pdfDocument);
        this.tilingPattern = tiling;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.PdfCanvas
    public PdfCanvas setColor(PdfColorSpace pdfColorSpace, float[] fArr, PdfPattern pdfPattern, boolean z) {
        checkNoColor();
        return super.setColor(pdfColorSpace, fArr, pdfPattern, z);
    }

    private void checkNoColor() {
        if (!this.tilingPattern.isColored()) {
            throw new PdfException(KernelExceptionMessageConstant.f2914x8df3b63e);
        }
    }
}
