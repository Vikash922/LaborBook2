package com.itextpdf.forms.fields.borders;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.borders.FixedDashedBorder;
import com.itextpdf.layout.borders.SolidBorder;

/* JADX INFO: loaded from: classes6.dex */
public final class FormBorderFactory {
    private FormBorderFactory() {
        throw new UnsupportedOperationException();
    }

    public static Border getBorder(PdfDictionary pdfDictionary, float f, Color color, Color color2) {
        if (pdfDictionary == null || pdfDictionary.getAsName(PdfName.f3065S) == null || color == null || f <= 0.0f) {
            return null;
        }
        PdfName asName = pdfDictionary.getAsName(PdfName.f3065S);
        if (PdfName.f3083U.equals(asName)) {
            return new UnderlineBorder(color, f);
        }
        if (PdfName.f3065S.equals(asName)) {
            return new SolidBorder(color, f);
        }
        if (PdfName.f2992D.equals(asName)) {
            PdfArray asArray = pdfDictionary.getAsArray(PdfName.f2992D);
            float fIntValue = (asArray == null || asArray.size() <= 0 || asArray.getAsNumber(0) == null) ? 3.0f : asArray.getAsNumber(0).intValue();
            return new FixedDashedBorder(color, f, fIntValue, (asArray == null || asArray.size() <= 1 || asArray.getAsNumber(1) == null) ? fIntValue : asArray.getAsNumber(1).intValue(), 0.0f);
        }
        if (PdfName.f3019I.equals(asName)) {
            return new InsetBorder(color, f);
        }
        if (PdfName.f2973B.equals(asName)) {
            return new BeveledBorder(color, f, color2);
        }
        return null;
    }
}
