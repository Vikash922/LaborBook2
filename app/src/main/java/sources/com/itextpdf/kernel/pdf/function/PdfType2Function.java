package com.itextpdf.kernel.pdf.function;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;

/* JADX INFO: loaded from: classes6.dex */
public class PdfType2Function extends AbstractPdfFunction<PdfDictionary> {

    /* JADX INFO: renamed from: c0 */
    private double[] f3180c0;

    /* JADX INFO: renamed from: c1 */
    private double[] f3181c1;

    /* JADX INFO: renamed from: n */
    private double f3182n;

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfType2Function(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        PdfNumber asNumber = pdfDictionary.getAsNumber(PdfName.f3037N);
        if (asNumber == null) {
            throw new PdfException(KernelExceptionMessageConstant.INVALID_TYPE_2_FUNCTION_N);
        }
        this.f3182n = asNumber.doubleValue();
        if (super.getDomain().length < 2) {
            throw new PdfException(KernelExceptionMessageConstant.INVALID_TYPE_2_FUNCTION_DOMAIN);
        }
        double d = this.f3182n;
        if (d != Math.floor(d) && super.getDomain()[0] < 0.0d) {
            throw new PdfException(KernelExceptionMessageConstant.INVALID_TYPE_2_FUNCTION_N_NOT_INTEGER);
        }
        if (this.f3182n < 0.0d && super.clipInput(new double[]{0.0d})[0] == 0.0d) {
            throw new PdfException(KernelExceptionMessageConstant.INVALID_TYPE_2_FUNCTION_N_NEGATIVE);
        }
        PdfArray asArray = pdfDictionary.getAsArray(PdfName.f2981C0);
        PdfArray asArray2 = pdfDictionary.getAsArray(PdfName.f2982C1);
        PdfArray asArray3 = pdfDictionary.getAsArray(PdfName.Range);
        this.f3180c0 = initializeCArray(asArray, asArray2, asArray3, 0.0d);
        double[] dArrInitializeCArray = initializeCArray(asArray2, asArray, asArray3, 1.0d);
        this.f3181c1 = dArrInitializeCArray;
        if (this.f3180c0.length != dArrInitializeCArray.length || (super.getRange() != null && this.f3180c0.length != super.getRange().length / 2)) {
            throw new PdfException(KernelExceptionMessageConstant.INVALID_TYPE_2_FUNCTION_OUTPUT_SIZE);
        }
    }

    public PdfType2Function(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4, int i) {
        super(new PdfDictionary(), 2, dArr, dArr2);
        setC0(dArr3);
        setC1(dArr4);
        setN(i);
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public double[] calculate(double[] dArr) {
        if (dArr == null || dArr.length != 1) {
            throw new PdfException(KernelExceptionMessageConstant.INVALID_INPUT_FOR_TYPE_2_FUNCTION);
        }
        double d = clipInput(dArr)[0];
        int outputSize = getOutputSize();
        double[] dArr2 = new double[outputSize];
        for (int i = 0; i < outputSize; i++) {
            dArr2[i] = this.f3180c0[i] + (Math.pow(d, this.f3182n) * (this.f3181c1[i] - this.f3180c0[i]));
        }
        return clipOutput(dArr2);
    }

    @Override // com.itextpdf.kernel.pdf.function.AbstractPdfFunction, com.itextpdf.kernel.pdf.function.IPdfFunction
    public final int getOutputSize() {
        return getRange() == null ? this.f3180c0.length : getRange().length / 2;
    }

    public final double[] getC0() {
        return this.f3180c0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setC0(double[] dArr) {
        ((PdfDictionary) getPdfObject()).put(PdfName.f2981C0, new PdfArray(dArr));
        this.f3180c0 = dArr;
    }

    public final double[] getC1() {
        return this.f3181c1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setC1(double[] dArr) {
        ((PdfDictionary) getPdfObject()).put(PdfName.f2982C1, new PdfArray(dArr));
        this.f3181c1 = dArr;
    }

    public final double getN() {
        return this.f3182n;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setN(int i) {
        ((PdfDictionary) getPdfObject()).put(PdfName.f3037N, new PdfNumber(i));
        this.f3182n = i;
    }

    private static double[] initializeCArray(PdfArray pdfArray, PdfArray pdfArray2, PdfArray pdfArray3, double d) {
        double[] dArr;
        if (pdfArray != null) {
            return pdfArray.toDoubleArray();
        }
        if (pdfArray2 != null) {
            dArr = new double[pdfArray2.size()];
        } else if (pdfArray3 == null) {
            dArr = new double[1];
        } else {
            dArr = new double[pdfArray3.size() / 2];
        }
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = d;
        }
        return dArr;
    }
}
