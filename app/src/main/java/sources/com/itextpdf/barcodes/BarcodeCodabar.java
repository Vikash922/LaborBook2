package com.itextpdf.barcodes;

import com.itextpdf.barcodes.exceptions.BarcodeExceptionMessageConstant;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import java.awt.Canvas;
import java.awt.Image;
import java.awt.image.MemoryImageSource;

/* JADX INFO: loaded from: classes6.dex */
public class BarcodeCodabar extends Barcode1D {
    private static final byte[][] BARS;
    private static final String CHARS = "0123456789-$:/.+ABCD";
    private static final int START_STOP_IDX = 16;

    static {
        byte[] bArr = new byte[7];
        // fill-array-data instruction
        bArr[0] = 1;
        bArr[1] = 0;
        bArr[2] = 1;
        bArr[3] = 0;
        bArr[4] = 1;
        bArr[5] = 0;
        bArr[6] = 0;
        BARS = new byte[][]{new byte[]{0, 0, 0, 0, 0, 1, 1}, new byte[]{0, 0, 0, 0, 1, 1, 0}, new byte[]{0, 0, 0, 1, 0, 0, 1}, new byte[]{1, 1, 0, 0, 0, 0, 0}, new byte[]{0, 0, 1, 0, 0, 1, 0}, new byte[]{1, 0, 0, 0, 0, 1, 0}, new byte[]{0, 1, 0, 0, 0, 0, 1}, new byte[]{0, 1, 0, 0, 1, 0, 0}, new byte[]{0, 1, 1, 0, 0, 0, 0}, new byte[]{1, 0, 0, 1, 0, 0, 0}, new byte[]{0, 0, 0, 1, 1, 0, 0}, new byte[]{0, 0, 1, 1, 0, 0, 0}, new byte[]{1, 0, 0, 0, 1, 0, 1}, new byte[]{1, 0, 1, 0, 0, 0, 1}, bArr, new byte[]{0, 0, 1, 0, 1, 0, 1}, new byte[]{0, 0, 1, 1, 0, 1, 0}, new byte[]{0, 1, 0, 1, 0, 0, 1}, new byte[]{0, 0, 0, 1, 0, 1, 1}, new byte[]{0, 0, 0, 1, 1, 1, 0}};
    }

    public BarcodeCodabar(PdfDocument pdfDocument) {
        this(pdfDocument, pdfDocument.getDefaultFont());
    }

    public BarcodeCodabar(PdfDocument pdfDocument, PdfFont pdfFont) {
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
        this.startStopText = false;
    }

    public static byte[] getBarsCodabar(String str) {
        String upperCase = str.toUpperCase();
        int length = upperCase.length();
        if (length < 2) {
            throw new IllegalArgumentException(BarcodeExceptionMessageConstant.CODABAR_MUST_HAVE_AT_LEAST_START_AND_STOP_CHARACTER);
        }
        if (CHARS.indexOf(upperCase.charAt(0)) >= 16) {
            int i = length - 1;
            if (CHARS.indexOf(upperCase.charAt(i)) >= 16) {
                byte[] bArr = new byte[(upperCase.length() * 8) - 1];
                for (int i2 = 0; i2 < length; i2++) {
                    int iIndexOf = CHARS.indexOf(upperCase.charAt(i2));
                    if (iIndexOf >= 16 && i2 > 0 && i2 < i) {
                        throw new IllegalArgumentException(BarcodeExceptionMessageConstant.f2844xb7468d86);
                    }
                    if (iIndexOf < 0) {
                        throw new IllegalArgumentException(BarcodeExceptionMessageConstant.ILLEGAL_CHARACTER_IN_CODABAR_BARCODE);
                    }
                    System.arraycopy(BARS[iIndexOf], 0, bArr, i2 * 8, 7);
                }
                return bArr;
            }
        }
        throw new IllegalArgumentException(BarcodeExceptionMessageConstant.CODABAR_MUST_HAVE_ONE_ABCD_AS_START_STOP_CHARACTER);
    }

