package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;

/* JADX INFO: loaded from: classes6.dex */
class PdfPolygonAnnotation extends PdfPolyGeomAnnotation {
    PdfPolygonAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    PdfPolygonAnnotation(Rectangle rectangle, float[] fArr) {
        super(rectangle, fArr);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.Polygon;
    }
}
