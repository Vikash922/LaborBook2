package com.itextpdf.signatures;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;

/* JADX INFO: loaded from: classes6.dex */
public class PdfSignatureBuildProperties extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfSignatureBuildProperties() {
        super(new PdfDictionary());
    }

    public PdfSignatureBuildProperties(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public void setSignatureCreator(String str) {
        getPdfSignatureAppProperty().setSignatureCreator(str);
    }

    private PdfSignatureApp getPdfSignatureAppProperty() {
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.App);
        if (asDictionary == null) {
            asDictionary = new PdfDictionary();
            getPdfObject().put(PdfName.App, asDictionary);
        }
        return new PdfSignatureApp(asDictionary);
    }
}
