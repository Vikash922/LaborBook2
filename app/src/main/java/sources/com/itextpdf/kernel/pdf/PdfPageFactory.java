package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.geom.PageSize;

/* JADX INFO: loaded from: classes6.dex */
class PdfPageFactory implements IPdfPageFactory {
    PdfPageFactory() {
    }

    @Override // com.itextpdf.kernel.pdf.IPdfPageFactory
    public PdfPage createPdfPage(PdfDictionary pdfDictionary) {
        return new PdfPage(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.IPdfPageFactory
    public PdfPage createPdfPage(PdfDocument pdfDocument, PageSize pageSize) {
        return new PdfPage(pdfDocument, pageSize);
    }
}
