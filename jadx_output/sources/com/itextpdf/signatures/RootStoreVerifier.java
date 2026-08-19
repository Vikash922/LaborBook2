package com.itextpdf.signatures;

import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class RootStoreVerifier extends CertificateVerifier {
    protected KeyStore rootStore;

    public RootStoreVerifier(CertificateVerifier certificateVerifier) {
        super(certificateVerifier);
        this.rootStore = null;
    }

    public void setRootStore(KeyStore keyStore) {
        this.rootStore = keyStore;
    }

    @Override // com.itextpdf.signatures.CertificateVerifier
    public List<VerificationOK> verify(X509Certificate x509Certificate, X509Certificate x509Certificate2, Date date) throws GeneralSecurityException {
        if (this.rootStore == null) {
            return super.verify(x509Certificate, x509Certificate2, date);
        }
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<X509Certificate> it = SignUtils.getCertificates(this.rootStore).iterator();
            while (it.hasNext()) {
                try {
                    x509Certificate.verify(it.next().getPublicKey());
                    arrayList.add(new VerificationOK(x509Certificate, getClass(), "Certificate verified against root store."));
                    arrayList.addAll(super.verify(x509Certificate, x509Certificate2, date));
                    return arrayList;
                } catch (GeneralSecurityException unused) {
                }
            }
            arrayList.addAll(super.verify(x509Certificate, x509Certificate2, date));
            return arrayList;
        } catch (GeneralSecurityException unused2) {
            return super.verify(x509Certificate, x509Certificate2, date);
        }
    }
}
