package com.itextpdf.kernel.pdf.filters;

import com.itextpdf.kernel.pdf.MemoryLimitsAwareFilter;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes6.dex */
public class RunLengthDecodeFilter extends MemoryLimitsAwareFilter {
    @Override // com.itextpdf.kernel.pdf.filters.IFilterHandler
    public byte[] decode(byte[] bArr, PdfName pdfName, PdfObject pdfObject, PdfDictionary pdfDictionary) {
        byte b;
        int i;
        ByteArrayOutputStream byteArrayOutputStreamEnableMemoryLimitsAwareHandler = enableMemoryLimitsAwareHandler(pdfDictionary);
        int i2 = 0;
        while (i2 < bArr.length && (b = bArr[i2]) != -128) {
            if ((b & 128) == 0) {
                int i3 = b + 1;
                byteArrayOutputStreamEnableMemoryLimitsAwareHandler.write(bArr, i2 + 1, i3);
                i = i2 + i3;
            } else {
                i = i2 + 1;
                for (int i4 = 0; i4 < 257 - (b & 255); i4++) {
                    byteArrayOutputStreamEnableMemoryLimitsAwareHandler.write(bArr[i]);
                }
            }
            i2 = i + 1;
        }
        return byteArrayOutputStreamEnableMemoryLimitsAwareHandler.toByteArray();
    }
}
