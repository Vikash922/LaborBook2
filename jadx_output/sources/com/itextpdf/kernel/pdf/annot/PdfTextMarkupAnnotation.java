package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;

/* JADX INFO: loaded from: classes6.dex */
public class PdfTextMarkupAnnotation extends PdfMarkupAnnotation {
    public static final PdfName MarkupHighlight = PdfName.Highlight;
    public static final PdfName MarkupUnderline = PdfName.Underline;
    public static final PdfName MarkupStrikeout = PdfName.StrikeOut;
    public static final PdfName MarkupSquiggly = PdfName.Squiggly;

    public PdfTextMarkupAnnotation(Rectangle rectangle, PdfName pdfName, float[] fArr) {
        super(rectangle);
        put(PdfName.Subtype, pdfName);
        setQuadPoints(new PdfArray(fArr));
    }

    protected PdfTextMarkupAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public static PdfTextMarkupAnnotation createHighLight(Rectangle rectangle, float[] fArr) {
        return new PdfTextMarkupAnnotation(rectangle, MarkupHighlight, fArr);
    }

    public static PdfTextMarkupAnnotation createUnderline(Rectangle rectangle, float[] fArr) {
        return new PdfTextMarkupAnnotation(rectangle, MarkupUnderline, fArr);
    }

    public static PdfTextMarkupAnnotation createStrikeout(Rectangle rectangle, float[] fArr) {
        return new PdfTextMarkupAnnotation(rectangle, MarkupStrikeout, fArr);
    }

    public static PdfTextMarkupAnnotation createSquiggly(Rectangle rectangle, float[] fArr) {
        return new PdfTextMarkupAnnotation(rectangle, MarkupSquiggly, fArr);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        PdfName asName = getPdfObject().getAsName(PdfName.Subtype);
        return asName == null ? PdfName.Underline : asName;
    }

    public PdfArray getQuadPoints() {
        return getPdfObject().getAsArray(PdfName.QuadPoints);
    }

    public PdfTextMarkupAnnotation setQuadPoints(PdfArray pdfArray) {
        return (PdfTextMarkupAnnotation) put(PdfName.QuadPoints, pdfArray);
    }
}
