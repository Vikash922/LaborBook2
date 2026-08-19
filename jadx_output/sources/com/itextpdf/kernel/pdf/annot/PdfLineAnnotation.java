package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;

/* JADX INFO: loaded from: classes6.dex */
public class PdfLineAnnotation extends PdfMarkupAnnotation {
    public PdfLineAnnotation(Rectangle rectangle, float[] fArr) {
        super(rectangle);
        put(PdfName.f3025L, new PdfArray(fArr));
    }

    protected PdfLineAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.Line;
    }

    public PdfArray getLine() {
        return getPdfObject().getAsArray(PdfName.f3025L);
    }

    public PdfDictionary getBorderStyle() {
        return getPdfObject().getAsDictionary(PdfName.f2978BS);
    }

    public PdfLineAnnotation setBorderStyle(PdfDictionary pdfDictionary) {
        return (PdfLineAnnotation) put(PdfName.f2978BS, pdfDictionary);
    }

    public PdfLineAnnotation setBorderStyle(PdfName pdfName) {
        return setBorderStyle(BorderStyleUtil.setStyle(getBorderStyle(), pdfName));
    }

    public PdfLineAnnotation setDashPattern(PdfArray pdfArray) {
        return setBorderStyle(BorderStyleUtil.setDashPattern(getBorderStyle(), pdfArray));
    }

    public PdfArray getLineEndingStyles() {
        return getPdfObject().getAsArray(PdfName.f3027LE);
    }

    public PdfLineAnnotation setLineEndingStyles(PdfArray pdfArray) {
        return (PdfLineAnnotation) put(PdfName.f3027LE, pdfArray);
    }

    public Color getInteriorColor() {
        return InteriorColorUtil.parseInteriorColor(getPdfObject().getAsArray(PdfName.f3020IC));
    }

    public PdfLineAnnotation setInteriorColor(PdfArray pdfArray) {
        return (PdfLineAnnotation) put(PdfName.f3020IC, pdfArray);
    }

    public PdfLineAnnotation setInteriorColor(float[] fArr) {
        return setInteriorColor(new PdfArray(fArr));
    }

    public float getLeaderLineLength() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.f3030LL);
        if (asNumber == null) {
            return 0.0f;
        }
        return asNumber.floatValue();
    }

    public PdfLineAnnotation setLeaderLineLength(float f) {
        return (PdfLineAnnotation) put(PdfName.f3030LL, new PdfNumber(f));
    }

    public float getLeaderLineExtension() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.LLE);
        if (asNumber == null) {
            return 0.0f;
        }
        return asNumber.floatValue();
    }

    public PdfLineAnnotation setLeaderLineExtension(float f) {
        return (PdfLineAnnotation) put(PdfName.LLE, new PdfNumber(f));
    }

    public float getLeaderLineOffset() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.LLO);
        if (asNumber == null) {
            return 0.0f;
        }
        return asNumber.floatValue();
    }

    public PdfLineAnnotation setLeaderLineOffset(float f) {
        return (PdfLineAnnotation) put(PdfName.LLO, new PdfNumber(f));
    }

    public boolean getContentsAsCaption() {
        PdfBoolean asBoolean = getPdfObject().getAsBoolean(PdfName.Cap);
        return asBoolean != null && asBoolean.getValue();
    }

    public PdfLineAnnotation setContentsAsCaption(boolean z) {
        return (PdfLineAnnotation) put(PdfName.Cap, PdfBoolean.valueOf(z));
    }

    public PdfName getCaptionPosition() {
        return getPdfObject().getAsName(PdfName.f2988CP);
    }

    public PdfLineAnnotation setCaptionPosition(PdfName pdfName) {
        return (PdfLineAnnotation) put(PdfName.f2988CP, pdfName);
    }

    public PdfDictionary getMeasure() {
        return getPdfObject().getAsDictionary(PdfName.Measure);
    }

    public PdfLineAnnotation setMeasure(PdfDictionary pdfDictionary) {
        return (PdfLineAnnotation) put(PdfName.Measure, pdfDictionary);
    }

    public PdfArray getCaptionOffset() {
        return getPdfObject().getAsArray(PdfName.f2987CO);
    }

    public PdfLineAnnotation setCaptionOffset(PdfArray pdfArray) {
        return (PdfLineAnnotation) put(PdfName.f2987CO, pdfArray);
    }

    public PdfLineAnnotation setCaptionOffset(float[] fArr) {
        return setCaptionOffset(new PdfArray(fArr));
    }
}
