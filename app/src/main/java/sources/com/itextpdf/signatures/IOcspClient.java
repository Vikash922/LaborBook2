package com.itextpdf.signatures;

import java.security.cert.X509Certificate;

/* JADX INFO: loaded from: classes6.dex */
public interface IOcspClient {
    byte[] getEncoded(X509Certificate x509Certificate, X509Certificate x509Certificate2, String str);
}
