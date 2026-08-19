package com.itextpdf.signatures;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;

/* JADX INFO: loaded from: classes6.dex */
public class PdfSignatureApp extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfSignatureApp() {
        super(new PdfDictionary());
    }

    public PdfSignatureApp(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public void setSignatureCreator(String str) {
        getPdfObject().put(PdfName.Name, new PdfName(str));
    }
}
