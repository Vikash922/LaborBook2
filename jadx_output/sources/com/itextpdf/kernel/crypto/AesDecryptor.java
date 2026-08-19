package com.itextpdf.kernel.crypto;

/* JADX INFO: loaded from: classes6.dex */
public class AesDecryptor implements IDecryptor {
    private AESCipher cipher;
    private boolean initiated;

    /* JADX INFO: renamed from: iv */
    private byte[] f2907iv = new byte[16];
    private int ivptr;
    private byte[] key;

    public AesDecryptor(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.key = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
    }

    @Override // com.itextpdf.kernel.crypto.IDecryptor
    public byte[] update(byte[] bArr, int i, int i2) {
        if (this.initiated) {
            return this.cipher.update(bArr, i, i2);
        }
        int iMin = Math.min(this.f2907iv.length - this.ivptr, i2);
        System.arraycopy(bArr, i, this.f2907iv, this.ivptr, iMin);
        int i3 = i + iMin;
        int i4 = i2 - iMin;
        int i5 = this.ivptr + iMin;
        this.ivptr = i5;
        if (i5 != this.f2907iv.length) {
            return null;
        }
        AESCipher aESCipher = new AESCipher(false, this.key, this.f2907iv);
        this.cipher = aESCipher;
        this.initiated = true;
        if (i4 > 0) {
            return aESCipher.update(bArr, i3, i4);
        }
        return null;
    }

    @Override // com.itextpdf.kernel.crypto.IDecryptor
    public byte[] finish() {
        AESCipher aESCipher = this.cipher;
        if (aESCipher != null) {
            return aESCipher.doFinal();
        }
        return null;
    }
}
