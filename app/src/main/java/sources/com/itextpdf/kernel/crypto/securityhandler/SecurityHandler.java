package com.itextpdf.kernel.crypto.securityhandler;

import com.itextpdf.kernel.crypto.IDecryptor;
import com.itextpdf.kernel.crypto.OutputStreamEncryption;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import java.io.OutputStream;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes6.dex */
public abstract class SecurityHandler {
    protected MessageDigest md5;
    protected byte[] nextObjectKey;
    protected int nextObjectKeySize;
    protected byte[] mkey = new byte[0];
    protected byte[] extra = new byte[5];

    public abstract IDecryptor getDecryptor();

    public abstract OutputStreamEncryption getEncryptionStream(OutputStream outputStream);

    protected SecurityHandler() {
        safeInitMessageDigest();
    }

    public void setHashKeyForNextObject(int i, int i2) {
        this.md5.reset();
        byte[] bArr = this.extra;
        bArr[0] = (byte) i;
        bArr[1] = (byte) (i >> 8);
        bArr[2] = (byte) (i >> 16);
        bArr[3] = (byte) i2;
        bArr[4] = (byte) (i2 >> 8);
        this.md5.update(this.mkey);
        this.md5.update(this.extra);
        this.nextObjectKey = this.md5.digest();
        int length = this.mkey.length + 5;
        this.nextObjectKeySize = length;
        if (length > 16) {
            this.nextObjectKeySize = 16;
        }
    }

    private void safeInitMessageDigest() {
        try {
            this.md5 = MessageDigest.getInstance("MD5");
        } catch (Exception e) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_ENCRYPTION, (Throwable) e);
        }
    }
}
