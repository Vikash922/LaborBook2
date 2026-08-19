package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;

/* JADX INFO: loaded from: classes6.dex */
class BorderStyleUtil {
    private BorderStyleUtil() {
    }

    public static final PdfDictionary setStyle(PdfDictionary pdfDictionary, PdfName pdfName) {
        if (pdfDictionary == null) {
            pdfDictionary = new PdfDictionary();
        }
        pdfDictionary.put(PdfName.f3065S, pdfName);
        return pdfDictionary;
    }

    public static final PdfDictionary setDashPattern(PdfDictionary pdfDictionary, PdfArray pdfArray) {
        if (pdfDictionary == null) {
            pdfDictionary = new PdfDictionary();
        }
        pdfDictionary.put(PdfName.f2992D, pdfArray);
        return pdfDictionary;
    }
}
