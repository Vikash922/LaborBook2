package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfObjectWrapper<T extends PdfObject> {
    private T pdfObject;

    protected abstract boolean isWrappedObjectMustBeIndirect();

    protected PdfObjectWrapper(T t) {
        this.pdfObject = t;
        if (isWrappedObjectMustBeIndirect()) {
            markObjectAsIndirect(this.pdfObject);
        }
    }

    public T getPdfObject() {
        return this.pdfObject;
    }

    public PdfObjectWrapper<T> makeIndirect(PdfDocument pdfDocument, PdfIndirectReference pdfIndirectReference) {
        getPdfObject().makeIndirect(pdfDocument, pdfIndirectReference);
        return this;
    }

    public PdfObjectWrapper<T> makeIndirect(PdfDocument pdfDocument) {
        return makeIndirect(pdfDocument, null);
    }

    public PdfObjectWrapper<T> setModified() {
        this.pdfObject.setModified();
        return this;
    }

    public void flush() {
        this.pdfObject.flush();
    }

    public boolean isFlushed() {
        return this.pdfObject.isFlushed();
    }

    protected void setPdfObject(T t) {
        this.pdfObject = t;
    }

    protected void setForbidRelease() {
        T t = this.pdfObject;
        if (t != null) {
            t.setState((short) 128);
        }
    }

    protected void unsetForbidRelease() {
        T t = this.pdfObject;
        if (t != null) {
            t.clearState((short) 128);
        }
    }

    protected void ensureUnderlyingObjectHasIndirectReference() {
        if (getPdfObject().getIndirectReference() == null) {
            throw new PdfException(KernelExceptionMessageConstant.f2931xa0cdaee);
        }
    }

    protected static void markObjectAsIndirect(PdfObject pdfObject) {
        if (pdfObject.getIndirectReference() == null) {
            pdfObject.setState((short) 64);
        }
    }

    protected static void ensureObjectIsAddedToDocument(PdfObject pdfObject) {
        if (pdfObject.getIndirectReference() == null) {
            throw new PdfException(KernelExceptionMessageConstant.OBJECT_MUST_BE_INDIRECT_TO_WORK_WITH_THIS_WRAPPER);
        }
    }
}
