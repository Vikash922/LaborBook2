package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;

/* JADX INFO: loaded from: classes6.dex */
public class PdfCircleAnnotation extends PdfMarkupAnnotation {
    public PdfCircleAnnotation(Rectangle rectangle) {
        super(rectangle);
    }

    protected PdfCircleAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.Circle;
    }

    public PdfDictionary getBorderStyle() {
        return getPdfObject().getAsDictionary(PdfName.f2978BS);
    }

    public PdfCircleAnnotation setBorderStyle(PdfDictionary pdfDictionary) {
        return (PdfCircleAnnotation) put(PdfName.f2978BS, pdfDictionary);
    }

    public PdfCircleAnnotation setBorderStyle(PdfName pdfName) {
        return setBorderStyle(BorderStyleUtil.setStyle(getBorderStyle(), pdfName));
    }

    public PdfCircleAnnotation setDashPattern(PdfArray pdfArray) {
        return setBorderStyle(BorderStyleUtil.setDashPattern(getBorderStyle(), pdfArray));
    }

    public PdfArray getRectangleDifferences() {
        return getPdfObject().getAsArray(PdfName.f3059RD);
    }

    public PdfCircleAnnotation setRectangleDifferences(PdfArray pdfArray) {
        return (PdfCircleAnnotation) put(PdfName.f3059RD, pdfArray);
    }

    public PdfDictionary getBorderEffect() {
        return getPdfObject().getAsDictionary(PdfName.f2975BE);
    }

    public PdfCircleAnnotation setBorderEffect(PdfDictionary pdfDictionary) {
        return (PdfCircleAnnotation) put(PdfName.f2975BE, pdfDictionary);
    }

    public Color getInteriorColor() {
        return InteriorColorUtil.parseInteriorColor(getPdfObject().getAsArray(PdfName.f3020IC));
    }

    public PdfCircleAnnotation setInteriorColor(PdfArray pdfArray) {
        return (PdfCircleAnnotation) put(PdfName.f3020IC, pdfArray);
    }

    public PdfCircleAnnotation setInteriorColor(float[] fArr) {
        return setInteriorColor(new PdfArray(fArr));
    }
}
