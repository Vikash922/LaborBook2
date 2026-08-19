package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.utils.ICopyFilter;
import com.itextpdf.p017io.font.PdfEncodings;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public class PdfLiteral extends PdfPrimitiveObject {
    private long position;

    @Override // com.itextpdf.kernel.pdf.PdfPrimitiveObject
    protected void generateContent() {
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    public byte getType() {
        return (byte) 4;
    }

    public PdfLiteral(byte[] bArr) {
        super(true);
        this.content = bArr;
    }

    public PdfLiteral(int i) {
        this(new byte[i]);
        Arrays.fill(this.content, (byte) 32);
    }

    public PdfLiteral(String str) {
        this(PdfEncodings.convertToBytes(str, (String) null));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    private PdfLiteral() {
        this((byte[]) null);
    }

    public String toString() {
        if (this.content != null) {
            return new String(this.content, StandardCharsets.ISO_8859_1);
        }
        return "";
    }

    public long getPosition() {
        return this.position;
    }

    public void setPosition(long j) {
        this.position = j;
    }

    public int getBytesCount() {
        return this.content.length;
    }

    public boolean equals(Object obj) {
        return this == obj || (obj != null && getClass() == obj.getClass() && Arrays.equals(this.content, ((PdfLiteral) obj).content));
    }

    public int hashCode() {
        if (this.content == null) {
            return 0;
        }
        return Arrays.hashCode(this.content);
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected PdfObject newInstance() {
        return new PdfLiteral();
    }

    @Override // com.itextpdf.kernel.pdf.PdfPrimitiveObject, com.itextpdf.kernel.pdf.PdfObject
    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument, ICopyFilter iCopyFilter) {
        super.copyContent(pdfObject, pdfDocument, iCopyFilter);
        this.content = ((PdfLiteral) pdfObject).getInternalContent();
    }
}
