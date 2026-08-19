package com.itextpdf.signatures;

import java.security.GeneralSecurityException;
import java.security.PrivateKey;
import java.security.Signature;

/* JADX INFO: loaded from: classes6.dex */
public class PrivateKeySignature implements IExternalSignature {
    private String encryptionAlgorithm;
    private String hashAlgorithm;

    /* JADX INFO: renamed from: pk */
    private PrivateKey f3292pk;
    private String provider;

    public PrivateKeySignature(PrivateKey privateKey, String str, String str2) {
        this.f3292pk = privateKey;
        this.provider = str2;
        this.hashAlgorithm = DigestAlgorithms.getDigest(DigestAlgorithms.getAllowedDigest(str));
        this.encryptionAlgorithm = SignUtils.getPrivateKeyAlgorithm(privateKey);
    }

    @Override // com.itextpdf.signatures.IExternalSignature
    public String getHashAlgorithm() {
        return this.hashAlgorithm;
    }

    @Override // com.itextpdf.signatures.IExternalSignature
    public String getEncryptionAlgorithm() {
        return this.encryptionAlgorithm;
    }

    @Override // com.itextpdf.signatures.IExternalSignature
    public byte[] sign(byte[] bArr) throws GeneralSecurityException {
        Signature signatureHelper = SignUtils.getSignatureHelper(this.hashAlgorithm + "with" + this.encryptionAlgorithm, this.provider);
        signatureHelper.initSign(this.f3292pk);
        signatureHelper.update(bArr);
        return signatureHelper.sign();
    }
}
