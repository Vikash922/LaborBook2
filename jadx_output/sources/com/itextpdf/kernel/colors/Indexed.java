package com.itextpdf.kernel.colors;

import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;

/* JADX INFO: loaded from: classes6.dex */
public class Indexed extends Color {
    public Indexed(PdfColorSpace pdfColorSpace) {
        this(pdfColorSpace, 0);
    }

    public Indexed(PdfColorSpace pdfColorSpace, int i) {
        super(pdfColorSpace, new float[]{i});
    }
}
