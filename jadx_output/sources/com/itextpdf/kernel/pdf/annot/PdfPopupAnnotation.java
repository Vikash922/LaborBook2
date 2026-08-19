package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;

/* JADX INFO: loaded from: classes6.dex */
public class PdfPopupAnnotation extends PdfAnnotation {
    protected PdfAnnotation parent;

    public PdfPopupAnnotation(Rectangle rectangle) {
        super(rectangle);
    }

    protected PdfPopupAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.Popup;
    }

    public PdfDictionary getParentObject() {
        return getPdfObject().getAsDictionary(PdfName.Parent);
    }

    public PdfAnnotation getParent() {
        if (this.parent == null) {
            this.parent = makeAnnotation(getParentObject());
        }
        return this.parent;
    }

    public PdfPopupAnnotation setParent(PdfAnnotation pdfAnnotation) {
        this.parent = pdfAnnotation;
        return (PdfPopupAnnotation) put(PdfName.Parent, pdfAnnotation.getPdfObject());
    }

    public boolean getOpen() {
        return PdfBoolean.TRUE.equals(getPdfObject().getAsBoolean(PdfName.Open));
    }

    public PdfPopupAnnotation setOpen(boolean z) {
        return (PdfPopupAnnotation) put(PdfName.Open, PdfBoolean.valueOf(z));
    }
}
