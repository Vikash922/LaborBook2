package com.itextpdf.kernel.crypto.securityhandler;

import com.google.common.base.Ascii;
import com.itextpdf.kernel.crypto.ARCFOUREncryption;
import com.itextpdf.kernel.crypto.IDecryptor;
import com.itextpdf.kernel.crypto.OutputStreamEncryption;
import com.itextpdf.kernel.crypto.OutputStreamStandardEncryption;
import com.itextpdf.kernel.crypto.StandardDecryptor;
import com.itextpdf.kernel.exceptions.BadPasswordException;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes6.dex */
public class StandardHandlerUsingStandard40 extends StandardSecurityHandler {
    protected ARCFOUREncryption arcfour = new ARCFOUREncryption();
    protected byte[] documentId;
    protected int keyLength;
    protected static final byte[] pad = {40, -65, 78, 94, 78, 117, -118, 65, 100, 0, 78, 86, -1, -6, 1, 8, 46, 46, 0, -74, -48, 104, 62, -128, 47, Ascii.f386FF, -87, -2, 100, 83, 105, 122};
    protected static final byte[] metadataPad = {-1, -1, -1, -1};

    public StandardHandlerUsingStandard40(PdfDictionary pdfDictionary, byte[] bArr, byte[] bArr2, int i, boolean z, boolean z2, byte[] bArr3) {
        initKeyAndFillDictionary(pdfDictionary, bArr, bArr2, i, z, z2, bArr3);
    }

    public StandardHandlerUsingStandard40(PdfDictionary pdfDictionary, byte[] bArr, byte[] bArr2, boolean z) {
        initKeyAndReadDictionary(pdfDictionary, bArr, bArr2, z);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.SecurityHandler
    public OutputStreamEncryption getEncryptionStream(OutputStream outputStream) {
        return new OutputStreamStandardEncryption(outputStream, this.nextObjectKey, 0, this.nextObjectKeySize);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.SecurityHandler
    public IDecryptor getDecryptor() {
        return new StandardDecryptor(this.nextObjectKey, 0, this.nextObjectKeySize);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] computeUserPassword(byte[] r5, com.itextpdf.kernel.pdf.PdfDictionary r6) {
        /*
            r4 = this;
            com.itextpdf.kernel.pdf.PdfName r0 = com.itextpdf.kernel.pdf.PdfName.f3041O
            com.itextpdf.kernel.pdf.PdfString r6 = r6.getAsString(r0)
            byte[] r6 = r4.getIsoBytes(r6)
            byte[] r5 = r4.padPassword(r5)
            byte[] r5 = r4.computeOwnerKey(r6, r5)
            r6 = 0
            r0 = r6
        L14:
            int r1 = r5.length
            if (r0 >= r1) goto L32
            r1 = r6
        L18:
            int r2 = r5.length
            int r2 = r2 - r0
            if (r1 >= r2) goto L2c
            int r2 = r0 + r1
            r2 = r5[r2]
            byte[] r3 = com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingStandard40.pad
            r3 = r3[r1]
            if (r2 == r3) goto L29
            int r0 = r0 + 1
            goto L14
        L29:
            int r1 = r1 + 1
            goto L18
        L2c:
            byte[] r1 = new byte[r0]
            java.lang.System.arraycopy(r5, r6, r1, r6, r0)
            return r1
        L32:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingStandard40.computeUserPassword(byte[], com.itextpdf.kernel.pdf.PdfDictionary):byte[]");
    }

    protected void calculatePermissions(int i) {
        this.permissions = (i | (-64)) & (-4);
    }

    protected byte[] computeOwnerKey(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[32];
        this.arcfour.prepareARCFOURKey(this.md5.digest(bArr2), 0, 5);
        this.arcfour.encryptARCFOUR(bArr, bArr3);
        return bArr3;
    }

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
        System.arraycopy(bArr3, 0, this.mkey, 0, this.mkey.length);
    }

    protected byte[] computeUserKey() {
        byte[] bArr = new byte[32];
        this.arcfour.prepareARCFOURKey(this.mkey);
        this.arcfour.encryptARCFOUR(pad, bArr);
        return bArr;
    }

    protected void setSpecificHandlerDicEntries(PdfDictionary pdfDictionary, boolean z, boolean z2) {
        pdfDictionary.put(PdfName.f3056R, new PdfNumber(2));
        pdfDictionary.put(PdfName.f3086V, new PdfNumber(1));
    }

    protected boolean isValidPassword(byte[] bArr, byte[] bArr2) {
        return !equalsArray(bArr, bArr2, 32);
    }

    private void initKeyAndFillDictionary(PdfDictionary pdfDictionary, byte[] bArr, byte[] bArr2, int i, boolean z, boolean z2, byte[] bArr3) {
        byte[] bArrGenerateOwnerPasswordIfNullOrEmpty = generateOwnerPasswordIfNullOrEmpty(bArr2);
        calculatePermissions(i);
        this.documentId = bArr3;
        this.keyLength = getKeyLength(pdfDictionary);
        byte[] bArrPadPassword = padPassword(bArr);
        byte[] bArrComputeOwnerKey = computeOwnerKey(bArrPadPassword, padPassword(bArrGenerateOwnerPasswordIfNullOrEmpty));
        computeGlobalEncryptionKey(bArrPadPassword, bArrComputeOwnerKey, z);
        setStandardHandlerDicEntries(pdfDictionary, computeUserKey(), bArrComputeOwnerKey);
        setSpecificHandlerDicEntries(pdfDictionary, z, z2);
    }

    private void initKeyAndReadDictionary(PdfDictionary pdfDictionary, byte[] bArr, byte[] bArr2, boolean z) {
        byte[] isoBytes = getIsoBytes(pdfDictionary.getAsString(PdfName.f3083U));
        byte[] isoBytes2 = getIsoBytes(pdfDictionary.getAsString(PdfName.f3041O));
        this.permissions = ((PdfNumber) pdfDictionary.get(PdfName.f3047P)).longValue();
        this.documentId = bArr2;
        this.keyLength = getKeyLength(pdfDictionary);
        checkPassword(z, isoBytes, isoBytes2, padPassword(bArr));
    }

    private void checkPassword(boolean z, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        computeGlobalEncryptionKey(computeOwnerKey(bArr2, bArr3), bArr2, z);
        if (isValidPassword(bArr, computeUserKey())) {
            computeGlobalEncryptionKey(bArr3, bArr2, z);
            if (isValidPassword(bArr, computeUserKey())) {
                throw new BadPasswordException(KernelExceptionMessageConstant.BAD_USER_PASSWORD);
            }
            this.usedOwnerPassword = false;
        }
    }

    private byte[] padPassword(byte[] bArr) {
        byte[] bArr2 = new byte[32];
        if (bArr == null) {
            System.arraycopy(pad, 0, bArr2, 0, 32);
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, 32));
            if (bArr.length < 32) {
                System.arraycopy(pad, 0, bArr2, bArr.length, 32 - bArr.length);
            }
        }
        return bArr2;
    }

    private int getKeyLength(PdfDictionary pdfDictionary) {
        Integer asInt = pdfDictionary.getAsInt(PdfName.Length);
        if (asInt != null) {
            return asInt.intValue();
        }
        return 40;
    }
}
