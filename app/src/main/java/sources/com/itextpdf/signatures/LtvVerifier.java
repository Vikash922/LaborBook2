package com.itextpdf.signatures;

import com.itextpdf.commons.actions.contexts.IMetaInfo;
import com.itextpdf.commons.utils.DateTimeUtil;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.forms.PdfAcroForm;
import com.itextpdf.kernel.pdf.DocumentProperties;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfReader;
import com.itextpdf.signatures.LtvVerification;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.bouncycastle.cert.ocsp.BasicOCSPResp;
import org.bouncycastle.cert.ocsp.OCSPException;
import org.bouncycastle.cert.ocsp.OCSPResp;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class LtvVerifier extends RootStoreVerifier {
    protected static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) LtvVerifier.class);
    protected PdfAcroForm acroForm;
    protected PdfDocument document;
    protected PdfDictionary dss;
    protected boolean latestRevision;
    protected IMetaInfo metaInfo;
    protected LtvVerification.CertificateOption option;
    protected PdfPKCS7 pkcs7;
    protected String securityProviderCode;
    private SignatureUtil sgnUtil;
    protected Date signDate;
    protected String signatureName;
    protected boolean verifyRootCertificate;

    public LtvVerifier(PdfDocument pdfDocument) throws Throwable {
        super(null);
        this.option = LtvVerification.CertificateOption.SIGNING_CERTIFICATE;
        this.verifyRootCertificate = true;
        this.latestRevision = true;
        this.securityProviderCode = null;
        initLtvVerifier(pdfDocument);
    }

    public LtvVerifier(PdfDocument pdfDocument, String str) throws Throwable {
        super(null);
        this.option = LtvVerification.CertificateOption.SIGNING_CERTIFICATE;
        this.verifyRootCertificate = true;
        this.latestRevision = true;
        this.securityProviderCode = str;
        initLtvVerifier(pdfDocument);
    }

    public void setVerifier(CertificateVerifier certificateVerifier) {
        this.verifier = certificateVerifier;
    }

    public void setCertificateOption(LtvVerification.CertificateOption certificateOption) {
        this.option = certificateOption;
    }

    public void setVerifyRootCertificate(boolean z) {
        this.verifyRootCertificate = z;
    }

    public void setEventCountingMetaInfo(IMetaInfo iMetaInfo) {
        this.metaInfo = iMetaInfo;
    }

    public List<VerificationOK> verify(List<VerificationOK> list) throws GeneralSecurityException, IOException {
        if (list == null) {
            list = new ArrayList<>();
        }
        while (this.pkcs7 != null) {
            list.addAll(verifySignature());
        }
        return list;
    }

    public List<VerificationOK> verifySignature() throws GeneralSecurityException, IOException {
        LOGGER.info("Verifying signature.");
        ArrayList arrayList = new ArrayList();
        Certificate[] signCertificateChain = this.pkcs7.getSignCertificateChain();
        verifyChain(signCertificateChain);
        int length = LtvVerification.CertificateOption.WHOLE_CHAIN.equals(this.option) ? signCertificateChain.length : 1;
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            X509Certificate x509Certificate = (X509Certificate) signCertificateChain[i];
            X509Certificate x509Certificate2 = i2 < signCertificateChain.length ? (X509Certificate) signCertificateChain[i2] : null;
            LOGGER.info(x509Certificate.getSubjectDN().getName());
            List<VerificationOK> listVerify = verify(x509Certificate, x509Certificate2, this.signDate);
            if (listVerify.size() == 0) {
                try {
                    x509Certificate.verify(x509Certificate.getPublicKey());
                    if (this.latestRevision && signCertificateChain.length > 1) {
                        listVerify.add(new VerificationOK(x509Certificate, getClass(), "Root certificate in final revision"));
                    }
                    if (listVerify.size() == 0 && this.verifyRootCertificate) {
                        throw new GeneralSecurityException();
                    }
                    if (signCertificateChain.length > 1) {
                        listVerify.add(new VerificationOK(x509Certificate, getClass(), "Root certificate passed without checking"));
                    }
                } catch (GeneralSecurityException unused) {
                    throw new VerificationException(x509Certificate, "Couldn't verify with CRL or OCSP or trusted anchor");
                }
            }
            arrayList.addAll(listVerify);
            i = i2;
        }
        switchToPreviousRevision();
        return arrayList;
    }

    public void verifyChain(Certificate[] certificateArr) throws GeneralSecurityException {
        for (int i = 0; i < certificateArr.length; i++) {
            ((X509Certificate) certificateArr[i]).checkValidity(this.signDate);
            if (i > 0) {
                certificateArr[i - 1].verify(certificateArr[i].getPublicKey());
            }
        }
        LOGGER.info("All certificates are valid on " + this.signDate.toString());
    }

    @Override // com.itextpdf.signatures.RootStoreVerifier, com.itextpdf.signatures.CertificateVerifier
    public List<VerificationOK> verify(X509Certificate x509Certificate, X509Certificate x509Certificate2, Date date) throws GeneralSecurityException {
        RootStoreVerifier rootStoreVerifier = new RootStoreVerifier(this.verifier);
        rootStoreVerifier.setRootStore(this.rootStore);
        CRLVerifier cRLVerifier = new CRLVerifier(rootStoreVerifier, getCRLsFromDSS());
        cRLVerifier.setRootStore(this.rootStore);
        cRLVerifier.setOnlineCheckingAllowed(this.latestRevision || this.onlineCheckingAllowed);
        OCSPVerifier oCSPVerifier = new OCSPVerifier(cRLVerifier, getOCSPResponsesFromDSS());
        oCSPVerifier.setRootStore(this.rootStore);
        oCSPVerifier.setOnlineCheckingAllowed(this.latestRevision || this.onlineCheckingAllowed);
        return oCSPVerifier.verify(x509Certificate, x509Certificate2, date);
    }

    public void switchToPreviousRevision() throws GeneralSecurityException, IOException {
        Logger logger = LOGGER;
        logger.info("Switching to previous revision.");
        this.latestRevision = false;
        this.dss = this.document.getCatalog().getPdfObject().getAsDictionary(PdfName.DSS);
        Calendar timeStampDate = this.pkcs7.getTimeStampDate();
        if (timeStampDate == TimestampConstants.UNDEFINED_TIMESTAMP_DATE) {
            timeStampDate = this.pkcs7.getSignDate();
        }
        this.signDate = timeStampDate.getTime();
        List<String> signatureNames = this.sgnUtil.getSignatureNames();
        if (signatureNames.size() > 1) {
            this.signatureName = signatureNames.get(signatureNames.size() - 2);
            PdfReader pdfReader = new PdfReader(this.sgnUtil.extractRevision(this.signatureName));
            try {
                PdfDocument pdfDocument = new PdfDocument(pdfReader, new DocumentProperties().setEventCountingMetaInfo(this.metaInfo));
                this.document = pdfDocument;
                this.acroForm = PdfAcroForm.getAcroForm(pdfDocument, true);
                SignatureUtil signatureUtil = new SignatureUtil(this.document);
                this.sgnUtil = signatureUtil;
                List<String> signatureNames2 = signatureUtil.getSignatureNames();
                this.signatureName = signatureNames2.get(signatureNames2.size() - 1);
                PdfPKCS7 pdfPKCS7CoversWholeDocument = coversWholeDocument();
                this.pkcs7 = pdfPKCS7CoversWholeDocument;
                logger.info(MessageFormatUtil.format("Checking {0}signature {1}", pdfPKCS7CoversWholeDocument.isTsp() ? "document-level timestamp " : "", this.signatureName));
                pdfReader.close();
                return;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        pdfReader.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
        logger.info("No signatures in revision");
        this.pkcs7 = null;
    }

    public List<X509CRL> getCRLsFromDSS() throws GeneralSecurityException {
        PdfArray asArray;
        ArrayList arrayList = new ArrayList();
        PdfDictionary pdfDictionary = this.dss;
        if (pdfDictionary == null || (asArray = pdfDictionary.getAsArray(PdfName.CRLs)) == null) {
            return arrayList;
        }
        for (int i = 0; i < asArray.size(); i++) {
            arrayList.add((X509CRL) SignUtils.parseCrlFromStream(new ByteArrayInputStream(asArray.getAsStream(i).getBytes())));
        }
        return arrayList;
    }

    public List<BasicOCSPResp> getOCSPResponsesFromDSS() throws GeneralSecurityException {
        PdfArray asArray;
        ArrayList arrayList = new ArrayList();
        PdfDictionary pdfDictionary = this.dss;
        if (pdfDictionary == null || (asArray = pdfDictionary.getAsArray(PdfName.OCSPs)) == null) {
            return arrayList;
        }
        for (int i = 0; i < asArray.size(); i++) {
            try {
                OCSPResp oCSPResp = new OCSPResp(asArray.getAsStream(i).getBytes());
                if (oCSPResp.getStatus() == 0) {
                    try {
                        arrayList.add((BasicOCSPResp) oCSPResp.getResponseObject());
                    } catch (OCSPException e) {
                        throw new GeneralSecurityException(e.toString());
                    }
                }
            } catch (IOException e2) {
                throw new GeneralSecurityException(e2.getMessage());
            }
        }
        return arrayList;
    }

    protected void initLtvVerifier(PdfDocument pdfDocument) throws Throwable {
        this.document = pdfDocument;
        this.acroForm = PdfAcroForm.getAcroForm(pdfDocument, true);
        SignatureUtil signatureUtil = new SignatureUtil(pdfDocument);
        this.sgnUtil = signatureUtil;
        List<String> signatureNames = signatureUtil.getSignatureNames();
        this.signatureName = signatureNames.get(signatureNames.size() - 1);
        this.signDate = DateTimeUtil.getCurrentTimeDate();
        PdfPKCS7 pdfPKCS7CoversWholeDocument = coversWholeDocument();
        this.pkcs7 = pdfPKCS7CoversWholeDocument;
        LOGGER.info(MessageFormatUtil.format("Checking {0}signature {1}", pdfPKCS7CoversWholeDocument.isTsp() ? "document-level timestamp " : "", this.signatureName));
    }

    protected PdfPKCS7 coversWholeDocument() throws Throwable {
        PdfPKCS7 signatureData = this.sgnUtil.readSignatureData(this.signatureName, this.securityProviderCode);
        if (this.sgnUtil.signatureCoversWholeDocument(this.signatureName)) {
            Logger logger = LOGGER;
            logger.info("The timestamp covers whole document.");
            if (signatureData.verifySignatureIntegrityAndAuthenticity()) {
                logger.info("The signed document has not been modified.");
                return signatureData;
            }
            throw new VerificationException(null, "The document was altered after the final signature was applied.");
        }
        throw new VerificationException(null, "Signature doesn't cover whole document.");
    }
}
