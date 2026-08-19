package com.itextpdf.kernel.pdf.function;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import com.itextpdf.kernel.pdf.function.BaseInputOutPutConvertors;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractPdfFunction<T extends PdfDictionary> extends PdfObjectWrapper<T> implements IPdfFunction {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private double[] domain;
    private final int functionType;
    private double[] range;

    protected AbstractPdfFunction(T t, int i, double[] dArr, double[] dArr2) {
        super(t);
        this.functionType = i;
        if (dArr != null) {
            this.domain = Arrays.copyOf(dArr, dArr.length);
            t.put(PdfName.Domain, new PdfArray(dArr));
        }
        if (dArr2 != null) {
            this.range = Arrays.copyOf(dArr2, dArr2.length);
            t.put(PdfName.Range, new PdfArray(dArr2));
        }
        t.put(PdfName.FunctionType, new PdfNumber(i));
    }

    protected AbstractPdfFunction(T t) {
        super(t);
        PdfNumber asNumber = t.getAsNumber(PdfName.FunctionType);
        this.functionType = asNumber == null ? -1 : asNumber.intValue();
        PdfArray asArray = t.getAsArray(PdfName.Domain);
        this.domain = asArray == null ? null : asArray.toDoubleArray();
        PdfArray asArray2 = t.getAsArray(PdfName.Range);
        this.range = asArray2 != null ? asArray2.toDoubleArray() : null;
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public int getFunctionType() {
        return this.functionType;
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public boolean checkCompatibilityWithColorSpace(PdfColorSpace pdfColorSpace) {
        return getOutputSize() == pdfColorSpace.getNumberOfComponents();
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public int getInputSize() {
        return getPdfObject().getAsArray(PdfName.Domain).size() / 2;
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public int getOutputSize() {
        double[] dArr = this.range;
        if (dArr == null) {
            return 0;
        }
        return dArr.length / 2;
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public double[] getDomain() {
        double[] dArr = this.domain;
        if (dArr == null) {
            return null;
        }
        return Arrays.copyOf(dArr, dArr.length);
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public void setDomain(double[] dArr) {
        this.domain = Arrays.copyOf(dArr, dArr.length);
        getPdfObject().put(PdfName.Domain, new PdfArray(this.domain));
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public double[] getRange() {
        double[] dArr = this.range;
        if (dArr != null) {
            return Arrays.copyOf(dArr, dArr.length);
        }
        return null;
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public void setRange(double[] dArr) {
        if (dArr == null) {
            getPdfObject().remove(PdfName.Range);
        } else {
            this.range = Arrays.copyOf(dArr, dArr.length);
            getPdfObject().put(PdfName.Range, new PdfArray(this.range));
        }
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public byte[] calculateFromByteArray(byte[] bArr, int i, int i2, int i3, int i4) throws IOException {
        return calculateFromByteArray(bArr, i, i2, i3, i4, null, null);
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public byte[] calculateFromByteArray(byte[] bArr, int i, int i2, int i3, int i4, BaseInputOutPutConvertors.IInputConversionFunction iInputConversionFunction, BaseInputOutPutConvertors.IOutputConversionFunction iOutputConversionFunction) throws IOException {
        int iCeil = (int) Math.ceil(((double) i3) / 8.0d);
        int iCeil2 = (int) Math.ceil(((double) i4) / 8.0d);
        int inputSize = getInputSize();
        int outputSize = getOutputSize();
        if (iInputConversionFunction == null) {
            iInputConversionFunction = BaseInputOutPutConvertors.getInputConvertor(iCeil, 1.0d);
        }
        if (iOutputConversionFunction == null) {
            iOutputConversionFunction = BaseInputOutPutConvertors.getOutputConvertor(iCeil2, 1.0d);
        }
        double[] dArrConvert = iInputConversionFunction.convert(bArr, i, i2);
        double[] dArr = new double[(dArrConvert.length / inputSize) * outputSize];
        int i5 = 0;
        int length = 0;
        while (i5 < dArrConvert.length) {
            int i6 = i5 + inputSize;
            double[] dArrCalculate = calculate(Arrays.copyOfRange(dArrConvert, i5, i6));
            System.arraycopy(dArrCalculate, 0, dArr, length, dArrCalculate.length);
            length += dArrCalculate.length;
            i5 = i6;
        }
        return iOutputConversionFunction.convert(dArr);
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public double[] clipInput(double[] dArr) {
        int length = dArr.length * 2;
        double[] dArr2 = this.domain;
        if (length != dArr2.length) {
            throw new IllegalArgumentException(KernelExceptionMessageConstant.INPUT_NOT_MULTIPLE_OF_DOMAIN_SIZE);
        }
        return clip(dArr, dArr2);
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public double[] clipOutput(double[] dArr) {
        double[] dArr2 = this.range;
        if (dArr2 == null) {
            return dArr;
        }
        if (dArr.length * 2 != dArr2.length) {
            throw new IllegalArgumentException(KernelExceptionMessageConstant.INPUT_NOT_MULTIPLE_OF_RANGE_SIZE);
        }
        return clip(dArr, dArr2);
    }

    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    public PdfObject getAsPdfObject() {
        return super.getPdfObject();
    }

    protected static double[] clip(double[] dArr, double[] dArr2) {
        double[] dArr3 = new double[dArr.length];
        int i = 0;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            int i3 = i + 1;
            double d = dArr2[i];
            i += 2;
            dArr3[i2] = Math.min(Math.max(d, dArr[i2]), dArr2[i3]);
        }
        return dArr3;
    }

    protected static double[] normalize(double[] dArr, double[] dArr2) {
        double[] dArr3 = new double[dArr.length];
        int i = 0;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            int i3 = i + 1;
            double d = dArr2[i];
            i += 2;
            dArr3[i2] = Math.min(Math.max(0.0d, (dArr[i2] - d) / (Math.max(Double.MIN_VALUE + d, dArr2[i3]) - d)), 1.0d);
        }
        return dArr3;
    }
}
