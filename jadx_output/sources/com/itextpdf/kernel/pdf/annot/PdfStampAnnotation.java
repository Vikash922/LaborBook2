package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;

/* JADX INFO: loaded from: classes6.dex */
public class PdfStampAnnotation extends PdfMarkupAnnotation {
    public PdfStampAnnotation(Rectangle rectangle) {
        super(rectangle);
    }

    protected PdfStampAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.Stamp;
    }

    public PdfStampAnnotation setStampName(PdfName pdfName) {
        return (PdfStampAnnotation) put(PdfName.Name, pdfName);
    }

    public PdfName getStampName() {
        return getPdfObject().getAsName(PdfName.Name);
    }

    public PdfName getIconName() {
        return getPdfObject().getAsName(PdfName.Name);
    }

    public PdfStampAnnotation setIconName(PdfName pdfName) {
        return (PdfStampAnnotation) put(PdfName.Name, pdfName);
    }
}
