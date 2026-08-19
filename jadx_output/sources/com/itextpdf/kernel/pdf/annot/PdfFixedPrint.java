package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;

/* JADX INFO: loaded from: classes6.dex */
public class PdfFixedPrint extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfFixedPrint() {
        this(new PdfDictionary());
    }

    public PdfFixedPrint(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        pdfDictionary.put(PdfName.Type, PdfName.FixedPrint);
    }

    public PdfFixedPrint setMatrix(PdfArray pdfArray) {
        getPdfObject().put(PdfName.Matrix, pdfArray);
        return this;
    }

    public PdfFixedPrint setMatrix(float[] fArr) {
        getPdfObject().put(PdfName.Matrix, new PdfArray(fArr));
        return this;
    }

    public PdfFixedPrint setHorizontalTranslation(float f) {
        getPdfObject().put(PdfName.f3011H, new PdfNumber(f));
        return this;
    }

    public PdfFixedPrint setVerticalTranslation(float f) {
        getPdfObject().put(PdfName.f3086V, new PdfNumber(f));
        return this;
    }

    public PdfArray getMatrix() {
        return getPdfObject().getAsArray(PdfName.Matrix);
    }

    public PdfNumber getHorizontalTranslation() {
        return getPdfObject().getAsNumber(PdfName.f3011H);
    }

    public PdfNumber getVerticalTranslation() {
        return getPdfObject().getAsNumber(PdfName.f3086V);
    }
}
