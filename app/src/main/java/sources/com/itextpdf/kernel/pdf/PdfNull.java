package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.utils.ICopyFilter;
import com.itextpdf.p017io.source.ByteUtils;
import com.laborbook.keep.screen.calendar.utils.Constants;

/* JADX INFO: loaded from: classes6.dex */
public class PdfNull extends PdfPrimitiveObject {
    public static final PdfNull PDF_NULL = new PdfNull(true);
    private static final byte[] NullContent = ByteUtils.getIsoBytes(Constants.ATTENDANCE_STATUS_NULL);

    @Override // com.itextpdf.kernel.pdf.PdfPrimitiveObject, com.itextpdf.kernel.pdf.PdfObject
    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument, ICopyFilter iCopyFilter) {
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    public byte getType() {
        return (byte) 7;
    }

    public int hashCode() {
        return 0;
    }

    public PdfNull() {
    }

    private PdfNull(boolean z) {
        super(z);
    }

    public String toString() {
        return Constants.ATTENDANCE_STATUS_NULL;
    }

    @Override // com.itextpdf.kernel.pdf.PdfPrimitiveObject
    protected void generateContent() {
        this.content = NullContent;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected PdfObject newInstance() {
        return new PdfNull();
    }

    public boolean equals(Object obj) {
        return this == obj || (obj != null && getClass() == obj.getClass());
    }
}
