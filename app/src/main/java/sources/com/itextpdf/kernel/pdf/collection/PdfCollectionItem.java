package com.itextpdf.kernel.pdf.collection;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfDate;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfString;

/* JADX INFO: loaded from: classes6.dex */
public class PdfCollectionItem extends PdfObjectWrapper<PdfDictionary> {
    private PdfCollectionSchema schema;

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfCollectionItem(PdfCollectionSchema pdfCollectionSchema) {
        super(new PdfDictionary());
        this.schema = pdfCollectionSchema;
    }

    public PdfCollectionItem addItem(String str, String str2) {
        getPdfObject().put(new PdfName(str), this.schema.getField(str).getValue(str2));
        return this;
    }

    public void addItem(String str, PdfDate pdfDate) {
        if (this.schema.getField(str).subType == 1) {
            getPdfObject().put(new PdfName(str), pdfDate.getPdfObject());
        }
    }

    public void addItem(String str, PdfNumber pdfNumber) {
        if (this.schema.getField(str).subType == 2) {
            getPdfObject().put(new PdfName(str), pdfNumber);
        }
    }

    public PdfCollectionItem setPrefix(String str, String str2) {
        PdfName pdfName = new PdfName(str);
        PdfObject pdfObject = getPdfObject().get(pdfName);
        if (pdfObject == null) {
            throw new PdfException(KernelExceptionMessageConstant.YOU_MUST_SET_A_VALUE_BEFORE_ADDING_A_PREFIX);
        }
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.f2992D, pdfObject);
        pdfDictionary.put(PdfName.f3047P, new PdfString(str2));
        getPdfObject().put(pdfName, pdfDictionary);
        return this;
    }
}
