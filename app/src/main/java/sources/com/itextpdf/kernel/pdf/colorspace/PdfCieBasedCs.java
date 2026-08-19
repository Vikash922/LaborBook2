package com.itextpdf.kernel.pdf.colorspace;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.p017io.colors.IccProfile;
import java.io.InputStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfCieBasedCs extends PdfColorSpace {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        super.flush();
    }

    protected PdfCieBasedCs(PdfArray pdfArray) {
        super(pdfArray);
    }

    public static class CalGray extends PdfCieBasedCs {
        @Override // com.itextpdf.kernel.pdf.colorspace.PdfColorSpace
        public int getNumberOfComponents() {
            return 1;
        }

        public CalGray(PdfArray pdfArray) {
            super(pdfArray);
        }

        public CalGray(float[] fArr) {
            this(getInitialPdfArray());
            if (fArr == null || fArr.length != 3) {
                throw new PdfException(KernelExceptionMessageConstant.WHITE_POINT_IS_INCORRECTLY_SPECIFIED, this);
            }
            ((PdfArray) getPdfObject()).getAsDictionary(1).put(PdfName.WhitePoint, new PdfArray(fArr));
        }

        public CalGray(float[] fArr, float[] fArr2, float f) {
            this(fArr);
            PdfDictionary asDictionary = ((PdfArray) getPdfObject()).getAsDictionary(1);
            if (fArr2 != null) {
                asDictionary.put(PdfName.BlackPoint, new PdfArray(fArr2));
            }
            if (f != Float.NaN) {
                asDictionary.put(PdfName.Gamma, new PdfNumber(f));
            }
        }

        private static PdfArray getInitialPdfArray() {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(PdfName.CalGray);
            arrayList.add(new PdfDictionary());
            return new PdfArray(arrayList);
        }
    }

    public static class CalRgb extends PdfCieBasedCs {
        @Override // com.itextpdf.kernel.pdf.colorspace.PdfColorSpace
        public int getNumberOfComponents() {
            return 3;
        }

        public CalRgb(PdfArray pdfArray) {
            super(pdfArray);
        }

        public CalRgb(float[] fArr) {
            this(getInitialPdfArray());
            if (fArr == null || fArr.length != 3) {
                throw new PdfException(KernelExceptionMessageConstant.WHITE_POINT_IS_INCORRECTLY_SPECIFIED, this);
            }
            ((PdfArray) getPdfObject()).getAsDictionary(1).put(PdfName.WhitePoint, new PdfArray(fArr));
        }

        public CalRgb(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4) {
            this(fArr);
            PdfDictionary asDictionary = ((PdfArray) getPdfObject()).getAsDictionary(1);
            if (fArr2 != null) {
                asDictionary.put(PdfName.BlackPoint, new PdfArray(fArr2));
            }
            if (fArr3 != null) {
                asDictionary.put(PdfName.Gamma, new PdfArray(fArr3));
            }
            if (fArr4 != null) {
                asDictionary.put(PdfName.Matrix, new PdfArray(fArr4));
            }
        }

        private static PdfArray getInitialPdfArray() {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(PdfName.CalRGB);
            arrayList.add(new PdfDictionary());
            return new PdfArray(arrayList);
        }
    }

    public static class Lab extends PdfCieBasedCs {
        @Override // com.itextpdf.kernel.pdf.colorspace.PdfColorSpace
        public int getNumberOfComponents() {
            return 3;
        }

        public Lab(PdfArray pdfArray) {
            super(pdfArray);
        }

        public Lab(float[] fArr) {
            this(getInitialPdfArray());
            if (fArr == null || fArr.length != 3) {
                throw new PdfException(KernelExceptionMessageConstant.WHITE_POINT_IS_INCORRECTLY_SPECIFIED, this);
            }
            ((PdfArray) getPdfObject()).getAsDictionary(1).put(PdfName.WhitePoint, new PdfArray(fArr));
        }

        public Lab(float[] fArr, float[] fArr2, float[] fArr3) {
            this(fArr);
            PdfDictionary asDictionary = ((PdfArray) getPdfObject()).getAsDictionary(1);
            if (fArr2 != null) {
                asDictionary.put(PdfName.BlackPoint, new PdfArray(fArr2));
            }
            if (fArr3 != null) {
                asDictionary.put(PdfName.Range, new PdfArray(fArr3));
            }
        }

        private static PdfArray getInitialPdfArray() {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(PdfName.Lab);
            arrayList.add(new PdfDictionary());
            return new PdfArray(arrayList);
        }
    }

    public static class IccBased extends PdfCieBasedCs {
        public IccBased(PdfArray pdfArray) {
            super(pdfArray);
        }

        public IccBased(InputStream inputStream) {
            this(getInitialPdfArray(inputStream, null));
        }

        public IccBased(InputStream inputStream, float[] fArr) {
            this(getInitialPdfArray(inputStream, fArr));
        }

        @Override // com.itextpdf.kernel.pdf.colorspace.PdfColorSpace
        public int getNumberOfComponents() {
            return ((PdfArray) getPdfObject()).getAsStream(1).getAsInt(PdfName.f3037N).intValue();
        }

        public static PdfStream getIccProfileStream(InputStream inputStream) {
            return getIccProfileStream(IccProfile.getInstance(inputStream));
        }

        public static PdfStream getIccProfileStream(InputStream inputStream, float[] fArr) {
            return getIccProfileStream(IccProfile.getInstance(inputStream), fArr);
        }

        public static PdfStream getIccProfileStream(IccProfile iccProfile) {
            PdfStream pdfStream = new PdfStream(iccProfile.getData());
            pdfStream.put(PdfName.f3037N, new PdfNumber(iccProfile.getNumComponents()));
            int numComponents = iccProfile.getNumComponents();
            if (numComponents == 1) {
                pdfStream.put(PdfName.Alternate, PdfName.DeviceGray);
            } else if (numComponents == 3) {
                pdfStream.put(PdfName.Alternate, PdfName.DeviceRGB);
            } else if (numComponents == 4) {
                pdfStream.put(PdfName.Alternate, PdfName.DeviceCMYK);
            }
            return pdfStream;
        }

        public static PdfStream getIccProfileStream(IccProfile iccProfile, float[] fArr) {
            PdfStream iccProfileStream = getIccProfileStream(iccProfile);
            iccProfileStream.put(PdfName.Range, new PdfArray(fArr));
            return iccProfileStream;
        }

        private static PdfArray getInitialPdfArray(InputStream inputStream, float[] fArr) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(PdfName.ICCBased);
            arrayList.add(fArr == null ? getIccProfileStream(inputStream) : getIccProfileStream(inputStream, fArr));
            return new PdfArray(arrayList);
        }
    }
}
