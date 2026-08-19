package com.itextpdf.kernel.pdf.filespec;

import com.itextpdf.kernel.pdf.PdfString;

/* JADX INFO: loaded from: classes6.dex */
public class PdfStringFS extends PdfFileSpec {
    @Override // com.itextpdf.kernel.pdf.filespec.PdfFileSpec, com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfStringFS(String str) {
        super(new PdfString(str));
    }

    public PdfStringFS(PdfString pdfString) {
        super(pdfString);
    }
}
