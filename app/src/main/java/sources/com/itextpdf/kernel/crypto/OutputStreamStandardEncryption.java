package com.itextpdf.kernel.crypto;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes6.dex */
public class OutputStreamStandardEncryption extends OutputStreamEncryption {
    protected ARCFOUREncryption arcfour;

    @Override // com.itextpdf.kernel.crypto.OutputStreamEncryption
    public void finish() {
    }

    public OutputStreamStandardEncryption(OutputStream outputStream, byte[] bArr, int i, int i2) {
        super(outputStream);
        ARCFOUREncryption aRCFOUREncryption = new ARCFOUREncryption();
        this.arcfour = aRCFOUREncryption;
        aRCFOUREncryption.prepareARCFOURKey(bArr, i, i2);
    }

    public OutputStreamStandardEncryption(OutputStream outputStream, byte[] bArr) {
        this(outputStream, bArr, 0, bArr.length);
    }

    @Override // com.itextpdf.kernel.crypto.OutputStreamEncryption, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        int iMin = Math.min(i2, 4192);
        byte[] bArr2 = new byte[iMin];
        while (i2 > 0) {
            int iMin2 = Math.min(i2, iMin);
            this.arcfour.encryptARCFOUR(bArr, i, iMin2, bArr2, 0);
            this.out.write(bArr2, 0, iMin2);
            i2 -= iMin2;
            i += iMin2;
        }
    }
}
