package com.itextpdf.signatures;

import java.security.GeneralSecurityException;
import java.security.cert.CRL;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.asn1.ocsp.OCSPObjectIdentifiers;
import org.bouncycastle.cert.ocsp.BasicOCSPResp;
import org.bouncycastle.cert.ocsp.CertificateStatus;
import org.bouncycastle.cert.ocsp.SingleResp;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class OCSPVerifier extends RootStoreVerifier {
    protected static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) OCSPVerifier.class);
    protected static final String id_kp_OCSPSigning = "1.3.6.1.5.5.7.3.9";
    protected List<BasicOCSPResp> ocsps;

    public OCSPVerifier(CertificateVerifier certificateVerifier, List<BasicOCSPResp> list) {
        super(certificateVerifier);
        this.ocsps = list;
    }

    @Override // com.itextpdf.signatures.RootStoreVerifier, com.itextpdf.signatures.CertificateVerifier
    public List<VerificationOK> verify(X509Certificate x509Certificate, X509Certificate x509Certificate2, Date date) throws GeneralSecurityException {
        int i;
        ArrayList arrayList = new ArrayList();
        List<BasicOCSPResp> list = this.ocsps;
        boolean z = false;
        if (list != null) {
            Iterator<BasicOCSPResp> it = list.iterator();
            i = 0;
            while (it.hasNext()) {
                if (verify(it.next(), x509Certificate, x509Certificate2, date)) {
                    i++;
                }
            }
        } else {
            i = 0;
        }
        if (this.onlineCheckingAllowed && i == 0 && verify(getOcspResponse(x509Certificate, x509Certificate2), x509Certificate, x509Certificate2, date)) {
            i++;
            z = true;
        }
        LOGGER.info("Valid OCSPs found: " + i);
        if (i > 0) {
            arrayList.add(new VerificationOK(x509Certificate, getClass(), "Valid OCSPs Found: " + i + (z ? " (online)" : "")));
        }
        if (this.verifier != null) {
            arrayList.addAll(this.verifier.verify(x509Certificate, x509Certificate2, date));
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean verify(org.bouncycastle.cert.ocsp.BasicOCSPResp r9, java.security.cert.X509Certificate r10, java.security.cert.X509Certificate r11, java.util.Date r12) throws java.security.GeneralSecurityException {
        /*
            r8 = this;
            r0 = 0
            if (r9 != 0) goto L4
            return r0
        L4:
            org.bouncycastle.cert.ocsp.SingleResp[] r1 = r9.getResponses()
            r2 = r0
        L9:
            int r3 = r1.length
            if (r2 >= r3) goto Lac
            java.math.BigInteger r3 = r10.getSerialNumber()
            r4 = r1[r2]
            org.bouncycastle.cert.ocsp.CertificateID r4 = r4.getCertID()
            java.math.BigInteger r4 = r4.getSerialNumber()
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L22
            goto L9d
        L22:
            if (r11 != 0) goto L25
            r11 = r10
        L25:
            r3 = r1[r2]     // Catch: org.bouncycastle.cert.ocsp.OCSPException -> L9d java.io.IOException -> La1
            org.bouncycastle.cert.ocsp.CertificateID r3 = r3.getCertID()     // Catch: org.bouncycastle.cert.ocsp.OCSPException -> L9d java.io.IOException -> La1
            boolean r3 = com.itextpdf.signatures.SignUtils.checkIfIssuersMatch(r3, r11)     // Catch: org.bouncycastle.cert.ocsp.OCSPException -> L9d java.io.IOException -> La1
            if (r3 != 0) goto L39
            org.slf4j.Logger r3 = com.itextpdf.signatures.OCSPVerifier.LOGGER     // Catch: org.bouncycastle.cert.ocsp.OCSPException -> L9d java.io.IOException -> La1
            java.lang.String r4 = "OCSP: Issuers doesn't match."
            r3.info(r4)     // Catch: org.bouncycastle.cert.ocsp.OCSPException -> L9d java.io.IOException -> La1
            goto L9d
        L39:
            r3 = r1[r2]
            java.util.Date r3 = r3.getNextUpdate()
            java.lang.String r4 = "OCSP no longer valid: {0} after {1}"
            if (r3 != 0) goto L6e
            r3 = r1[r2]
            java.util.Date r3 = r3.getThisUpdate()
            java.util.Date r3 = com.itextpdf.signatures.SignUtils.add180Sec(r3)
            org.slf4j.Logger r5 = com.itextpdf.signatures.OCSPVerifier.LOGGER
            java.lang.String r6 = "No 'next update' for OCSP Response; assuming {0}"
            java.lang.Object[] r7 = new java.lang.Object[]{r3}
            java.lang.String r6 = com.itextpdf.commons.utils.MessageFormatUtil.format(r6, r7)
            r5.info(r6)
            boolean r6 = r12.after(r3)
            if (r6 == 0) goto L8e
            java.lang.Object[] r3 = new java.lang.Object[]{r12, r3}
            java.lang.String r3 = com.itextpdf.commons.utils.MessageFormatUtil.format(r4, r3)
            r5.info(r3)
            goto L9d
        L6e:
            r3 = r1[r2]
            java.util.Date r3 = r3.getNextUpdate()
            boolean r3 = r12.after(r3)
            if (r3 == 0) goto L8e
            org.slf4j.Logger r3 = com.itextpdf.signatures.OCSPVerifier.LOGGER
            r5 = r1[r2]
            java.util.Date r5 = r5.getNextUpdate()
            java.lang.Object[] r5 = new java.lang.Object[]{r12, r5}
            java.lang.String r4 = com.itextpdf.commons.utils.MessageFormatUtil.format(r4, r5)
            r3.info(r4)
            goto L9d
        L8e:
            r3 = r1[r2]
            org.bouncycastle.cert.ocsp.CertificateStatus r3 = r3.getCertStatus()
            org.bouncycastle.cert.ocsp.CertificateStatus r4 = org.bouncycastle.cert.ocsp.CertificateStatus.GOOD
            if (r3 != r4) goto L9d
            r8.isValidResponse(r9, r11, r12)
            r9 = 1
            return r9
        L9d:
            int r2 = r2 + 1
            goto L9
        La1:
            r9 = move-exception
            java.security.GeneralSecurityException r10 = new java.security.GeneralSecurityException
            java.lang.String r9 = r9.getMessage()
            r10.<init>(r9)
            throw r10
        Lac:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.signatures.OCSPVerifier.verify(org.bouncycastle.cert.ocsp.BasicOCSPResp, java.security.cert.X509Certificate, java.security.cert.X509Certificate, java.util.Date):boolean");
    }

    public void isValidResponse(BasicOCSPResp basicOCSPResp, X509Certificate x509Certificate, Date date) throws GeneralSecurityException {
        CRL crl;
        List<String> extendedKeyUsage;
        X509Certificate x509Certificate2 = null;
        X509Certificate x509Certificate3 = isSignatureValid(basicOCSPResp, x509Certificate) ? x509Certificate : null;
        if (x509Certificate3 == null) {
            if (basicOCSPResp.getCerts() != null) {
                Iterator<X509Certificate> it = SignUtils.getCertsFromOcspResponse(basicOCSPResp).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    X509Certificate next = it.next();
                    try {
                        extendedKeyUsage = next.getExtendedKeyUsage();
                    } catch (CertificateParsingException unused) {
                    }
                    if (extendedKeyUsage != null && extendedKeyUsage.contains(id_kp_OCSPSigning) && isSignatureValid(basicOCSPResp, next)) {
                        x509Certificate3 = next;
                        break;
                    }
                }
                if (x509Certificate3 == null) {
                    throw new VerificationException(x509Certificate, "OCSP response could not be verified");
                }
                x509Certificate3.verify(x509Certificate.getPublicKey());
                x509Certificate3.checkValidity(date);
                if (x509Certificate3.getExtensionValue(OCSPObjectIdentifiers.id_pkix_ocsp_nocheck.getId()) == null) {
                    try {
                        crl = CertificateUtil.getCRL(x509Certificate3);
                    } catch (Exception unused2) {
                        crl = null;
                    }
                    if (crl != null && (crl instanceof X509CRL)) {
                        CRLVerifier cRLVerifier = new CRLVerifier(null, null);
                        cRLVerifier.setRootStore(this.rootStore);
                        cRLVerifier.setOnlineCheckingAllowed(this.onlineCheckingAllowed);
                        if (!cRLVerifier.verify((X509CRL) crl, x509Certificate3, x509Certificate, date)) {
                            throw new VerificationException(x509Certificate, "Authorized OCSP responder certificate was revoked.");
                        }
                        return;
                    }
                    LOGGER.error("Authorized OCSP responder certificate revocation status cannot be checked");
                    return;
                }
                return;
            }
            if (this.rootStore != null) {
                try {
                    for (X509Certificate x509Certificate4 : SignUtils.getCertificates(this.rootStore)) {
                        if (isSignatureValid(basicOCSPResp, x509Certificate4)) {
                            x509Certificate2 = x509Certificate4;
                            break;
                        }
                    }
                    x509Certificate2 = x509Certificate3;
                } catch (Exception unused3) {
                }
            } else {
                x509Certificate2 = x509Certificate3;
            }
            if (x509Certificate2 == null) {
                throw new VerificationException(x509Certificate, "OCSP response could not be verified: it does not contain certificate chain and response is not signed by issuer certificate or any from the root store.");
            }
        }
    }

    public boolean isSignatureValid(BasicOCSPResp basicOCSPResp, Certificate certificate) {
        try {
            return SignUtils.isSignatureValid(basicOCSPResp, certificate, BouncyCastleProvider.PROVIDER_NAME);
        } catch (Exception unused) {
            return false;
        }
    }

    public BasicOCSPResp getOcspResponse(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        BasicOCSPResp basicOCSPResp;
        if ((x509Certificate == null && x509Certificate2 == null) || (basicOCSPResp = new OcspClientBouncyCastle(null).getBasicOCSPResp(x509Certificate, x509Certificate2, null)) == null) {
            return null;
        }
        for (SingleResp singleResp : basicOCSPResp.getResponses()) {
            if (singleResp.getCertStatus() == CertificateStatus.GOOD) {
                return basicOCSPResp;
            }
        }
        return null;
    }
}
