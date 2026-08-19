package com.itextpdf.kernel.pdf;

import java.security.cert.Certificate;

/* JADX INFO: loaded from: classes6.dex */
public class WriterProperties {
    protected boolean addXmpMetadata;
    protected PdfString initialDocumentId;
    protected PdfString modifiedDocumentId;
    protected PdfVersion pdfVersion;
    protected boolean smartMode = false;
    protected boolean addUAXmpMetadata = false;
    protected int compressionLevel = -1;
    protected Boolean isFullCompression = null;
    protected EncryptionProperties encryptionProperties = new EncryptionProperties();

    public WriterProperties setPdfVersion(PdfVersion pdfVersion) {
        this.pdfVersion = pdfVersion;
        return this;
    }

    public WriterProperties useSmartMode() {
        this.smartMode = true;
        return this;
    }

    public WriterProperties addXmpMetadata() {
        this.addXmpMetadata = true;
        return this;
    }

    public WriterProperties setCompressionLevel(int i) {
        this.compressionLevel = i;
        return this;
    }

    public WriterProperties setFullCompressionMode(boolean z) {
        this.isFullCompression = Boolean.valueOf(z);
        return this;
    }

    public WriterProperties setStandardEncryption(byte[] bArr, byte[] bArr2, int i, int i2) {
        this.encryptionProperties.setStandardEncryption(bArr, bArr2, i, i2);
        return this;
    }

    public WriterProperties setPublicKeyEncryption(Certificate[] certificateArr, int[] iArr, int i) {
        this.encryptionProperties.setPublicKeyEncryption(certificateArr, iArr, i);
        return this;
    }

    public WriterProperties setInitialDocumentId(PdfString pdfString) {
        this.initialDocumentId = pdfString;
        return this;
    }

    public WriterProperties setModifiedDocumentId(PdfString pdfString) {
        this.modifiedDocumentId = pdfString;
        return this;
    }

    public WriterProperties addUAXmpMetadata() {
        this.addUAXmpMetadata = true;
        return addXmpMetadata();
    }

    boolean isStandardEncryptionUsed() {
        return this.encryptionProperties.isStandardEncryptionUsed();
    }

    boolean isPublicKeyEncryptionUsed() {
        return this.encryptionProperties.isPublicKeyEncryptionUsed();
    }
}
