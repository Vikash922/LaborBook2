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
public class Barcode39 extends Barcode1D {
    private static final byte[][] BARS;
    private static final String CHARS = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%*";
    private static final String EXTENDED = "%U$A$B$C$D$E$F$G$H$I$J$K$L$M$N$O$P$Q$R$S$T$U$V$W$X$Y$Z%A%B%C%D%E  /A/B/C/D/E/F/G/H/I/J/K/L - ./O 0 1 2 3 4 5 6 7 8 9/Z%F%G%H%I%J%V A B C D E F G H I J K L M N O P Q R S T U V W X Y Z%K%L%M%N%O%W+A+B+C+D+E+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+U+V+W+X+Y+Z%P%Q%R%S%T";

    static {
        byte[] bArr = new byte[9];
        // fill-array-data instruction
        bArr[0] = 1;
        bArr[1] = 0;
        bArr[2] = 0;
        bArr[3] = 0;
        bArr[4] = 1;
        bArr[5] = 1;
        bArr[6] = 0;
        bArr[7] = 0;
        bArr[8] = 0;
        BARS = new byte[][]{new byte[]{0, 0, 0, 1, 1, 0, 1, 0, 0}, new byte[]{1, 0, 0, 1, 0, 0, 0, 0, 1}, new byte[]{0, 0, 1, 1, 0, 0, 0, 0, 1}, new byte[]{1, 0, 1, 1, 0, 0, 0, 0, 0}, new byte[]{0, 0, 0, 1, 1, 0, 0, 0, 1}, new byte[]{1, 0, 0, 1, 1, 0, 0, 0, 0}, new byte[]{0, 0, 1, 1, 1, 0, 0, 0, 0}, new byte[]{0, 0, 0, 1, 0, 0, 1, 0, 1}, new byte[]{1, 0, 0, 1, 0, 0, 1, 0, 0}, new byte[]{0, 0, 1, 1, 0, 0, 1, 0, 0}, new byte[]{1, 0, 0, 0, 0, 1, 0, 0, 1}, new byte[]{0, 0, 1, 0, 0, 1, 0, 0, 1}, new byte[]{1, 0, 1, 0, 0, 1, 0, 0, 0}, new byte[]{0, 0, 0, 0, 1, 1, 0, 0, 1}, bArr, new byte[]{0, 0, 1, 0, 1, 1, 0, 0, 0}, new byte[]{0, 0, 0, 0, 0, 1, 1, 0, 1}, new byte[]{1, 0, 0, 0, 0, 1, 1, 0, 0}, new byte[]{0, 0, 1, 0, 0, 1, 1, 0, 0}, new byte[]{0, 0, 0, 0, 1, 1, 1, 0, 0}, new byte[]{1, 0, 0, 0, 0, 0, 0, 1, 1}, new byte[]{0, 0, 1, 0, 0, 0, 0, 1, 1}, new byte[]{1, 0, 1, 0, 0, 0, 0, 1, 0}, new byte[]{0, 0, 0, 0, 1, 0, 0, 1, 1}, new byte[]{1, 0, 0, 0, 1, 0, 0, 1, 0}, new byte[]{0, 0, 1, 0, 1, 0, 0, 1, 0}, new byte[]{0, 0, 0, 0, 0, 0, 1, 1, 1}, new byte[]{1, 0, 0, 0, 0, 0, 1, 1, 0}, new byte[]{0, 0, 1, 0, 0, 0, 1, 1, 0}, new byte[]{0, 0, 0, 0, 1, 0, 1, 1, 0}, new byte[]{1, 1, 0, 0, 0, 0, 0, 0, 1}, new byte[]{0, 1, 1, 0, 0, 0, 0, 0, 1}, new byte[]{1, 1, 1, 0, 0, 0, 0, 0, 0}, new byte[]{0, 1, 0, 0, 1, 0, 0, 0, 1}, new byte[]{1, 1, 0, 0, 1, 0, 0, 0, 0}, new byte[]{0, 1, 1, 0, 1, 0, 0, 0, 0}, new byte[]{0, 1, 0, 0, 0, 0, 1, 0, 1}, new byte[]{1, 1, 0, 0, 0, 0, 1, 0, 0}, new byte[]{0, 1, 1, 0, 0, 0, 1, 0, 0}, new byte[]{0, 1, 0, 1, 0, 1, 0, 0, 0}, new byte[]{0, 1, 0, 1, 0, 0, 0, 1, 0}, new byte[]{0, 1, 0, 0, 0, 1, 0, 1, 0}, new byte[]{0, 0, 0, 1, 0, 1, 0, 1, 0}, new byte[]{0, 1, 0, 0, 1, 0, 1, 0, 0}};
    }

