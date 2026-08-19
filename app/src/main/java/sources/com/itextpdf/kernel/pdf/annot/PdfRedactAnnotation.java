package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.annot.p018da.AnnotationDefaultAppearance;

/* JADX INFO: loaded from: classes6.dex */
public class PdfRedactAnnotation extends PdfMarkupAnnotation {
    public PdfRedactAnnotation(Rectangle rectangle) {
        super(rectangle);
    }

    protected PdfRedactAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.Redact;
    }

    public PdfString getDefaultAppearance() {
        return getPdfObject().getAsString(PdfName.f2993DA);
    }

    public PdfRedactAnnotation setDefaultAppearance(PdfString pdfString) {
        return (PdfRedactAnnotation) put(PdfName.f2993DA, pdfString);
    }

    public PdfRedactAnnotation setDefaultAppearance(AnnotationDefaultAppearance annotationDefaultAppearance) {
        return setDefaultAppearance(annotationDefaultAppearance.toPdfString());
    }

    public PdfRedactAnnotation setOverlayText(PdfString pdfString) {
        return (PdfRedactAnnotation) put(PdfName.OverlayText, pdfString);
    }

    public PdfString getOverlayText() {
        return getPdfObject().getAsString(PdfName.OverlayText);
    }

    public PdfRedactAnnotation setRedactRolloverAppearance(PdfStream pdfStream) {
        return (PdfRedactAnnotation) put(PdfName.f3061RO, pdfStream);
    }

    public PdfStream getRedactRolloverAppearance() {
        return getPdfObject().getAsStream(PdfName.f3061RO);
    }

    public PdfRedactAnnotation setRepeat(PdfBoolean pdfBoolean) {
        return (PdfRedactAnnotation) put(PdfName.Repeat, pdfBoolean);
    }

    public PdfBoolean getRepeat() {
        return getPdfObject().getAsBoolean(PdfName.Repeat);
    }

    public PdfArray getQuadPoints() {
        return getPdfObject().getAsArray(PdfName.QuadPoints);
    }

    public PdfRedactAnnotation setQuadPoints(PdfArray pdfArray) {
        return (PdfRedactAnnotation) put(PdfName.QuadPoints, pdfArray);
    }

    public Color getInteriorColor() {
        return InteriorColorUtil.parseInteriorColor(getPdfObject().getAsArray(PdfName.f3020IC));
    }

    public PdfRedactAnnotation setInteriorColor(PdfArray pdfArray) {
        return (PdfRedactAnnotation) put(PdfName.f3020IC, pdfArray);
    }

    public PdfRedactAnnotation setInteriorColor(float[] fArr) {
        return setInteriorColor(new PdfArray(fArr));
    }

    public int getJustification() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.f3055Q);
        if (asNumber == null) {
            return 0;
        }
        return asNumber.intValue();
    }

    public PdfRedactAnnotation setJustification(int i) {
        return (PdfRedactAnnotation) put(PdfName.f3055Q, new PdfNumber(i));
    }
}
