package com.itextpdf.kernel.pdf.filters;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.MemoryLimitsAwareException;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.MemoryLimitsAwareFilter;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.zip.InflaterInputStream;

/* JADX INFO: loaded from: classes6.dex */
public class FlateDecodeFilter extends MemoryLimitsAwareFilter {
    public static byte[] flateDecode(byte[] bArr, boolean z) {
        return flateDecodeInternal(bArr, z, new ByteArrayOutputStream());
    }

    public static byte[] decodePredictor(byte[] bArr, PdfObject pdfObject) {
        PdfDictionary pdfDictionary;
        PdfObject pdfObject2;
        if (pdfObject == null) {
            return bArr;
        }
        int i = 3;
        if (pdfObject.getType() != 3 || (pdfObject2 = (pdfDictionary = (PdfDictionary) pdfObject).get(PdfName.Predictor)) == null || pdfObject2.getType() != 8) {
            return bArr;
        }
        int iIntValue = ((PdfNumber) pdfObject2).intValue();
        if (iIntValue < 10 && iIntValue != 2) {
            return bArr;
        }
        int numberOrDefault = getNumberOrDefault(pdfDictionary, PdfName.Columns, 1);
        int numberOrDefault2 = getNumberOrDefault(pdfDictionary, PdfName.Colors, 1);
        int numberOrDefault3 = getNumberOrDefault(pdfDictionary, PdfName.BitsPerComponent, 8);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
        int i2 = (numberOrDefault2 * numberOrDefault3) / 8;
        int i3 = (((numberOrDefault2 * numberOrDefault) * numberOrDefault3) + 7) / 8;
        byte[] bArr2 = new byte[i3];
        byte[] bArr3 = new byte[i3];
        if (iIntValue == 2) {
            if (numberOrDefault3 == 8) {
                int length = bArr.length / i3;
                for (int i4 = 0; i4 < length; i4++) {
                    int i5 = i4 * i3;
                    for (int i6 = i2; i6 < i3; i6++) {
                        int i7 = i5 + i6;
                        bArr[i7] = (byte) (bArr[i7] + bArr[i7 - i2]);
                    }
                }
            }
            return bArr;
        }
        while (true) {
            try {
                int i8 = dataInputStream.read();
                if (i8 < 0) {
                    return byteArrayOutputStream.toByteArray();
                }
                dataInputStream.readFully(bArr2, 0, i3);
                if (i8 != 0) {
                    if (i8 == 1) {
                        for (int i9 = i2; i9 < i3; i9++) {
                            bArr2[i9] = (byte) (bArr2[i9] + bArr2[i9 - i2]);
                        }
                    } else if (i8 == 2) {
                        for (int i10 = 0; i10 < i3; i10++) {
                            bArr2[i10] = (byte) (bArr2[i10] + bArr3[i10]);
                        }
                    } else if (i8 == i) {
                        for (int i11 = 0; i11 < i2; i11++) {
                            bArr2[i11] = (byte) (bArr2[i11] + ((byte) (bArr3[i11] / 2)));
                        }
                        for (int i12 = i2; i12 < i3; i12++) {
                            bArr2[i12] = (byte) (bArr2[i12] + ((byte) (((bArr2[i12 - i2] & 255) + (bArr3[i12] & 255)) / 2)));
                        }
                    } else {
                        if (i8 != 4) {
                            throw new PdfException(KernelExceptionMessageConstant.PNG_FILTER_UNKNOWN);
                        }
                        for (int i13 = 0; i13 < i2; i13++) {
                            bArr2[i13] = (byte) (bArr2[i13] + bArr3[i13]);
                        }
                        for (int i14 = i2; i14 < i3; i14++) {
                            int i15 = i14 - i2;
                            int i16 = bArr2[i15] & 255;
                            int i17 = bArr3[i14] & 255;
                            int i18 = bArr3[i15] & 255;
                            int i19 = (i16 + i17) - i18;
                            int iAbs = Math.abs(i19 - i16);
                            int iAbs2 = Math.abs(i19 - i17);
                            int iAbs3 = Math.abs(i19 - i18);
                            if (iAbs > iAbs2 || iAbs > iAbs3) {
                                i16 = iAbs2 <= iAbs3 ? i17 : i18;
                            }
                            bArr2[i14] = (byte) (bArr2[i14] + ((byte) i16));
                        }
                    }
                }
                try {
                    byteArrayOutputStream.write(bArr2);
                } catch (IOException unused) {
                }
                i = 3;
                byte[] bArr4 = bArr3;
                bArr3 = bArr2;
                bArr2 = bArr4;
            } catch (Exception unused2) {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    @Override // com.itextpdf.kernel.pdf.filters.IFilterHandler
    public byte[] decode(byte[] bArr, PdfName pdfName, PdfObject pdfObject, PdfDictionary pdfDictionary) {
        ByteArrayOutputStream byteArrayOutputStreamEnableMemoryLimitsAwareHandler = enableMemoryLimitsAwareHandler(pdfDictionary);
        byte[] bArrFlateDecodeInternal = flateDecodeInternal(bArr, true, byteArrayOutputStreamEnableMemoryLimitsAwareHandler);
        if (bArrFlateDecodeInternal == null) {
            byteArrayOutputStreamEnableMemoryLimitsAwareHandler.reset();
            bArrFlateDecodeInternal = flateDecodeInternal(bArr, false, byteArrayOutputStreamEnableMemoryLimitsAwareHandler);
        }
        return decodePredictor(bArrFlateDecodeInternal, pdfObject);
    }

    protected static byte[] flateDecodeInternal(byte[] bArr, boolean z, ByteArrayOutputStream byteArrayOutputStream) {
        InflaterInputStream inflaterInputStream = new InflaterInputStream(new ByteArrayInputStream(bArr));
        byte[] bArr2 = new byte[z ? 4092 : 1];
        while (true) {
            try {
                int i = inflaterInputStream.read(bArr2);
                if (i >= 0) {
                    byteArrayOutputStream.write(bArr2, 0, i);
                } else {
                    inflaterInputStream.close();
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            } catch (MemoryLimitsAwareException e) {
                throw e;
            } catch (Exception unused) {
                if (z) {
                    return null;
                }
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    private static int getNumberOrDefault(PdfDictionary pdfDictionary, PdfName pdfName, int i) {
        PdfObject pdfObject = pdfDictionary.get(pdfName);
        return (pdfObject == null || pdfObject.getType() != 8) ? i : ((PdfNumber) pdfObject).intValue();
    }
}
