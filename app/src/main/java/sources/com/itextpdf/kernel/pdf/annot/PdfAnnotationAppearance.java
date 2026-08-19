package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class PdfAnnotationAppearance extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfAnnotationAppearance(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfAnnotationAppearance() {
        this(new PdfDictionary());
    }

    public PdfAnnotationAppearance setState(PdfName pdfName, PdfFormXObject pdfFormXObject) {
        getPdfObject().put(pdfName, pdfFormXObject.getPdfObject());
        return this;
    }

    public PdfAnnotationAppearance setStateObject(PdfName pdfName, PdfStream pdfStream) {
        getPdfObject().put(pdfName, pdfStream);
        return this;
    }

    public PdfStream getStateObject(PdfName pdfName) {
        return getPdfObject().getAsStream(pdfName);
    }

    public Set<PdfName> getStates() {
        return getPdfObject().keySet();
    }
}