    public Barcode39(PdfDocument pdfDocument) {
        this(pdfDocument, pdfDocument.getDefaultFont());
    }

    public Barcode39(PdfDocument pdfDocument, PdfFont pdfFont) {
        super(pdfDocument);
        this.f2834x = 0.8f;
        this.f2833n = 2.0f;
        this.font = pdfFont;
        this.size = 8.0f;
        this.baseline = this.size;
        this.barHeight = this.size * 3.0f;
        this.generateChecksum = false;
        this.checksumText = false;
        this.startStopText = true;
        this.extended = false;
    }

    public static byte[] getBarsCode39(String str) {
        String str2 = "*" + str + "*";
        byte[] bArr = new byte[(str2.length() * 10) - 1];
        for (int i = 0; i < str2.length(); i++) {
            char cCharAt = str2.charAt(i);
            int iIndexOf = CHARS.indexOf(cCharAt);
            if (cCharAt == '*' && i != 0 && i != str2.length() - 1) {
                throw new IllegalArgumentException("The character " + cCharAt + " is illegal in code 39");
            }
            if (iIndexOf < 0) {
                throw new IllegalArgumentException("The character " + str2.charAt(i) + " is illegal in code 39");
            }
            System.arraycopy(BARS[iIndexOf], 0, bArr, i * 10, 9);
        }
        return bArr;
    }

