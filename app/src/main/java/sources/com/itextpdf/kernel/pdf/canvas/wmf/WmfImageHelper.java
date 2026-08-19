package com.itextpdf.kernel.pdf.canvas.wmf;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.kernel.pdf.xobject.PdfXObject;
import com.itextpdf.p017io.image.ImageData;
import com.itextpdf.p017io.image.ImageType;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public class WmfImageHelper {
    public static float wmfFontCorrection = 0.86f;
    private float plainHeight;
    private float plainWidth;
    private WmfImageData wmf;

    public WmfImageHelper(ImageData imageData) {
        if (imageData.getOriginalType() != ImageType.WMF) {
            throw new IllegalArgumentException("WMF image expected");
        }
        this.wmf = (WmfImageData) imageData;
        processParameters();
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    private void processParameters() {
        String string;
        InputStream byteArrayInputStream;
        InputStream inputStream = null;
        try {
            try {
                if (this.wmf.getData() == null) {
                    byteArrayInputStream = FirebasePerfUrlConnection.openStream(this.wmf.getUrl());
                    string = this.wmf.getUrl().toString();
                } else {
                    string = "Byte array";
                    byteArrayInputStream = new ByteArrayInputStream(this.wmf.getData());
                }
                InputMeta inputMeta = new InputMeta(byteArrayInputStream);
                if (inputMeta.readInt() != -1698247209) {
                    throw new PdfException(KernelExceptionMessageConstant.NOT_A_VALID_PLACEABLE_WINDOWS_METAFILE, string);
                }
                inputMeta.readWord();
                int i = inputMeta.readShort();
                int i2 = inputMeta.readShort();
                int i3 = inputMeta.readShort();
                int i4 = inputMeta.readShort();
                int word = inputMeta.readWord();
                this.wmf.setDpi(72, 72);
                float f = word;
                this.wmf.setHeight(((i4 - i2) / f) * 72.0f);
                this.wmf.setWidth(((i3 - i) / f) * 72.0f);
                if (byteArrayInputStream != null) {
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException unused) {
                    }
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (IOException unused3) {
            throw new PdfException(KernelExceptionMessageConstant.WMF_IMAGE_EXCEPTION);
        }
    }

    public PdfXObject createFormXObject(PdfDocument pdfDocument) {
        PdfFormXObject pdfFormXObject = new PdfFormXObject(new Rectangle(0.0f, 0.0f, this.wmf.getWidth(), this.wmf.getHeight()));
        PdfCanvas pdfCanvas = new PdfCanvas(pdfFormXObject, pdfDocument);
        InputStream byteArrayInputStream = null;
        try {
            try {
                if (this.wmf.getData() == null) {
                    byteArrayInputStream = FirebasePerfUrlConnection.openStream(this.wmf.getUrl());
                } else {
                    byteArrayInputStream = new ByteArrayInputStream(this.wmf.getData());
                }
                new MetaDo(byteArrayInputStream, pdfCanvas).readAll();
                if (byteArrayInputStream != null) {
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException unused) {
                    }
                }
                return pdfFormXObject;
            } catch (IOException e) {
                throw new PdfException(KernelExceptionMessageConstant.WMF_IMAGE_EXCEPTION, (Throwable) e);
            }
        } catch (Throwable th) {
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }
}
