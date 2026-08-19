package com.itextpdf.kernel.pdf.colorspace;

import com.itextpdf.kernel.pdf.PdfName;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfDeviceCs extends PdfColorSpace {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    protected PdfDeviceCs(PdfName pdfName) {
        super(pdfName);
    }

    public static class Gray extends PdfDeviceCs {
        @Override // com.itextpdf.kernel.pdf.colorspace.PdfColorSpace
        public int getNumberOfComponents() {
            return 1;
        }

        public Gray() {
            super(PdfName.DeviceGray);
        }
    }

    public static class Rgb extends PdfDeviceCs {
        @Override // com.itextpdf.kernel.pdf.colorspace.PdfColorSpace
        public int getNumberOfComponents() {
            return 3;
        }

        public Rgb() {
            super(PdfName.DeviceRGB);
        }
    }

    public static class Cmyk extends PdfDeviceCs {
        @Override // com.itextpdf.kernel.pdf.colorspace.PdfColorSpace
        public int getNumberOfComponents() {
            return 4;
        }

        public Cmyk() {
            super(PdfName.DeviceCMYK);
        }
    }
}
