package com.itextpdf.kernel.pdf.filters;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.MemoryLimitsAwareFilter;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.p017io.source.PdfTokenizer;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes6.dex */
public class ASCII85DecodeFilter extends MemoryLimitsAwareFilter {
    public static byte[] ASCII85Decode(byte[] bArr) {
        return ASCII85DecodeInternal(bArr, new ByteArrayOutputStream());
    }

    @Override // com.itextpdf.kernel.pdf.filters.IFilterHandler
    public byte[] decode(byte[] bArr, PdfName pdfName, PdfObject pdfObject, PdfDictionary pdfDictionary) {
        return ASCII85DecodeInternal(bArr, enableMemoryLimitsAwareHandler(pdfDictionary));
    }

    private static byte[] ASCII85DecodeInternal(byte[] bArr, ByteArrayOutputStream byteArrayOutputStream) {
        int i;
        int[] iArr = new int[5];
        int i2 = 0;
        for (int i3 = 0; i3 < bArr.length && (i = bArr[i3] & 255) != 126; i3++) {
            if (!PdfTokenizer.isWhitespace(i)) {
                if (i == 122 && i2 == 0) {
                    byteArrayOutputStream.write(0);
                    byteArrayOutputStream.write(0);
                    byteArrayOutputStream.write(0);
                    byteArrayOutputStream.write(0);
                } else {
                    if (i < 33 || i > 117) {
                        throw new PdfException(KernelExceptionMessageConstant.ILLEGAL_CHARACTER_IN_ASCII85DECODE);
                    }
                    iArr[i2] = i - 33;
                    i2++;
                    if (i2 == 5) {
                        int i4 = 0;
                        for (int i5 = 0; i5 < 5; i5++) {
                            i4 = (i4 * 85) + iArr[i5];
                        }
                        byteArrayOutputStream.write((byte) (i4 >> 24));
                        byteArrayOutputStream.write((byte) (i4 >> 16));
                        byteArrayOutputStream.write((byte) (i4 >> 8));
                        byteArrayOutputStream.write((byte) i4);
                        i2 = 0;
                    }
                }
            }
        }
        if (i2 == 2) {
            byteArrayOutputStream.write((byte) ((((iArr[0] * 52200625) + (iArr[1] * 614125)) + 621435) >> 24));
        } else if (i2 == 3) {
            int i6 = (iArr[0] * 52200625) + (iArr[1] * 614125) + (iArr[2] * 7225) + 7310;
            byteArrayOutputStream.write((byte) (i6 >> 24));
            byteArrayOutputStream.write((byte) (i6 >> 16));
        } else if (i2 == 4) {
            int i7 = (iArr[0] * 52200625) + (iArr[1] * 614125) + (iArr[2] * 7225) + (iArr[3] * 85) + 85;
            byteArrayOutputStream.write((byte) (i7 >> 24));
            byteArrayOutputStream.write((byte) (i7 >> 16));
            byteArrayOutputStream.write((byte) (i7 >> 8));
        }
        return byteArrayOutputStream.toByteArray();
    }
}
