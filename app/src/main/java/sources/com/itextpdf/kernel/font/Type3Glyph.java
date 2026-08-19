package com.itextpdf.kernel.font;

import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.xobject.PdfXObject;
import com.itextpdf.p017io.image.ImageData;
import com.itextpdf.p017io.source.ByteUtils;
import java.nio.charset.StandardCharsets;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class Type3Glyph extends PdfCanvas {
    private boolean isColor;
    private float llx;
    private float lly;
    private float urx;
    private float ury;

    /* JADX INFO: renamed from: wx */
    private float f2937wx;
    private static final String D_0_STR = "d0\n";

    /* JADX INFO: renamed from: d0 */
    private static final byte[] f2935d0 = ByteUtils.getIsoBytes(D_0_STR);
    private static final String D_1_STR = "d1\n";

    /* JADX INFO: renamed from: d1 */
    private static final byte[] f2936d1 = ByteUtils.getIsoBytes(D_1_STR);

    Type3Glyph(PdfDocument pdfDocument, float f, float f2, float f3, float f4, float f5, boolean z) {
        super((PdfStream) new PdfStream().makeIndirect(pdfDocument), null, pdfDocument);
        this.isColor = false;
        writeMetrics(f, f2, f3, f4, f5, z);
    }

    Type3Glyph(PdfStream pdfStream, PdfDocument pdfDocument) {
        super(pdfStream, null, pdfDocument);
        this.isColor = false;
        if (pdfStream.getBytes() != null) {
            fillBBFromBytes(pdfStream.getBytes());
        }
    }

    public float getWx() {
        return this.f2937wx;
    }

    public float getLlx() {
        return this.llx;
    }

    public float getLly() {
        return this.lly;
    }

    public float getUrx() {
        return this.urx;
    }

    public float getUry() {
        return this.ury;
    }

    public boolean isColor() {
        return this.isColor;
    }

    private void writeMetrics(float f, float f2, float f3, float f4, float f5, boolean z) {
        this.isColor = z;
        this.f2937wx = f;
        this.llx = f2;
        this.lly = f3;
        this.urx = f4;
        this.ury = f5;
        if (z) {
            this.contentStream.getOutputStream().writeFloat(f).writeSpace().writeFloat(0.0f).writeSpace().writeBytes(f2935d0);
        } else {
            this.contentStream.getOutputStream().writeFloat(f).writeSpace().writeFloat(0.0f).writeSpace().writeFloat(f2).writeSpace().writeFloat(f3).writeSpace().writeFloat(f4).writeSpace().writeFloat(f5).writeSpace().writeBytes(f2936d1);
        }
    }

    @Override // com.itextpdf.kernel.pdf.canvas.PdfCanvas
    public PdfXObject addImageWithTransformationMatrix(ImageData imageData, float f, float f2, float f3, float f4, float f5, float f6, boolean z) {
        if (!this.isColor && (!imageData.isMask() || (imageData.getBpc() != 1 && imageData.getBpc() <= 255))) {
            throw new PdfException("Not colorized type3 fonts accept only mask images.");
        }
        return super.addImageWithTransformationMatrix(imageData, f, f2, f3, f4, f5, f6, z);
    }

    private void fillBBFromBytes(byte[] bArr) {
        String str = new String(bArr, StandardCharsets.ISO_8859_1);
        int iIndexOf = str.indexOf(D_0_STR);
        int iIndexOf2 = str.indexOf(D_1_STR);
        if (iIndexOf != -1) {
            this.isColor = true;
            String[] strArrSplit = str.substring(0, iIndexOf - 1).split(StringUtils.SPACE);
            if (strArrSplit.length == 2) {
                this.f2937wx = Float.parseFloat(strArrSplit[0]);
                return;
            }
            return;
        }
        if (iIndexOf2 != -1) {
            this.isColor = false;
            String[] strArrSplit2 = str.substring(0, iIndexOf2 - 1).split(StringUtils.SPACE);
            if (strArrSplit2.length == 6) {
                this.f2937wx = Float.parseFloat(strArrSplit2[0]);
                this.llx = Float.parseFloat(strArrSplit2[2]);
                this.lly = Float.parseFloat(strArrSplit2[3]);
                this.urx = Float.parseFloat(strArrSplit2[4]);
                this.ury = Float.parseFloat(strArrSplit2[5]);
            }
        }
    }
}
