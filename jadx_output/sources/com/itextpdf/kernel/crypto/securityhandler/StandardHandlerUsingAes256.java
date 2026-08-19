package com.itextpdf.kernel.crypto.securityhandler;

import com.itextpdf.kernel.crypto.AESCipherCBCnoPad;
import com.itextpdf.kernel.crypto.AesDecryptor;
import com.itextpdf.kernel.crypto.IDecryptor;
import com.itextpdf.kernel.crypto.IVGenerator;
import com.itextpdf.kernel.crypto.OutputStreamAesEncryption;
import com.itextpdf.kernel.crypto.OutputStreamEncryption;
import com.itextpdf.kernel.exceptions.BadPasswordException;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfLiteral;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfVersion;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.util.StreamUtil;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class StandardHandlerUsingAes256 extends StandardSecurityHandler {
    private static final int KEY_SALT_OFFSET = 40;
    private static final int SALT_LENGTH = 8;
    private static final int VALIDATION_SALT_OFFSET = 32;
    protected boolean encryptMetadata;
    private boolean isPdf2;

    @Override // com.itextpdf.kernel.crypto.securityhandler.SecurityHandler
    public void setHashKeyForNextObject(int i, int i2) {
    }

    public StandardHandlerUsingAes256(PdfDictionary pdfDictionary, byte[] bArr, byte[] bArr2, int i, boolean z, boolean z2, PdfVersion pdfVersion) {
        this.isPdf2 = pdfVersion != null && pdfVersion.compareTo(PdfVersion.PDF_2_0) >= 0;
        initKeyAndFillDictionary(pdfDictionary, bArr, bArr2, i, z, z2);
    }

    public StandardHandlerUsingAes256(PdfDictionary pdfDictionary, byte[] bArr) {
        initKeyAndReadDictionary(pdfDictionary, bArr);
    }

    public boolean isEncryptMetadata() {
        return this.encryptMetadata;
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.SecurityHandler
    public OutputStreamEncryption getEncryptionStream(OutputStream outputStream) {
        return new OutputStreamAesEncryption(outputStream, this.nextObjectKey, 0, this.nextObjectKeySize);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.SecurityHandler
    public IDecryptor getDecryptor() {
        return new AesDecryptor(this.nextObjectKey, 0, this.nextObjectKeySize);
    }

    private void initKeyAndFillDictionary(PdfDictionary pdfDictionary, byte[] bArr, byte[] bArr2, int i, boolean z, boolean z2) {
        byte[] bArrCopyOf = bArr;
        byte[] bArrGenerateOwnerPasswordIfNullOrEmpty = generateOwnerPasswordIfNullOrEmpty(bArr2);
        int i2 = (i | (-3904)) & (-4);
        try {
            if (bArrCopyOf == null) {
                bArrCopyOf = new byte[0];
            } else if (bArrCopyOf.length > 127) {
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, 127);
            }
            if (bArrGenerateOwnerPasswordIfNullOrEmpty.length > 127) {
                bArrGenerateOwnerPasswordIfNullOrEmpty = Arrays.copyOf(bArrGenerateOwnerPasswordIfNullOrEmpty, 127);
            }
            byte[] bArr3 = bArrGenerateOwnerPasswordIfNullOrEmpty;
            byte[] iv = IVGenerator.getIV(16);
            byte[] iv2 = IVGenerator.getIV(16);
            this.nextObjectKey = IVGenerator.getIV(32);
            this.nextObjectKeySize = 32;
            byte[] bArrCopyOf2 = Arrays.copyOf(computeHash(bArrCopyOf, iv, 0, 8), 48);
            System.arraycopy(iv, 0, bArrCopyOf2, 32, 16);
            byte[] bArrProcessBlock = new AESCipherCBCnoPad(true, computeHash(bArrCopyOf, iv, 8, 8)).processBlock(this.nextObjectKey, 0, this.nextObjectKey.length);
            byte[] bArrCopyOf3 = Arrays.copyOf(computeHash(bArr3, iv2, 0, 8, bArrCopyOf2), 48);
            System.arraycopy(iv2, 0, bArrCopyOf3, 32, 16);
            byte[] bArrProcessBlock2 = new AESCipherCBCnoPad(true, computeHash(bArr3, iv2, 8, 8, bArrCopyOf2)).processBlock(this.nextObjectKey, 0, this.nextObjectKey.length);
            byte[] iv3 = IVGenerator.getIV(16);
            iv3[0] = (byte) i2;
            iv3[1] = (byte) (i2 >> 8);
            iv3[2] = (byte) (-1);
            iv3[3] = (byte) (-1);
            iv3[4] = -1;
            iv3[5] = -1;
            iv3[6] = -1;
            iv3[7] = -1;
            iv3[8] = z ? (byte) 84 : (byte) 70;
            iv3[9] = 97;
            iv3[10] = 100;
            iv3[11] = 98;
            byte[] bArrProcessBlock3 = new AESCipherCBCnoPad(true, this.nextObjectKey).processBlock(iv3, 0, iv3.length);
            this.permissions = i2;
            this.encryptMetadata = z;
            setStandardHandlerDicEntries(pdfDictionary, bArrCopyOf2, bArrCopyOf3);
            setAES256DicEntries(pdfDictionary, bArrProcessBlock2, bArrProcessBlock, bArrProcessBlock3, z, z2);
        } catch (Exception e) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_ENCRYPTION, (Throwable) e);
        }
    }

    private void setAES256DicEntries(PdfDictionary pdfDictionary, byte[] bArr, byte[] bArr2, byte[] bArr3, boolean z, boolean z2) {
        pdfDictionary.put(PdfName.f3043OE, new PdfLiteral(StreamUtil.createEscapedString(bArr)));
        pdfDictionary.put(PdfName.f3084UE, new PdfLiteral(StreamUtil.createEscapedString(bArr2)));
        pdfDictionary.put(PdfName.Perms, new PdfLiteral(StreamUtil.createEscapedString(bArr3)));
        pdfDictionary.put(PdfName.f3056R, new PdfNumber(this.isPdf2 ? 6 : 5));
        pdfDictionary.put(PdfName.f3086V, new PdfNumber(5));
        PdfDictionary pdfDictionary2 = new PdfDictionary();
        pdfDictionary2.put(PdfName.Length, new PdfNumber(32));
        if (!z) {
            pdfDictionary.put(PdfName.EncryptMetadata, PdfBoolean.FALSE);
        }
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
        pdfDictionary2.put(PdfName.CFM, PdfName.AESV3);
        PdfDictionary pdfDictionary3 = new PdfDictionary();
        pdfDictionary3.put(PdfName.StdCF, pdfDictionary2);
        pdfDictionary.put(PdfName.f2984CF, pdfDictionary3);
    }

    private void initKeyAndReadDictionary(PdfDictionary pdfDictionary, byte[] bArr) {
        int i;
        String str;
        int i2;
        byte[] bArrCopyOf = bArr;
        try {
            if (bArrCopyOf == null) {
                bArrCopyOf = new byte[0];
            } else if (bArrCopyOf.length > 127) {
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, 127);
            }
            byte[] bArr2 = bArrCopyOf;
            this.isPdf2 = pdfDictionary.getAsNumber(PdfName.f3056R).getValue() == 6.0d;
            byte[] isoBytes = getIsoBytes(pdfDictionary.getAsString(PdfName.f3041O));
            byte[] isoBytes2 = getIsoBytes(pdfDictionary.getAsString(PdfName.f3083U));
            byte[] isoBytes3 = getIsoBytes(pdfDictionary.getAsString(PdfName.f3043OE));
            byte[] isoBytes4 = getIsoBytes(pdfDictionary.getAsString(PdfName.f3084UE));
            byte[] isoBytes5 = getIsoBytes(pdfDictionary.getAsString(PdfName.Perms));
            this.permissions = ((PdfNumber) pdfDictionary.get(PdfName.f3047P)).longValue();
            this.usedOwnerPassword = compareArray(computeHash(bArr2, isoBytes, 32, 8, isoBytes2), isoBytes, 32);
            if (this.usedOwnerPassword) {
                i = 8;
                this.nextObjectKey = new AESCipherCBCnoPad(false, computeHash(bArr2, isoBytes, 40, 8, isoBytes2)).processBlock(isoBytes3, 0, isoBytes3.length);
                str = KernelExceptionMessageConstant.BAD_USER_PASSWORD;
                i2 = 32;
            } else {
                i = 8;
                str = KernelExceptionMessageConstant.BAD_USER_PASSWORD;
                i2 = 32;
                if (!compareArray(computeHash(bArr2, isoBytes2, 32, 8), isoBytes2, 32)) {
                    throw new BadPasswordException(str);
                }
                this.nextObjectKey = new AESCipherCBCnoPad(false, computeHash(bArr2, isoBytes2, 40, 8)).processBlock(isoBytes4, 0, isoBytes4.length);
            }
            this.nextObjectKeySize = i2;
            byte[] bArrProcessBlock = new AESCipherCBCnoPad(false, this.nextObjectKey).processBlock(isoBytes5, 0, isoBytes5.length);
            if (bArrProcessBlock[9] != 97 || bArrProcessBlock[10] != 100 || bArrProcessBlock[11] != 98) {
                throw new BadPasswordException(str);
            }
            int i3 = (bArrProcessBlock[0] & 255) | ((bArrProcessBlock[1] & 255) << i) | ((bArrProcessBlock[2] & 255) << 16) | ((bArrProcessBlock[3] & 255) << 24);
            boolean z = bArrProcessBlock[i] == 84;
            Boolean asBool = pdfDictionary.getAsBool(PdfName.EncryptMetadata);
            long j = i3;
            if (j != this.permissions || (asBool != null && z != asBool.booleanValue())) {
                LoggerFactory.getLogger((Class<?>) StandardHandlerUsingAes256.class).error(IoLogMessageConstant.f2893x3e742566);
            }
            this.permissions = j;
            this.encryptMetadata = z;
        } catch (BadPasswordException e) {
            throw e;
        } catch (Exception e2) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_ENCRYPTION, (Throwable) e2);
        }
    }

    private byte[] computeHash(byte[] bArr, byte[] bArr2, int i, int i2) throws NoSuchAlgorithmException {
        return computeHash(bArr, bArr2, i, i2, null);
    }

    private byte[] computeHash(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3) throws NoSuchAlgorithmException {
        byte[] bArrDigest;
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(bArr);
        messageDigest.update(bArr2, i, i2);
        if (bArr3 != null) {
            messageDigest.update(bArr3);
        }
        byte[] bArrDigest2 = messageDigest.digest();
        if (!this.isPdf2) {
            return bArrDigest2;
        }
        MessageDigest messageDigest2 = MessageDigest.getInstance("SHA-384");
        MessageDigest messageDigest3 = MessageDigest.getInstance("SHA-512");
        int i3 = 0;
        int length = bArr3 != null ? bArr3.length : 0;
        int length2 = bArr.length + length;
        int i4 = 0;
        while (true) {
            int length3 = bArrDigest2.length + length2;
            int i5 = length3 * 64;
            byte[] bArr4 = new byte[i5];
            System.arraycopy(bArr, i3, bArr4, i3, bArr.length);
            System.arraycopy(bArrDigest2, i3, bArr4, bArr.length, bArrDigest2.length);
            if (bArr3 != null) {
                System.arraycopy(bArr3, i3, bArr4, bArr.length + bArrDigest2.length, length);
            }
            for (int i6 = 1; i6 < 64; i6++) {
                System.arraycopy(bArr4, i3, bArr4, length3 * i6, length3);
            }
            byte[] bArrProcessBlock = new AESCipherCBCnoPad(true, Arrays.copyOf(bArrDigest2, 16), Arrays.copyOfRange(bArrDigest2, 16, 32)).processBlock(bArr4, 0, i5);
            int iIntValue = new BigInteger(1, Arrays.copyOf(bArrProcessBlock, 16)).remainder(BigInteger.valueOf(3L)).intValue();
            bArrDigest = (iIntValue != 0 ? iIntValue != 1 ? iIntValue != 2 ? null : messageDigest3 : messageDigest2 : messageDigest).digest(bArrProcessBlock);
            int i7 = i4 + 1;
            if (i7 > 63 && (bArrProcessBlock[bArrProcessBlock.length - 1] & 255) <= i4 - 31) {
                break;
            }
            bArrDigest2 = bArrDigest;
            i4 = i7;
            i3 = 0;
        }
        return bArrDigest.length == 32 ? bArrDigest : Arrays.copyOf(bArrDigest, 32);
    }

    private static boolean compareArray(byte[] bArr, byte[] bArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }
}
