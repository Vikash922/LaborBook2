package com.itextpdf.kernel.pdf.function;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;

/* JADX INFO: loaded from: classes6.dex */
public class PdfType4Function extends AbstractPdfFunction<PdfStream> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfType4Function(PdfStream pdfStream) {
        super(pdfStream);
    }

    public PdfType4Function(double[] dArr, double[] dArr2, byte[] bArr) {
        super(new PdfStream(bArr), 4, dArr, dArr2);
    }

    @Override // com.itextpdf.kernel.pdf.function.AbstractPdfFunction, com.itextpdf.kernel.pdf.function.IPdfFunction
    public boolean checkCompatibilityWithColorSpace(PdfColorSpace pdfColorSpace) {
        return getInputSize() == 1 && getOutputSize() == pdfColorSpace.getNumberOfComponents();
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public double[] calculate(double[] dArr) {
        throw new UnsupportedOperationException(KernelExceptionMessageConstant.TYPE4_EXECUTION_NOT_SUPPORTED);
    }
}
