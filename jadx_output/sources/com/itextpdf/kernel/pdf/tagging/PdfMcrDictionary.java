package com.itextpdf.kernel.pdf.tagging;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfPage;

/* JADX INFO: loaded from: classes6.dex */
public class PdfMcrDictionary extends PdfMcr {
    public PdfMcrDictionary(PdfDictionary pdfDictionary, PdfStructElem pdfStructElem) {
        super(pdfDictionary, pdfStructElem);
    }

    public PdfMcrDictionary(PdfPage pdfPage, PdfStructElem pdfStructElem) {
        super(new PdfDictionary(), pdfStructElem);
        PdfDictionary pdfDictionary = (PdfDictionary) getPdfObject();
        pdfDictionary.put(PdfName.Type, PdfName.MCR);
        pdfDictionary.put(PdfName.f3054Pg, pdfPage.getPdfObject().getIndirectReference());
        pdfDictionary.put(PdfName.MCID, new PdfNumber(pdfPage.getNextMcid()));
    }

    @Override // com.itextpdf.kernel.pdf.tagging.PdfMcr
    public int getMcid() {
        PdfNumber asNumber = ((PdfDictionary) getPdfObject()).getAsNumber(PdfName.MCID);
        if (asNumber != null) {
            return asNumber.intValue();
        }
        return -1;
    }

    @Override // com.itextpdf.kernel.pdf.tagging.PdfMcr
    public PdfDictionary getPageObject() {
        return super.getPageObject();
    }
}
