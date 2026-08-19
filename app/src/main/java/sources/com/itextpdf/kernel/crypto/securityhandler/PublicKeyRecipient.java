package com.itextpdf.kernel.crypto.securityhandler;

import java.security.cert.Certificate;

/* JADX INFO: loaded from: classes6.dex */
public class PublicKeyRecipient {
    private Certificate certificate;
    protected byte[] cms = null;
    private int permission;

    public PublicKeyRecipient(Certificate certificate, int i) {
        this.certificate = certificate;
        this.permission = i;
    }

    public Certificate getCertificate() {
        return this.certificate;
    }

    public int getPermission() {
        return this.permission;
    }

    protected void setCms(byte[] bArr) {
        this.cms = bArr;
    }

    protected byte[] getCms() {
        return this.cms;
    }
}
