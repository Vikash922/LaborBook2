package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;

/* JADX INFO: loaded from: classes6.dex */
public class PdfPrinterMarkAnnotation extends PdfAnnotation {
    public PdfPrinterMarkAnnotation(Rectangle rectangle, PdfFormXObject pdfFormXObject) {
        super(rectangle);
        setNormalAppearance(pdfFormXObject.getPdfObject());
        setFlags(68);
    }

    protected PdfPrinterMarkAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.PrinterMark;
    }

    public PdfMarkupAnnotation setArbitraryTypeName(PdfName pdfName) {
        return (PdfMarkupAnnotation) put(PdfName.f3035MN, pdfName);
    }

    public PdfName getArbitraryTypeName() {
        return getPdfObject().getAsName(PdfName.f3035MN);
    }
}
