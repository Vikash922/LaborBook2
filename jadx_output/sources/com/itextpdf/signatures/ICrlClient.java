package com.itextpdf.signatures;

import java.security.cert.X509Certificate;
import java.util.Collection;

/* JADX INFO: loaded from: classes6.dex */
public interface ICrlClient {
    Collection<byte[]> getEncoded(X509Certificate x509Certificate, String str);
}
