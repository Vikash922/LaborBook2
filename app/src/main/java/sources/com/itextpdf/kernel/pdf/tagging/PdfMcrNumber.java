package com.itextpdf.kernel.pdf.tagging;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfPage;

/* JADX INFO: loaded from: classes6.dex */
public class PdfMcrNumber extends PdfMcr {
    public PdfMcrNumber(PdfNumber pdfNumber, PdfStructElem pdfStructElem) {
        super(pdfNumber, pdfStructElem);
    }

    public PdfMcrNumber(PdfPage pdfPage, PdfStructElem pdfStructElem) {
        super(new PdfNumber(pdfPage.getNextMcid()), pdfStructElem);
    }

    @Override // com.itextpdf.kernel.pdf.tagging.PdfMcr
    public int getMcid() {
        return ((PdfNumber) getPdfObject()).intValue();
    }

    @Override // com.itextpdf.kernel.pdf.tagging.PdfMcr
    public PdfDictionary getPageObject() {
        return super.getPageObject();
    }
}