    public static String calculateChecksum(String str) {
        if (str.length() < 2) {
            return str;
        }
        String upperCase = str.toUpperCase();
        int length = upperCase.length();
        int iIndexOf = 0;
        for (int i = 0; i < length; i++) {
            iIndexOf += CHARS.indexOf(upperCase.charAt(i));
        }
        int i2 = length - 1;
        return str.substring(0, i2) + CHARS.charAt((((iIndexOf + 15) / 16) * 16) - iIndexOf) + str.substring(i2);
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Rectangle getBarcodeSize() {
        float f;
        float descender;
        String strSubstring = this.code;
        if (this.generateChecksum && this.checksumText) {
            strSubstring = calculateChecksum(this.code);
        }
        if (!this.startStopText) {
            strSubstring = strSubstring.substring(1, strSubstring.length() - 1);
        }
        float width = 0.0f;
        if (this.font != null) {
            if (this.baseline > 0.0f) {
                descender = this.baseline - getDescender();
            } else {
                descender = (-this.baseline) + this.size;
            }
            float f2 = descender;
            PdfFont pdfFont = this.font;
            if (this.altText != null) {
                strSubstring = this.altText;
            }
            width = pdfFont.getWidth(strSubstring, this.size);
            f = f2;
        } else {
            f = 0.0f;
        }
        String strCalculateChecksum = this.code;
        if (this.generateChecksum) {
            strCalculateChecksum = calculateChecksum(this.code);
        }
        int i = 0;
        for (byte b : getBarsCodabar(strCalculateChecksum)) {
            i += b;
        }
        return new Rectangle(Math.max(this.f2834x * ((r1.length - i) + (i * this.f2833n)), width), this.barHeight + f);
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
        int i;
        byte[] bArr;
        float f6;
        float f7;
        String strSubstring = this.code;
        if (this.generateChecksum && this.checksumText) {
            strSubstring = calculateChecksum(this.code);
        }
        if (!this.startStopText) {
            strSubstring = strSubstring.substring(1, strSubstring.length() - 1);
        }
        if (this.font != null) {
            PdfFont pdfFont = this.font;
            if (this.altText != null) {
                strSubstring = this.altText;
            }
            width = pdfFont.getWidth(strSubstring, this.size);
            str = strSubstring;
        } else {
            str = strSubstring;
            width = 0.0f;
        }
        byte[] barsCodabar = getBarsCodabar(this.generateChecksum ? calculateChecksum(this.code) : this.code);
        int i2 = 0;
        for (byte b : barsCodabar) {
            i2 += b;
        }
        float length = this.f2834x * ((barsCodabar.length - i2) + (i2 * this.f2833n));
        int i3 = this.textAlignment;
        if (i3 == 1) {
            f = 0.0f;
            f2 = 0.0f;
        } else if (i3 != 2) {
            if (width > length) {
                f = (width - length) / 2.0f;
                f2 = 0.0f;
            } else {
                f7 = (length - width) / 2.0f;
                f = 0.0f;
                f2 = f7;
            }
        } else if (width > length) {
            f = width - length;
            f2 = 0.0f;
        } else {
            f7 = length - width;
            f = 0.0f;
            f2 = f7;
        }
        if (this.font == null) {
            f3 = 0.0f;
            f4 = 0.0f;
        } else if (this.baseline <= 0.0f) {
            f4 = 0.0f;
            f3 = this.barHeight - this.baseline;
        } else {
            float f8 = -getDescender();
            f3 = f8;
            f4 = this.baseline + f8;
        }
        if (color != null) {
            pdfCanvas.setFillColor(color);
        }
        int i4 = 0;
        float f9 = f;
        boolean z = true;
        while (i4 < barsCodabar.length) {
            float f10 = barsCodabar[i4] == 0 ? this.f2834x : this.f2834x * this.f2833n;
            if (z) {
                f5 = f9;
                bArr = barsCodabar;
                f6 = f3;
                i = i4;
                pdfCanvas.rectangle(f9, f4, f10 - this.inkSpreading, this.barHeight);
            } else {
                f5 = f9;
                i = i4;
                bArr = barsCodabar;
                f6 = f3;
            }
            z = !z;
            f9 = f5 + f10;
            i4 = i + 1;
            f3 = f6;
            barsCodabar = bArr;
        }
        float f11 = f3;
        pdfCanvas.fill();
        if (this.font != null) {
            if (color2 != null) {
                pdfCanvas.setFillColor(color2);
            }
            pdfCanvas.beginText();
            pdfCanvas.setFontAndSize(this.font, this.size);
            pdfCanvas.setTextMatrix(f2, f11);
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
        byte[] barsCodabar = getBarsCodabar(this.generateChecksum ? calculateChecksum(this.code) : this.code);
        int i = 0;
        for (int i2 : barsCodabar) {
            i += i2;
        }
        int length = (barsCodabar.length - i) + (i * ((int) this.f2833n));
        int i3 = (int) this.barHeight;
        int i4 = length * i3;
        int[] iArr = new int[i4];
        int i5 = 0;
        boolean z = true;
        for (byte b : barsCodabar) {
            int i6 = b == 0 ? 1 : (int) this.f2833n;
            int i7 = z ? rgb : rgb2;
            z = !z;
            int i8 = 0;
            while (i8 < i6) {
                iArr[i5] = i7;
                i8++;
                i5++;
            }
        }
        for (int i9 = length; i9 < i4; i9 += length) {
            System.arraycopy(iArr, 0, iArr, i9, length);
        }
        return canvas.createImage(new MemoryImageSource(length, i3, iArr, 0, length));
    }
}
