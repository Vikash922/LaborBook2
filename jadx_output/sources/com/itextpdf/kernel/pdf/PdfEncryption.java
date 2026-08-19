package com.itextpdf.kernel.pdf;

import com.google.common.base.Ascii;
import com.itextpdf.commons.utils.SystemUtil;
import com.itextpdf.kernel.crypto.IDecryptor;
import com.itextpdf.kernel.crypto.OutputStreamEncryption;
import com.itextpdf.kernel.crypto.securityhandler.PubKeySecurityHandler;
import com.itextpdf.kernel.crypto.securityhandler.PubSecHandlerUsingAes128;
import com.itextpdf.kernel.crypto.securityhandler.PubSecHandlerUsingAes256;
import com.itextpdf.kernel.crypto.securityhandler.PubSecHandlerUsingStandard128;
import com.itextpdf.kernel.crypto.securityhandler.PubSecHandlerUsingStandard40;
import com.itextpdf.kernel.crypto.securityhandler.SecurityHandler;
import com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingAes128;
import com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingAes256;
import com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingStandard128;
import com.itextpdf.kernel.crypto.securityhandler.StandardHandlerUsingStandard40;
import com.itextpdf.kernel.crypto.securityhandler.StandardSecurityHandler;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.security.IExternalDecryptionProcess;
import com.itextpdf.p017io.source.ByteBuffer;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.security.Key;
import java.security.MessageDigest;
import java.security.cert.Certificate;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes6.dex */
public class PdfEncryption extends PdfObjectWrapper<PdfDictionary> {
    private static final int AES_128 = 4;
    private static final int AES_256 = 5;
    private static final int STANDARD_ENCRYPTION_128 = 3;
    private static final int STANDARD_ENCRYPTION_40 = 2;
    private static long seq = SystemUtil.getTimeBasedSeed();
    private int cryptoMode;
    private byte[] documentId;
    private boolean embeddedFilesOnly;
    private boolean encryptMetadata;
    private Long permissions;
    private SecurityHandler securityHandler;

