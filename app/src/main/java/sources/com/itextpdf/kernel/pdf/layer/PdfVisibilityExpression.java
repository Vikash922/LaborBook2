package com.itextpdf.kernel.pdf.layer;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;

/* JADX INFO: loaded from: classes6.dex */
public class PdfVisibilityExpression extends PdfObjectWrapper<PdfArray> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfVisibilityExpression(PdfArray pdfArray) {
        super(pdfArray);
        PdfName asName = pdfArray.getAsName(0);
        if (pdfArray.size() < 1 || !(PdfName.f3046Or.equals(asName) || PdfName.And.equals(asName) || PdfName.Not.equals(asName))) {
            throw new IllegalArgumentException("Invalid visibilityExpressionArray");
        }
    }

    public PdfVisibilityExpression(PdfName pdfName) {
        super(new PdfArray());
        if (pdfName == null || (!PdfName.f3046Or.equals(pdfName) && !PdfName.And.equals(pdfName) && !PdfName.Not.equals(pdfName))) {
            throw new IllegalArgumentException("Invalid operator");
        }
        getPdfObject().add(pdfName);
    }

    public void addOperand(PdfLayer pdfLayer) {
        getPdfObject().add(pdfLayer.getPdfObject());
        getPdfObject().setModified();
    }

    public void addOperand(PdfVisibilityExpression pdfVisibilityExpression) {
        getPdfObject().add(pdfVisibilityExpression.getPdfObject());
        getPdfObject().setModified();
    }
}
