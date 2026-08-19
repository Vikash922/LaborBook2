package com.itextpdf.signatures;

import com.itextpdf.commons.utils.DateTimeUtil;
import com.itextpdf.signatures.exceptions.SignExceptionMessageConstant;
import com.itextpdf.signatures.logs.SignLogMessageConstant;
import java.security.KeyStore;
import java.security.cert.CRL;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.cert.ocsp.BasicOCSPResp;
import org.bouncycastle.tsp.TimeStampToken;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class CertificateVerification {
    public static final String CERTIFICATE_REVOKED = "Certificate revoked";
    public static final String HAS_UNSUPPORTED_EXTENSIONS = "Has unsupported critical extension";
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) CertificateVerification.class);

    public static String verifyCertificate(X509Certificate x509Certificate, Collection<CRL> collection) {
        return verifyCertificate(x509Certificate, collection, DateTimeUtil.getCurrentTimeCalendar());
    }

    public static String verifyCertificate(X509Certificate x509Certificate, Collection<CRL> collection, Calendar calendar) {
        if (SignUtils.hasUnsupportedCriticalExtension(x509Certificate)) {
            return HAS_UNSUPPORTED_EXTENSIONS;
        }
        try {
            x509Certificate.checkValidity(calendar.getTime());
            if (collection == null) {
                return null;
            }
            Iterator<CRL> it = collection.iterator();
            while (it.hasNext()) {
                if (it.next().isRevoked(x509Certificate)) {
                    return CERTIFICATE_REVOKED;
                }
            }
            return null;
        } catch (Exception e) {
            return e.getMessage();
        }
    }

    public static List<VerificationException> verifyCertificates(Certificate[] certificateArr, KeyStore keyStore, Collection<CRL> collection) {
        return verifyCertificates(certificateArr, keyStore, collection, DateTimeUtil.getCurrentTimeCalendar());
    }

    public static List<VerificationException> verifyCertificates(Certificate[] certificateArr, KeyStore keyStore, Collection<CRL> collection, Calendar calendar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < certificateArr.length; i++) {
            X509Certificate x509Certificate = (X509Certificate) certificateArr[i];
            String strVerifyCertificate = verifyCertificate(x509Certificate, collection, calendar);
            if (strVerifyCertificate != null) {
                arrayList.add(new VerificationException(x509Certificate, strVerifyCertificate));
            }
            try {
                for (X509Certificate x509Certificate2 : SignUtils.getCertificates(keyStore)) {
                    try {
                        if (verifyCertificate(x509Certificate2, collection, calendar) == null) {
                            x509Certificate.verify(x509Certificate2.getPublicKey());
                            return arrayList;
                        }
                    } catch (Exception unused) {
                    }
                }
            } catch (Exception unused2) {
            }
            int i2 = 0;
            while (i2 < certificateArr.length) {
                if (i2 != i) {
                    try {
                        x509Certificate.verify(((X509Certificate) certificateArr[i2]).getPublicKey());
                        break;
                    } catch (Exception unused3) {
                        continue;
                        i2++;
                    }
                }
                i2++;
            }
            if (i2 == certificateArr.length) {
                arrayList.add(new VerificationException(x509Certificate, SignExceptionMessageConstant.CANNOT_BE_VERIFIED_CERTIFICATE_CHAIN));
            }
        }
        if (arrayList.size() == 0) {
            arrayList.add(new VerificationException(null, SignExceptionMessageConstant.INVALID_STATE_WHILE_CHECKING_CERT_CHAIN));
        }
        return arrayList;
    }

    public static List<VerificationException> verifyCertificates(Certificate[] certificateArr, KeyStore keyStore) {
        return verifyCertificates(certificateArr, keyStore, DateTimeUtil.getCurrentTimeCalendar());
    }

    public static List<VerificationException> verifyCertificates(Certificate[] certificateArr, KeyStore keyStore, Calendar calendar) {
        return verifyCertificates(certificateArr, keyStore, null, calendar);
    }

    public static boolean verifyOcspCertificates(BasicOCSPResp basicOCSPResp, KeyStore keyStore, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            Iterator<X509Certificate> it = SignUtils.getCertificates(keyStore).iterator();
            while (it.hasNext()) {
                try {
                } catch (Exception e) {
                    arrayList.add(e);
                }
                if (SignUtils.isSignatureValid(basicOCSPResp, it.next(), str)) {
                    return true;
                }
            }
        } catch (Exception e2) {
            arrayList.add(e2);
        }
        logExceptionMessages(arrayList);
        return false;
    }

    public static boolean verifyTimestampCertificates(TimeStampToken timeStampToken, KeyStore keyStore, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            Iterator<X509Certificate> it = SignUtils.getCertificates(keyStore).iterator();
            while (it.hasNext()) {
                try {
                    SignUtils.isSignatureValid(timeStampToken, it.next(), str);
                    return true;
                } catch (Exception e) {
                    arrayList.add(e);
                }
            }
        } catch (Exception e2) {
            arrayList.add(e2);
        }
        logExceptionMessages(arrayList);
        return false;
    }

    private static void logExceptionMessages(List<Exception> list) {
        for (Exception exc : list) {
            LOGGER.error(exc.getMessage() == null ? SignLogMessageConstant.EXCEPTION_WITHOUT_MESSAGE : exc.getMessage(), (Throwable) exc);
        }
    }
}
