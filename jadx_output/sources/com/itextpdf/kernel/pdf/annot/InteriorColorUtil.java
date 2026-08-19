package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.DeviceCmyk;
import com.itextpdf.kernel.colors.DeviceGray;
import com.itextpdf.kernel.colors.DeviceRgb;
import com.itextpdf.kernel.pdf.PdfArray;

/* JADX INFO: loaded from: classes6.dex */
class InteriorColorUtil {
    private InteriorColorUtil() {
    }

    public static Color parseInteriorColor(PdfArray pdfArray) {
        if (pdfArray == null) {
            return null;
        }
        int size = pdfArray.size();
        if (size == 1) {
            return new DeviceGray(pdfArray.getAsNumber(0).floatValue());
        }
        if (size == 3) {
            return new DeviceRgb(pdfArray.getAsNumber(0).floatValue(), pdfArray.getAsNumber(1).floatValue(), pdfArray.getAsNumber(2).floatValue());
        }
        if (size != 4) {
            return null;
        }
        return new DeviceCmyk(pdfArray.getAsNumber(0).floatValue(), pdfArray.getAsNumber(1).floatValue(), pdfArray.getAsNumber(2).floatValue(), pdfArray.getAsNumber(3).floatValue());
    }
}
