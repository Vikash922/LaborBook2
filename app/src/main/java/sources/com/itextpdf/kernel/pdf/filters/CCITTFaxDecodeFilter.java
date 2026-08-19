package com.itextpdf.kernel.pdf.filters;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.p017io.codec.TIFFFaxDecoder;
import com.itextpdf.p017io.codec.TIFFFaxDecompressor;

/* JADX INFO: loaded from: classes6.dex */
public class CCITTFaxDecodeFilter implements IFilterHandler {
    @Override // com.itextpdf.kernel.pdf.filters.IFilterHandler
    public byte[] decode(byte[] bArr, PdfName pdfName, PdfObject pdfObject, PdfDictionary pdfDictionary) {
        boolean value;
        int iIntValue;
        boolean z;
        PdfNumber asNumber = pdfDictionary.getAsNumber(PdfName.Width);
        PdfNumber asNumber2 = pdfDictionary.getAsNumber(PdfName.Height);
        if (asNumber == null || asNumber2 == null) {
            throw new PdfException(KernelExceptionMessageConstant.FILTER_CCITTFAXDECODE_IS_ONLY_SUPPORTED_FOR_IMAGES);
        }
        int iIntValue2 = asNumber.intValue();
        int iIntValue3 = asNumber2.intValue();
        PdfDictionary pdfDictionary2 = pdfObject instanceof PdfDictionary ? (PdfDictionary) pdfObject : null;
        if (pdfDictionary2 != null) {
            PdfNumber asNumber3 = pdfDictionary2.getAsNumber(PdfName.f3024K);
            iIntValue = asNumber3 != null ? asNumber3.intValue() : 0;
            PdfBoolean asBoolean = pdfDictionary2.getAsBoolean(PdfName.BlackIs1);
            boolean value2 = asBoolean != null ? asBoolean.getValue() : false;
            PdfBoolean asBoolean2 = pdfDictionary2.getAsBoolean(PdfName.EncodedByteAlign);
            value = asBoolean2 != null ? asBoolean2.getValue() : false;
            z = value2;
        } else {
            value = false;
            iIntValue = 0;
            z = false;
        }
        int i = ((iIntValue2 + 7) / 8) * iIntValue3;
        byte[] bArr2 = new byte[i];
        TIFFFaxDecompressor tIFFFaxDecompressor = new TIFFFaxDecompressor();
        if (iIntValue == 0 || iIntValue > 0) {
            int i2 = (value ? 4 : 0) | (iIntValue > 0 ? 1 : 0);
            tIFFFaxDecompressor.SetOptions(1, 3, i2, 0);
            tIFFFaxDecompressor.decodeRaw(bArr2, bArr, iIntValue2, iIntValue3);
            if (tIFFFaxDecompressor.fails > 0) {
                byte[] bArr3 = new byte[i];
                int i3 = tIFFFaxDecompressor.fails;
                tIFFFaxDecompressor.SetOptions(1, 2, i2, 0);
                tIFFFaxDecompressor.decodeRaw(bArr3, bArr, iIntValue2, iIntValue3);
                if (tIFFFaxDecompressor.fails < i3) {
                    bArr2 = bArr3;
                }
            }
        } else {
            new TIFFFaxDecoder(1, iIntValue2, iIntValue3).decodeT6(bArr2, bArr, 0, iIntValue3, value ? 4L : 0L);
        }
        if (!z) {
            int length = bArr2.length;
            for (int i4 = 0; i4 < length; i4++) {
                bArr2[i4] = (byte) (bArr2[i4] ^ 255);
            }
        }
        return bArr2;
    }
}
