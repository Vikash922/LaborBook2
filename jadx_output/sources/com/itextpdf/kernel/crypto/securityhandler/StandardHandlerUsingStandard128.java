package com.itextpdf.kernel.crypto.securityhandler;

import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;

/* JADX INFO: loaded from: classes6.dex */
public class StandardHandlerUsingStandard128 extends StandardHandlerUsingStandard40 {
    public StandardHandlerUsingStandard128(PdfDictionary pdfDictionary, byte[] bArr, byte[] bArr2, int i, boolean z, boolean z2, byte[] bArr3) {
        super(pdfDictionary, bArr, bArr2, i, z, z2, bArr3);
    }

    public StandardHandlerUsingStandard128(PdfDictionary pdfDictionary, byte[] bArr, byte[] bArr2, boolean z) {
        super(pdfDictionary, bArr, bArr2, z);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingStandard40
    protected void calculatePermissions(int i) {
        this.permissions = (i | (-3904)) & (-4);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingStandard40
    protected byte[] computeOwnerKey(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[32];
        byte[] bArrDigest = this.md5.digest(bArr2);
        int i = this.keyLength / 8;
        byte[] bArr4 = new byte[i];
        for (int i2 = 0; i2 < 50; i2++) {
            this.md5.update(bArrDigest, 0, i);
            System.arraycopy(this.md5.digest(), 0, bArrDigest, 0, i);
        }
        System.arraycopy(bArr, 0, bArr3, 0, 32);
        for (int i3 = 0; i3 < 20; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                bArr4[i4] = (byte) (bArrDigest[i4] ^ i3);
            }
            this.arcfour.prepareARCFOURKey(bArr4);
            this.arcfour.encryptARCFOUR(bArr3);
        }
        return bArr3;
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingStandard40
    protected void computeGlobalEncryptionKey(byte[] bArr, byte[] bArr2, boolean z) {
        this.mkey = new byte[this.keyLength / 8];
        this.md5.reset();
        this.md5.update(bArr);
        this.md5.update(bArr2);
        this.md5.update(new byte[]{(byte) this.permissions, (byte) (this.permissions >> 8), (byte) (this.permissions >> 16), (byte) (this.permissions >> 24)}, 0, 4);
        if (this.documentId != null) {
            this.md5.update(this.documentId);
        }
        if (!z) {
            this.md5.update(metadataPad);
        }
        byte[] bArr3 = new byte[this.mkey.length];
        System.arraycopy(this.md5.digest(), 0, bArr3, 0, this.mkey.length);
        for (int i = 0; i < 50; i++) {
            System.arraycopy(this.md5.digest(bArr3), 0, bArr3, 0, this.mkey.length);
        }
        System.arraycopy(bArr3, 0, this.mkey, 0, this.mkey.length);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingStandard40
    protected byte[] computeUserKey() {
        byte[] bArr = new byte[32];
        this.md5.update(pad);
        byte[] bArrDigest = this.md5.digest(this.documentId);
        System.arraycopy(bArrDigest, 0, bArr, 0, 16);
        for (int i = 16; i < 32; i++) {
            bArr[i] = 0;
        }
        for (int i2 = 0; i2 < 20; i2++) {
            for (int i3 = 0; i3 < this.mkey.length; i3++) {
                bArrDigest[i3] = (byte) (this.mkey[i3] ^ i2);
            }
            this.arcfour.prepareARCFOURKey(bArrDigest, 0, this.mkey.length);
            this.arcfour.encryptARCFOUR(bArr, 0, 16);
        }
        return bArr;
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingStandard40
    protected void setSpecificHandlerDicEntries(PdfDictionary pdfDictionary, boolean z, boolean z2) {
        if (z) {
            pdfDictionary.put(PdfName.f3056R, new PdfNumber(3));
            pdfDictionary.put(PdfName.f3086V, new PdfNumber(2));
            return;
        }
        pdfDictionary.put(PdfName.EncryptMetadata, PdfBoolean.FALSE);
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
        pdfDictionary2.put(PdfName.CFM, PdfName.f3087V2);
        PdfDictionary pdfDictionary3 = new PdfDictionary();
        pdfDictionary3.put(PdfName.StdCF, pdfDictionary2);
        pdfDictionary.put(PdfName.f2984CF, pdfDictionary3);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingStandard40
    protected boolean isValidPassword(byte[] bArr, byte[] bArr2) {
        return !equalsArray(bArr, bArr2, 16);
    }
}
