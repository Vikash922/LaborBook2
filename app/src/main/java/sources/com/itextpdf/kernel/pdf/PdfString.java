package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.utils.ICopyFilter;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.source.ByteBuffer;
import com.itextpdf.p017io.source.PdfTokenizer;
import com.itextpdf.p017io.util.StreamUtil;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes6.dex */
public class PdfString extends PdfPrimitiveObject {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private int decryptInfoGen;
    private int decryptInfoNum;
    private PdfEncryption decryption;
    protected String encoding;
    protected boolean hexWriting;
    protected String value;

    @Override // com.itextpdf.kernel.pdf.PdfObject
    public byte getType() {
        return (byte) 10;
    }

    public PdfString(String str, String str2) {
        this.hexWriting = false;
        this.value = str;
        this.encoding = str2;
    }

    public PdfString(String str) {
        this(str, (String) null);
    }

    public PdfString(byte[] bArr) {
        this.hexWriting = false;
        if (bArr != null && bArr.length > 0) {
            StringBuilder sb = new StringBuilder(bArr.length);
            for (byte b : bArr) {
                sb.append((char) (b & 255));
            }
            this.value = sb.toString();
            return;
        }
        this.value = "";
    }

    protected PdfString(byte[] bArr, boolean z) {
        super(bArr);
        this.hexWriting = z;
    }

    private PdfString() {
        this.hexWriting = false;
    }

    public boolean isHexWriting() {
        return this.hexWriting;
    }

    public PdfString setHexWriting(boolean z) {
        if (this.value == null) {
            generateValue();
        }
        this.content = null;
        this.hexWriting = z;
        return this;
    }

    public String getValue() {
        if (this.value == null) {
            generateValue();
        }
        return this.value;
    }

    public String getEncoding() {
        return this.encoding;
    }

    public String toUnicodeString() {
        String str = this.encoding;
        if (str != null && str.length() != 0) {
            return getValue();
        }
        if (this.content == null) {
            generateContent();
        }
        byte[] bArrDecodeContent = decodeContent();
        if (bArrDecodeContent.length >= 2 && bArrDecodeContent[0] == -2 && bArrDecodeContent[1] == -1) {
            return PdfEncodings.convertToString(bArrDecodeContent, PdfEncodings.UNICODE_BIG);
        }
        if (bArrDecodeContent.length >= 3 && bArrDecodeContent[0] == -17 && bArrDecodeContent[1] == -69 && bArrDecodeContent[2] == -65) {
            return PdfEncodings.convertToString(bArrDecodeContent, "UTF-8");
        }
        return PdfEncodings.convertToString(bArrDecodeContent, PdfEncodings.PDF_DOC_ENCODING);
    }

    public byte[] getValueBytes() {
        if (this.value == null) {
            generateValue();
        }
        String str = this.encoding;
        if (str != null && PdfEncodings.UNICODE_BIG.equals(str) && PdfEncodings.isPdfDocEncoding(this.value)) {
            return PdfEncodings.convertToBytes(this.value, PdfEncodings.PDF_DOC_ENCODING);
        }
        return PdfEncodings.convertToBytes(this.value, this.encoding);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            PdfString pdfString = (PdfString) obj;
            String value = getValue();
            String value2 = pdfString.getValue();
            if (value != null && value.equals(value2)) {
                String encoding = getEncoding();
                String encoding2 = pdfString.getEncoding();
                if ((encoding == null && encoding2 == null) || (encoding != null && encoding.equals(encoding2))) {
                    return true;
                }
            }
        }
        return false;
    }

    public String toString() {
        if (this.value == null) {
            return new String(decodeContent(), StandardCharsets.ISO_8859_1);
        }
        return getValue();
    }

    public int hashCode() {
        String value = getValue();
        String encoding = getEncoding();
        return ((value != null ? value.hashCode() : 0) * 31) + (encoding != null ? encoding.hashCode() : 0);
    }

    public void markAsUnencryptedObject() {
        setState((short) 512);
    }

    void setDecryption(int i, int i2, PdfEncryption pdfEncryption) {
        this.decryptInfoNum = i;
        this.decryptInfoGen = i2;
        this.decryption = pdfEncryption;
    }

    protected void generateValue() {
        this.value = PdfEncodings.convertToString(decodeContent(), null);
        if (this.decryption != null) {
            this.decryption = null;
            this.content = null;
        }
    }

    @Override // com.itextpdf.kernel.pdf.PdfPrimitiveObject
    protected void generateContent() {
        this.content = encodeBytes(getValueBytes());
    }

    protected boolean encrypt(PdfEncryption pdfEncryption) {
        PdfEncryption pdfEncryption2;
        if (!checkState((short) 512) && pdfEncryption != (pdfEncryption2 = this.decryption)) {
            if (pdfEncryption2 != null) {
                generateValue();
            }
            if (pdfEncryption != null && !pdfEncryption.isEmbeddedFilesOnly()) {
                this.content = encodeBytes(pdfEncryption.encryptByteArray(getValueBytes()));
                return true;
            }
        }
        return false;
    }

    protected byte[] decodeContent() {
        byte[] bArrDecodeStringContent = PdfTokenizer.decodeStringContent(this.content, this.hexWriting);
        if (this.decryption == null || checkState((short) 512)) {
            return bArrDecodeStringContent;
        }
        this.decryption.setHashKeyForNextObject(this.decryptInfoNum, this.decryptInfoGen);
        return this.decryption.decryptByteArray(bArrDecodeStringContent);
    }

    protected byte[] encodeBytes(byte[] bArr) {
        if (this.hexWriting) {
            ByteBuffer byteBuffer = new ByteBuffer(bArr.length * 2);
            for (byte b : bArr) {
                byteBuffer.appendHex(b);
            }
            return byteBuffer.getInternalBuffer();
        }
        return StreamUtil.createBufferedEscapedString(bArr).toByteArray(1, r5.size() - 2);
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected PdfObject newInstance() {
        return new PdfString();
    }

    @Override // com.itextpdf.kernel.pdf.PdfPrimitiveObject, com.itextpdf.kernel.pdf.PdfObject
    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument, ICopyFilter iCopyFilter) {
        super.copyContent(pdfObject, pdfDocument, iCopyFilter);
        PdfString pdfString = (PdfString) pdfObject;
        this.value = pdfString.value;
        this.hexWriting = pdfString.hexWriting;
        this.decryption = pdfString.decryption;
        this.decryptInfoNum = pdfString.decryptInfoNum;
        this.decryptInfoGen = pdfString.decryptInfoGen;
        this.encoding = pdfString.encoding;
    }
}