    private int fixAccessibilityPermissionPdf20(int i) {
        return i | 512;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfEncryption(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3, PdfVersion pdfVersion) {
        super(new PdfDictionary());
        this.documentId = bArr3;
        if (pdfVersion != null && pdfVersion.compareTo(PdfVersion.PDF_2_0) >= 0) {
            i = fixAccessibilityPermissionPdf20(i);
        }
        int i3 = i;
        int cryptoMode = setCryptoMode(i2);
        if (cryptoMode == 2) {
            StandardHandlerUsingStandard40 standardHandlerUsingStandard40 = new StandardHandlerUsingStandard40(getPdfObject(), bArr, bArr2, i3, this.encryptMetadata, this.embeddedFilesOnly, bArr3);
            this.permissions = Long.valueOf(standardHandlerUsingStandard40.getPermissions());
            this.securityHandler = standardHandlerUsingStandard40;
            return;
        }
        if (cryptoMode == 3) {
            StandardHandlerUsingStandard128 standardHandlerUsingStandard128 = new StandardHandlerUsingStandard128(getPdfObject(), bArr, bArr2, i3, this.encryptMetadata, this.embeddedFilesOnly, bArr3);
            this.permissions = Long.valueOf(standardHandlerUsingStandard128.getPermissions());
            this.securityHandler = standardHandlerUsingStandard128;
        } else if (cryptoMode == 4) {
            StandardHandlerUsingAes128 standardHandlerUsingAes128 = new StandardHandlerUsingAes128(getPdfObject(), bArr, bArr2, i3, this.encryptMetadata, this.embeddedFilesOnly, bArr3);
            this.permissions = Long.valueOf(standardHandlerUsingAes128.getPermissions());
            this.securityHandler = standardHandlerUsingAes128;
        } else {
            if (cryptoMode != 5) {
                return;
            }
            StandardHandlerUsingAes256 standardHandlerUsingAes256 = new StandardHandlerUsingAes256(getPdfObject(), bArr, bArr2, i3, this.encryptMetadata, this.embeddedFilesOnly, pdfVersion);
            this.permissions = Long.valueOf(standardHandlerUsingAes256.getPermissions());
            this.securityHandler = standardHandlerUsingAes256;
        }
    }

    public PdfEncryption(Certificate[] certificateArr, int[] iArr, int i, PdfVersion pdfVersion) {
        super(new PdfDictionary());
        if (pdfVersion != null && pdfVersion.compareTo(PdfVersion.PDF_2_0) >= 0) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                iArr[i2] = fixAccessibilityPermissionPdf20(iArr[i2]);
            }
        }
        int cryptoMode = setCryptoMode(i);
        if (cryptoMode == 2) {
            this.securityHandler = new PubSecHandlerUsingStandard40(getPdfObject(), certificateArr, iArr, this.encryptMetadata, this.embeddedFilesOnly);
            return;
        }
        if (cryptoMode == 3) {
            this.securityHandler = new PubSecHandlerUsingStandard128(getPdfObject(), certificateArr, iArr, this.encryptMetadata, this.embeddedFilesOnly);
        } else if (cryptoMode == 4) {
            this.securityHandler = new PubSecHandlerUsingAes128(getPdfObject(), certificateArr, iArr, this.encryptMetadata, this.embeddedFilesOnly);
        } else {
            if (cryptoMode != 5) {
                return;
            }
            this.securityHandler = new PubSecHandlerUsingAes256(getPdfObject(), certificateArr, iArr, this.encryptMetadata, this.embeddedFilesOnly);
        }
    }

    public PdfEncryption(PdfDictionary pdfDictionary, byte[] bArr, byte[] bArr2) {
        super(pdfDictionary);
        setForbidRelease();
        this.documentId = bArr2;
        int andSetCryptoModeForStdHandler = readAndSetCryptoModeForStdHandler(pdfDictionary);
        if (andSetCryptoModeForStdHandler == 2) {
            StandardHandlerUsingStandard40 standardHandlerUsingStandard40 = new StandardHandlerUsingStandard40(getPdfObject(), bArr, bArr2, this.encryptMetadata);
            this.permissions = Long.valueOf(standardHandlerUsingStandard40.getPermissions());
            this.securityHandler = standardHandlerUsingStandard40;
            return;
        }
        if (andSetCryptoModeForStdHandler == 3) {
            StandardHandlerUsingStandard128 standardHandlerUsingStandard128 = new StandardHandlerUsingStandard128(getPdfObject(), bArr, bArr2, this.encryptMetadata);
            this.permissions = Long.valueOf(standardHandlerUsingStandard128.getPermissions());
            this.securityHandler = standardHandlerUsingStandard128;
        } else if (andSetCryptoModeForStdHandler == 4) {
            StandardHandlerUsingAes128 standardHandlerUsingAes128 = new StandardHandlerUsingAes128(getPdfObject(), bArr, bArr2, this.encryptMetadata);
            this.permissions = Long.valueOf(standardHandlerUsingAes128.getPermissions());
            this.securityHandler = standardHandlerUsingAes128;
        } else {
            if (andSetCryptoModeForStdHandler != 5) {
                return;
            }
            StandardHandlerUsingAes256 standardHandlerUsingAes256 = new StandardHandlerUsingAes256(getPdfObject(), bArr);
            this.permissions = Long.valueOf(standardHandlerUsingAes256.getPermissions());
            this.encryptMetadata = standardHandlerUsingAes256.isEncryptMetadata();
            this.securityHandler = standardHandlerUsingAes256;
        }
    }

    public PdfEncryption(PdfDictionary pdfDictionary, Key key, Certificate certificate, String str, IExternalDecryptionProcess iExternalDecryptionProcess) {
        super(pdfDictionary);
        setForbidRelease();
        int andSetCryptoModeForPubSecHandler = readAndSetCryptoModeForPubSecHandler(pdfDictionary);
        if (andSetCryptoModeForPubSecHandler == 2) {
            this.securityHandler = new PubSecHandlerUsingStandard40(getPdfObject(), key, certificate, str, iExternalDecryptionProcess, this.encryptMetadata);
            return;
        }
        if (andSetCryptoModeForPubSecHandler == 3) {
            this.securityHandler = new PubSecHandlerUsingStandard128(getPdfObject(), key, certificate, str, iExternalDecryptionProcess, this.encryptMetadata);
        } else if (andSetCryptoModeForPubSecHandler == 4) {
            this.securityHandler = new PubSecHandlerUsingAes128(getPdfObject(), key, certificate, str, iExternalDecryptionProcess, this.encryptMetadata);
        } else {
            if (andSetCryptoModeForPubSecHandler != 5) {
                return;
            }
            this.securityHandler = new PubSecHandlerUsingAes256(getPdfObject(), key, certificate, str, iExternalDecryptionProcess, this.encryptMetadata);
        }
    }

    public static byte[] generateNewDocumentId() {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            long timeBasedSeed = SystemUtil.getTimeBasedSeed();
            StringBuilder sbAppend = new StringBuilder().append(timeBasedSeed).append(Marker.ANY_NON_NULL_MARKER).append(SystemUtil.getFreeMemory()).append(Marker.ANY_NON_NULL_MARKER);
            long j = seq;
            seq = 1 + j;
            return messageDigest.digest(sbAppend.append(j).toString().getBytes(StandardCharsets.ISO_8859_1));
        } catch (Exception e) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_ENCRYPTION, (Throwable) e);
        }
    }

    public static PdfObject createInfoId(byte[] bArr, boolean z) {
        if (z) {
            return createInfoId(bArr, generateNewDocumentId());
        }
        return createInfoId(bArr, bArr);
    }

    public static PdfObject createInfoId(byte[] bArr, byte[] bArr2) {
        if (bArr.length < 16) {
            bArr = padByteArrayTo16(bArr);
        }
        if (bArr2.length < 16) {
            bArr2 = padByteArrayTo16(bArr2);
        }
        ByteBuffer byteBuffer = new ByteBuffer(90);
        byteBuffer.append(91).append(60);
        for (byte b : bArr) {
            byteBuffer.appendHex(b);
        }
        byteBuffer.append(62).append(60);
        for (byte b2 : bArr2) {
            byteBuffer.appendHex(b2);
        }
        byteBuffer.append(62).append(93);
        return new PdfLiteral(byteBuffer.toByteArray());
    }

    private static byte[] padByteArrayTo16(byte[] bArr) {
        byte[] bArr2 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Ascii.f397VT, Ascii.f386FF, Ascii.f384CR, Ascii.f394SO, Ascii.f393SI};
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public Long getPermissions() {
        return this.permissions;
    }

    public int getCryptoMode() {
        return this.cryptoMode;
    }

    public boolean isMetadataEncrypted() {
        return this.encryptMetadata;
    }

    public boolean isEmbeddedFilesOnly() {
        return this.embeddedFilesOnly;
    }

    public byte[] getDocumentId() {
        return this.documentId;
    }

    public void setHashKeyForNextObject(int i, int i2) {
        this.securityHandler.setHashKeyForNextObject(i, i2);
    }

    public OutputStreamEncryption getEncryptionStream(OutputStream outputStream) {
        return this.securityHandler.getEncryptionStream(outputStream);
    }

    public byte[] encryptByteArray(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        OutputStreamEncryption encryptionStream = getEncryptionStream(byteArrayOutputStream);
        try {
            encryptionStream.write(bArr);
            encryptionStream.finish();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_ENCRYPTION, (Throwable) e);
        }
    }

    public byte[] decryptByteArray(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            IDecryptor decryptor = this.securityHandler.getDecryptor();
            byte[] bArrUpdate = decryptor.update(bArr, 0, bArr.length);
            if (bArrUpdate != null) {
                byteArrayOutputStream.write(bArrUpdate);
            }
            byte[] bArrFinish = decryptor.finish();
            if (bArrFinish != null) {
                byteArrayOutputStream.write(bArrFinish);
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_ENCRYPTION, (Throwable) e);
        }
    }

    public boolean isOpenedWithFullPermission() {
        SecurityHandler securityHandler = this.securityHandler;
        if (!(securityHandler instanceof PubKeySecurityHandler) && (securityHandler instanceof StandardSecurityHandler)) {
            return ((StandardSecurityHandler) securityHandler).isUsedOwnerPassword();
        }
        return true;
    }

    public byte[] computeUserPassword(byte[] bArr) {
        SecurityHandler securityHandler = this.securityHandler;
        if (securityHandler instanceof StandardHandlerUsingStandard40) {
            return ((StandardHandlerUsingStandard40) securityHandler).computeUserPassword(bArr, getPdfObject());
        }
        return null;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        super.flush();
    }

    private void setKeyLength(int i) {
        if (i != 40) {
            getPdfObject().put(PdfName.Length, new PdfNumber(i));
        }
    }

    private int setCryptoMode(int i) {
        return setCryptoMode(i, 0);
    }

    private int setCryptoMode(int i, int i2) {
        this.cryptoMode = i;
        this.encryptMetadata = (i & 8) != 8;
        this.embeddedFilesOnly = (i & 24) == 24;
        int i3 = i & 7;
        if (i3 == 0) {
            this.encryptMetadata = true;
            this.embeddedFilesOnly = false;
            setKeyLength(40);
            return 2;
        }
        if (i3 == 1) {
            if (i2 > 0) {
                setKeyLength(i2);
            } else {
                setKeyLength(128);
            }
            return 3;
        }
        if (i3 == 2) {
            setKeyLength(128);
            return 4;
        }
        if (i3 == 3) {
            setKeyLength(256);
            return 5;
        }
        throw new PdfException(KernelExceptionMessageConstant.NO_VALID_ENCRYPTION_MODE);
    }

    private int readAndSetCryptoModeForStdHandler(PdfDictionary pdfDictionary) {
        int i;
        int i2;
        PdfNumber asNumber = pdfDictionary.getAsNumber(PdfName.f3056R);
        if (asNumber == null) {
            throw new PdfException(KernelExceptionMessageConstant.ILLEGAL_R_VALUE);
        }
        int iIntValue = asNumber.intValue();
        boolean embeddedFilesOnlyFromEncryptDictionary = readEmbeddedFilesOnlyFromEncryptDictionary(pdfDictionary);
        int i3 = 2;
        int i4 = 0;
        if (iIntValue != 2) {
            int i5 = 3;
            if (iIntValue == 3) {
                PdfNumber asNumber2 = pdfDictionary.getAsNumber(PdfName.Length);
                if (asNumber2 == null) {
                    throw new PdfException(KernelExceptionMessageConstant.ILLEGAL_LENGTH_VALUE);
                }
                int iIntValue2 = asNumber2.intValue();
                if (iIntValue2 > 128 || iIntValue2 < 40 || iIntValue2 % 8 != 0) {
                    throw new PdfException(KernelExceptionMessageConstant.ILLEGAL_LENGTH_VALUE);
                }
                i = iIntValue2;
                i4 = 1;
            } else if (iIntValue == 4) {
                PdfDictionary pdfDictionary2 = (PdfDictionary) pdfDictionary.get(PdfName.f2984CF);
                if (pdfDictionary2 == null) {
                    throw new PdfException(KernelExceptionMessageConstant.CF_NOT_FOUND_ENCRYPTION);
                }
                PdfDictionary pdfDictionary3 = (PdfDictionary) pdfDictionary2.get(PdfName.StdCF);
                if (pdfDictionary3 == null) {
                    throw new PdfException(KernelExceptionMessageConstant.STDCF_NOT_FOUND_ENCRYPTION);
                }
                if (PdfName.f3087V2.equals(pdfDictionary3.get(PdfName.CFM))) {
                    i3 = 1;
                } else if (!PdfName.AESV2.equals(pdfDictionary3.get(PdfName.CFM))) {
                    throw new PdfException(KernelExceptionMessageConstant.NO_COMPATIBLE_ENCRYPTION_FOUND);
                }
                PdfBoolean asBoolean = pdfDictionary.getAsBoolean(PdfName.EncryptMetadata);
                if (asBoolean != null && !asBoolean.getValue()) {
                    i3 |= 8;
                }
                if (embeddedFilesOnlyFromEncryptDictionary) {
                    i2 = i3 | 24;
                    i4 = i2;
                    i = 0;
                } else {
                    i = 0;
                    i4 = i3;
                }
            } else if (iIntValue == 5 || iIntValue == 6) {
                PdfBoolean asBoolean2 = pdfDictionary.getAsBoolean(PdfName.EncryptMetadata);
                if (asBoolean2 != null && !asBoolean2.getValue()) {
                    i5 = 11;
                }
                if (embeddedFilesOnlyFromEncryptDictionary) {
                    i2 = 27;
                    i4 = i2;
                    i = 0;
                } else {
                    i = 0;
                    i4 = i5;
                }
            } else {
                throw new PdfException(KernelExceptionMessageConstant.UNKNOWN_ENCRYPTION_TYPE_R).setMessageParams(asNumber);
            }
        } else {
            i = 0;
        }
        return setCryptoMode(i4, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int readAndSetCryptoModeForPubSecHandler(com.itextpdf.kernel.pdf.PdfDictionary r8) {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.PdfEncryption.readAndSetCryptoModeForPubSecHandler(com.itextpdf.kernel.pdf.PdfDictionary):int");
    }

    static boolean readEmbeddedFilesOnlyFromEncryptDictionary(PdfDictionary pdfDictionary) {
        PdfDictionary asDictionary;
        PdfName asName = pdfDictionary.getAsName(PdfName.EFF);
        return PdfName.Identity.equals(pdfDictionary.getAsName(PdfName.StmF)) && PdfName.Identity.equals(pdfDictionary.getAsName(PdfName.StrF)) && (!PdfName.Identity.equals(asName) && asName != null) && (asDictionary = pdfDictionary.getAsDictionary(PdfName.f2984CF)) != null && asDictionary.getAsDictionary(asName) != null;
    }
}
