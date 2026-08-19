package com.itextpdf.kernel.crypto.securityhandler;

import com.itextpdf.kernel.crypto.CryptoUtil;
import com.itextpdf.kernel.crypto.securityhandler.EncryptionUtils;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfLiteral;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.security.IExternalDecryptionProcess;
import com.itextpdf.p017io.util.StreamUtil;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.cms.ContentInfo;
import org.bouncycastle.asn1.cms.EncryptedContentInfo;
import org.bouncycastle.asn1.cms.EnvelopedData;
import org.bouncycastle.asn1.cms.IssuerAndSerialNumber;
import org.bouncycastle.asn1.cms.KeyTransRecipientInfo;
import org.bouncycastle.asn1.cms.OriginatorInfo;
import org.bouncycastle.asn1.cms.RecipientIdentifier;
import org.bouncycastle.asn1.cms.RecipientInfo;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.TBSCertificateStructure;
import org.bouncycastle.cms.CMSException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PubKeySecurityHandler extends SecurityHandler {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int SEED_LENGTH = 20;
    private List<PublicKeyRecipient> recipients;
    private byte[] seed = EncryptionUtils.generateSeed(20);

    protected abstract String getDigestAlgorithm();

    protected abstract void initKey(byte[] bArr, int i);

    protected abstract void setPubSecSpecificHandlerDicEntries(PdfDictionary pdfDictionary, boolean z, boolean z2);

    protected PubKeySecurityHandler() {
        this.recipients = null;
        this.recipients = new ArrayList();
    }

    protected byte[] computeGlobalKey(String str, boolean z) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(getSeed());
            for (int i = 0; i < getRecipientsSize(); i++) {
                messageDigest.update(getEncodedRecipient(i));
            }
            if (!z) {
                messageDigest.update(new byte[]{-1, -1, -1, -1});
            }
            return messageDigest.digest();
        } catch (Exception e) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_ENCRYPTION, (Throwable) e);
        }
    }

    protected static byte[] computeGlobalKeyOnReading(PdfDictionary pdfDictionary, PrivateKey privateKey, Certificate certificate, String str, IExternalDecryptionProcess iExternalDecryptionProcess, boolean z, String str2) throws CMSException {
        PdfArray asArray = pdfDictionary.getAsArray(PdfName.Recipients);
        if (asArray == null) {
            asArray = pdfDictionary.getAsDictionary(PdfName.f2984CF).getAsDictionary(PdfName.DefaultCryptFilter).getAsArray(PdfName.Recipients);
        }
        byte[] bArrFetchEnvelopedData = EncryptionUtils.fetchEnvelopedData(privateKey, certificate, str, iExternalDecryptionProcess, asArray);
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str2);
            messageDigest.update(bArrFetchEnvelopedData, 0, 20);
            for (int i = 0; i < asArray.size(); i++) {
                messageDigest.update(asArray.getAsString(i).getValueBytes());
            }
            if (!z) {
                messageDigest.update(new byte[]{-1, -1, -1, -1});
            }
            return messageDigest.digest();
        } catch (Exception e) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_DECRYPTION, (Throwable) e);
        }
    }

    protected void addAllRecipients(Certificate[] certificateArr, int[] iArr) {
        if (certificateArr != null) {
            for (int i = 0; i < certificateArr.length; i++) {
                addRecipient(certificateArr[i], iArr[i]);
            }
        }
    }

    protected PdfArray createRecipientsArray() {
        try {
            return getEncodedRecipients();
        } catch (Exception e) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_ENCRYPTION, (Throwable) e);
        }
    }

    protected void initKeyAndFillDictionary(PdfDictionary pdfDictionary, Certificate[] certificateArr, int[] iArr, boolean z, boolean z2) {
        addAllRecipients(certificateArr, iArr);
        Integer asInt = pdfDictionary.getAsInt(PdfName.Length);
        initKey(computeGlobalKey(getDigestAlgorithm(), z), asInt != null ? asInt.intValue() : 40);
        setPubSecSpecificHandlerDicEntries(pdfDictionary, z, z2);
    }

    protected void initKeyAndReadDictionary(PdfDictionary pdfDictionary, Key key, Certificate certificate, String str, IExternalDecryptionProcess iExternalDecryptionProcess, boolean z) throws CMSException {
        byte[] bArrComputeGlobalKeyOnReading = computeGlobalKeyOnReading(pdfDictionary, (PrivateKey) key, certificate, str, iExternalDecryptionProcess, z, getDigestAlgorithm());
        Integer asInt = pdfDictionary.getAsInt(PdfName.Length);
        initKey(bArrComputeGlobalKeyOnReading, asInt != null ? asInt.intValue() : 40);
    }

    private void addRecipient(Certificate certificate, int i) {
        this.recipients.add(new PublicKeyRecipient(certificate, i));
    }

    private byte[] getSeed() {
        byte[] bArr = this.seed;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private int getRecipientsSize() {
        return this.recipients.size();
    }

    private byte[] getEncodedRecipient(int i) throws GeneralSecurityException, IOException {
        PublicKeyRecipient publicKeyRecipient = this.recipients.get(i);
        byte[] cms = publicKeyRecipient.getCms();
        if (cms != null) {
            return cms;
        }
        Certificate certificate = publicKeyRecipient.getCertificate();
        int permission = ((publicKeyRecipient.getPermission() | (-3904)) & (-4)) + 1;
        byte[] bArr = new byte[24];
        System.arraycopy(this.seed, 0, bArr, 0, 20);
        bArr[20] = (byte) (permission >> 24);
        bArr[21] = (byte) (permission >> 16);
        bArr[22] = (byte) (permission >> 8);
        bArr[23] = (byte) permission;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        CryptoUtil.createAsn1OutputStream(byteArrayOutputStream, ASN1Encoding.DER).writeObject(createDERForRecipient(bArr, (X509Certificate) certificate));
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        publicKeyRecipient.setCms(byteArray);
        return byteArray;
    }

    private PdfArray getEncodedRecipients() {
        PdfArray pdfArray = new PdfArray();
        for (int i = 0; i < this.recipients.size(); i++) {
            try {
                pdfArray.add(new PdfLiteral(StreamUtil.createEscapedString(getEncodedRecipient(i))));
            } catch (IOException | GeneralSecurityException unused) {
                return null;
            }
        }
        return pdfArray;
    }

    private ASN1Primitive createDERForRecipient(byte[] bArr, X509Certificate x509Certificate) throws GeneralSecurityException, IOException {
        EncryptionUtils.DERForRecipientParams dERForRecipientParamsCalculateDERForRecipientParams = EncryptionUtils.calculateDERForRecipientParams(bArr);
        KeyTransRecipientInfo keyTransRecipientInfoComputeRecipientInfo = computeRecipientInfo(x509Certificate, dERForRecipientParamsCalculateDERForRecipientParams.abyte0);
        DEROctetString dEROctetString = new DEROctetString(dERForRecipientParamsCalculateDERForRecipientParams.abyte1);
        return new ContentInfo(PKCSObjectIdentifiers.envelopedData, new EnvelopedData((OriginatorInfo) null, new DERSet(new RecipientInfo(keyTransRecipientInfoComputeRecipientInfo)), new EncryptedContentInfo(PKCSObjectIdentifiers.data, dERForRecipientParamsCalculateDERForRecipientParams.algorithmIdentifier, dEROctetString), (ASN1Set) null)).toASN1Primitive();
    }

    private KeyTransRecipientInfo computeRecipientInfo(X509Certificate x509Certificate, byte[] bArr) throws GeneralSecurityException, IOException {
        TBSCertificateStructure tBSCertificateStructure = TBSCertificateStructure.getInstance(new ASN1InputStream(new ByteArrayInputStream(x509Certificate.getTBSCertificate())).readObject());
        AlgorithmIdentifier algorithm = tBSCertificateStructure.getSubjectPublicKeyInfo().getAlgorithm();
        IssuerAndSerialNumber issuerAndSerialNumber = new IssuerAndSerialNumber(tBSCertificateStructure.getIssuer(), tBSCertificateStructure.getSerialNumber().getValue());
        return new KeyTransRecipientInfo(new RecipientIdentifier(issuerAndSerialNumber), algorithm, new DEROctetString(EncryptionUtils.cipherBytes(x509Certificate, bArr, algorithm)));
    }
}
