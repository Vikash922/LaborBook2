package com.itextpdf.kernel.pdf.collection;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;

/* JADX INFO: loaded from: classes6.dex */
public class PdfCollectionSchema extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfCollectionSchema(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfCollectionSchema() {
        this(new PdfDictionary());
    }

    public PdfCollectionSchema addField(String str, PdfCollectionField pdfCollectionField) {
        getPdfObject().put(new PdfName(str), pdfCollectionField.getPdfObject());
        return this;
    }

    public PdfCollectionField getField(String str) {
        return new PdfCollectionField(getPdfObject().getAsDictionary(new PdfName(str)));
    }
}
