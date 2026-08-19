package com.itextpdf.kernel.pdf.action;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfString;

/* JADX INFO: loaded from: classes6.dex */
public class PdfWin extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfWin(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfWin(PdfString pdfString) {
        this(new PdfDictionary());
        getPdfObject().put(PdfName.f3004F, pdfString);
    }

    public PdfWin(PdfString pdfString, PdfString pdfString2, PdfString pdfString3, PdfString pdfString4) {
        this(new PdfDictionary());
        getPdfObject().put(PdfName.f3004F, pdfString);
        getPdfObject().put(PdfName.f2992D, pdfString2);
        getPdfObject().put(PdfName.f3041O, pdfString3);
        getPdfObject().put(PdfName.f3047P, pdfString4);
    }
}
