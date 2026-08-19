package com.itextpdf.kernel.pdf.filters;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.MemoryLimitsAwareFilter;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.p017io.source.ByteBuffer;
import com.itextpdf.p017io.source.PdfTokenizer;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes6.dex */
public class ASCIIHexDecodeFilter extends MemoryLimitsAwareFilter {
    public static byte[] ASCIIHexDecode(byte[] bArr) {
        return ASCIIHexDecodeInternal(bArr, new ByteArrayOutputStream());
    }

    @Override // com.itextpdf.kernel.pdf.filters.IFilterHandler
    public byte[] decode(byte[] bArr, PdfName pdfName, PdfObject pdfObject, PdfDictionary pdfDictionary) {
        return ASCIIHexDecodeInternal(bArr, enableMemoryLimitsAwareHandler(pdfDictionary));
    }

    private static byte[] ASCIIHexDecodeInternal(byte[] bArr, ByteArrayOutputStream byteArrayOutputStream) {
        int i;
        boolean z = true;
        int i2 = 0;
        for (int i3 = 0; i3 < bArr.length && (i = bArr[i3] & 255) != 62; i3++) {
            if (!PdfTokenizer.isWhitespace(i)) {
                int hex = ByteBuffer.getHex(i);
                if (hex == -1) {
                    throw new PdfException(KernelExceptionMessageConstant.ILLEGAL_CHARACTER_IN_ASCIIHEXDECODE);
                }
                if (z) {
                    i2 = hex;
                } else {
                    byteArrayOutputStream.write((byte) ((i2 << 4) + hex));
                }
                z = !z;
            }
        }
        if (!z) {
            byteArrayOutputStream.write((byte) (i2 << 4));
        }
        return byteArrayOutputStream.toByteArray();
    }
}
