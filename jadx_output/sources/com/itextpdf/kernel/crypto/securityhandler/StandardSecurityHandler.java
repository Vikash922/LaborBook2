package com.itextpdf.kernel.crypto.securityhandler;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfEncryption;
import com.itextpdf.kernel.pdf.PdfLiteral;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.p017io.source.ByteUtils;
import com.itextpdf.p017io.util.StreamUtil;

/* JADX INFO: loaded from: classes6.dex */
public abstract class StandardSecurityHandler extends SecurityHandler {
    protected static final int PERMS_MASK_1_FOR_REVISION_2 = -64;
    protected static final int PERMS_MASK_1_FOR_REVISION_3_OR_GREATER = -3904;
    protected static final int PERMS_MASK_2 = -4;
    protected long permissions;
    protected boolean usedOwnerPassword = true;

    public long getPermissions() {
        return this.permissions;
    }

    public boolean isUsedOwnerPassword() {
        return this.usedOwnerPassword;
    }

    protected void setStandardHandlerDicEntries(PdfDictionary pdfDictionary, byte[] bArr, byte[] bArr2) {
        pdfDictionary.put(PdfName.Filter, PdfName.Standard);
        pdfDictionary.put(PdfName.f3041O, new PdfLiteral(StreamUtil.createEscapedString(bArr2)));
        pdfDictionary.put(PdfName.f3083U, new PdfLiteral(StreamUtil.createEscapedString(bArr)));
        pdfDictionary.put(PdfName.f3047P, new PdfNumber(this.permissions));
    }

    protected byte[] generateOwnerPasswordIfNullOrEmpty(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? this.md5.digest(PdfEncryption.generateNewDocumentId()) : bArr;
    }

    protected byte[] getIsoBytes(PdfString pdfString) {
        return ByteUtils.getIsoBytes(pdfString.getValue());
    }

    protected static boolean equalsArray(byte[] bArr, byte[] bArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }
}