    public static String getCode39Ex(String str) {
        StringBuilder sb = new StringBuilder("");
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt > 127) {
                throw new IllegalArgumentException("The character " + cCharAt + " is illegal in code 39");
            }
            int i2 = cCharAt * 2;
            char cCharAt2 = EXTENDED.charAt(i2);
            char cCharAt3 = EXTENDED.charAt(i2 + 1);
            if (cCharAt2 != ' ') {
                sb.append(cCharAt2);
            }
            sb.append(cCharAt3);
        }
        return sb.toString();
    }

    static char getChecksum(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            int iIndexOf = CHARS.indexOf(str.charAt(i2));
            char cCharAt = str.charAt(i2);
            if (cCharAt == '*' && i2 != 0 && i2 != str.length() - 1) {
                throw new IllegalArgumentException("The character " + cCharAt + " is illegal in code 39");
            }
            if (iIndexOf < 0) {
                throw new IllegalArgumentException("The character " + str.charAt(i2) + " is illegal in code 39");
            }
            i += iIndexOf;
        }
        return CHARS.charAt(i % 43);
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Rectangle getBarcodeSize() {
        float f;
        float descender;
        String code39Ex = this.code;
        if (this.extended) {
            code39Ex = getCode39Ex(this.code);
        }
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
                str = str + getChecksum(code39Ex);
            }
            if (this.startStopText) {
                str = "*" + str + "*";
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
        int length = code39Ex.length();
        int i = length + 2;
        if (this.generateChecksum) {
            i = length + 3;
        }
        return new Rectangle(Math.max((i * ((this.f2834x * 6.0f) + (this.f2834x * 3.0f * this.f2833n))) + ((i - 1) * this.f2834x), width), this.barHeight + f);
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Rectangle placeBarcode(PdfCanvas pdfCanvas, Color color, Color color2) {
        float width;
        float f;
        float f2;
        float f3;
        String str;
        byte[] bArr;
        float f4;
        float f5;
        String str2 = this.code;
        String code39Ex = this.code;
        if (this.extended) {
            code39Ex = getCode39Ex(this.code);
        }
        float f6 = 0.0f;
        if (this.font != null) {
            if (this.generateChecksum && this.checksumText) {
                str2 = str2 + getChecksum(code39Ex);
            }
            if (this.startStopText) {
                str2 = "*" + str2 + "*";
            }
            PdfFont pdfFont = this.font;
            if (this.altText != null) {
                str2 = this.altText;
            }
            width = pdfFont.getWidth(str2, this.size);
        } else {
            width = 0.0f;
        }
        if (this.generateChecksum) {
            code39Ex = code39Ex + getChecksum(code39Ex);
        }
        int length = code39Ex.length();
        boolean z = true;
        float f7 = ((length + 2) * ((this.f2834x * 6.0f) + (this.f2834x * 3.0f * this.f2833n))) + ((length + 1) * this.f2834x);
        int i = this.textAlignment;
        if (i == 1) {
            f = 0.0f;
            f2 = 0.0f;
        } else if (i != 2) {
            if (width > f7) {
                f = (width - f7) / 2.0f;
                f2 = 0.0f;
            } else {
                f2 = (f7 - width) / 2.0f;
                f = 0.0f;
            }
        } else if (width > f7) {
            f = width - f7;
            f2 = 0.0f;
        } else {
            f2 = f7 - width;
            f = 0.0f;
        }
        if (this.font == null) {
            f3 = 0.0f;
        } else if (this.baseline <= 0.0f) {
            f3 = this.barHeight - this.baseline;
        } else {
            float f8 = -getDescender();
            f3 = f8;
            f6 = this.baseline + f8;
        }
        byte[] barsCode39 = getBarsCode39(code39Ex);
        if (color != null) {
            pdfCanvas.setFillColor(color);
        }
        int i2 = 0;
        while (i2 < barsCode39.length) {
            float f9 = barsCode39[i2] == 0 ? this.f2834x : this.f2834x * this.f2833n;
            if (z) {
                str = str2;
                bArr = barsCode39;
                f4 = f6;
                f5 = f3;
                pdfCanvas.rectangle(f, f6, f9 - this.inkSpreading, this.barHeight);
            } else {
                str = str2;
                bArr = barsCode39;
                f4 = f6;
                f5 = f3;
            }
            z = !z;
            f += f9;
            i2++;
            str2 = str;
            barsCode39 = bArr;
            f6 = f4;
            f3 = f5;
        }
        String str3 = str2;
        float f10 = f3;
        pdfCanvas.fill();
        if (this.font != null) {
            if (color2 != null) {
                pdfCanvas.setFillColor(color2);
            }
            pdfCanvas.beginText().setFontAndSize(this.font, this.size).setTextMatrix(f2, f10).showText(str3).endText();
        }
        return getBarcodeSize();
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Image createAwtImage(java.awt.Color color, java.awt.Color color2) {
        int rgb = color == null ? this.DEFAULT_BAR_FOREGROUND_COLOR.getRGB() : color.getRGB();
        int rgb2 = color2 == null ? this.DEFAULT_BAR_BACKGROUND_COLOR.getRGB() : color2.getRGB();
        Canvas canvas = new Canvas();
        String code39Ex = this.code;
        if (this.extended) {
            code39Ex = getCode39Ex(this.code);
        }
        if (this.generateChecksum) {
            code39Ex = code39Ex + getChecksum(code39Ex);
        }
        int length = code39Ex.length();
        int i = (int) this.f2833n;
        int i2 = 1;
        int i3 = ((length + 2) * ((i * 3) + 6)) + length + 1;
        byte[] barsCode39 = getBarsCode39(code39Ex);
        int i4 = (int) this.barHeight;
        int i5 = i3 * i4;
        int[] iArr = new int[i5];
        int i6 = 0;
        int i7 = 0;
        boolean z = true;
        while (i6 < barsCode39.length) {
            int i8 = barsCode39[i6] == 0 ? i2 : i;
            int i9 = z ? rgb : rgb2;
            z = !z;
            int i10 = 0;
            while (i10 < i8) {
                iArr[i7] = i9;
                i10++;
                i7++;
            }
            i6++;
            i2 = 1;
        }
        for (int i11 = i3; i11 < i5; i11 += i3) {
            System.arraycopy(iArr, 0, iArr, i11, i3);
        }
        return canvas.createImage(new MemoryImageSource(i3, i4, iArr, 0, i3));
    }
}
