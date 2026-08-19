package com.itextpdf.barcodes;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import java.awt.Canvas;
import java.awt.Image;
import java.awt.image.MemoryImageSource;

/* JADX INFO: loaded from: classes6.dex */
public class BarcodeMSI extends Barcode1D {
    private static final int BARS_FOR_START = 3;
    private static final int BARS_FOR_STOP = 4;
    private static final int BARS_PER_CHARACTER = 12;
    private static final String CHARS = "0123456789";
    private static final byte[] BARS_START = {1, 1, 0};
    private static final byte[] BARS_END = {1, 0, 0, 1};
    private static final byte[][] BARS = {new byte[]{1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0}, new byte[]{1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0}, new byte[]{1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0}, new byte[]{1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0}, new byte[]{1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0}, new byte[]{1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0}, new byte[]{1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0}, new byte[]{1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0}, new byte[]{1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0}, new byte[]{1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0}};

    public BarcodeMSI(PdfDocument pdfDocument) {
        this(pdfDocument, pdfDocument.getDefaultFont());
    }

    public BarcodeMSI(PdfDocument pdfDocument, PdfFont pdfFont) {
        super(pdfDocument);
        this.f2834x = 0.8f;
        this.f2833n = 2.0f;
        this.font = pdfFont;
        this.size = 8.0f;
        this.baseline = this.size;
        this.barHeight = this.size * 3.0f;
        this.generateChecksum = false;
        this.checksumText = false;
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Rectangle getBarcodeSize() {
        float f;
        float descender;
        String str = this.code;
        float width = 0.0f;
        if (this.font != null) {
            if (this.baseline > 0.0f) {
                descender = this.baseline - getDescender();
            } else {
                descender = (-this.baseline) + this.size;
            }
            float f2 = descender;
            String str2 = this.code;
            PdfFont pdfFont = this.font;
            if (this.altText != null) {
                str2 = this.altText;
            }
            width = pdfFont.getWidth(str2, this.size);
            f = f2;
        } else {
            f = 0.0f;
        }
        int length = str.length();
        if (this.generateChecksum) {
            length++;
        }
        return new Rectangle(Math.max(((length * 12) + 7) * this.f2834x, width), this.barHeight + f);
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Rectangle placeBarcode(PdfCanvas pdfCanvas, Color color, Color color2) {
        String str;
        float width;
        float f;
        float f2;
        float f3;
        float f4;
        int i;
        float f5;
        byte[] bArr;
        float f6;
        float f7;
        float f8;
        String str2 = this.code;
        if (this.checksumText) {
            str2 = str2 + Integer.toString(getChecksum(this.code));
        }
        if (this.font != null) {
            String str3 = this.altText != null ? this.altText : str2;
            if (this.altText != null) {
                str2 = this.altText;
            }
            width = this.font.getWidth(str3, this.size);
            str = str2;
        } else {
            str = str2;
            width = 0.0f;
        }
        String str4 = this.code;
        if (this.generateChecksum) {
            str4 = str4 + getChecksum(str4);
        }
        float length = ((str4.length() * 12) + 7) * this.f2834x;
        int i2 = this.textAlignment;
        byte b = 1;
        if (i2 == 1) {
            f = 0.0f;
            f2 = 0.0f;
        } else if (i2 != 2) {
            if (width > length) {
                f = (width - length) / 2.0f;
                f2 = 0.0f;
            } else {
                f8 = (length - width) / 2.0f;
                f = 0.0f;
                f2 = f8;
            }
        } else if (width > length) {
            f = width - length;
            f2 = 0.0f;
        } else {
            f8 = length - width;
            f = 0.0f;
            f2 = f8;
        }
        if (this.font == null) {
            f3 = 0.0f;
            f4 = 0.0f;
        } else if (this.baseline <= 0.0f) {
            f4 = 0.0f;
            f3 = this.barHeight - this.baseline;
        } else {
            float f9 = -getDescender();
            f3 = f9;
            f4 = this.baseline + f9;
        }
        byte[] barsMSI = getBarsMSI(str4);
        if (color != null) {
            pdfCanvas.setFillColor(color);
        }
        int i3 = 0;
        float f10 = f;
        while (i3 < barsMSI.length) {
            float f11 = barsMSI[i3] * this.f2834x;
            if (barsMSI[i3] == b) {
                i = i3;
                f5 = f10;
                f6 = f4;
                f7 = f3;
                bArr = barsMSI;
                pdfCanvas.rectangle(f10, f4, f11 - this.inkSpreading, this.barHeight);
            } else {
                i = i3;
                f5 = f10;
                bArr = barsMSI;
                f6 = f4;
                f7 = f3;
            }
            f10 = f5 + this.f2834x;
            i3 = i + 1;
            f3 = f7;
            barsMSI = bArr;
            f4 = f6;
            b = 1;
        }
        float f12 = f3;
        pdfCanvas.fill();
        if (this.font != null) {
            if (color2 != null) {
                pdfCanvas.setFillColor(color2);
            }
            pdfCanvas.beginText();
            pdfCanvas.setFontAndSize(this.font, this.size);
            pdfCanvas.setTextMatrix(f2, f12);
            pdfCanvas.showText(str);
            pdfCanvas.endText();
        }
        return getBarcodeSize();
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Image createAwtImage(java.awt.Color color, java.awt.Color color2) {
        if (color == null) {
            color = this.DEFAULT_BAR_FOREGROUND_COLOR;
        }
        int rgb = color.getRGB();
        if (color2 == null) {
            color2 = this.DEFAULT_BAR_BACKGROUND_COLOR;
        }
        int rgb2 = color2.getRGB();
        Canvas canvas = new Canvas();
        String str = this.code;
        if (this.generateChecksum) {
            str = str + Integer.toString(getChecksum(this.code));
        }
        byte[] barsMSI = getBarsMSI(str);
        int length = barsMSI.length;
        int i = (int) this.barHeight;
        int[] iArr = new int[length * i];
        for (int i2 = 0; i2 < barsMSI.length; i2++) {
            int i3 = barsMSI[i2] == 1 ? rgb : rgb2;
            for (int i4 = 0; i4 < i; i4++) {
                iArr[(i4 * length) + i2] = i3;
            }
        }
        return canvas.createImage(new MemoryImageSource(length, i, iArr, 0, length));
    }

    public static byte[] getBarsMSI(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Valid code required to generate MSI barcode.");
        }
        int length = str.length() * 12;
        byte[] bArr = new byte[length + 7];
        System.arraycopy(BARS_START, 0, bArr, 0, 3);
        for (int i = 0; i < str.length(); i++) {
            int iIndexOf = CHARS.indexOf(str.charAt(i));
            if (iIndexOf < 0) {
                throw new IllegalArgumentException("The character " + str.charAt(i) + " is illegal in MSI bar codes.");
            }
            System.arraycopy(BARS[iIndexOf], 0, bArr, (i * 12) + 3, 12);
        }
        System.arraycopy(BARS_END, 0, bArr, length + 3, 4);
        return bArr;
    }

    public static int getChecksum(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Valid code required to generate checksum for MSI barcode");
        }
        int length = str.length();
        int[] iArr = new int[length];
        for (int i = 0; i < str.length(); i++) {
            int iCharAt = str.charAt(i) - '0';
            iArr[i] = iCharAt;
            if (iCharAt < 0 || iCharAt > 9) {
                throw new IllegalArgumentException("The character " + str.charAt(i) + " is illegal in MSI bar codes.");
            }
        }
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = iArr[(length - i3) - 1];
            if (i3 % 2 == 0) {
                i4 *= 2;
            }
            if (i4 > 9) {
                i4 -= 9;
            }
            i2 += i4;
        }
        return (i2 * 9) % 10;
    }
}
