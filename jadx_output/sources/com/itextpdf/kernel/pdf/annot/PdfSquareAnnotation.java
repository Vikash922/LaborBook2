package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;

/* JADX INFO: loaded from: classes6.dex */
public class PdfSquareAnnotation extends PdfMarkupAnnotation {
    public PdfSquareAnnotation(Rectangle rectangle) {
        super(rectangle);
    }

    protected PdfSquareAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.Square;
    }

    public PdfDictionary getBorderStyle() {
        return getPdfObject().getAsDictionary(PdfName.f2978BS);
    }

    public PdfSquareAnnotation setBorderStyle(PdfDictionary pdfDictionary) {
        return (PdfSquareAnnotation) put(PdfName.f2978BS, pdfDictionary);
    }

    public PdfSquareAnnotation setBorderStyle(PdfName pdfName) {
        return setBorderStyle(BorderStyleUtil.setStyle(getBorderStyle(), pdfName));
    }

    public PdfSquareAnnotation setDashPattern(PdfArray pdfArray) {
        return setBorderStyle(BorderStyleUtil.setDashPattern(getBorderStyle(), pdfArray));
    }

    public PdfArray getRectangleDifferences() {
        return getPdfObject().getAsArray(PdfName.f3059RD);
    }

    public PdfSquareAnnotation setRectangleDifferences(PdfArray pdfArray) {
        return (PdfSquareAnnotation) put(PdfName.f3059RD, pdfArray);
    }

    public PdfDictionary getBorderEffect() {
        return getPdfObject().getAsDictionary(PdfName.f2975BE);
    }

    public PdfSquareAnnotation setBorderEffect(PdfDictionary pdfDictionary) {
        return (PdfSquareAnnotation) put(PdfName.f2975BE, pdfDictionary);
    }

    public Color getInteriorColor() {
        return InteriorColorUtil.parseInteriorColor(getPdfObject().getAsArray(PdfName.f3020IC));
    }

    public PdfSquareAnnotation setInteriorColor(PdfArray pdfArray) {
        return (PdfSquareAnnotation) put(PdfName.f3020IC, pdfArray);
    }

    public PdfSquareAnnotation setInteriorColor(float[] fArr) {
        return setInteriorColor(new PdfArray(fArr));
    }
}
