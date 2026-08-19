package com.itextpdf.barcodes;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.appevents.AppEventsConstants;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import java.awt.Canvas;
import java.awt.Image;
import java.awt.image.MemoryImageSource;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public class BarcodeEAN extends Barcode1D {
    public static final int EAN13 = 1;
    public static final int EAN8 = 2;
    private static final int EVEN = 1;
    private static final int ODD = 0;
    public static final int SUPP2 = 5;
    public static final int SUPP5 = 6;
    private static final int TOTALBARS_EAN13 = 59;
    private static final int TOTALBARS_EAN8 = 43;
    private static final int TOTALBARS_SUPP2 = 13;
    private static final int TOTALBARS_SUPP5 = 31;
    private static final int TOTALBARS_UPCE = 33;
    public static final int UPCA = 3;
    public static final int UPCE = 4;
    private static final int[] GUARD_EMPTY = new int[0];
    private static final int[] GUARD_UPCA = {0, 2, 4, 6, 28, 30, 52, 54, 56, 58};
    private static final int[] GUARD_EAN13 = {0, 2, 28, 30, 56, 58};
    private static final int[] GUARD_EAN8 = {0, 2, 20, 22, 40, 42};
    private static final int[] GUARD_UPCE = {0, 2, 28, 30, 32};
    private static final float[] TEXTPOS_EAN13 = {6.5f, 13.5f, 20.5f, 27.5f, 34.5f, 41.5f, 53.5f, 60.5f, 67.5f, 74.5f, 81.5f, 88.5f};
    private static final float[] TEXTPOS_EAN8 = {6.5f, 13.5f, 20.5f, 27.5f, 39.5f, 46.5f, 53.5f, 60.5f};
    private static final byte[][] BARS = {new byte[]{3, 2, 1, 1}, new byte[]{2, 2, 2, 1}, new byte[]{2, 1, 2, 2}, new byte[]{1, 4, 1, 1}, new byte[]{1, 1, 3, 2}, new byte[]{1, 2, 3, 1}, new byte[]{1, 1, 1, 4}, new byte[]{1, 3, 1, 2}, new byte[]{1, 2, 1, 3}, new byte[]{3, 1, 1, 2}};
    private static final byte[][] PARITY13 = {new byte[]{0, 0, 0, 0, 0, 0}, new byte[]{0, 0, 1, 0, 1, 1}, new byte[]{0, 0, 1, 1, 0, 1}, new byte[]{0, 0, 1, 1, 1, 0}, new byte[]{0, 1, 0, 0, 1, 1}, new byte[]{0, 1, 1, 0, 0, 1}, new byte[]{0, 1, 1, 1, 0, 0}, new byte[]{0, 1, 0, 1, 0, 1}, new byte[]{0, 1, 0, 1, 1, 0}, new byte[]{0, 1, 1, 0, 1, 0}};
    private static final byte[][] PARITY2 = {new byte[]{0, 0}, new byte[]{0, 1}, new byte[]{1, 0}, new byte[]{1, 1}};
    private static final byte[][] PARITY5 = {new byte[]{1, 1, 0, 0, 0}, new byte[]{1, 0, 1, 0, 0}, new byte[]{1, 0, 0, 1, 0}, new byte[]{1, 0, 0, 0, 1}, new byte[]{0, 1, 1, 0, 0}, new byte[]{0, 0, 1, 1, 0}, new byte[]{0, 0, 0, 1, 1}, new byte[]{0, 1, 0, 1, 0}, new byte[]{0, 1, 0, 0, 1}, new byte[]{0, 0, 1, 0, 1}};
    private static final byte[][] PARITYE = {new byte[]{1, 1, 1, 0, 0, 0}, new byte[]{1, 1, 0, 1, 0, 0}, new byte[]{1, 1, 0, 0, 1, 0}, new byte[]{1, 1, 0, 0, 0, 1}, new byte[]{1, 0, 1, 1, 0, 0}, new byte[]{1, 0, 0, 1, 1, 0}, new byte[]{1, 0, 0, 0, 1, 1}, new byte[]{1, 0, 1, 0, 1, 0}, new byte[]{1, 0, 1, 0, 0, 1}, new byte[]{1, 0, 0, 1, 0, 1}};

    public BarcodeEAN(PdfDocument pdfDocument) {
        this(pdfDocument, pdfDocument.getDefaultFont());
    }

    public BarcodeEAN(PdfDocument pdfDocument, PdfFont pdfFont) {
        super(pdfDocument);
        this.f2834x = 0.8f;
        this.font = pdfFont;
        this.size = 8.0f;
        this.baseline = this.size;
        this.barHeight = this.size * 3.0f;
        this.guardBars = true;
        this.codeType = 1;
        this.code = "";
    }

    public static int calculateEANParity(String str) {
        int i = 3;
        int iCharAt = 0;
        for (int length = str.length() - 1; length >= 0; length--) {
            iCharAt += (str.charAt(length) - '0') * i;
            i ^= 2;
        }
        return (10 - (iCharAt % 10)) % 10;
    }

    public static String convertUPCAtoUPCE(String str) {
        if (str.length() == 12 && (str.startsWith(AppEventsConstants.EVENT_PARAM_VALUE_NO) || str.startsWith(AppEventsConstants.EVENT_PARAM_VALUE_YES))) {
            if (str.substring(3, 6).equals("000") || str.substring(3, 6).equals("100") || str.substring(3, 6).equals("200")) {
                if (str.substring(6, 8).equals("00")) {
                    return str.substring(0, 1) + str.substring(1, 3) + str.substring(8, 11) + str.substring(3, 4) + str.substring(11);
                }
            } else if (str.substring(4, 6).equals("00")) {
                if (str.substring(6, 9).equals("000")) {
                    return str.substring(0, 1) + str.substring(1, 4) + str.substring(9, 11) + ExifInterface.GPS_MEASUREMENT_3D + str.substring(11);
                }
            } else if (str.substring(5, 6).equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                if (str.substring(6, 10).equals("0000")) {
                    return str.substring(0, 1) + str.substring(1, 5) + str.substring(10, 11) + "4" + str.substring(11);
                }
            } else if (str.charAt(10) >= '5' && str.substring(6, 10).equals("0000")) {
                return str.substring(0, 1) + str.substring(1, 6) + str.substring(10, 11) + str.substring(11);
            }
        }
        return null;
    }

    public static byte[] getBarsEAN13(String str) {
        int length = str.length();
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = str.charAt(i) - '0';
        }
        byte[] bArr = new byte[59];
        bArr[0] = 1;
        bArr[1] = 1;
        bArr[2] = 1;
        byte[] bArr2 = PARITY13[iArr[0]];
        int i2 = 0;
        int i3 = 3;
        while (i2 < bArr2.length) {
            int i4 = i2 + 1;
            byte[] bArr3 = BARS[iArr[i4]];
            if (bArr2[i2] == 0) {
                bArr[i3] = bArr3[0];
                bArr[i3 + 1] = bArr3[1];
                int i5 = i3 + 3;
                bArr[i3 + 2] = bArr3[2];
                i3 += 4;
                bArr[i5] = bArr3[3];
            } else {
                bArr[i3] = bArr3[3];
                bArr[i3 + 1] = bArr3[2];
                int i6 = i3 + 3;
                bArr[i3 + 2] = bArr3[1];
                i3 += 4;
                bArr[i6] = bArr3[0];
            }
            i2 = i4;
        }
        bArr[i3] = 1;
        bArr[i3 + 1] = 1;
        bArr[i3 + 2] = 1;
        int i7 = i3 + 4;
        bArr[i3 + 3] = 1;
        int i8 = i3 + 5;
        bArr[i7] = 1;
        for (int i9 = 7; i9 < 13; i9++) {
            byte[] bArr4 = BARS[iArr[i9]];
            bArr[i8] = bArr4[0];
            bArr[i8 + 1] = bArr4[1];
            int i10 = i8 + 3;
            bArr[i8 + 2] = bArr4[2];
            i8 += 4;
            bArr[i10] = bArr4[3];
        }
        bArr[i8] = 1;
        bArr[i8 + 1] = 1;
        bArr[i8 + 2] = 1;
        return bArr;
    }

    public static byte[] getBarsEAN8(String str) {
        int i;
        int length = str.length();
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = str.charAt(i2) - '0';
        }
        byte[] bArr = new byte[43];
        bArr[0] = 1;
        bArr[1] = 1;
        bArr[2] = 1;
        int i3 = 0;
        int i4 = 3;
        while (true) {
            if (i3 >= 4) {
                break;
            }
            byte[] bArr2 = BARS[iArr[i3]];
            bArr[i4] = bArr2[0];
            bArr[i4 + 1] = bArr2[1];
            int i5 = i4 + 3;
            bArr[i4 + 2] = bArr2[2];
            i4 += 4;
            bArr[i5] = bArr2[3];
            i3++;
        }
        bArr[i4] = 1;
        bArr[i4 + 1] = 1;
        bArr[i4 + 2] = 1;
        int i6 = i4 + 4;
        bArr[i4 + 3] = 1;
        int i7 = i4 + 5;
        bArr[i6] = 1;
        for (i = 4; i < 8; i++) {
            byte[] bArr3 = BARS[iArr[i]];
            bArr[i7] = bArr3[0];
            bArr[i7 + 1] = bArr3[1];
            int i8 = i7 + 3;
            bArr[i7 + 2] = bArr3[2];
            i7 += 4;
            bArr[i8] = bArr3[3];
        }
        bArr[i7] = 1;
        bArr[i7 + 1] = 1;
        bArr[i7 + 2] = 1;
        return bArr;
    }

    public static byte[] getBarsUPCE(String str) {
        int length = str.length();
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = str.charAt(i) - '0';
        }
        byte[] bArr = new byte[33];
        byte b = iArr[0] != 0 ? (byte) 1 : (byte) 0;
        bArr[0] = 1;
        bArr[1] = 1;
        bArr[2] = 1;
        int i2 = length - 1;
        byte[] bArr2 = PARITYE[iArr[i2]];
        int i3 = 3;
        for (int i4 = 1; i4 < i2; i4++) {
            byte[] bArr3 = BARS[iArr[i4]];
            if (bArr2[i4 - 1] == b) {
                bArr[i3] = bArr3[0];
                bArr[i3 + 1] = bArr3[1];
                int i5 = i3 + 3;
                bArr[i3 + 2] = bArr3[2];
                i3 += 4;
                bArr[i5] = bArr3[3];
            } else {
                bArr[i3] = bArr3[3];
                bArr[i3 + 1] = bArr3[2];
                int i6 = i3 + 3;
                bArr[i3 + 2] = bArr3[1];
                i3 += 4;
                bArr[i6] = bArr3[0];
            }
        }
        bArr[i3] = 1;
        bArr[i3 + 1] = 1;
        bArr[i3 + 2] = 1;
        bArr[i3 + 3] = 1;
        bArr[i3 + 4] = 1;
        bArr[i3 + 5] = 1;
        return bArr;
    }

    public static byte[] getBarsSupplemental2(String str) {
        int[] iArr = new int[2];
        for (int i = 0; i < 2; i++) {
            iArr[i] = str.charAt(i) - '0';
        }
        byte[] bArr = new byte[13];
        int i2 = ((iArr[0] * 10) + iArr[1]) % 4;
        bArr[0] = 1;
        bArr[1] = 1;
        bArr[2] = 2;
        byte[] bArr2 = PARITY2[i2];
        int i3 = 3;
        for (int i4 = 0; i4 < bArr2.length; i4++) {
            if (i4 == 1) {
                int i5 = i3 + 1;
                bArr[i3] = 1;
                i3 += 2;
                bArr[i5] = 1;
            }
            byte[] bArr3 = BARS[iArr[i4]];
            if (bArr2[i4] == 0) {
                bArr[i3] = bArr3[0];
                bArr[i3 + 1] = bArr3[1];
                int i6 = i3 + 3;
                bArr[i3 + 2] = bArr3[2];
                i3 += 4;
                bArr[i6] = bArr3[3];
            } else {
                bArr[i3] = bArr3[3];
                bArr[i3 + 1] = bArr3[2];
                int i7 = i3 + 3;
                bArr[i3 + 2] = bArr3[1];
                i3 += 4;
                bArr[i7] = bArr3[0];
            }
        }
        return bArr;
    }

    public static byte[] getBarsSupplemental5(String str) {
        int[] iArr = new int[5];
        for (int i = 0; i < 5; i++) {
            iArr[i] = str.charAt(i) - '0';
        }
        byte[] bArr = new byte[31];
        int i2 = ((((iArr[0] + iArr[2]) + iArr[4]) * 3) + ((iArr[1] + iArr[3]) * 9)) % 10;
        bArr[0] = 1;
        bArr[1] = 1;
        bArr[2] = 2;
        byte[] bArr2 = PARITY5[i2];
        int i3 = 3;
        for (int i4 = 0; i4 < bArr2.length; i4++) {
            if (i4 != 0) {
                int i5 = i3 + 1;
                bArr[i3] = 1;
                i3 += 2;
                bArr[i5] = 1;
            }
            byte[] bArr3 = BARS[iArr[i4]];
            if (bArr2[i4] == 0) {
                bArr[i3] = bArr3[0];
                bArr[i3 + 1] = bArr3[1];
                int i6 = i3 + 3;
                bArr[i3 + 2] = bArr3[2];
                i3 += 4;
                bArr[i6] = bArr3[3];
            } else {
                bArr[i3] = bArr3[3];
                bArr[i3 + 1] = bArr3[2];
                int i7 = i3 + 3;
                bArr[i3 + 2] = bArr3[1];
                i3 += 4;
                bArr[i7] = bArr3[0];
            }
        }
        return bArr;
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Rectangle getBarcodeSize() {
        float f;
        float width;
        float f2;
        float f3;
        float width2;
        float width3;
        float descender;
        float f4 = this.barHeight;
        if (this.font != null) {
            if (this.baseline <= 0.0f) {
                descender = (-this.baseline) + this.size;
            } else {
                descender = this.baseline - getDescender();
            }
            f4 += descender;
        }
        switch (this.codeType) {
            case 1:
                f = this.f2834x * 95.0f;
                if (this.font != null) {
                    width = this.font.getWidth(this.code.charAt(0), this.size);
                    f += width;
                }
                return new Rectangle(f, f4);
            case 2:
                f2 = this.f2834x;
                f3 = 67.0f;
                f = f2 * f3;
                return new Rectangle(f, f4);
            case 3:
                f = this.f2834x * 95.0f;
                if (this.font != null) {
                    width2 = this.font.getWidth(this.code.charAt(0), this.size);
                    width3 = this.font.getWidth(this.code.charAt(11), this.size);
                    width = width2 + width3;
                    f += width;
                }
                return new Rectangle(f, f4);
            case 4:
                f = this.f2834x * 51.0f;
                if (this.font != null) {
                    width2 = this.font.getWidth(this.code.charAt(0), this.size);
                    width3 = this.font.getWidth(this.code.charAt(7), this.size);
                    width = width2 + width3;
                    f += width;
                }
                return new Rectangle(f, f4);
            case 5:
                f2 = this.f2834x;
                f3 = 20.0f;
                f = f2 * f3;
                return new Rectangle(f, f4);
            case 6:
                f2 = this.f2834x;
                f3 = 47.0f;
                f = f2 * f3;
                return new Rectangle(f, f4);
            default:
                throw new PdfException("Invalid code type");
        }
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Rectangle placeBarcode(PdfCanvas pdfCanvas, Color color, Color color2) {
        float f;
        float f2;
        byte[] barsEAN13;
        int i;
        int[] iArr;
        byte[] bArr;
        int i2;
        Rectangle rectangle;
        float f3;
        float f4;
        int i3;
        Rectangle barcodeSize = getBarcodeSize();
        if (this.font == null) {
            f = 0.0f;
            f2 = 0.0f;
        } else if (this.baseline <= 0.0f) {
            f = this.barHeight - this.baseline;
            f2 = 0.0f;
        } else {
            float f5 = -getDescender();
            f = f5;
            f2 = this.baseline + f5;
        }
        int i4 = this.codeType;
        int i5 = 0;
        int i6 = 1;
        float width = ((i4 == 1 || i4 == 3 || i4 == 4) && this.font != null) ? this.font.getWidth(this.code.charAt(0), this.size) + 0.0f : 0.0f;
        int[] iArr2 = GUARD_EMPTY;
        switch (this.codeType) {
            case 1:
                barsEAN13 = getBarsEAN13(this.code);
                iArr2 = GUARD_EAN13;
                break;
            case 2:
                barsEAN13 = getBarsEAN8(this.code);
                iArr2 = GUARD_EAN8;
                break;
            case 3:
                barsEAN13 = getBarsEAN13(AppEventsConstants.EVENT_PARAM_VALUE_NO + this.code);
                iArr2 = GUARD_UPCA;
                break;
            case 4:
                barsEAN13 = getBarsUPCE(this.code);
                iArr2 = GUARD_UPCE;
                break;
            case 5:
                barsEAN13 = getBarsSupplemental2(this.code);
                break;
            case 6:
                barsEAN13 = getBarsSupplemental5(this.code);
                break;
            default:
                throw new PdfException("Invalid code type");
        }
        int[] iArr3 = iArr2;
        byte[] bArr2 = barsEAN13;
        float f6 = (this.font == null || this.baseline <= 0.0f || !this.guardBars) ? 0.0f : this.baseline / 2.0f;
        if (color != null) {
            pdfCanvas.setFillColor(color);
        }
        int i7 = 0;
        boolean z = true;
        float f7 = width;
        while (i7 < bArr2.length) {
            float f8 = bArr2[i7] * this.f2834x;
            if (!z) {
                i = i7;
                iArr = iArr3;
                bArr = bArr2;
                i2 = i5;
                rectangle = barcodeSize;
                f3 = f;
                f4 = f7;
                i3 = i6;
            } else if (Arrays.binarySearch(iArr3, i7) >= 0) {
                f3 = f;
                i = i7;
                rectangle = barcodeSize;
                f4 = f7;
                iArr = iArr3;
                bArr = bArr2;
                i2 = 0;
                i3 = 1;
                pdfCanvas.rectangle(f7, f2 - f6, f8 - this.inkSpreading, this.barHeight + f6);
            } else {
                i = i7;
                iArr = iArr3;
                bArr = bArr2;
                i2 = i5;
                rectangle = barcodeSize;
                f3 = f;
                f4 = f7;
                i3 = i6;
                pdfCanvas.rectangle(f4, f2, f8 - this.inkSpreading, this.barHeight);
            }
            z = !z;
            f7 = f4 + f8;
            i7 = i + 1;
            i5 = i2;
            i6 = i3;
            f = f3;
            barcodeSize = rectangle;
            iArr3 = iArr;
            bArr2 = bArr;
        }
        int i8 = i5;
        Rectangle rectangle2 = barcodeSize;
        float f9 = f;
        int i9 = i6;
        pdfCanvas.fill();
        if (this.font != null) {
            if (color2 != null) {
                pdfCanvas.setFillColor(color2);
            }
            pdfCanvas.beginText();
            pdfCanvas.setFontAndSize(this.font, this.size);
            switch (this.codeType) {
                case 1:
                    pdfCanvas.setTextMatrix(0.0f, f9);
                    pdfCanvas.showText(this.code.substring(i8, i9));
                    int i10 = i9;
                    while (i10 < 13) {
                        int i11 = i10 + 1;
                        String strSubstring = this.code.substring(i10, i11);
                        pdfCanvas.setTextMatrix((width + (TEXTPOS_EAN13[i10 - 1] * this.f2834x)) - (this.font.getWidth(strSubstring, this.size) / 2.0f), f9);
                        pdfCanvas.showText(strSubstring);
                        i10 = i11;
                    }
                    break;
                case 2:
                    int i12 = i8;
                    while (i12 < 8) {
                        int i13 = i12 + 1;
                        String strSubstring2 = this.code.substring(i12, i13);
                        pdfCanvas.setTextMatrix((TEXTPOS_EAN8[i12] * this.f2834x) - (this.font.getWidth(strSubstring2, this.size) / 2.0f), f9);
                        pdfCanvas.showText(strSubstring2);
                        i12 = i13;
                    }
                    break;
                case 3:
                    pdfCanvas.setTextMatrix(0.0f, f9);
                    pdfCanvas.showText(this.code.substring(i8, i9));
                    int i14 = i9;
                    while (i14 < 11) {
                        int i15 = i14 + 1;
                        String strSubstring3 = this.code.substring(i14, i15);
                        pdfCanvas.setTextMatrix((width + (TEXTPOS_EAN13[i14] * this.f2834x)) - (this.font.getWidth(strSubstring3, this.size) / 2.0f), f9);
                        pdfCanvas.showText(strSubstring3);
                        i14 = i15;
                    }
                    pdfCanvas.setTextMatrix(width + (this.f2834x * 95.0f), f9);
                    pdfCanvas.showText(this.code.substring(11, 12));
                    break;
                case 4:
                    pdfCanvas.setTextMatrix(0.0f, f9);
                    pdfCanvas.showText(this.code.substring(i8, i9));
                    int i16 = i9;
                    while (i16 < 7) {
                        int i17 = i16 + 1;
                        String strSubstring4 = this.code.substring(i16, i17);
                        pdfCanvas.setTextMatrix((width + (TEXTPOS_EAN13[i16 - 1] * this.f2834x)) - (this.font.getWidth(strSubstring4, this.size) / 2.0f), f9);
                        pdfCanvas.showText(strSubstring4);
                        i16 = i17;
                    }
                    pdfCanvas.setTextMatrix(width + (this.f2834x * 51.0f), f9);
                    pdfCanvas.showText(this.code.substring(7, 8));
                    break;
                case 5:
                case 6:
                    int i18 = i8;
                    while (i18 < this.code.length()) {
                        int i19 = i18 + 1;
                        String strSubstring5 = this.code.substring(i18, i19);
                        pdfCanvas.setTextMatrix((((i18 * 9) + 7.5f) * this.f2834x) - (this.font.getWidth(strSubstring5, this.size) / 2.0f), f9);
                        pdfCanvas.showText(strSubstring5);
                        i18 = i19;
                    }
                    break;
            }
            pdfCanvas.endText();
        }
        return rectangle2;
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Image createAwtImage(java.awt.Color color, java.awt.Color color2) {
        byte[] barsEAN13;
        int rgb = color == null ? this.DEFAULT_BAR_FOREGROUND_COLOR.getRGB() : color.getRGB();
        int rgb2 = color2 == null ? this.DEFAULT_BAR_BACKGROUND_COLOR.getRGB() : color2.getRGB();
        Canvas canvas = new Canvas();
        int i = 95;
        switch (this.codeType) {
            case 1:
                barsEAN13 = getBarsEAN13(this.code);
                break;
            case 2:
                barsEAN13 = getBarsEAN8(this.code);
                i = 67;
                break;
            case 3:
                barsEAN13 = getBarsEAN13(AppEventsConstants.EVENT_PARAM_VALUE_NO + this.code);
                break;
            case 4:
                barsEAN13 = getBarsUPCE(this.code);
                i = 51;
                break;
            case 5:
                barsEAN13 = getBarsSupplemental2(this.code);
                i = 20;
                break;
            case 6:
                barsEAN13 = getBarsSupplemental5(this.code);
                i = 47;
                break;
            default:
                throw new PdfException("Invalid code type");
        }
        int i2 = i;
        int i3 = (int) this.barHeight;
        int i4 = i2 * i3;
        int[] iArr = new int[i4];
        boolean z = true;
        int i5 = 0;
        for (byte b : barsEAN13) {
            int i6 = z ? rgb : rgb2;
            z = !z;
            int i7 = 0;
            while (i7 < b) {
                iArr[i5] = i6;
                i7++;
                i5++;
            }
        }
        for (int i8 = i2; i8 < i4; i8 += i2) {
            System.arraycopy(iArr, 0, iArr, i8, i2);
        }
        return canvas.createImage(new MemoryImageSource(i2, i3, iArr, 0, i2));
    }
}
