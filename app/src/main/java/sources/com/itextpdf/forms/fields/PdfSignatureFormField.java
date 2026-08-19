package com.itextpdf.forms.fields;

import com.itextpdf.forms.PdfSigFieldLock;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.annot.PdfWidgetAnnotation;

/* JADX INFO: loaded from: classes6.dex */
public class PdfSignatureFormField extends PdfFormField {
    protected PdfSignatureFormField(PdfDocument pdfDocument) {
        super(pdfDocument);
    }

    protected PdfSignatureFormField(PdfWidgetAnnotation pdfWidgetAnnotation, PdfDocument pdfDocument) {
        super(pdfWidgetAnnotation, pdfDocument);
    }

    protected PdfSignatureFormField(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.forms.fields.PdfFormField
    public PdfName getFormType() {
        return PdfName.Sig;
    }

    public PdfSignatureFormField setValue(PdfObject pdfObject) {
        return (PdfSignatureFormField) put(PdfName.f3086V, pdfObject);
    }

    public PdfSigFieldLock getSigFieldLockDictionary() {
        PdfDictionary pdfDictionary = (PdfDictionary) getPdfObject().get(PdfName.Lock);
        if (pdfDictionary == null) {
            return null;
        }
        return new PdfSigFieldLock(pdfDictionary);
    }
}
