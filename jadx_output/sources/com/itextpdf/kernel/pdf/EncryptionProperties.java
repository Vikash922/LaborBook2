package com.itextpdf.kernel.pdf;

import java.security.SecureRandom;
import java.security.cert.Certificate;

/* JADX INFO: loaded from: classes6.dex */
public class EncryptionProperties {
    protected int encryptionAlgorithm;
    protected byte[] ownerPassword;
    protected Certificate[] publicCertificates;
    protected int[] publicKeyEncryptPermissions;
    protected int standardEncryptPermissions;
    protected byte[] userPassword;

    public EncryptionProperties setStandardEncryption(byte[] bArr, byte[] bArr2, int i, int i2) {
        clearEncryption();
        this.userPassword = bArr;
        if (bArr2 != null) {
            this.ownerPassword = bArr2;
        } else {
            byte[] bArr3 = new byte[16];
            this.ownerPassword = bArr3;
            randomBytes(bArr3);
        }
        this.standardEncryptPermissions = i;
        this.encryptionAlgorithm = i2;
        return this;
    }

    public EncryptionProperties setPublicKeyEncryption(Certificate[] certificateArr, int[] iArr, int i) {
        clearEncryption();
        this.publicCertificates = certificateArr;
        this.publicKeyEncryptPermissions = iArr;
        this.encryptionAlgorithm = i;
        return this;
    }

    boolean isStandardEncryptionUsed() {
        return this.ownerPassword != null;
    }

    boolean isPublicKeyEncryptionUsed() {
        return this.publicCertificates != null;
    }

    private void clearEncryption() {
        this.publicCertificates = null;
        this.publicKeyEncryptPermissions = null;
        this.userPassword = null;
        this.ownerPassword = null;
    }

    private static void randomBytes(byte[] bArr) {
        new SecureRandom().nextBytes(bArr);
    }
}
