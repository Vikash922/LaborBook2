package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.action.PdfAction;

/* JADX INFO: loaded from: classes6.dex */
public class PdfScreenAnnotation extends PdfAnnotation {
    public PdfScreenAnnotation(Rectangle rectangle) {
        super(rectangle);
    }

    protected PdfScreenAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.Screen;
    }

    public PdfDictionary getAction() {
        return getPdfObject().getAsDictionary(PdfName.f2967A);
    }

    public PdfScreenAnnotation setAction(PdfAction pdfAction) {
        return (PdfScreenAnnotation) put(PdfName.f2967A, pdfAction.getPdfObject());
    }

    public PdfDictionary getAdditionalAction() {
        return getPdfObject().getAsDictionary(PdfName.f2968AA);
    }

    public PdfScreenAnnotation setAdditionalAction(PdfName pdfName, PdfAction pdfAction) {
        PdfAction.setAdditionalAction(this, pdfName, pdfAction);
        return this;
    }

    public PdfDictionary getAppearanceCharacteristics() {
        return getPdfObject().getAsDictionary(PdfName.f3033MK);
    }

    public PdfScreenAnnotation setAppearanceCharacteristics(PdfDictionary pdfDictionary) {
        return (PdfScreenAnnotation) put(PdfName.f3033MK, pdfDictionary);
    }
}
