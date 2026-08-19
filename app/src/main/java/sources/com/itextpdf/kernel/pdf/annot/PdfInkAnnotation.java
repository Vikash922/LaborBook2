package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;

/* JADX INFO: loaded from: classes6.dex */
public class PdfInkAnnotation extends PdfMarkupAnnotation {
    public PdfInkAnnotation(Rectangle rectangle) {
        super(rectangle);
    }

    public PdfInkAnnotation(Rectangle rectangle, PdfArray pdfArray) {
        this(rectangle);
        put(PdfName.InkList, pdfArray);
    }

    protected PdfInkAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.Ink;
    }

    public PdfDictionary getBorderStyle() {
        return getPdfObject().getAsDictionary(PdfName.f2978BS);
    }

    public PdfInkAnnotation setBorderStyle(PdfDictionary pdfDictionary) {
        return (PdfInkAnnotation) put(PdfName.f2978BS, pdfDictionary);
    }

    public PdfInkAnnotation setBorderStyle(PdfName pdfName) {
        return setBorderStyle(BorderStyleUtil.setStyle(getBorderStyle(), pdfName));
    }

    public PdfInkAnnotation setDashPattern(PdfArray pdfArray) {
        return setBorderStyle(BorderStyleUtil.setDashPattern(getBorderStyle(), pdfArray));
    }
}
