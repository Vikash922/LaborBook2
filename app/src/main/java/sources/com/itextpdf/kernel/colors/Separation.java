package com.itextpdf.kernel.colors;

import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import com.itextpdf.kernel.pdf.colorspace.PdfSpecialCs;
import com.itextpdf.kernel.pdf.function.IPdfFunction;
import com.itextpdf.kernel.pdf.function.PdfFunction;

/* JADX INFO: loaded from: classes6.dex */
public class Separation extends Color {
    public Separation(PdfSpecialCs.Separation separation) {
        this(separation, 1.0f);
    }

    public Separation(PdfSpecialCs.Separation separation, float f) {
        super(separation, new float[]{f});
    }

    @Deprecated
    public Separation(String str, PdfColorSpace pdfColorSpace, PdfFunction pdfFunction, float f) {
        this(new PdfSpecialCs.Separation(str, pdfColorSpace, pdfFunction), f);
    }

    public Separation(String str, PdfColorSpace pdfColorSpace, IPdfFunction iPdfFunction, float f) {
        this(new PdfSpecialCs.Separation(str, pdfColorSpace, iPdfFunction), f);
    }
}
