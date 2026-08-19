package com.itextpdf.kernel.pdf.navigation;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class PdfNamedDestination extends PdfDestination {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfNamedDestination(String str) {
        this(new PdfName(str));
    }

    public PdfNamedDestination(PdfName pdfName) {
        super(pdfName);
    }

    @Override // com.itextpdf.kernel.pdf.navigation.PdfDestination
    public PdfObject getDestinationPage(Map<String, PdfObject> map) {
        PdfArray pdfArray = (PdfArray) map.get(((PdfName) getPdfObject()).getValue());
        if (pdfArray != null) {
            return pdfArray.get(0);
        }
        return null;
    }
}
