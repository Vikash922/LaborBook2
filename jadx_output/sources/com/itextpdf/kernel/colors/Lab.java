package com.itextpdf.kernel.colors;

import com.itextpdf.kernel.pdf.colorspace.PdfCieBasedCs;

/* JADX INFO: loaded from: classes6.dex */
public class Lab extends Color {
    public Lab(PdfCieBasedCs.Lab lab) {
        this(lab, new float[lab.getNumberOfComponents()]);
    }

    public Lab(PdfCieBasedCs.Lab lab, float[] fArr) {
        super(lab, fArr);
    }

    public Lab(float[] fArr, float[] fArr2) {
        super(new PdfCieBasedCs.Lab(fArr), fArr2);
    }

    public Lab(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4) {
        this(new PdfCieBasedCs.Lab(fArr, fArr2, fArr3), fArr4);
    }
}
