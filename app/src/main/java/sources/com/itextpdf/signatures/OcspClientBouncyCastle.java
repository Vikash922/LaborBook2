package com.itextpdf.signatures;

import com.itextpdf.commons.utils.DateTimeUtil;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.util.StreamUtil;
import java.io.IOException;
import java.math.BigInteger;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.Security;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import org.bouncycastle.cert.ocsp.BasicOCSPResp;
import org.bouncycastle.cert.ocsp.CertificateID;
import org.bouncycastle.cert.ocsp.CertificateStatus;
import org.bouncycastle.cert.ocsp.OCSPException;
import org.bouncycastle.cert.ocsp.OCSPReq;
import org.bouncycastle.cert.ocsp.OCSPResp;
import org.bouncycastle.cert.ocsp.RevokedStatus;
import org.bouncycastle.cert.ocsp.SingleResp;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.operator.OperatorException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class OcspClientBouncyCastle implements IOcspClient {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) OcspClientBouncyCastle.class);
    private final OCSPVerifier verifier;

    public OcspClientBouncyCastle(OCSPVerifier oCSPVerifier) {
        this.verifier = oCSPVerifier;
    }

    public BasicOCSPResp getBasicOCSPResp(X509Certificate x509Certificate, X509Certificate x509Certificate2, String str) {
        try {
            OCSPResp ocspResponse = getOcspResponse(x509Certificate, x509Certificate2, str);
            if (ocspResponse == null || ocspResponse.getStatus() != 0) {
                return null;
            }
            BasicOCSPResp basicOCSPResp = (BasicOCSPResp) ocspResponse.getResponseObject();
            OCSPVerifier oCSPVerifier = this.verifier;
            if (oCSPVerifier != null) {
                oCSPVerifier.isValidResponse(basicOCSPResp, x509Certificate2, DateTimeUtil.getCurrentTimeDate());
            }
            return basicOCSPResp;
        } catch (Exception e) {
            LOGGER.error(e.getMessage());
            return null;
        }
    }

    @Override // com.itextpdf.signatures.IOcspClient
    public byte[] getEncoded(X509Certificate x509Certificate, X509Certificate x509Certificate2, String str) {
        try {
            BasicOCSPResp basicOCSPResp = getBasicOCSPResp(x509Certificate, x509Certificate2, str);
            if (basicOCSPResp == null) {
                return null;
            }
            SingleResp[] responses = basicOCSPResp.getResponses();
            if (responses.length != 1) {
                return null;
            }
            CertificateStatus certStatus = responses[0].getCertStatus();
            if (certStatus == CertificateStatus.GOOD) {
                return basicOCSPResp.getEncoded();
            }
            if (certStatus instanceof RevokedStatus) {
                throw new IOException(IoLogMessageConstant.OCSP_STATUS_IS_REVOKED);
            }
            throw new IOException(IoLogMessageConstant.OCSP_STATUS_IS_UNKNOWN);
        } catch (Exception e) {
            LOGGER.error(e.getMessage());
            return null;
        }
    }

    private static OCSPReq generateOCSPRequest(X509Certificate x509Certificate, BigInteger bigInteger) throws OCSPException, IOException, OperatorException, CertificateEncodingException {
        Security.addProvider(new BouncyCastleProvider());
        return SignUtils.generateOcspRequestWithNonce(SignUtils.generateCertificateId(x509Certificate, bigInteger, CertificateID.HASH_SHA1));
    }

    OCSPResp getOcspResponse(X509Certificate x509Certificate, X509Certificate x509Certificate2, String str) throws GeneralSecurityException, OCSPException, IOException, OperatorException {
        if (x509Certificate == null || x509Certificate2 == null) {
            return null;
        }
        if (str == null) {
            str = CertificateUtil.getOCSPURL(x509Certificate);
        }
        if (str == null) {
            return null;
        }
        LOGGER.info("Getting OCSP from " + str);
        return new OCSPResp(StreamUtil.inputStreamToArray(SignUtils.getHttpResponseForOcspRequest(generateOCSPRequest(x509Certificate2, x509Certificate.getSerialNumber()).getEncoded(), new URL(str))));
    }
}
