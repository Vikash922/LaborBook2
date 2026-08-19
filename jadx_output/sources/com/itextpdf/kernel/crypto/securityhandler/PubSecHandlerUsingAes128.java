package com.itextpdf.kernel.crypto.securityhandler;

import com.itextpdf.kernel.crypto.AesDecryptor;
import com.itextpdf.kernel.crypto.IDecryptor;
import com.itextpdf.kernel.crypto.OutputStreamAesEncryption;
import com.itextpdf.kernel.crypto.OutputStreamEncryption;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.security.IExternalDecryptionProcess;
import java.io.OutputStream;
import java.security.Key;
import java.security.cert.Certificate;

/* JADX INFO: loaded from: classes6.dex */
public class PubSecHandlerUsingAes128 extends PubKeySecurityHandler {
    private static final byte[] salt = {115, 65, 108, 84};

    public PubSecHandlerUsingAes128(PdfDictionary pdfDictionary, Certificate[] certificateArr, int[] iArr, boolean z, boolean z2) {
        initKeyAndFillDictionary(pdfDictionary, certificateArr, iArr, z, z2);
    }

    public PubSecHandlerUsingAes128(PdfDictionary pdfDictionary, Key key, Certificate certificate, String str, IExternalDecryptionProcess iExternalDecryptionProcess, boolean z) {
        initKeyAndReadDictionary(pdfDictionary, key, certificate, str, iExternalDecryptionProcess, z);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.SecurityHandler
    public OutputStreamEncryption getEncryptionStream(OutputStream outputStream) {
        return new OutputStreamAesEncryption(outputStream, this.nextObjectKey, 0, this.nextObjectKeySize);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.SecurityHandler
    public IDecryptor getDecryptor() {
        return new AesDecryptor(this.nextObjectKey, 0, this.nextObjectKeySize);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.SecurityHandler
    public void setHashKeyForNextObject(int i, int i2) {
        this.md5.reset();
        this.extra[0] = (byte) i;
        this.extra[1] = (byte) (i >> 8);
        this.extra[2] = (byte) (i >> 16);
        this.extra[3] = (byte) i2;
        this.extra[4] = (byte) (i2 >> 8);
        this.md5.update(this.mkey);
        this.md5.update(this.extra);
        this.md5.update(salt);
        this.nextObjectKey = this.md5.digest();
        this.nextObjectKeySize = this.mkey.length + 5;
        if (this.nextObjectKeySize > 16) {
            this.nextObjectKeySize = 16;
        }
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.PubKeySecurityHandler
    protected String getDigestAlgorithm() {
        return "SHA-1";
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.PubKeySecurityHandler
    protected void initKey(byte[] bArr, int i) {
        this.mkey = new byte[i / 8];
        System.arraycopy(bArr, 0, this.mkey, 0, this.mkey.length);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.PubKeySecurityHandler
    protected void setPubSecSpecificHandlerDicEntries(PdfDictionary pdfDictionary, boolean z, boolean z2) {
        pdfDictionary.put(PdfName.Filter, PdfName.Adobe_PubSec);
        pdfDictionary.put(PdfName.SubFilter, PdfName.Adbe_pkcs7_s5);
        pdfDictionary.put(PdfName.f3056R, new PdfNumber(4));
        pdfDictionary.put(PdfName.f3086V, new PdfNumber(4));
        PdfArray pdfArrayCreateRecipientsArray = createRecipientsArray();
        PdfDictionary pdfDictionary2 = new PdfDictionary();
        pdfDictionary2.put(PdfName.Recipients, pdfArrayCreateRecipientsArray);
        if (!z) {
            pdfDictionary2.put(PdfName.EncryptMetadata, PdfBoolean.FALSE);
        }
        pdfDictionary2.put(PdfName.CFM, PdfName.AESV2);
        pdfDictionary2.put(PdfName.Length, new PdfNumber(128));
        PdfDictionary pdfDictionary3 = new PdfDictionary();
        pdfDictionary3.put(PdfName.DefaultCryptFilter, pdfDictionary2);
        pdfDictionary.put(PdfName.f2984CF, pdfDictionary3);
        if (z2) {
            pdfDictionary.put(PdfName.EFF, PdfName.DefaultCryptFilter);
            pdfDictionary.put(PdfName.StrF, PdfName.Identity);
            pdfDictionary.put(PdfName.StmF, PdfName.Identity);
        } else {
            pdfDictionary.put(PdfName.StrF, PdfName.DefaultCryptFilter);
            pdfDictionary.put(PdfName.StmF, PdfName.DefaultCryptFilter);
        }
    }
}
