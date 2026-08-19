package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfString;

/* JADX INFO: loaded from: classes6.dex */
public class PdfCaretAnnotation extends PdfMarkupAnnotation {
    public PdfCaretAnnotation(Rectangle rectangle) {
        super(rectangle);
    }

    protected PdfCaretAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.Caret;
    }

    public PdfCaretAnnotation setSymbol(PdfString pdfString) {
        return (PdfCaretAnnotation) put(PdfName.f3070Sy, pdfString);
    }

    public PdfString getSymbol() {
        return getPdfObject().getAsString(PdfName.f3070Sy);
    }

    public PdfArray getRectangleDifferences() {
        return getPdfObject().getAsArray(PdfName.f3059RD);
    }

    public PdfCaretAnnotation setRectangleDifferences(PdfArray pdfArray) {
        return (PdfCaretAnnotation) put(PdfName.f3059RD, pdfArray);
    }
}
