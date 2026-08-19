package com.itextpdf.kernel.pdf.navigation;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfString;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfDestination extends PdfObjectWrapper<PdfObject> {
    public abstract PdfObject getDestinationPage(Map<String, PdfObject> map);

    protected PdfDestination(PdfObject pdfObject) {
        super(pdfObject);
    }

    public static PdfDestination makeDestination(PdfObject pdfObject) {
        if (pdfObject.getType() == 10) {
            return new PdfStringDestination((PdfString) pdfObject);
        }
        if (pdfObject.getType() == 6) {
            return new PdfNamedDestination((PdfName) pdfObject);
        }
        if (pdfObject.getType() == 1) {
            PdfArray pdfArray = (PdfArray) pdfObject;
            if (pdfArray.size() == 0) {
                throw new IllegalArgumentException();
            }
            PdfObject pdfObject2 = pdfArray.get(0);
            if (pdfObject2.isNumber()) {
                return new PdfExplicitRemoteGoToDestination(pdfArray);
            }
            if (pdfObject2.isDictionary() && PdfName.Page.equals(((PdfDictionary) pdfObject2).getAsName(PdfName.Type))) {
                return new PdfExplicitDestination(pdfArray);
            }
            return new PdfStructureDestination(pdfArray);
        }
        throw new UnsupportedOperationException();
    }
}
