package com.itextpdf.pdfa;

import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.pdf.IPdfPageFactory;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfPage;

/* JADX INFO: loaded from: classes6.dex */
class PdfAPageFactory implements IPdfPageFactory {
    PdfAPageFactory() {
    }

    @Override // com.itextpdf.kernel.pdf.IPdfPageFactory
    public PdfPage createPdfPage(PdfDictionary pdfDictionary) {
        return new PdfAPage(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.IPdfPageFactory
    public PdfPage createPdfPage(PdfDocument pdfDocument, PageSize pageSize) {
        return new PdfAPage(pdfDocument, pageSize);
    }
}
