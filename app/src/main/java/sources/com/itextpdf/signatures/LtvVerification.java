package com.itextpdf.signatures;

import com.itextpdf.forms.PdfAcroForm;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfCatalog;
import com.itextpdf.kernel.pdf.PdfDeveloperExtension;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfVersion;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.source.ByteBuffer;
import com.itextpdf.signatures.exceptions.SignExceptionMessageConstant;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.ocsp.OCSPObjectIdentifiers;
import org.bouncycastle.asn1.ocsp.OCSPResponse;
import org.bouncycastle.asn1.ocsp.OCSPResponseStatus;
import org.bouncycastle.asn1.ocsp.ResponseBytes;
import org.bouncycastle.cert.ocsp.OCSPResp;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class LtvVerification {
    private Logger LOGGER;
    private PdfAcroForm acroForm;
    private PdfDocument document;
    private String securityProviderCode;
    private SignatureUtil sgnUtil;
    private boolean used;
    private Map<PdfName, ValidationData> validated;

    public enum CertificateInclusion {
        YES,
        NO
    }

    public enum CertificateOption {
        SIGNING_CERTIFICATE,
        WHOLE_CHAIN
    }

    public enum Level {
        OCSP,
        CRL,
        OCSP_CRL,
        OCSP_OPTIONAL_CRL
    }

    public LtvVerification(PdfDocument pdfDocument) {
        this.LOGGER = LoggerFactory.getLogger((Class<?>) LtvVerification.class);
        this.validated = new HashMap();
        this.used = false;
        this.securityProviderCode = null;
        this.document = pdfDocument;
        this.acroForm = PdfAcroForm.getAcroForm(pdfDocument, true);
        this.sgnUtil = new SignatureUtil(pdfDocument);
    }

    public LtvVerification(PdfDocument pdfDocument, String str) {
        this(pdfDocument);
        this.securityProviderCode = str;
    }

    public boolean addVerification(String str, IOcspClient iOcspClient, ICrlClient iCrlClient, CertificateOption certificateOption, Level level, CertificateInclusion certificateInclusion) throws Throwable {
        String str2;
        Collection<byte[]> encoded;
        if (this.used) {
            throw new IllegalStateException(SignExceptionMessageConstant.VERIFICATION_ALREADY_OUTPUT);
        }
        PdfPKCS7 signatureData = this.sgnUtil.readSignatureData(str, this.securityProviderCode);
        this.LOGGER.info("Adding verification for " + str);
        Certificate[] certificates = signatureData.getCertificates();
        X509Certificate signingCertificate = signatureData.getSigningCertificate();
        String str3 = null;
        ValidationData validationData = new ValidationData();
        int i = 0;
        while (i < certificates.length) {
            X509Certificate x509Certificate = (X509Certificate) certificates[i];
            this.LOGGER.info("Certificate: " + x509Certificate.getSubjectDN());
            if (certificateOption != CertificateOption.SIGNING_CERTIFICATE || x509Certificate.equals(signingCertificate)) {
                if (iOcspClient == null || level == Level.CRL) {
                    str2 = str3;
                } else {
                    byte[] encoded2 = iOcspClient.getEncoded(x509Certificate, getParent(x509Certificate, certificates), str3);
                    str2 = encoded2;
                    if (encoded2 != null) {
                        validationData.ocsps.add(buildOCSPResponse(encoded2));
                        this.LOGGER.info("OCSP added");
                        str2 = encoded2;
                    }
                }
                if (iCrlClient != null && ((level == Level.CRL || level == Level.OCSP_CRL || (level == Level.OCSP_OPTIONAL_CRL && str2 == null)) && (encoded = iCrlClient.getEncoded(x509Certificate, str3)) != null)) {
                    for (byte[] bArr : encoded) {
                        Iterator<byte[]> it = validationData.crls.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (Arrays.equals(it.next(), bArr)) {
                                    break;
                                }
                            } else {
                                validationData.crls.add(bArr);
                                this.LOGGER.info("CRL added");
                                break;
                            }
                        }
                    }
                }
                if (certificateInclusion == CertificateInclusion.YES) {
                    validationData.certs.add(x509Certificate.getEncoded());
                }
            }
            i++;
            str3 = null;
        }
        if (validationData.crls.size() == 0 && validationData.ocsps.size() == 0) {
            return false;
        }
        this.validated.put(getSignatureHashKey(str), validationData);
        return true;
    }

    private X509Certificate getParent(X509Certificate x509Certificate, Certificate[] certificateArr) {
        for (Certificate certificate : certificateArr) {
            X509Certificate x509Certificate2 = (X509Certificate) certificate;
            if (x509Certificate.getIssuerDN().equals(x509Certificate2.getSubjectDN())) {
                try {
                    x509Certificate.verify(x509Certificate2.getPublicKey());
                    return x509Certificate2;
                } catch (Exception unused) {
                    continue;
                }
            }
        }
        return null;
    }

    public boolean addVerification(String str, Collection<byte[]> collection, Collection<byte[]> collection2, Collection<byte[]> collection3) throws GeneralSecurityException, IOException {
        if (this.used) {
            throw new IllegalStateException(SignExceptionMessageConstant.VERIFICATION_ALREADY_OUTPUT);
        }
        ValidationData validationData = new ValidationData();
        if (collection != null) {
            Iterator<byte[]> it = collection.iterator();
            while (it.hasNext()) {
                validationData.ocsps.add(buildOCSPResponse(it.next()));
            }
        }
        if (collection2 != null) {
            Iterator<byte[]> it2 = collection2.iterator();
            while (it2.hasNext()) {
                validationData.crls.add(it2.next());
            }
        }
        if (collection3 != null) {
            Iterator<byte[]> it3 = collection3.iterator();
            while (it3.hasNext()) {
                validationData.certs.add(it3.next());
            }
        }
        this.validated.put(getSignatureHashKey(str), validationData);
        return true;
    }

    private static byte[] buildOCSPResponse(byte[] bArr) throws IOException {
        return new OCSPResp(new OCSPResponse(new OCSPResponseStatus(0), new ResponseBytes(OCSPObjectIdentifiers.id_pkix_ocsp_basic, new DEROctetString(bArr)))).getEncoded();
    }

    private PdfName getSignatureHashKey(String str) throws NoSuchAlgorithmException, IOException {
        PdfSignature signature = this.sgnUtil.getSignature(str);
        byte[] bArrConvertToBytes = PdfEncodings.convertToBytes(signature.getContents().getValue(), (String) null);
        if (PdfName.ETSI_RFC3161.equals(signature.getSubFilter())) {
            bArrConvertToBytes = new ASN1InputStream(new ByteArrayInputStream(bArrConvertToBytes)).readObject().getEncoded();
        }
        return new PdfName(convertToHex(hashBytesSha1(bArrConvertToBytes)));
    }

    private static byte[] hashBytesSha1(byte[] bArr) throws NoSuchAlgorithmException {
        return MessageDigest.getInstance("SHA1").digest(bArr);
    }

    public void merge() {
        if (this.used || this.validated.size() == 0) {
            return;
        }
        this.used = true;
        if (this.document.getCatalog().getPdfObject().get(PdfName.DSS) == null) {
            createDss();
        } else {
            updateDss();
        }
    }

    private void updateDss() {
        PdfDictionary asDictionary;
        PdfDictionary pdfObject = this.document.getCatalog().getPdfObject();
        pdfObject.setModified();
        PdfDictionary asDictionary2 = pdfObject.getAsDictionary(PdfName.DSS);
        PdfArray asArray = asDictionary2.getAsArray(PdfName.OCSPs);
        PdfArray asArray2 = asDictionary2.getAsArray(PdfName.CRLs);
        PdfArray asArray3 = asDictionary2.getAsArray(PdfName.Certs);
        asDictionary2.remove(PdfName.OCSPs);
        asDictionary2.remove(PdfName.CRLs);
        asDictionary2.remove(PdfName.Certs);
        PdfDictionary asDictionary3 = asDictionary2.getAsDictionary(PdfName.VRI);
        if (asDictionary3 != null) {
            for (PdfName pdfName : asDictionary3.keySet()) {
                if (this.validated.containsKey(pdfName) && (asDictionary = asDictionary3.getAsDictionary(pdfName)) != null) {
                    deleteOldReferences(asArray, asDictionary.getAsArray(PdfName.OCSP));
                    deleteOldReferences(asArray2, asDictionary.getAsArray(PdfName.CRL));
                    deleteOldReferences(asArray3, asDictionary.getAsArray(PdfName.Cert));
                }
            }
        }
        if (asArray == null) {
            asArray = new PdfArray();
        }
        PdfArray pdfArray = asArray;
        PdfArray pdfArray2 = asArray2 == null ? new PdfArray() : asArray2;
        PdfArray pdfArray3 = asArray3 == null ? new PdfArray() : asArray3;
        if (asDictionary3 == null) {
            asDictionary3 = new PdfDictionary();
        }
        outputDss(asDictionary2, asDictionary3, pdfArray, pdfArray2, pdfArray3);
    }

    private static void deleteOldReferences(PdfArray pdfArray, PdfArray pdfArray2) {
        if (pdfArray == null || pdfArray2 == null) {
            return;
        }
        Iterator<PdfObject> it = pdfArray2.iterator();
        while (it.hasNext()) {
            PdfIndirectReference indirectReference = it.next().getIndirectReference();
            int i = 0;
            while (i < pdfArray.size()) {
                if (Objects.equals(indirectReference, pdfArray.get(i).getIndirectReference())) {
                    pdfArray.remove(i);
                    i--;
                }
                i++;
            }
        }
    }

    private void createDss() {
        outputDss(new PdfDictionary(), new PdfDictionary(), new PdfArray(), new PdfArray(), new PdfArray());
    }

    private void outputDss(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2, PdfArray pdfArray, PdfArray pdfArray2, PdfArray pdfArray3) {
        PdfCatalog catalog = this.document.getCatalog();
        if (this.document.getPdfVersion().compareTo(PdfVersion.PDF_2_0) < 0) {
            catalog.addDeveloperExtension(PdfDeveloperExtension.ESIC_1_7_EXTENSIONLEVEL5);
        }
        Iterator<PdfName> it = this.validated.keySet().iterator();
        while (it.hasNext()) {
            PdfName next = it.next();
            PdfArray pdfArray4 = new PdfArray();
            PdfArray pdfArray5 = new PdfArray();
            PdfArray pdfArray6 = new PdfArray();
            PdfDictionary pdfDictionary3 = new PdfDictionary();
            Iterator<byte[]> it2 = this.validated.get(next).crls.iterator();
            while (it2.hasNext()) {
                Iterator<PdfName> it3 = it;
                PdfStream pdfStream = new PdfStream(it2.next());
                pdfStream.setCompressionLevel(-1);
                pdfStream.makeIndirect(this.document);
                pdfArray5.add(pdfStream);
                pdfArray2.add(pdfStream);
                pdfArray2.setModified();
                it = it3;
            }
            Iterator<PdfName> it4 = it;
            Iterator<byte[]> it5 = this.validated.get(next).ocsps.iterator();
            while (it5.hasNext()) {
                PdfStream pdfStream2 = new PdfStream(it5.next());
                pdfStream2.setCompressionLevel(-1);
                pdfArray4.add(pdfStream2);
                pdfArray.add(pdfStream2);
                pdfArray.setModified();
            }
            Iterator<byte[]> it6 = this.validated.get(next).certs.iterator();
            while (it6.hasNext()) {
                PdfStream pdfStream3 = new PdfStream(it6.next());
                pdfStream3.setCompressionLevel(-1);
                pdfStream3.makeIndirect(this.document);
                pdfArray6.add(pdfStream3);
                pdfArray3.add(pdfStream3);
                pdfArray3.setModified();
            }
            if (pdfArray4.size() > 0) {
                pdfArray4.makeIndirect(this.document);
                pdfDictionary3.put(PdfName.OCSP, pdfArray4);
            }
            if (pdfArray5.size() > 0) {
                pdfArray5.makeIndirect(this.document);
                pdfDictionary3.put(PdfName.CRL, pdfArray5);
            }
            if (pdfArray6.size() > 0) {
                pdfArray6.makeIndirect(this.document);
                pdfDictionary3.put(PdfName.Cert, pdfArray6);
            }
            pdfDictionary3.makeIndirect(this.document);
            pdfDictionary2.put(next, pdfDictionary3);
            it = it4;
        }
        pdfDictionary2.makeIndirect(this.document);
        pdfDictionary2.setModified();
        pdfDictionary.put(PdfName.VRI, pdfDictionary2);
        if (pdfArray.size() > 0) {
            pdfArray.makeIndirect(this.document);
            pdfDictionary.put(PdfName.OCSPs, pdfArray);
        }
        if (pdfArray2.size() > 0) {
            pdfArray2.makeIndirect(this.document);
            pdfDictionary.put(PdfName.CRLs, pdfArray2);
        }
        if (pdfArray3.size() > 0) {
            pdfArray3.makeIndirect(this.document);
            pdfDictionary.put(PdfName.Certs, pdfArray3);
        }
        pdfDictionary.makeIndirect(this.document);
        pdfDictionary.setModified();
        catalog.put(PdfName.DSS, pdfDictionary);
    }

    private static class ValidationData {
        public List<byte[]> certs;
        public List<byte[]> crls;
        public List<byte[]> ocsps;

        private ValidationData() {
            this.crls = new ArrayList();
            this.ocsps = new ArrayList();
            this.certs = new ArrayList();
        }
    }

    public static String convertToHex(byte[] bArr) {
        ByteBuffer byteBuffer = new ByteBuffer();
        for (byte b : bArr) {
            byteBuffer.appendHex(b);
        }
        return PdfEncodings.convertToString(byteBuffer.toByteArray(), null).toUpperCase();
    }
}
