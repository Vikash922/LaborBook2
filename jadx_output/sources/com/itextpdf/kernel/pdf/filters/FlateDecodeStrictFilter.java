package com.itextpdf.kernel.pdf.filters;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes6.dex */
public class FlateDecodeStrictFilter extends FlateDecodeFilter {
    @Override // com.itextpdf.kernel.pdf.filters.FlateDecodeFilter, com.itextpdf.kernel.pdf.filters.IFilterHandler
    public byte[] decode(byte[] bArr, PdfName pdfName, PdfObject pdfObject, PdfDictionary pdfDictionary) {
        return decodePredictor(flateDecode(bArr, enableMemoryLimitsAwareHandler(pdfDictionary)), pdfObject);
    }

    private static byte[] flateDecode(byte[] bArr, ByteArrayOutputStream byteArrayOutputStream) {
        return flateDecodeInternal(bArr, true, byteArrayOutputStream);
    }
}
