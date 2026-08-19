package com.itextpdf.kernel.pdf.navigation;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class PdfExplicitRemoteGoToDestination extends PdfDestination {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfExplicitRemoteGoToDestination() {
        this(new PdfArray());
    }

    public PdfExplicitRemoteGoToDestination(PdfArray pdfArray) {
        super(pdfArray);
    }

    @Override // com.itextpdf.kernel.pdf.navigation.PdfDestination
    public PdfObject getDestinationPage(Map<String, PdfObject> map) {
        return ((PdfArray) getPdfObject()).get(0);
    }

    public static PdfExplicitRemoteGoToDestination createXYZ(int i, float f, float f2, float f3) {
        return create(i, PdfName.XYZ, f, Float.NaN, Float.NaN, f2, f3);
    }

    public static PdfExplicitRemoteGoToDestination createFit(int i) {
        return create(i, PdfName.Fit, Float.NaN, Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    public static PdfExplicitRemoteGoToDestination createFitH(int i, float f) {
        return create(i, PdfName.FitH, Float.NaN, Float.NaN, Float.NaN, f, Float.NaN);
    }

    public static PdfExplicitRemoteGoToDestination createFitV(int i, float f) {
        return create(i, PdfName.FitV, f, Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    public static PdfExplicitRemoteGoToDestination createFitR(int i, float f, float f2, float f3, float f4) {
        return create(i, PdfName.FitR, f, f2, f3, f4, Float.NaN);
    }

    public static PdfExplicitRemoteGoToDestination createFitB(int i) {
        return create(i, PdfName.FitB, Float.NaN, Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    public static PdfExplicitRemoteGoToDestination createFitBH(int i, float f) {
        return create(i, PdfName.FitBH, Float.NaN, Float.NaN, Float.NaN, f, Float.NaN);
    }

    public static PdfExplicitRemoteGoToDestination createFitBV(int i, float f) {
        return create(i, PdfName.FitBH, f, Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    public static PdfExplicitRemoteGoToDestination create(int i, PdfName pdfName, float f, float f2, float f3, float f4, float f5) {
        return new PdfExplicitRemoteGoToDestination().add(i - 1).add(pdfName).add(f).add(f2).add(f3).add(f4).add(f5);
    }

    private PdfExplicitRemoteGoToDestination add(float f) {
        if (!Float.isNaN(f)) {
            ((PdfArray) getPdfObject()).add(new PdfNumber(f));
        }
        return this;
    }

    private PdfExplicitRemoteGoToDestination add(int i) {
        ((PdfArray) getPdfObject()).add(new PdfNumber(i));
        return this;
    }

    private PdfExplicitRemoteGoToDestination add(PdfName pdfName) {
        ((PdfArray) getPdfObject()).add(pdfName);
        return this;
    }
}
