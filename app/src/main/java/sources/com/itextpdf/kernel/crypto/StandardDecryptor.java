package com.itextpdf.kernel.crypto;

/* JADX INFO: loaded from: classes6.dex */
public class StandardDecryptor implements IDecryptor {
    protected ARCFOUREncryption arcfour;

    @Override // com.itextpdf.kernel.crypto.IDecryptor
    public byte[] finish() {
        return null;
    }

    public StandardDecryptor(byte[] bArr, int i, int i2) {
        ARCFOUREncryption aRCFOUREncryption = new ARCFOUREncryption();
        this.arcfour = aRCFOUREncryption;
        aRCFOUREncryption.prepareARCFOURKey(bArr, i, i2);
    }

    @Override // com.itextpdf.kernel.crypto.IDecryptor
    public byte[] update(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.arcfour.encryptARCFOUR(bArr, i, i2, bArr2, 0);
        return bArr2;
    }
}
