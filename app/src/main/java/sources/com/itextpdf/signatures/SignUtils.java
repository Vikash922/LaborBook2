package com.itextpdf.signatures;

import com.google.common.net.HttpHeaders;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.itextpdf.commons.utils.Base64;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfEncryption;
import com.itextpdf.signatures.OID;
import com.itextpdf.signatures.exceptions.SignExceptionMessageConstant;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.esf.SigPolicyQualifierInfo;
import org.bouncycastle.asn1.esf.SigPolicyQualifiers;
import org.bouncycastle.asn1.ocsp.OCSPObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.Extensions;
import org.bouncycastle.cert.X509CertificateHolder;
import org.bouncycastle.cert.jcajce.JcaX509CertificateConverter;
import org.bouncycastle.cert.jcajce.JcaX509CertificateHolder;
import org.bouncycastle.cert.ocsp.BasicOCSPResp;
import org.bouncycastle.cert.ocsp.CertificateID;
import org.bouncycastle.cert.ocsp.OCSPException;
import org.bouncycastle.cert.ocsp.OCSPReq;
import org.bouncycastle.cert.ocsp.OCSPReqBuilder;
import org.bouncycastle.cms.jcajce.JcaSimpleSignerInfoVerifierBuilder;
import org.bouncycastle.jce.X509Principal;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.provider.X509CertParser;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.operator.jcajce.JcaContentVerifierProviderBuilder;
import org.bouncycastle.operator.jcajce.JcaDigestCalculatorProviderBuilder;
import org.bouncycastle.operator.p045bc.BcDigestCalculatorProvider;
import org.bouncycastle.tsp.TSPException;
import org.bouncycastle.tsp.TimeStampToken;
import org.bouncycastle.x509.util.StreamParsingException;

/* JADX INFO: loaded from: classes6.dex */
final class SignUtils {
    SignUtils() {
    }

    static String getPrivateKeyAlgorithm(PrivateKey privateKey) {
        String algorithm = privateKey.getAlgorithm();
        return algorithm.equals("EC") ? "ECDSA" : algorithm;
    }

    static CRL parseCrlFromStream(InputStream inputStream) throws CertificateException, CRLException {
        return CertificateFactory.getInstance("X.509").generateCRL(inputStream);
    }

    static byte[] getExtensionValueByOid(X509Certificate x509Certificate, String str) {
        return x509Certificate.getExtensionValue(str);
    }

    static MessageDigest getMessageDigest(String str) throws GeneralSecurityException {
        return new BouncyCastleDigest().getMessageDigest(str);
    }

    static MessageDigest getMessageDigest(String str, IExternalDigest iExternalDigest) throws GeneralSecurityException {
        return iExternalDigest.getMessageDigest(str);
    }

    static MessageDigest getMessageDigest(String str, String str2) throws NoSuchAlgorithmException, NoSuchProviderException {
        if (str2 == null || str2.startsWith("SunPKCS11") || str2.startsWith("SunMSCAPI")) {
            return MessageDigest.getInstance(DigestAlgorithms.normalizeDigestName(str));
        }
        return MessageDigest.getInstance(str, str2);
    }

    static InputStream getHttpResponse(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
        if (httpURLConnection.getResponseCode() / 100 != 2) {
            throw new PdfException(SignExceptionMessageConstant.INVALID_HTTP_RESPONSE).setMessageParams(Integer.valueOf(httpURLConnection.getResponseCode()));
        }
        return (InputStream) httpURLConnection.getContent();
    }

    static CertificateID generateCertificateId(X509Certificate x509Certificate, BigInteger bigInteger, AlgorithmIdentifier algorithmIdentifier) throws OperatorCreationException, OCSPException, CertificateEncodingException {
        return new CertificateID(new JcaDigestCalculatorProviderBuilder().build().get(algorithmIdentifier), new JcaX509CertificateHolder(x509Certificate), bigInteger);
    }

