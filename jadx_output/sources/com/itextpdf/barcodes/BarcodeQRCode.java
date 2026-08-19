package com.itextpdf.barcodes;

import com.itextpdf.barcodes.exceptions.WriterException;
import com.itextpdf.barcodes.qrcode.ByteMatrix;
import com.itextpdf.barcodes.qrcode.EncodeHintType;
import com.itextpdf.barcodes.qrcode.QRCodeWriter;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import java.awt.Canvas;
import java.awt.Image;
import java.awt.image.MemoryImageSource;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class BarcodeQRCode extends Barcode2D {

    /* JADX INFO: renamed from: bm */
    ByteMatrix f2843bm;
    String code;
    Map<EncodeHintType, Object> hints;

    public BarcodeQRCode(String str, Map<EncodeHintType, Object> map) {
        this.code = str;
        this.hints = map;
        regenerate();
    }

    public BarcodeQRCode(String str) {
        this(str, null);
    }

    public BarcodeQRCode() {
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String str) {
        this.code = str;
        regenerate();
    }

    public Map<EncodeHintType, Object> getHints() {
        return this.hints;
    }

    public void setHints(Map<EncodeHintType, Object> map) {
        this.hints = map;
        regenerate();
    }

    public void regenerate() {
        if (this.code != null) {
            try {
                this.f2843bm = new QRCodeWriter().encode(this.code, 1, 1, this.hints);
            } catch (WriterException e) {
                throw new IllegalArgumentException(e.getMessage(), e.getCause());
            }
        }
    }

    @Override // com.itextpdf.barcodes.Barcode2D
    public Rectangle getBarcodeSize() {
        return new Rectangle(0.0f, 0.0f, this.f2843bm.getWidth(), this.f2843bm.getHeight());
    }

    public Rectangle getBarcodeSize(float f) {
        return new Rectangle(0.0f, 0.0f, this.f2843bm.getWidth() * f, this.f2843bm.getHeight() * f);
    }

    @Override // com.itextpdf.barcodes.Barcode2D
    public Rectangle placeBarcode(PdfCanvas pdfCanvas, Color color) {
        return placeBarcode(pdfCanvas, color, 1.0f);
    }

    public Rectangle placeBarcode(PdfCanvas pdfCanvas, Color color, float f) {
        int width = this.f2843bm.getWidth();
        int height = this.f2843bm.getHeight();
        byte[][] array = this.f2843bm.getArray();
        if (color != null) {
            pdfCanvas.setFillColor(color);
        }
        for (int i = 0; i < height; i++) {
            byte[] bArr = array[i];
            for (int i2 = 0; i2 < width; i2++) {
                if (bArr[i2] == 0) {
                    double d = f;
                    pdfCanvas.rectangle(i2 * f, ((height - i) - 1) * f, d, d);
                }
            }
        }
        pdfCanvas.fill();
        return getBarcodeSize(f);
    }

    @Override // com.itextpdf.barcodes.Barcode2D
    public PdfFormXObject createFormXObject(Color color, PdfDocument pdfDocument) {
        return createFormXObject(color, 1.0f, pdfDocument);
    }

    public PdfFormXObject createFormXObject(Color color, float f, PdfDocument pdfDocument) {
        PdfFormXObject pdfFormXObject = new PdfFormXObject((Rectangle) null);
        pdfFormXObject.setBBox(new PdfArray(placeBarcode(new PdfCanvas(pdfFormXObject, pdfDocument), color, f)));
        return pdfFormXObject;
    }

    public Image createAwtImage(java.awt.Color color, java.awt.Color color2) {
        int rgb = color.getRGB();
        int rgb2 = color2.getRGB();
        Canvas canvas = new Canvas();
        int width = this.f2843bm.getWidth();
        int height = this.f2843bm.getHeight();
        int[] iArr = new int[width * height];
        byte[][] array = this.f2843bm.getArray();
        for (int i = 0; i < height; i++) {
            byte[] bArr = array[i];
            for (int i2 = 0; i2 < width; i2++) {
                iArr[(i * width) + i2] = bArr[i2] == 0 ? rgb : rgb2;
            }
        }
        return canvas.createImage(new MemoryImageSource(width, height, iArr, 0, width));
    }

    private byte[] getBitMatrix() {
        int width = this.f2843bm.getWidth();
        int height = this.f2843bm.getHeight();
        int i = (width + 7) / 8;
        byte[] bArr = new byte[i * height];
        byte[][] array = this.f2843bm.getArray();
        for (int i2 = 0; i2 < height; i2++) {
            byte[] bArr2 = array[i2];
            for (int i3 = 0; i3 < width; i3++) {
                if (bArr2[i3] != 0) {
                    int i4 = (i * i2) + (i3 / 8);
                    bArr[i4] = (byte) (bArr[i4] | ((byte) (128 >> (i3 % 8))));
                }
            }
        }
        return bArr;
    }
}
