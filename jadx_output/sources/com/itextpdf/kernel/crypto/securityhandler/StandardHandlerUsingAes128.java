package com.itextpdf.kernel.crypto.securityhandler;

import com.itextpdf.kernel.crypto.AesDecryptor;
import com.itextpdf.kernel.crypto.IDecryptor;
import com.itextpdf.kernel.crypto.OutputStreamAesEncryption;
import com.itextpdf.kernel.crypto.OutputStreamEncryption;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes6.dex */
public class StandardHandlerUsingAes128 extends StandardHandlerUsingStandard128 {
    private static final byte[] salt = {115, 65, 108, 84};

    public StandardHandlerUsingAes128(PdfDictionary pdfDictionary, byte[] bArr, byte[] bArr2, int i, boolean z, boolean z2, byte[] bArr3) {
        super(pdfDictionary, bArr, bArr2, i, z, z2, bArr3);
    }

    public StandardHandlerUsingAes128(PdfDictionary pdfDictionary, byte[] bArr, byte[] bArr2, boolean z) {
        super(pdfDictionary, bArr, bArr2, z);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingStandard40, com.itextpdf.kernel.crypto.securityhandler.SecurityHandler
    public OutputStreamEncryption getEncryptionStream(OutputStream outputStream) {
        return new OutputStreamAesEncryption(outputStream, this.nextObjectKey, 0, this.nextObjectKeySize);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingStandard40, com.itextpdf.kernel.crypto.securityhandler.SecurityHandler
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

    @Override // com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingStandard128, com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingStandard40
    protected void setSpecificHandlerDicEntries(PdfDictionary pdfDictionary, boolean z, boolean z2) {
        if (!z) {
            pdfDictionary.put(PdfName.EncryptMetadata, PdfBoolean.FALSE);
        }
        pdfDictionary.put(PdfName.f3056R, new PdfNumber(4));
        pdfDictionary.put(PdfName.f3086V, new PdfNumber(4));
        PdfDictionary pdfDictionary2 = new PdfDictionary();
        pdfDictionary2.put(PdfName.Length, new PdfNumber(16));
        if (z2) {
            pdfDictionary2.put(PdfName.AuthEvent, PdfName.EFOpen);
            pdfDictionary.put(PdfName.EFF, PdfName.StdCF);
            pdfDictionary.put(PdfName.StrF, PdfName.Identity);
            pdfDictionary.put(PdfName.StmF, PdfName.Identity);
        } else {
            pdfDictionary2.put(PdfName.AuthEvent, PdfName.DocOpen);
            pdfDictionary.put(PdfName.StrF, PdfName.StdCF);
            pdfDictionary.put(PdfName.StmF, PdfName.StdCF);
        }
        pdfDictionary2.put(PdfName.CFM, PdfName.AESV2);
        PdfDictionary pdfDictionary3 = new PdfDictionary();
        pdfDictionary3.put(PdfName.StdCF, pdfDictionary2);
        pdfDictionary.put(PdfName.f2984CF, pdfDictionary3);
    }
}
