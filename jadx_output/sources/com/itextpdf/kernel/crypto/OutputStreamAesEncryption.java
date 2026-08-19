package com.itextpdf.kernel.crypto;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes6.dex */
public class OutputStreamAesEncryption extends OutputStreamEncryption {
    protected AESCipher cipher;
    private boolean finished;

    public OutputStreamAesEncryption(OutputStream outputStream, byte[] bArr, int i, int i2) {
        super(outputStream);
        byte[] iv = IVGenerator.getIV();
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.cipher = new AESCipher(true, bArr2, iv);
        try {
            write(iv);
        } catch (IOException e) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_ENCRYPTION, (Throwable) e);
        }
    }

    public OutputStreamAesEncryption(OutputStream outputStream, byte[] bArr) {
        this(outputStream, bArr, 0, bArr.length);
    }

    @Override // com.itextpdf.kernel.crypto.OutputStreamEncryption, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArrUpdate = this.cipher.update(bArr, i, i2);
        if (bArrUpdate == null || bArrUpdate.length == 0) {
            return;
        }
        this.out.write(bArrUpdate, 0, bArrUpdate.length);
    }

    @Override // com.itextpdf.kernel.crypto.OutputStreamEncryption
    public void finish() {
        if (this.finished) {
            return;
        }
        this.finished = true;
        byte[] bArrDoFinal = this.cipher.doFinal();
        try {
            this.out.write(bArrDoFinal, 0, bArrDoFinal.length);
        } catch (IOException e) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_ENCRYPTION, (Throwable) e);
        }
    }
}
