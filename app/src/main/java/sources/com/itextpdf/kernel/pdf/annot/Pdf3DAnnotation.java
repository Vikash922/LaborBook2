package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;

/* JADX INFO: loaded from: classes6.dex */
public class Pdf3DAnnotation extends PdfAnnotation {
    public Pdf3DAnnotation(Rectangle rectangle, PdfObject pdfObject) {
        super(rectangle);
        put(PdfName._3DD, pdfObject);
    }

    public Pdf3DAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName._3D;
    }

    public Pdf3DAnnotation setDefaultInitialView(PdfObject pdfObject) {
        return (Pdf3DAnnotation) put(PdfName._3DV, pdfObject);
    }

    public PdfObject getDefaultInitialView() {
        return getPdfObject().get(PdfName._3DV);
    }

    public Pdf3DAnnotation setActivationDictionary(PdfDictionary pdfDictionary) {
        return (Pdf3DAnnotation) put(PdfName._3DA, pdfDictionary);
    }

    public PdfDictionary getActivationDictionary() {
        return getPdfObject().getAsDictionary(PdfName._3DA);
    }

    public Pdf3DAnnotation setInteractive(boolean z) {
        return (Pdf3DAnnotation) put(PdfName._3DI, PdfBoolean.valueOf(z));
    }

    public PdfBoolean isInteractive() {
        return getPdfObject().getAsBoolean(PdfName._3DI);
    }

    public Pdf3DAnnotation setViewBox(Rectangle rectangle) {
        return (Pdf3DAnnotation) put(PdfName._3DB, new PdfArray(rectangle));
    }

    public Rectangle getViewBox() {
        return getPdfObject().getAsRectangle(PdfName._3DB);
    }
}
