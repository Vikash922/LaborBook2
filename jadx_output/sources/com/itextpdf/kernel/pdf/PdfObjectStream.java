package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.p017io.source.ByteArrayOutputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes6.dex */
class PdfObjectStream extends PdfStream {
    public static final int MAX_OBJ_STREAM_SIZE = 200;
    protected PdfOutputStream indexStream;
    protected PdfNumber size;

    public PdfObjectStream(PdfDocument pdfDocument) {
        this(pdfDocument, new ByteArrayOutputStream());
        this.indexStream = new PdfOutputStream(new ByteArrayOutputStream());
    }

    PdfObjectStream(PdfObjectStream pdfObjectStream) {
        this(pdfObjectStream.getIndirectReference().getDocument(), pdfObjectStream.getOutputStream().getOutputStream());
        this.indexStream = new PdfOutputStream(pdfObjectStream.indexStream.getOutputStream());
        ((ByteArrayOutputStream) this.outputStream.getOutputStream()).reset();
        ((ByteArrayOutputStream) this.indexStream.getOutputStream()).reset();
        pdfObjectStream.releaseContent(true);
    }

    private PdfObjectStream(PdfDocument pdfDocument, OutputStream outputStream) {
        super(outputStream);
        this.size = new PdfNumber(0);
        makeIndirect(pdfDocument, pdfDocument.getXref().createNewIndirectReference(pdfDocument));
        getOutputStream().document = pdfDocument;
        put(PdfName.Type, PdfName.ObjStm);
        put(PdfName.f3037N, this.size);
        put(PdfName.First, new PdfNumber(0));
    }

    public void addObject(PdfObject pdfObject) {
        if (this.size.intValue() == 200) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_OBJECT_STREAM_REACH_MAX_SIZE);
        }
        PdfOutputStream outputStream = getOutputStream();
        this.indexStream.writeInteger(pdfObject.getIndirectReference().getObjNumber()).writeSpace().writeLong(outputStream.getCurrentPos()).writeSpace();
        outputStream.write(pdfObject);
        pdfObject.getIndirectReference().setObjStreamNumber(getIndirectReference().getObjNumber());
        pdfObject.getIndirectReference().setIndex(this.size.intValue());
        outputStream.writeSpace();
        this.size.increment();
        getAsNumber(PdfName.First).setValue(this.indexStream.getCurrentPos());
    }

    public int getSize() {
        return this.size.intValue();
    }

    public PdfOutputStream getIndexStream() {
        return this.indexStream;
    }

    @Override // com.itextpdf.kernel.pdf.PdfStream, com.itextpdf.kernel.pdf.PdfDictionary
    protected void releaseContent() {
        releaseContent(false);
    }

    private void releaseContent(boolean z) {
        if (z) {
            this.outputStream = null;
            this.indexStream = null;
            super.releaseContent();
        }
    }
}
