package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.security.IExternalDecryptionProcess;
import java.security.Key;
import java.security.cert.Certificate;

/* JADX INFO: loaded from: classes6.dex */
public class ReaderProperties {
    protected Certificate certificate;
    protected Key certificateKey;
    protected String certificateKeyProvider;
    protected IExternalDecryptionProcess externalDecryptionProcess;
    protected MemoryLimitsAwareHandler memoryLimitsAwareHandler;
    protected byte[] password;

    public ReaderProperties setPassword(byte[] bArr) {
        clearEncryptionParams();
        this.password = bArr;
        return this;
    }

    public ReaderProperties setPublicKeySecurityParams(Certificate certificate, Key key, String str, IExternalDecryptionProcess iExternalDecryptionProcess) {
        clearEncryptionParams();
        this.certificate = certificate;
        this.certificateKey = key;
        this.certificateKeyProvider = str;
        this.externalDecryptionProcess = iExternalDecryptionProcess;
        return this;
    }

    public ReaderProperties setPublicKeySecurityParams(Certificate certificate, IExternalDecryptionProcess iExternalDecryptionProcess) {
        clearEncryptionParams();
        this.certificate = certificate;
        this.externalDecryptionProcess = iExternalDecryptionProcess;
        return this;
    }

    private void clearEncryptionParams() {
        this.password = null;
        this.certificate = null;
        this.certificateKey = null;
        this.certificateKeyProvider = null;
        this.externalDecryptionProcess = null;
    }

    public ReaderProperties setMemoryLimitsAwareHandler(MemoryLimitsAwareHandler memoryLimitsAwareHandler) {
        this.memoryLimitsAwareHandler = memoryLimitsAwareHandler;
        return this;
    }
}
