package com.itextpdf.kernel.pdf;

import com.facebook.internal.ServerProtocol;
import com.itextpdf.kernel.utils.ICopyFilter;
import com.itextpdf.p017io.source.ByteUtils;

/* JADX INFO: loaded from: classes6.dex */
public class PdfBoolean extends PdfPrimitiveObject {
    private boolean value;
    public static final PdfBoolean TRUE = new PdfBoolean(true, true);
    public static final PdfBoolean FALSE = new PdfBoolean(false, true);
    private static final byte[] True = ByteUtils.getIsoBytes(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
    private static final byte[] False = ByteUtils.getIsoBytes("false");

    @Override // com.itextpdf.kernel.pdf.PdfObject
    public byte getType() {
        return (byte) 2;
    }

    public PdfBoolean(boolean z) {
        this(z, false);
    }

    private PdfBoolean(boolean z, boolean z2) {
        super(z2);
        this.value = z;
    }

    private PdfBoolean() {
    }

    public boolean getValue() {
        return this.value;
    }

    public String toString() {
        return this.value ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : "false";
    }

    @Override // com.itextpdf.kernel.pdf.PdfPrimitiveObject
    protected void generateContent() {
        this.content = this.value ? True : False;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected PdfObject newInstance() {
        return new PdfBoolean();
    }

    @Override // com.itextpdf.kernel.pdf.PdfPrimitiveObject, com.itextpdf.kernel.pdf.PdfObject
    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument, ICopyFilter iCopyFilter) {
        super.copyContent(pdfObject, pdfDocument, iCopyFilter);
        this.value = ((PdfBoolean) pdfObject).value;
    }

    public boolean equals(Object obj) {
        return this == obj || (obj != null && getClass() == obj.getClass() && this.value == ((PdfBoolean) obj).value);
    }

    public int hashCode() {
        return this.value ? 1 : 0;
    }

    public static PdfBoolean valueOf(boolean z) {
        return z ? TRUE : FALSE;
    }
}
