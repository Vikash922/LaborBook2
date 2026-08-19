package com.itextpdf.kernel.pdf.navigation;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfString;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class PdfStringDestination extends PdfDestination {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfStringDestination(String str) {
        this(new PdfString(str));
    }

    public PdfStringDestination(PdfString pdfString) {
        super(pdfString);
    }

    @Override // com.itextpdf.kernel.pdf.navigation.PdfDestination
    public PdfObject getDestinationPage(Map<String, PdfObject> map) {
        PdfArray pdfArray = (PdfArray) map.get(((PdfString) getPdfObject()).toUnicodeString());
        if (pdfArray != null) {
            return pdfArray.get(0);
        }
        return null;
    }
}
