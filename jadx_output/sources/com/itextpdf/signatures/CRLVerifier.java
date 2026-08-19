package com.itextpdf.signatures;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class CRLVerifier extends RootStoreVerifier {
    protected static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) CRLVerifier.class);
    List<X509CRL> crls;

    public CRLVerifier(CertificateVerifier certificateVerifier, List<X509CRL> list) {
        super(certificateVerifier);
        this.crls = list;
    }

    @Override // com.itextpdf.signatures.RootStoreVerifier, com.itextpdf.signatures.CertificateVerifier
    public List<VerificationOK> verify(X509Certificate x509Certificate, X509Certificate x509Certificate2, Date date) throws GeneralSecurityException {
        int i;
        ArrayList arrayList = new ArrayList();
        List<X509CRL> list = this.crls;
        boolean z = false;
        if (list != null) {
            Iterator<X509CRL> it = list.iterator();
            i = 0;
            while (it.hasNext()) {
                if (verify(it.next(), x509Certificate, x509Certificate2, date)) {
                    i++;
                }
            }
        } else {
            i = 0;
        }
        if (this.onlineCheckingAllowed && i == 0 && verify(getCRL(x509Certificate, x509Certificate2), x509Certificate, x509Certificate2, date)) {
            i++;
            z = true;
        }
        LOGGER.info("Valid CRLs found: " + i);
        if (i > 0) {
            arrayList.add(new VerificationOK(x509Certificate, getClass(), "Valid CRLs found: " + i + (z ? " (online)" : "")));
        }
        if (this.verifier != null) {
            arrayList.addAll(this.verifier.verify(x509Certificate, x509Certificate2, date));
        }
        return arrayList;
    }

    public boolean verify(X509CRL x509crl, X509Certificate x509Certificate, X509Certificate x509Certificate2, Date date) throws GeneralSecurityException {
        if (x509crl == null || date == TimestampConstants.UNDEFINED_TIMESTAMP_DATE || !x509crl.getIssuerX500Principal().equals(x509Certificate.getIssuerX500Principal()) || !date.before(x509crl.getNextUpdate())) {
            return false;
        }
        if (isSignatureValid(x509crl, x509Certificate2) && x509crl.isRevoked(x509Certificate)) {
            throw new VerificationException(x509Certificate, "The certificate has been revoked.");
        }
        return true;
    }

    public X509CRL getCRL(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        try {
            String crlurl = CertificateUtil.getCRLURL(x509Certificate);
            if (crlurl == null) {
                return null;
            }
            LOGGER.info("Getting CRL from " + crlurl);
            return (X509CRL) SignUtils.parseCrlFromStream(FirebasePerfUrlConnection.openStream(new URL(crlurl)));
        } catch (IOException | GeneralSecurityException unused) {
            return null;
        }
    }

    public boolean isSignatureValid(X509CRL x509crl, X509Certificate x509Certificate) {
        if (x509Certificate != null) {
            try {
                x509crl.verify(x509Certificate.getPublicKey());
                return true;
            } catch (GeneralSecurityException unused) {
                LOGGER.warn("CRL not issued by the same authority as the certificate that is being checked");
            }
        }
        if (this.rootStore == null) {
            return false;
        }
        try {
            Iterator<X509Certificate> it = SignUtils.getCertificates(this.rootStore).iterator();
            while (it.hasNext()) {
                try {
                    x509crl.verify(it.next().getPublicKey());
                    return true;
                } catch (GeneralSecurityException unused2) {
                }
            }
        } catch (GeneralSecurityException unused3) {
        }
        return false;
    }
}
