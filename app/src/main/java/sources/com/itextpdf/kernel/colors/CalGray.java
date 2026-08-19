package com.itextpdf.kernel.colors;

import com.itextpdf.kernel.pdf.colorspace.PdfCieBasedCs;

/* JADX INFO: loaded from: classes6.dex */
public class CalGray extends Color {
    public CalGray(PdfCieBasedCs.CalGray calGray) {
        this(calGray, 0.0f);
    }

    public CalGray(PdfCieBasedCs.CalGray calGray, float f) {
        super(calGray, new float[]{f});
    }

    public CalGray(float[] fArr, float f) {
        super(new PdfCieBasedCs.CalGray(fArr), new float[]{f});
    }

    public CalGray(float[] fArr, float[] fArr2, float f, float f2) {
        this(new PdfCieBasedCs.CalGray(fArr, fArr2, f), f2);
    }
}
