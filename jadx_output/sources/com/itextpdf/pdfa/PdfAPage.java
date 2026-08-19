package com.itextpdf.pdfa;

import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfPage;

/* JADX INFO: loaded from: classes6.dex */
class PdfAPage extends PdfPage {
    PdfAPage(PdfDocument pdfDocument, PageSize pageSize) {
        super(pdfDocument, pageSize);
    }

    PdfAPage(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.PdfPage
    public void flush(boolean z) {
        if (z || ((PdfADocument) getDocument()).isClosing() || ((PdfADocument) getDocument()).checker.objectIsChecked(getPdfObject())) {
            super.flush(z);
        } else {
            ((PdfADocument) getDocument()).logThatPdfAPageFlushingWasNotPerformed();
        }
    }
}
