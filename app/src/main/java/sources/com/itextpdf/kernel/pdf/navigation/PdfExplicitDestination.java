package com.itextpdf.kernel.pdf.navigation;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfPage;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class PdfExplicitDestination extends PdfDestination {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfExplicitDestination() {
        this(new PdfArray());
    }

    public PdfExplicitDestination(PdfArray pdfArray) {
        super(pdfArray);
    }

    @Override // com.itextpdf.kernel.pdf.navigation.PdfDestination
    public PdfObject getDestinationPage(Map<String, PdfObject> map) {
        return ((PdfArray) getPdfObject()).get(0);
    }

    public static PdfExplicitDestination createXYZ(PdfPage pdfPage, float f, float f2, float f3) {
        return create(pdfPage, PdfName.XYZ, f, Float.NaN, Float.NaN, f2, f3);
    }

    public static PdfExplicitDestination createFit(PdfPage pdfPage) {
        return create(pdfPage, PdfName.Fit, Float.NaN, Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    public static PdfExplicitDestination createFitH(PdfPage pdfPage, float f) {
        return create(pdfPage, PdfName.FitH, Float.NaN, Float.NaN, Float.NaN, f, Float.NaN);
    }

    public static PdfExplicitDestination createFitV(PdfPage pdfPage, float f) {
        return create(pdfPage, PdfName.FitV, f, Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    public static PdfExplicitDestination createFitR(PdfPage pdfPage, float f, float f2, float f3, float f4) {
        return create(pdfPage, PdfName.FitR, f, f2, f3, f4, Float.NaN);
    }

    public static PdfExplicitDestination createFitB(PdfPage pdfPage) {
        return create(pdfPage, PdfName.FitB, Float.NaN, Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    public static PdfExplicitDestination createFitBH(PdfPage pdfPage, float f) {
        return create(pdfPage, PdfName.FitBH, Float.NaN, Float.NaN, Float.NaN, f, Float.NaN);
    }

    public static PdfExplicitDestination createFitBV(PdfPage pdfPage, float f) {
        return create(pdfPage, PdfName.FitBV, f, Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    public static PdfExplicitDestination create(PdfPage pdfPage, PdfName pdfName, float f, float f2, float f3, float f4, float f5) {
        return new PdfExplicitDestination().add(pdfPage).add(pdfName).add(f).add(f2).add(f3).add(f4).add(f5);
    }

    private PdfExplicitDestination add(float f) {
        if (!Float.isNaN(f)) {
            ((PdfArray) getPdfObject()).add(new PdfNumber(f));
        }
        return this;
    }

    private PdfExplicitDestination add(int i) {
        ((PdfArray) getPdfObject()).add(new PdfNumber(i));
        return this;
    }

    private PdfExplicitDestination add(PdfPage pdfPage) {
        ((PdfArray) getPdfObject()).add(pdfPage.getPdfObject().getIndirectReference());
        return this;
    }

    private PdfExplicitDestination add(PdfName pdfName) {
        ((PdfArray) getPdfObject()).add(pdfName);
        return this;
    }
}
