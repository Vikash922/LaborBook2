package com.itextpdf.kernel.crypto.securityhandler;

import com.itextpdf.kernel.crypto.IDecryptor;
import com.itextpdf.kernel.crypto.OutputStreamEncryption;
import com.itextpdf.kernel.crypto.OutputStreamStandardEncryption;
import com.itextpdf.kernel.crypto.StandardDecryptor;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.security.IExternalDecryptionProcess;
import java.io.OutputStream;
import java.security.Key;
import java.security.cert.Certificate;

/* JADX INFO: loaded from: classes6.dex */
public class PubSecHandlerUsingStandard40 extends PubKeySecurityHandler {
    public PubSecHandlerUsingStandard40(PdfDictionary pdfDictionary, Certificate[] certificateArr, int[] iArr, boolean z, boolean z2) {
        initKeyAndFillDictionary(pdfDictionary, certificateArr, iArr, z, z2);
    }

    public PubSecHandlerUsingStandard40(PdfDictionary pdfDictionary, Key key, Certificate certificate, String str, IExternalDecryptionProcess iExternalDecryptionProcess, boolean z) {
        initKeyAndReadDictionary(pdfDictionary, key, certificate, str, iExternalDecryptionProcess, z);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.SecurityHandler
    public OutputStreamEncryption getEncryptionStream(OutputStream outputStream) {
        return new OutputStreamStandardEncryption(outputStream, this.nextObjectKey, 0, this.nextObjectKeySize);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.SecurityHandler
    public IDecryptor getDecryptor() {
        return new StandardDecryptor(this.nextObjectKey, 0, this.nextObjectKeySize);
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
        pdfDictionary.put(PdfName.f3056R, new PdfNumber(2));
        PdfArray pdfArrayCreateRecipientsArray = createRecipientsArray();
        pdfDictionary.put(PdfName.f3086V, new PdfNumber(1));
        pdfDictionary.put(PdfName.SubFilter, PdfName.Adbe_pkcs7_s4);
        pdfDictionary.put(PdfName.Recipients, pdfArrayCreateRecipientsArray);
    }
}
