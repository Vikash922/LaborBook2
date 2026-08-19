package com.itextpdf.kernel.pdf.xobject;

import com.amplitude.core.events.Identify;
import com.itextpdf.kernel.actions.data.ITextCoreProductData;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.colorspace.PdfSpecialCs;
import com.itextpdf.kernel.pdf.function.PdfFunctionFactory;
import com.itextpdf.p017io.codec.PngWriter;
import com.itextpdf.p017io.codec.TIFFConstants;
import com.itextpdf.p017io.codec.TiffWriter;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
class ImagePdfBytesInfo {
    private static final String TIFFTAG_SOFTWARE_VALUE = "iText® " + ITextCoreProductData.getInstance().getVersion() + " ©" + ITextCoreProductData.getInstance().getSinceCopyrightYear() + Identify.UNSET_VALUE + ITextCoreProductData.getInstance().getToCopyrightYear() + " iText Group NV";
    private final int bpc;
    private final PdfObject colorspace;
    private final PdfArray decode;
    private final int height;
    private byte[] icc;
    private byte[] palette;
    private int pngBitDepth;
    private int pngColorType = -1;
    private int stride;
    private final int width;

    public ImagePdfBytesInfo(PdfImageXObject pdfImageXObject) {
        int iIntValue = pdfImageXObject.getPdfObject().getAsNumber(PdfName.BitsPerComponent).intValue();
        this.bpc = iIntValue;
        this.pngBitDepth = iIntValue;
        this.palette = null;
        this.icc = null;
        this.stride = 0;
        this.width = (int) pdfImageXObject.getWidth();
        this.height = (int) pdfImageXObject.getHeight();
        PdfObject pdfObject = pdfImageXObject.getPdfObject().get(PdfName.ColorSpace);
        this.colorspace = pdfObject;
        this.decode = pdfImageXObject.getPdfObject().getAsArray(PdfName.Decode);
        findColorspace(pdfObject, true);
    }

    public int getPngColorType() {
        return this.pngColorType;
    }

