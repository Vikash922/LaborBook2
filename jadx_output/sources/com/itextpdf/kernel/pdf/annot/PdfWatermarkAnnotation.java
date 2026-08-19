package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;

/* JADX INFO: loaded from: classes6.dex */
public class PdfWatermarkAnnotation extends PdfAnnotation {
    public PdfWatermarkAnnotation(Rectangle rectangle) {
        super(rectangle);
    }

    protected PdfWatermarkAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.Watermark;
    }

    public PdfWatermarkAnnotation setFixedPrint(PdfFixedPrint pdfFixedPrint) {
        return (PdfWatermarkAnnotation) put(PdfName.FixedPrint, pdfFixedPrint.getPdfObject());
    }

    public PdfDictionary getFixedPrint() {
        return getPdfObject().getAsDictionary(PdfName.FixedPrint);
    }
}
