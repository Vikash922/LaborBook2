package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.pdf.filespec.PdfFileSpec;

/* JADX INFO: loaded from: classes6.dex */
public class PdfEncryptedPayloadDocument extends PdfObjectWrapper<PdfStream> {
    private PdfFileSpec fileSpec;
    private String name;

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfEncryptedPayloadDocument(PdfStream pdfStream, PdfFileSpec pdfFileSpec, String str) {
        super(pdfStream);
        this.fileSpec = pdfFileSpec;
        this.name = str;
    }

    public byte[] getDocumentBytes() {
        return getPdfObject().getBytes();
    }

    public PdfFileSpec getFileSpec() {
        return this.fileSpec;
    }

    public String getName() {
        return this.name;
    }

    public PdfEncryptedPayload getEncryptedPayload() {
        return PdfEncryptedPayload.extractFrom(this.fileSpec);
    }
}