    static CertificateID generateCertificateId(X509Certificate x509Certificate, BigInteger bigInteger, ASN1ObjectIdentifier aSN1ObjectIdentifier) throws OperatorCreationException, OCSPException, CertificateEncodingException {
        return new CertificateID(new JcaDigestCalculatorProviderBuilder().build().get(new AlgorithmIdentifier(aSN1ObjectIdentifier, DERNull.INSTANCE)), new JcaX509CertificateHolder(x509Certificate), bigInteger);
    }

    static OCSPReq generateOcspRequestWithNonce(CertificateID certificateID) throws IOException, OCSPException {
        OCSPReqBuilder oCSPReqBuilder = new OCSPReqBuilder();
        oCSPReqBuilder.addRequest(certificateID);
        oCSPReqBuilder.setRequestExtensions(new Extensions(new Extension[]{new Extension(OCSPObjectIdentifiers.id_pkix_ocsp_nonce, false, (ASN1OctetString) new DEROctetString(new DEROctetString(PdfEncryption.generateNewDocumentId()).getEncoded()))}));
        return oCSPReqBuilder.build();
    }

    static InputStream getHttpResponseForOcspRequest(byte[] bArr, URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/ocsp-request");
        httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT, "application/ocsp-response");
        httpURLConnection.setDoOutput(true);
        DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(httpURLConnection.getOutputStream()));
        dataOutputStream.write(bArr);
        dataOutputStream.flush();
        dataOutputStream.close();
        if (httpURLConnection.getResponseCode() / 100 != 2) {
            throw new PdfException(SignExceptionMessageConstant.INVALID_HTTP_RESPONSE).setMessageParams(Integer.valueOf(httpURLConnection.getResponseCode()));
        }
        return (InputStream) httpURLConnection.getContent();
    }

    static boolean isSignatureValid(BasicOCSPResp basicOCSPResp, Certificate certificate, String str) throws OperatorCreationException, OCSPException {
        if (str == null) {
            str = BouncyCastleProvider.PROVIDER_NAME;
        }
        return basicOCSPResp.isSignatureValid(new JcaContentVerifierProviderBuilder().setProvider(str).build(certificate.getPublicKey()));
    }

    static void isSignatureValid(TimeStampToken timeStampToken, X509Certificate x509Certificate, String str) throws TSPException, OperatorCreationException {
        if (str == null) {
            str = BouncyCastleProvider.PROVIDER_NAME;
        }
        timeStampToken.validate(new JcaSimpleSignerInfoVerifierBuilder().setProvider(str).build(x509Certificate));
    }

    static boolean checkIfIssuersMatch(CertificateID certificateID, X509Certificate x509Certificate) throws IOException, OCSPException, CertificateEncodingException {
        return certificateID.matchesIssuer(new X509CertificateHolder(x509Certificate.getEncoded()), new BcDigestCalculatorProvider());
    }

    static Date add180Sec(Date date) {
        return new Date(date.getTime() + 180000);
    }

    static Iterable<X509Certificate> getCertsFromOcspResponse(BasicOCSPResp basicOCSPResp) {
        ArrayList arrayList = new ArrayList();
        X509CertificateHolder[] certs = basicOCSPResp.getCerts();
        JcaX509CertificateConverter jcaX509CertificateConverter = new JcaX509CertificateConverter();
        for (X509CertificateHolder x509CertificateHolder : certs) {
            try {
                arrayList.add(jcaX509CertificateConverter.getCertificate(x509CertificateHolder));
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }

    static Collection<Certificate> readAllCerts(byte[] bArr) throws StreamParsingException {
        X509CertParser x509CertParser = new X509CertParser();
        x509CertParser.engineInit(new ByteArrayInputStream(bArr));
        return x509CertParser.engineReadAll();
    }

    static <T> T getFirstElement(Iterable<T> iterable) {
        return iterable.iterator().next();
    }

    static X509Principal getIssuerX509Name(ASN1Sequence aSN1Sequence) throws IOException {
        return new X509Principal(aSN1Sequence.getObjectAt(0).toASN1Primitive().getEncoded());
    }

    public static String dateToString(Calendar calendar) {
        return new SimpleDateFormat("yyyy.MM.dd HH:mm:ss z").format(calendar.getTime());
    }

    static class TsaResponse {
        String encoding;
        InputStream tsaResponseStream;

        TsaResponse() {
        }
    }

    static TsaResponse getTsaResponseForUserRequest(String str, byte[] bArr, String str2, String str3) throws IOException {
        try {
            URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection());
            uRLConnection.setDoInput(true);
            uRLConnection.setDoOutput(true);
            uRLConnection.setUseCaches(false);
            uRLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/timestamp-query");
            uRLConnection.setRequestProperty("Content-Transfer-Encoding", "binary");
            if (str2 != null && !str2.equals("")) {
                uRLConnection.setRequestProperty("Authorization", "Basic " + Base64.encodeBytes((str2 + ":" + str3).getBytes(StandardCharsets.UTF_8), 8));
            }
            OutputStream outputStream = uRLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
            TsaResponse tsaResponse = new TsaResponse();
            tsaResponse.tsaResponseStream = uRLConnection.getInputStream();
            tsaResponse.encoding = uRLConnection.getContentEncoding();
            return tsaResponse;
        } catch (IOException unused) {
            throw new PdfException(SignExceptionMessageConstant.FAILED_TO_GET_TSA_RESPONSE).setMessageParams(str);
        }
    }

    @Deprecated
    static boolean hasUnsupportedCriticalExtension(X509Certificate x509Certificate) {
        if (x509Certificate == null) {
            throw new IllegalArgumentException("X509Certificate can't be null.");
        }
        if (!x509Certificate.hasUnsupportedCriticalExtension()) {
            return false;
        }
        Iterator<String> it = x509Certificate.getCriticalExtensionOIDs().iterator();
        while (it.hasNext()) {
            if (!OID.X509Extensions.SUPPORTED_CRITICAL_EXTENSIONS.contains(it.next())) {
                return true;
            }
        }
        return false;
    }

    static Calendar getTimeStampDate(TimeStampToken timeStampToken) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(timeStampToken.getTimeStampInfo().getGenTime());
        return gregorianCalendar;
    }

    static Signature getSignatureHelper(String str, String str2) throws NoSuchAlgorithmException, NoSuchProviderException {
        if (str2 == null) {
            return Signature.getInstance(str);
        }
        return Signature.getInstance(str, str2);
    }

    static boolean verifyCertificateSignature(X509Certificate x509Certificate, PublicKey publicKey, String str) {
        try {
            if (str == null) {
                x509Certificate.verify(publicKey);
            } else {
                x509Certificate.verify(publicKey, str);
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    static SigPolicyQualifiers createSigPolicyQualifiers(SigPolicyQualifierInfo... sigPolicyQualifierInfoArr) {
        return new SigPolicyQualifiers(sigPolicyQualifierInfoArr);
    }

    static Iterable<X509Certificate> getCertificates(final KeyStore keyStore) throws KeyStoreException {
        final Enumeration<String> enumerationAliases = keyStore.aliases();
        return new Iterable<X509Certificate>() { // from class: com.itextpdf.signatures.SignUtils.1
            @Override // java.lang.Iterable
            public Iterator<X509Certificate> iterator() {
                return new Iterator<X509Certificate>() { // from class: com.itextpdf.signatures.SignUtils.1.1
                    private X509Certificate nextCert;

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        if (this.nextCert == null) {
                            tryToGetNextCertificate();
                        }
                        return this.nextCert != null;
                    }

                    @Override // java.util.Iterator
                    public X509Certificate next() {
                        if (!hasNext()) {
                            throw new NoSuchElementException();
                        }
                        X509Certificate x509Certificate = this.nextCert;
                        this.nextCert = null;
                        return x509Certificate;
                    }

                    private void tryToGetNextCertificate() {
                        String str;
                        while (enumerationAliases.hasMoreElements()) {
                            try {
                                str = (String) enumerationAliases.nextElement();
                            } catch (KeyStoreException unused) {
                            }
                            if (keyStore.isCertificateEntry(str) || keyStore.isKeyEntry(str)) {
                                this.nextCert = (X509Certificate) keyStore.getCertificate(str);
                                return;
                            }
                        }
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        throw new UnsupportedOperationException("remove");
                    }
                };
            }
        };
    }
}
