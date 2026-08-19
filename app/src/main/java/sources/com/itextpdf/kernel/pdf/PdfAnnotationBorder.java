package com.itextpdf.kernel.pdf;

/* JADX INFO: loaded from: classes6.dex */
public class PdfAnnotationBorder extends PdfObjectWrapper<PdfArray> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfAnnotationBorder(float f, float f2, float f3) {
        this(f, f2, f3, null);
    }

    public PdfAnnotationBorder(float f, float f2, float f3, PdfDashPattern pdfDashPattern) {
        super(new PdfArray(new float[]{f, f2, f3}));
        if (pdfDashPattern != null) {
            PdfArray pdfArray = new PdfArray();
            getPdfObject().add(pdfArray);
            if (pdfDashPattern.getDash() >= 0.0f) {
                pdfArray.add(new PdfNumber(pdfDashPattern.getDash()));
            }
            if (pdfDashPattern.getGap() >= 0.0f) {
                pdfArray.add(new PdfNumber(pdfDashPattern.getGap()));
            }
            if (pdfDashPattern.getPhase() >= 0.0f) {
                getPdfObject().add(new PdfNumber(pdfDashPattern.getPhase()));
            }
        }
    }
}
