package com.itextpdf.kernel.pdf.filters;

import com.itextpdf.kernel.pdf.MemoryLimitsAwareFilter;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes6.dex */
public class LZWDecodeFilter extends MemoryLimitsAwareFilter {
    public static byte[] LZWDecode(byte[] bArr) {
        return LZWDecodeInternal(bArr, new ByteArrayOutputStream());
    }

    @Override // com.itextpdf.kernel.pdf.filters.IFilterHandler
    public byte[] decode(byte[] bArr, PdfName pdfName, PdfObject pdfObject, PdfDictionary pdfDictionary) {
        return FlateDecodeFilter.decodePredictor(LZWDecodeInternal(bArr, enableMemoryLimitsAwareHandler(pdfDictionary)), pdfObject);
    }

    private static byte[] LZWDecodeInternal(byte[] bArr, ByteArrayOutputStream byteArrayOutputStream) {
        new LZWDecoder().decode(bArr, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
