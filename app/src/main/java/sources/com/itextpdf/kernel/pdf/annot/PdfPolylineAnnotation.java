package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;

/* JADX INFO: loaded from: classes6.dex */
class PdfPolylineAnnotation extends PdfPolyGeomAnnotation {
    PdfPolylineAnnotation(Rectangle rectangle, float[] fArr) {
        super(rectangle, fArr);
    }

    PdfPolylineAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.PolyLine;
    }
}
