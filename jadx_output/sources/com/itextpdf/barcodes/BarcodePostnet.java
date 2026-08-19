package com.itextpdf.barcodes;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import java.awt.Canvas;
import java.awt.Image;
import java.awt.image.MemoryImageSource;

/* JADX INFO: loaded from: classes6.dex */
public class BarcodePostnet extends Barcode1D {
    private static final byte[][] BARS = {new byte[]{1, 1, 0, 0, 0}, new byte[]{0, 0, 0, 1, 1}, new byte[]{0, 0, 1, 0, 1}, new byte[]{0, 0, 1, 1, 0}, new byte[]{0, 1, 0, 0, 1}, new byte[]{0, 1, 0, 1, 0}, new byte[]{0, 1, 1, 0, 0}, new byte[]{1, 0, 0, 0, 1}, new byte[]{1, 0, 0, 1, 0}, new byte[]{1, 0, 1, 0, 0}};
    public static int TYPE_PLANET = 2;
    public static int TYPE_POSTNET = 1;

    public BarcodePostnet(PdfDocument pdfDocument) {
        super(pdfDocument);
        this.f2833n = 3.2727273f;
        this.f2834x = 1.4399999f;
        this.barHeight = 9.0f;
        this.size = 3.6000001f;
        this.codeType = TYPE_POSTNET;
    }

    public static byte[] getBarsPostnet(String str) {
        int iCharAt = 0;
        for (int length = str.length() - 1; length >= 0; length--) {
            iCharAt += str.charAt(length) - '0';
        }
        String str2 = str + ((char) (((10 - (iCharAt % 10)) % 10) + 48));
        int length2 = str2.length() * 5;
        byte[] bArr = new byte[length2 + 2];
        bArr[0] = 1;
        bArr[length2 + 1] = 1;
        for (int i = 0; i < str2.length(); i++) {
            System.arraycopy(BARS[str2.charAt(i) - '0'], 0, bArr, (i * 5) + 1, 5);
        }
        return bArr;
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Rectangle getBarcodeSize() {
        return new Rectangle(((((this.code.length() + 1) * 5) + 1) * this.f2833n) + this.f2834x, this.barHeight);
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public void fitWidth(float f) {
        byte[] barsPostnet = getBarsPostnet(this.code);
        this.f2834x *= f / getBarcodeSize().getWidth();
        this.f2833n = (f - this.f2834x) / (barsPostnet.length - 1);
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Rectangle placeBarcode(PdfCanvas pdfCanvas, Color color, Color color2) {
        if (color != null) {
            pdfCanvas.setFillColor(color);
        }
        byte[] barsPostnet = getBarsPostnet(this.code);
        byte b = 1;
        if (this.codeType == TYPE_PLANET) {
            barsPostnet[0] = 0;
            barsPostnet[barsPostnet.length - 1] = 0;
            b = 0;
        }
        float f = 0.0f;
        for (byte b2 : barsPostnet) {
            pdfCanvas.rectangle(f, 0.0d, this.f2834x - this.inkSpreading, b2 == b ? this.barHeight : this.size);
            f += this.f2833n;
        }
        pdfCanvas.fill();
        return getBarcodeSize();
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Image createAwtImage(java.awt.Color color, java.awt.Color color2) {
        byte b;
        int rgb = color == null ? this.DEFAULT_BAR_FOREGROUND_COLOR.getRGB() : color.getRGB();
        int rgb2 = color2 == null ? this.DEFAULT_BAR_BACKGROUND_COLOR.getRGB() : color2.getRGB();
        Canvas canvas = new Canvas();
        int i = (int) this.f2834x;
        if (i <= 0) {
            i = 1;
        }
        int i2 = (int) this.f2833n;
        if (i2 <= i) {
            i2 = i + 1;
        }
        int i3 = (int) this.size;
        if (i3 <= 0) {
            i3 = 1;
        }
        int i4 = (int) this.barHeight;
        if (i4 <= i3) {
            i4 = i3 + 1;
        }
        int i5 = i4;
        int length = ((((this.code.length() + 1) * 5) + 1) * i2) + i;
        int i6 = length * i5;
        int[] iArr = new int[i6];
        byte[] barsPostnet = getBarsPostnet(this.code);
        int i7 = 0;
        if (this.codeType == TYPE_PLANET) {
            barsPostnet[0] = 0;
            barsPostnet[barsPostnet.length - 1] = 0;
            b = 0;
        } else {
            b = 1;
        }
        int i8 = 0;
        int i9 = 0;
        while (i8 < barsPostnet.length) {
            int i10 = barsPostnet[i8] == b ? 1 : i7;
            while (i7 < i2) {
                iArr[i9 + i7] = (i10 == 0 || i7 >= i) ? rgb2 : rgb;
                i7++;
            }
            i9 += i2;
            i8++;
            i7 = 0;
        }
        int i11 = (i5 - i3) * length;
        for (int i12 = length; i12 < i11; i12 += length) {
            System.arraycopy(iArr, 0, iArr, i12, length);
        }
        int i13 = i11;
        for (int i14 = 0; i14 < barsPostnet.length; i14++) {
            int i15 = 0;
            while (i15 < i2) {
                iArr[i13 + i15] = i15 < i ? rgb : rgb2;
                i15++;
            }
            i13 += i2;
        }
        for (int i16 = i11 + length; i16 < i6; i16 += length) {
            System.arraycopy(iArr, i11, iArr, i16, length);
        }
        return canvas.createImage(new MemoryImageSource(length, i5, iArr, 0, length));
    }
}
