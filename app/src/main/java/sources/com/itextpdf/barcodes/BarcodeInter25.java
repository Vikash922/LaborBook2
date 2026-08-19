package com.itextpdf.barcodes;

import com.itextpdf.barcodes.exceptions.BarcodeExceptionMessageConstant;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import java.awt.Canvas;
import java.awt.Image;
import java.awt.image.MemoryImageSource;

/* JADX INFO: loaded from: classes6.dex */
public class BarcodeInter25 extends Barcode1D {
    private static final byte[][] BARS = {new byte[]{0, 0, 1, 1, 0}, new byte[]{1, 0, 0, 0, 1}, new byte[]{0, 1, 0, 0, 1}, new byte[]{1, 1, 0, 0, 0}, new byte[]{0, 0, 1, 0, 1}, new byte[]{1, 0, 1, 0, 0}, new byte[]{0, 1, 1, 0, 0}, new byte[]{0, 0, 0, 1, 1}, new byte[]{1, 0, 0, 1, 0}, new byte[]{0, 1, 0, 1, 0}};

    public BarcodeInter25(PdfDocument pdfDocument) {
        this(pdfDocument, pdfDocument.getDefaultFont());
    }

    public BarcodeInter25(PdfDocument pdfDocument, PdfFont pdfFont) {
        super(pdfDocument);
        this.f2834x = 0.8f;
        this.f2833n = 2.0f;
        this.font = pdfFont;
        this.size = 8.0f;
        this.baseline = this.size;
        this.barHeight = this.size * 3.0f;
        this.textAlignment = 3;
        this.generateChecksum = false;
        this.checksumText = false;
    }

