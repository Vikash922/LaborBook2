package com.itextpdf.kernel.crypto.securityhandler;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfEncryptor;
import com.itextpdf.kernel.security.IExternalDecryptionProcess;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.AlgorithmParameterGenerator;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.cert.X509CertificateHolder;
import org.bouncycastle.cms.CMSEnvelopedData;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.RecipientInformation;

/* JADX INFO: loaded from: classes6.dex */
final class EncryptionUtils {
    EncryptionUtils() {
    }

    static byte[] generateSeed(int i) {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            keyGenerator.init(192, new SecureRandom());
            byte[] bArr = new byte[i];
            System.arraycopy(keyGenerator.generateKey().getEncoded(), 0, bArr, 0, i);
            return bArr;
        } catch (NoSuchAlgorithmException unused) {
            return SecureRandom.getSeed(i);
        }
    }

    static byte[] fetchEnvelopedData(Key key, Certificate certificate, String str, IExternalDecryptionProcess iExternalDecryptionProcess, PdfArray pdfArray) throws CMSException {
        boolean z;
        try {
            X509CertificateHolder x509CertificateHolder = new X509CertificateHolder(certificate.getEncoded());
            int i = 0;
            byte[] content = null;
            if (iExternalDecryptionProcess == null) {
                z = false;
                while (i < pdfArray.size()) {
                    try {
                        for (RecipientInformation recipientInformation : new CMSEnvelopedData(pdfArray.getAsString(i).getValueBytes()).getRecipientInfos().getRecipients()) {
                            if (recipientInformation.getRID().match(x509CertificateHolder) && !z) {
                                content = PdfEncryptor.getContent(recipientInformation, (PrivateKey) key, str);
                                z = true;
                            }
                        }
                        i++;
                    } catch (Exception e) {
                        throw new PdfException(KernelExceptionMessageConstant.PDF_DECRYPTION, (Throwable) e);
                    }
                }
            } else {
                boolean z2 = false;
                while (i < pdfArray.size()) {
                    try {
                        RecipientInformation recipientInformation2 = new CMSEnvelopedData(pdfArray.getAsString(i).getValueBytes()).getRecipientInfos().get(iExternalDecryptionProcess.getCmsRecipientId());
                        if (recipientInformation2 != null) {
                            content = recipientInformation2.getContent(iExternalDecryptionProcess.getCmsRecipient());
                            z2 = true;
                        }
                        i++;
                    } catch (Exception e2) {
                        throw new PdfException(KernelExceptionMessageConstant.PDF_DECRYPTION, (Throwable) e2);
                    }
                }
                z = z2;
            }
            if (!z || content == null) {
                throw new PdfException(KernelExceptionMessageConstant.BAD_CERTIFICATE_AND_KEY);
            }
            return content;
        } catch (Exception e3) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_DECRYPTION, (Throwable) e3);
        }
    }

    static byte[] cipherBytes(X509Certificate x509Certificate, byte[] bArr, AlgorithmIdentifier algorithmIdentifier) throws GeneralSecurityException {
        Cipher cipher = Cipher.getInstance(algorithmIdentifier.getAlgorithm().getId());
        try {
            cipher.init(1, x509Certificate);
        } catch (InvalidKeyException unused) {
            cipher.init(1, x509Certificate.getPublicKey());
        }
        return cipher.doFinal(bArr);
    }

    static DERForRecipientParams calculateDERForRecipientParams(byte[] bArr) throws GeneralSecurityException, IOException {
        DERForRecipientParams dERForRecipientParams = new DERForRecipientParams();
        AlgorithmParameters algorithmParametersGenerateParameters = AlgorithmParameterGenerator.getInstance("1.2.840.113549.3.2").generateParameters();
        ASN1Primitive object = new ASN1InputStream(new ByteArrayInputStream(algorithmParametersGenerateParameters.getEncoded("ASN.1"))).readObject();
        KeyGenerator keyGenerator = KeyGenerator.getInstance("1.2.840.113549.3.2");
        keyGenerator.init(128);
        SecretKey secretKeyGenerateKey = keyGenerator.generateKey();
        Cipher cipher = Cipher.getInstance("1.2.840.113549.3.2");
        cipher.init(1, secretKeyGenerateKey, algorithmParametersGenerateParameters);
        dERForRecipientParams.abyte0 = secretKeyGenerateKey.getEncoded();
        dERForRecipientParams.abyte1 = cipher.doFinal(bArr);
        dERForRecipientParams.algorithmIdentifier = new AlgorithmIdentifier(new ASN1ObjectIdentifier("1.2.840.113549.3.2"), object);
        return dERForRecipientParams;
    }

    static class DERForRecipientParams {
        byte[] abyte0;
        byte[] abyte1;
        AlgorithmIdentifier algorithmIdentifier;

        DERForRecipientParams() {
        }
    }
}