    public byte[] decodeTiffAndPngBytes(byte[] bArr) throws IOException {
        if (this.pngColorType < 0) {
            if (this.bpc != 8) {
                throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.ColorDepthIsNotSupported).setMessageParams(Integer.valueOf(this.bpc));
            }
            PdfObject pdfObject = this.colorspace;
            if (pdfObject instanceof PdfArray) {
                PdfArray pdfArray = (PdfArray) pdfObject;
                PdfObject pdfObject2 = pdfArray.get(0);
                if (!PdfName.ICCBased.equals(pdfObject2)) {
                    throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.ColorSpaceIsNotSupported).setMessageParams(pdfObject2.toString());
                }
                PdfStream pdfStream = (PdfStream) pdfArray.get(1);
                int iIntValue = pdfStream.getAsNumber(PdfName.f3037N).intValue();
                if (iIntValue != 4) {
                    throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.NValueIsNotSupported).setMessageParams(Integer.valueOf(iIntValue));
                }
                this.icc = pdfStream.getBytes();
            } else if (!PdfName.DeviceCMYK.equals(this.colorspace)) {
                throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.ColorSpaceIsNotSupported).setMessageParams(this.colorspace.toString());
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.stride = this.width * 4;
            TiffWriter tiffWriter = new TiffWriter();
            tiffWriter.addField(new TiffWriter.FieldShort(TIFFConstants.TIFFTAG_SAMPLESPERPIXEL, 4));
            tiffWriter.addField(new TiffWriter.FieldShort(258, new int[]{8, 8, 8, 8}));
            tiffWriter.addField(new TiffWriter.FieldShort(262, 5));
            tiffWriter.addField(new TiffWriter.FieldLong(256, this.width));
            tiffWriter.addField(new TiffWriter.FieldLong(257, this.height));
            tiffWriter.addField(new TiffWriter.FieldShort(259, 5));
            tiffWriter.addField(new TiffWriter.FieldShort(317, 2));
            tiffWriter.addField(new TiffWriter.FieldLong(TIFFConstants.TIFFTAG_ROWSPERSTRIP, this.height));
            tiffWriter.addField(new TiffWriter.FieldRational(TIFFConstants.TIFFTAG_XRESOLUTION, new int[]{300, 1}));
            tiffWriter.addField(new TiffWriter.FieldRational(TIFFConstants.TIFFTAG_YRESOLUTION, new int[]{300, 1}));
            tiffWriter.addField(new TiffWriter.FieldShort(TIFFConstants.TIFFTAG_RESOLUTIONUNIT, 2));
            tiffWriter.addField(new TiffWriter.FieldAscii(305, TIFFTAG_SOFTWARE_VALUE));
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            TiffWriter.compressLZW(byteArrayOutputStream2, 2, bArr, this.height, 4, this.stride);
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            tiffWriter.addField(new TiffWriter.FieldImage(byteArray));
            tiffWriter.addField(new TiffWriter.FieldLong(TIFFConstants.TIFFTAG_STRIPBYTECOUNTS, byteArray.length));
            if (this.icc != null) {
                tiffWriter.addField(new TiffWriter.FieldUndefined(TIFFConstants.TIFFTAG_ICCPROFILE, this.icc));
            }
            tiffWriter.writeFile(byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        }
        PdfObject pdfObject3 = this.colorspace;
        if (pdfObject3 instanceof PdfArray) {
            PdfArray pdfArray2 = (PdfArray) pdfObject3;
            if (PdfName.Separation.equals(pdfArray2.get(0))) {
                return processSeperationColor(bArr, pdfArray2);
            }
        }
        return processPng(bArr, this.pngBitDepth, this.pngColorType);
    }

    private byte[] processSeperationColor(byte[] bArr, PdfArray pdfArray) throws IOException {
        PdfSpecialCs.Separation separation = new PdfSpecialCs.Separation(pdfArray);
        byte[] bArrCalculateFromByteArray = separation.getTintTransformation().calculateFromByteArray(bArr, 0, bArr.length, 8, 8);
        if (separation.getBaseCs().getNumberOfComponents() > 3) {
            throw new UnsupportedOperationException(KernelExceptionMessageConstant.GET_IMAGEBYTES_FOR_SEPARATION_COLOR_ONLY_SUPPORTS_RGB);
        }
        this.stride = (((this.width * this.bpc) * 3) + 7) / 8;
        return processPng(bArrCalculateFromByteArray, this.pngBitDepth, 2);
    }

    private byte[] processPng(byte[] bArr, int i, int i2) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PngWriter pngWriter = new PngWriter(byteArrayOutputStream);
        PdfArray pdfArray = this.decode;
        if (pdfArray != null && i == 1) {
            if (pdfArray.getAsNumber(0).intValue() == 1 && this.decode.getAsNumber(1).intValue() == 0) {
                int length = bArr.length;
                for (int i3 = 0; i3 < length; i3++) {
                    bArr[i3] = (byte) (bArr[i3] ^ 255);
                }
            }
        }
        pngWriter.writeHeader(this.width, this.height, i, i2);
        byte[] bArr2 = this.icc;
        if (bArr2 != null) {
            pngWriter.writeIccProfile(bArr2);
        }
        byte[] bArr3 = this.palette;
        if (bArr3 != null) {
            pngWriter.writePalette(bArr3);
        }
        pngWriter.writeData(bArr, this.stride);
        pngWriter.writeEnd();
        return byteArrayOutputStream.toByteArray();
    }

    private void findColorspace(PdfObject pdfObject, boolean z) {
        if (!PdfName.DeviceGray.equals(pdfObject)) {
            if (pdfObject != null || this.bpc != 1) {
                if (PdfName.DeviceRGB.equals(pdfObject)) {
                    int i = this.bpc;
                    if (i == 8 || i == 16) {
                        this.stride = (((this.width * i) * 3) + 7) / 8;
                        this.pngColorType = 2;
                        return;
                    }
                    return;
                }
                if (pdfObject instanceof PdfArray) {
                    PdfArray pdfArray = (PdfArray) pdfObject;
                    PdfObject pdfObject2 = pdfArray.get(0);
                    if (PdfName.CalGray.equals(pdfObject2)) {
                        this.stride = ((this.width * this.bpc) + 7) / 8;
                        this.pngColorType = 0;
                        return;
                    }
                    if (PdfName.CalRGB.equals(pdfObject2)) {
                        int i2 = this.bpc;
                        if (i2 == 8 || i2 == 16) {
                            this.stride = (((this.width * i2) * 3) + 7) / 8;
                            this.pngColorType = 2;
                            return;
                        }
                        return;
                    }
                    if (PdfName.ICCBased.equals(pdfObject2)) {
                        PdfStream pdfStream = (PdfStream) pdfArray.get(1);
                        int iIntValue = pdfStream.getAsNumber(PdfName.f3037N).intValue();
                        if (iIntValue == 1) {
                            this.stride = ((this.width * this.bpc) + 7) / 8;
                            this.pngColorType = 0;
                            this.icc = pdfStream.getBytes();
                            return;
                        } else {
                            if (iIntValue == 3) {
                                this.stride = (((this.width * this.bpc) * 3) + 7) / 8;
                                this.pngColorType = 2;
                                this.icc = pdfStream.getBytes();
                                return;
                            }
                            return;
                        }
                    }
                    if (z && PdfName.Indexed.equals(pdfObject2)) {
                        findColorspace(pdfArray.get(1), false);
                        if (this.pngColorType == 2) {
                            PdfObject pdfObject3 = pdfArray.get(3);
                            if (pdfObject3 instanceof PdfString) {
                                this.palette = ((PdfString) pdfObject3).getValueBytes();
                            } else if (pdfObject3 instanceof PdfStream) {
                                this.palette = ((PdfStream) pdfObject3).getBytes();
                            }
                            this.stride = ((this.width * this.bpc) + 7) / 8;
                            this.pngColorType = 3;
                            return;
                        }
                        return;
                    }
                    if (PdfName.Separation.equals(pdfObject2)) {
                        this.pngColorType = PdfFunctionFactory.create(pdfArray.get(3)).getOutputSize() != 1 ? 2 : 1;
                        this.pngBitDepth = 8;
                        return;
                    }
                    return;
                }
                return;
            }
        }
        this.stride = ((this.width * this.bpc) + 7) / 8;
        this.pngColorType = 0;
    }
}
