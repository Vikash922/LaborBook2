package com.itextpdf.kernel.pdf.xobject;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;

/* JADX INFO: loaded from: classes6.dex */
public class PdfTransparencyGroup extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfTransparencyGroup() {
        super(new PdfDictionary());
        getPdfObject().put(PdfName.f3065S, PdfName.Transparency);
    }

    public void setIsolated(boolean z) {
        if (z) {
            getPdfObject().put(PdfName.f3019I, PdfBoolean.TRUE);
        } else {
            getPdfObject().remove(PdfName.f3019I);
        }
    }

    public void setKnockout(boolean z) {
        if (z) {
            getPdfObject().put(PdfName.f3024K, PdfBoolean.TRUE);
        } else {
            getPdfObject().remove(PdfName.f3024K);
        }
    }

    public void setColorSpace(PdfName pdfName) {
        getPdfObject().put(PdfName.f2989CS, pdfName);
    }

    public void setColorSpace(PdfArray pdfArray) {
        getPdfObject().put(PdfName.f2989CS, pdfArray);
    }

    public PdfTransparencyGroup put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        return this;
    }
}