    public static String keepNumbers(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= '0' && cCharAt <= '9') {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public static char getChecksum(String str) {
        int i = 3;
        int iCharAt = 0;
        for (int length = str.length() - 1; length >= 0; length--) {
            iCharAt += (str.charAt(length) - '0') * i;
            i ^= 2;
        }
        return (char) (((10 - (iCharAt % 10)) % 10) + 48);
    }

    public static byte[] getBarsInter25(String str) {
        String strKeepNumbers = keepNumbers(str);
        if ((strKeepNumbers.length() & 1) != 0) {
            throw new PdfException(BarcodeExceptionMessageConstant.TEXT_MUST_BE_EVEN);
        }
        byte[] bArr = new byte[(strKeepNumbers.length() * 5) + 7];
        bArr[0] = 0;
        bArr[1] = 0;
        bArr[2] = 0;
        bArr[3] = 0;
        int length = strKeepNumbers.length() / 2;
        int i = 4;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            int iCharAt = strKeepNumbers.charAt(i3) - '0';
            int iCharAt2 = strKeepNumbers.charAt(i3 + 1) - '0';
            byte[][] bArr2 = BARS;
            byte[] bArr3 = bArr2[iCharAt];
            byte[] bArr4 = bArr2[iCharAt2];
            for (int i4 = 0; i4 < 5; i4++) {
                int i5 = i + 1;
                bArr[i] = bArr3[i4];
                i += 2;
                bArr[i5] = bArr4[i4];
            }
        }
        bArr[i] = 1;
        bArr[i + 1] = 0;
        bArr[i + 2] = 0;
        return bArr;
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Rectangle getBarcodeSize() {
        float f;
        float descender;
        float width = 0.0f;
        if (this.font != null) {
            if (this.baseline > 0.0f) {
                descender = this.baseline - getDescender();
            } else {
                descender = (-this.baseline) + this.size;
            }
            float f2 = descender;
            String str = this.code;
            if (this.generateChecksum && this.checksumText) {
                str = str + getChecksum(str);
            }
            PdfFont pdfFont = this.font;
            if (this.altText != null) {
                str = this.altText;
            }
            width = pdfFont.getWidth(str, this.size);
            f = f2;
        } else {
            f = 0.0f;
        }
        int length = keepNumbers(this.code).length();
        if (this.generateChecksum) {
            length++;
        }
        return new Rectangle(Math.max((length * ((this.f2834x * 3.0f) + (this.f2834x * 2.0f * this.f2833n))) + ((this.f2833n + 6.0f) * this.f2834x), width), this.barHeight + f);
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Rectangle placeBarcode(PdfCanvas pdfCanvas, Color color, Color color2) {
        String str;
        float width;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        byte[] bArr;
        int i;
        float f6;
        String str2 = this.code;
        if (this.font != null) {
            if (this.generateChecksum && this.checksumText) {
                str2 = str2 + getChecksum(str2);
            }
            PdfFont pdfFont = this.font;
            if (this.altText != null) {
                str2 = this.altText;
            }
            width = pdfFont.getWidth(str2, this.size);
            str = str2;
        } else {
            str = str2;
            width = 0.0f;
        }
        String strKeepNumbers = keepNumbers(this.code);
        if (this.generateChecksum) {
            strKeepNumbers = strKeepNumbers + getChecksum(strKeepNumbers);
        }
        float length = (strKeepNumbers.length() * ((this.f2834x * 3.0f) + (this.f2834x * 2.0f * this.f2833n))) + ((this.f2833n + 6.0f) * this.f2834x);
        int i2 = this.textAlignment;
        if (i2 == 1) {
            f = 0.0f;
            f2 = 0.0f;
        } else if (i2 != 2) {
            if (width > length) {
                f = (width - length) / 2.0f;
                f2 = 0.0f;
            } else {
                f6 = (length - width) / 2.0f;
                f = 0.0f;
                f2 = f6;
            }
        } else if (width > length) {
            f = width - length;
            f2 = 0.0f;
        } else {
            f6 = length - width;
            f = 0.0f;
            f2 = f6;
        }
        if (this.font == null) {
            f3 = 0.0f;
            f4 = 0.0f;
        } else if (this.baseline <= 0.0f) {
            f3 = 0.0f;
            f4 = this.barHeight - this.baseline;
        } else {
            float f7 = -getDescender();
            f4 = f7;
            f3 = this.baseline + f7;
        }
        byte[] barsInter25 = getBarsInter25(strKeepNumbers);
        if (color != null) {
            pdfCanvas.setFillColor(color);
        }
        int i3 = 0;
        boolean z = true;
        float f8 = f;
        while (i3 < barsInter25.length) {
            float f9 = barsInter25[i3] == 0 ? this.f2834x : this.f2834x * this.f2833n;
            if (z) {
                bArr = barsInter25;
                i = i3;
                f5 = f8;
                pdfCanvas.rectangle(f8, f3, f9 - this.inkSpreading, this.barHeight);
            } else {
                f5 = f8;
                bArr = barsInter25;
                i = i3;
            }
            z = !z;
            f8 = f5 + f9;
            i3 = i + 1;
            barsInter25 = bArr;
        }
        pdfCanvas.fill();
        if (this.font != null) {
            if (color2 != null) {
                pdfCanvas.setFillColor(color2);
            }
            pdfCanvas.beginText();
            pdfCanvas.setFontAndSize(this.font, this.size);
            pdfCanvas.setTextMatrix(f2, f4);
            pdfCanvas.showText(str);
            pdfCanvas.endText();
        }
        return getBarcodeSize();
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Image createAwtImage(java.awt.Color color, java.awt.Color color2) {
        int rgb = color == null ? this.DEFAULT_BAR_FOREGROUND_COLOR.getRGB() : color.getRGB();
        int rgb2 = color2 == null ? this.DEFAULT_BAR_BACKGROUND_COLOR.getRGB() : color2.getRGB();
        Canvas canvas = new Canvas();
        String strKeepNumbers = keepNumbers(this.code);
        if (this.generateChecksum) {
            strKeepNumbers = strKeepNumbers + getChecksum(strKeepNumbers);
        }
        int length = strKeepNumbers.length();
        int i = (int) this.f2833n;
        int i2 = (length * ((i * 2) + 3)) + i + 6;
        byte[] barsInter25 = getBarsInter25(strKeepNumbers);
        int i3 = (int) this.barHeight;
        int i4 = i2 * i3;
        int[] iArr = new int[i4];
        int i5 = 0;
        boolean z = true;
        for (byte b : barsInter25) {
            int i6 = b == 0 ? 1 : i;
            int i7 = z ? rgb : rgb2;
            z = !z;
            int i8 = 0;
            while (i8 < i6) {
                iArr[i5] = i7;
                i8++;
                i5++;
            }
        }
        for (int i9 = i2; i9 < i4; i9 += i2) {
            System.arraycopy(iArr, 0, iArr, i9, i2);
        }
        return canvas.createImage(new MemoryImageSource(i2, i3, iArr, 0, i2));
    }
}
