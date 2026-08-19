package com.itextpdf.kernel.colors;

import com.itextpdf.kernel.pdf.colorspace.PdfCieBasedCs;

/* JADX INFO: loaded from: classes6.dex */
public class CalRgb extends Color {
    public CalRgb(PdfCieBasedCs.CalRgb calRgb) {
        this(calRgb, new float[calRgb.getNumberOfComponents()]);
    }

    public CalRgb(PdfCieBasedCs.CalRgb calRgb, float[] fArr) {
        super(calRgb, fArr);
    }

    public CalRgb(float[] fArr, float[] fArr2) {
        super(new PdfCieBasedCs.CalRgb(fArr), fArr2);
    }

    public CalRgb(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5) {
        this(new PdfCieBasedCs.CalRgb(fArr, fArr2, fArr3, fArr4), fArr5);
    }
}
