package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.annot.p018da.AnnotationDefaultAppearance;

/* JADX INFO: loaded from: classes6.dex */
public class PdfFreeTextAnnotation extends PdfMarkupAnnotation {
    public static final int CENTERED = 1;
    public static final int LEFT_JUSTIFIED = 0;
    public static final int RIGHT_JUSTIFIED = 2;

    public PdfFreeTextAnnotation(Rectangle rectangle, PdfString pdfString) {
        super(rectangle);
        setContents(pdfString);
    }

    protected PdfFreeTextAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.FreeText;
    }

    public PdfString getDefaultStyleString() {
        return getPdfObject().getAsString(PdfName.f2996DS);
    }

    public PdfFreeTextAnnotation setDefaultStyleString(PdfString pdfString) {
        return (PdfFreeTextAnnotation) put(PdfName.f2996DS, pdfString);
    }

    public PdfString getDefaultAppearance() {
        return getPdfObject().getAsString(PdfName.f2993DA);
    }

    public PdfFreeTextAnnotation setDefaultAppearance(PdfString pdfString) {
        return (PdfFreeTextAnnotation) put(PdfName.f2993DA, pdfString);
    }

    public PdfFreeTextAnnotation setDefaultAppearance(AnnotationDefaultAppearance annotationDefaultAppearance) {
        return setDefaultAppearance(annotationDefaultAppearance.toPdfString());
    }

    public PdfArray getCalloutLine() {
        return getPdfObject().getAsArray(PdfName.f2986CL);
    }

    public PdfFreeTextAnnotation setCalloutLine(float[] fArr) {
        return setCalloutLine(new PdfArray(fArr));
    }

    public PdfFreeTextAnnotation setCalloutLine(PdfArray pdfArray) {
        return (PdfFreeTextAnnotation) put(PdfName.f2986CL, pdfArray);
    }

    public PdfName getLineEndingStyle() {
        return getPdfObject().getAsName(PdfName.f3027LE);
    }

    public PdfFreeTextAnnotation setLineEndingStyle(PdfName pdfName) {
        return (PdfFreeTextAnnotation) put(PdfName.f3027LE, pdfName);
    }

    public int getJustification() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.f3055Q);
        if (asNumber == null) {
            return 0;
        }
        return asNumber.intValue();
    }

    public PdfFreeTextAnnotation setJustification(int i) {
        return (PdfFreeTextAnnotation) put(PdfName.f3055Q, new PdfNumber(i));
    }

    public PdfDictionary getBorderStyle() {
        return getPdfObject().getAsDictionary(PdfName.f2978BS);
    }

    public PdfFreeTextAnnotation setBorderStyle(PdfDictionary pdfDictionary) {
        return (PdfFreeTextAnnotation) put(PdfName.f2978BS, pdfDictionary);
    }

    public PdfFreeTextAnnotation setBorderStyle(PdfName pdfName) {
        return setBorderStyle(BorderStyleUtil.setStyle(getBorderStyle(), pdfName));
    }

    public PdfFreeTextAnnotation setDashPattern(PdfArray pdfArray) {
        return setBorderStyle(BorderStyleUtil.setDashPattern(getBorderStyle(), pdfArray));
    }

    public PdfArray getRectangleDifferences() {
        return getPdfObject().getAsArray(PdfName.f3059RD);
    }

    public PdfFreeTextAnnotation setRectangleDifferences(PdfArray pdfArray) {
        return (PdfFreeTextAnnotation) put(PdfName.f3059RD, pdfArray);
    }

    public PdfDictionary getBorderEffect() {
        return getPdfObject().getAsDictionary(PdfName.f2975BE);
    }

    public PdfFreeTextAnnotation setBorderEffect(PdfDictionary pdfDictionary) {
        return (PdfFreeTextAnnotation) put(PdfName.f2975BE, pdfDictionary);
    }
}
