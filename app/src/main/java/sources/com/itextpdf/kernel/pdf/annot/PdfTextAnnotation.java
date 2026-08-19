package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfString;

/* JADX INFO: loaded from: classes6.dex */
public class PdfTextAnnotation extends PdfMarkupAnnotation {
    public PdfTextAnnotation(Rectangle rectangle) {
        super(rectangle);
    }

    protected PdfTextAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.Text;
    }

    public PdfString getState() {
        return getPdfObject().getAsString(PdfName.State);
    }

    public PdfTextAnnotation setState(PdfString pdfString) {
        return (PdfTextAnnotation) put(PdfName.State, pdfString);
    }

    public PdfString getStateModel() {
        return getPdfObject().getAsString(PdfName.StateModel);
    }

    public PdfTextAnnotation setStateModel(PdfString pdfString) {
        return (PdfTextAnnotation) put(PdfName.StateModel, pdfString);
    }

    public boolean getOpen() {
        return PdfBoolean.TRUE.equals(getPdfObject().getAsBoolean(PdfName.Open));
    }

    public PdfTextAnnotation setOpen(boolean z) {
        return (PdfTextAnnotation) put(PdfName.Open, PdfBoolean.valueOf(z));
    }

    public PdfName getIconName() {
        return getPdfObject().getAsName(PdfName.Name);
    }

    public PdfTextAnnotation setIconName(PdfName pdfName) {
        return (PdfTextAnnotation) put(PdfName.Name, pdfName);
    }
}
