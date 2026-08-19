package com.itextpdf.kernel.pdf.function;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import com.itextpdf.kernel.pdf.function.utils.AbstractSampleExtractor;
import java.util.Arrays;
import java.util.function.IntBinaryOperator;

/* JADX INFO: loaded from: classes6.dex */
public class PdfType0Function extends AbstractPdfFunction<PdfStream> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private int bitsPerSample;
    private double[] decode;
    private long decodeLimit;
    private double[][] derivatives;
    private int[] encode;
    private String errorMessage;
    private boolean isValidated;
    private int order;
    private int outputDimension;
    private AbstractSampleExtractor sampleExtractor;
    private byte[] samples;
    private int[] size;

    private static double calculateCubicInterpolationFormula(double d, double d2, double d3, double d4, double d5) {
        return (0.5d * d * ((d4 - d2) + ((((((2.0d * d2) - (5.0d * d3)) + (4.0d * d4)) - d5) + (d * ((((d3 - d4) * 3.0d) + d5) - d2))) * d))) + d3;
    }

    private static double calculateCubicSplineFormula(double d, double d2, double d3, double d4, double d5) {
        double d6 = 1.0d - d;
        return ((d3 * d) + (d2 * d6)) - (((d * d6) * ((d4 * (d6 + 1.0d)) + (d5 * (d + 1.0d)))) / 6.0d);
    }

    private static double calculateLinearInterpolationFormula(double d, double d2, double d3) {
        return ((1.0d - d) * d2) + (d * d3);
    }

    static double encode(double d, int i, int i2) {
        return ((double) i) + (d * ((double) (i2 - i)));
    }

    static /* synthetic */ int lambda$isInvalid$0(int i, int i2) {
        return i * i2;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfType0Function(PdfStream pdfStream) {
        super(pdfStream);
        this.sampleExtractor = null;
        this.isValidated = false;
        this.errorMessage = null;
        this.derivatives = null;
        PdfArray asArray = pdfStream.getAsArray(PdfName.Size);
        if (super.getDomain() == null || super.getRange() == null || asArray == null) {
            setErrorMessage(KernelExceptionMessageConstant.PDF_TYPE0_FUNCTION_NOT_NULL_PARAMETERS);
            return;
        }
        this.size = asArray.toIntArray();
        PdfNumber asNumber = pdfStream.getAsNumber(PdfName.Order);
        this.order = asNumber == null ? 1 : asNumber.intValue();
        initializeEncoding(pdfStream.getAsArray(PdfName.Encode));
        PdfArray asArray2 = pdfStream.getAsArray(PdfName.Decode);
        if (asArray2 == null) {
            this.decode = super.getRange();
        } else {
            this.decode = asArray2.toDoubleArray();
        }
        this.outputDimension = super.getRange().length >> 1;
        PdfNumber asNumber2 = pdfStream.getAsNumber(PdfName.BitsPerSample);
        int iIntValue = asNumber2 != null ? asNumber2.intValue() : 0;
        this.bitsPerSample = iIntValue;
        this.decodeLimit = (1 << iIntValue) - 1;
        this.samples = pdfStream.getBytes(true);
        try {
            this.sampleExtractor = AbstractSampleExtractor.createExtractor(this.bitsPerSample);
        } catch (IllegalArgumentException e) {
            setErrorMessage(e.getMessage());
        }
    }

    public PdfType0Function(double[] dArr, int[] iArr, double[] dArr2, int i, int i2, byte[] bArr) {
        this(dArr, iArr, dArr2, i, null, null, i2, bArr);
    }

    public PdfType0Function(double[] dArr, int[] iArr, double[] dArr2, int i, int[] iArr2, double[] dArr3, int i2, byte[] bArr) {
        super(new PdfStream(bArr), 0, dArr, dArr2);
        this.sampleExtractor = null;
        this.isValidated = false;
        this.errorMessage = null;
        this.derivatives = null;
        if (iArr != null) {
            this.size = Arrays.copyOf(iArr, iArr.length);
        }
        if (super.getDomain() == null || super.getRange() == null || iArr == null) {
            setErrorMessage(KernelExceptionMessageConstant.PDF_TYPE0_FUNCTION_NOT_NULL_PARAMETERS);
            return;
        }
        this.size = Arrays.copyOf(iArr, iArr.length);
        ((PdfStream) super.getPdfObject()).put(PdfName.Size, new PdfArray(iArr));
        this.order = i;
        ((PdfStream) super.getPdfObject()).put(PdfName.Order, new PdfNumber(i));
        initializeEncoding(iArr2);
        ((PdfStream) super.getPdfObject()).put(PdfName.Encode, new PdfArray(this.encode));
        if (dArr3 == null) {
            this.decode = Arrays.copyOf(dArr2, dArr2.length);
        } else {
            this.decode = Arrays.copyOf(dArr3, dArr3.length);
        }
        ((PdfStream) super.getPdfObject()).put(PdfName.Decode, new PdfArray(this.decode));
        this.bitsPerSample = i2;
        ((PdfStream) super.getPdfObject()).put(PdfName.BitsPerSample, new PdfNumber(i2));
        this.outputDimension = super.getRange().length >> 1;
        this.decodeLimit = (1 << i2) - 1;
        this.samples = Arrays.copyOf(bArr, bArr.length);
        try {
            this.sampleExtractor = AbstractSampleExtractor.createExtractor(i2);
        } catch (IllegalArgumentException e) {
            setErrorMessage(e.getMessage());
        }
        if (isInvalid()) {
            throw new IllegalArgumentException(this.errorMessage);
        }
    }

    public int getOrder() {
        return this.order;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setOrder(int i) {
        this.order = i;
        ((PdfStream) getPdfObject()).put(PdfName.Order, new PdfNumber(i));
        this.isValidated = false;
    }

    public int[] getSize() {
        return this.size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setSize(int[] iArr) {
        this.size = iArr;
        ((PdfStream) getPdfObject()).put(PdfName.Size, new PdfArray(iArr));
        this.isValidated = false;
    }

    public int[] getEncode() {
        return this.encode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setEncode(int[] iArr) {
        initializeEncoding(iArr);
        ((PdfStream) getPdfObject()).put(PdfName.Encode, new PdfArray(iArr));
        this.isValidated = false;
    }

    public double[] getDecode() {
        return this.decode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setDecode(double[] dArr) {
        this.decode = dArr;
        ((PdfStream) getPdfObject()).put(PdfName.Decode, new PdfArray(dArr));
        this.isValidated = false;
    }

    @Override // com.itextpdf.kernel.pdf.function.AbstractPdfFunction, com.itextpdf.kernel.pdf.function.IPdfFunction
    public boolean checkCompatibilityWithColorSpace(PdfColorSpace pdfColorSpace) {
        return getInputSize() == 1 && getOutputSize() == pdfColorSpace.getNumberOfComponents();
    }

    @Override // com.itextpdf.kernel.pdf.function.AbstractPdfFunction, com.itextpdf.kernel.pdf.function.IPdfFunction
    public void setDomain(double[] dArr) {
        super.setDomain(dArr);
        this.isValidated = false;
    }

    @Override // com.itextpdf.kernel.pdf.function.AbstractPdfFunction, com.itextpdf.kernel.pdf.function.IPdfFunction
    public void setRange(double[] dArr) {
        super.setRange(dArr);
        this.isValidated = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    @Override // com.itextpdf.kernel.pdf.function.IPdfFunction
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double[] calculate(double[] r6) {
        /*
            r5 = this;
            boolean r0 = r5.isInvalid()
            if (r0 != 0) goto L3f
            double[] r0 = r5.getDomain()
            double[] r6 = normalize(r6, r0)
            int[] r0 = r5.encode
            int[] r0 = getFloor(r6, r0)
            int r1 = r5.order
            r2 = 3
            if (r1 != r2) goto L32
            int[] r1 = r5.size
            int r1 = r1.length
            r2 = 1
            if (r1 != r2) goto L32
            int[] r1 = r5.encode
            r3 = r1[r2]
            r4 = 0
            r1 = r1[r4]
            int r3 = r3 - r1
            if (r3 <= r2) goto L32
            r1 = r6[r4]
            r6 = r0[r4]
            double[] r6 = r5.interpolateByCubicSpline(r1, r6)
            goto L36
        L32:
            double[] r6 = r5.interpolate(r6, r0)
        L36:
            double[] r0 = r5.getRange()
            double[] r6 = clip(r6, r0)
            return r6
        L3f:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r0 = r5.errorMessage
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.function.PdfType0Function.calculate(double[]):double[]");
    }

    static int[] getFloor(double[] dArr, int[] iArr) {
        int[] iArr2 = new int[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            int i2 = i << 1;
            iArr2[i] = Math.min(Math.max(0, iArr[r3] - 1), (int) encode(dArr[i], iArr[i2], iArr[i2 + 1]));
        }
        return iArr2;
    }

    static int getSamplePosition(int[] iArr, int[] iArr2) {
        int i = iArr[iArr2.length - 1];
        for (int length = iArr2.length - 2; length >= 0; length--) {
            i = iArr[length] + (iArr2[length] * i);
        }
        return i;
    }

    static double[] getFloorWeights(double[] dArr, int[] iArr) {
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            int i2 = i * 2;
            dArr2[i] = getFloorWeight(dArr[i], iArr[i2], iArr[i2 + 1]);
        }
        return dArr2;
    }

    static double getFloorWeight(double d, int i, int i2) {
        double dEncode = encode(d, i, i2);
        return dEncode - ((double) Math.min(i2 - 1, (int) dEncode));
    }

    static double[] specialSweepMethod(double[] dArr) {
        int length = dArr.length;
        double[] dArr2 = new double[length + 2];
        dArr2[1] = 4.0d;
        int i = 1;
        while (i < dArr.length) {
            double d = 1.0d / dArr2[i];
            dArr2[0] = d;
            int i2 = i + 1;
            dArr2[i2] = 4.0d - d;
            dArr[i] = dArr[i] - (dArr2[0] * dArr[i - 1]);
            i = i2;
        }
        dArr2[dArr.length] = dArr[dArr.length - 1] / dArr2[dArr.length];
        for (int length2 = dArr.length - 1; length2 > 0; length2--) {
            dArr2[length2] = (dArr[length2 - 1] - dArr2[length2 + 1]) / dArr2[length2];
        }
        dArr2[length + 1] = 0.0d;
        dArr2[0] = 0.0d;
        return dArr2;
    }

    private void initializeEncoding(PdfArray pdfArray) {
        if (pdfArray == null) {
            this.encode = getDefaultEncoding();
            return;
        }
        this.encode = pdfArray.toIntArray();
        for (int i = 0; i < this.size.length; i++) {
            int i2 = i << 1;
            int[] iArr = this.encode;
            iArr[i2] = Math.max(0, iArr[i2]);
            int[] iArr2 = this.encode;
            int i3 = i2 + 1;
            iArr2[i3] = Math.min(this.size[i] - 1, iArr2[i3]);
        }
    }

    private void initializeEncoding(int[] iArr) {
        if (iArr == null) {
            this.encode = getDefaultEncoding();
            return;
        }
        this.encode = new int[iArr.length];
        for (int i = 0; i < this.size.length; i++) {
            int i2 = i << 1;
            this.encode[i2] = Math.max(0, iArr[i2]);
            int i3 = i2 + 1;
            this.encode[i3] = Math.min(this.size[i] - 1, iArr[i3]);
        }
    }

    private int[] getDefaultEncoding() {
        int[] iArr = this.size;
        int[] iArr2 = new int[iArr.length << 1];
        int i = 0;
        for (int i2 : iArr) {
            int i3 = i + 1;
            iArr2[i] = 0;
            i += 2;
            iArr2[i3] = i2 - 1;
        }
        return iArr2;
    }

    private double[] interpolate(double[] dArr, int[] iArr) {
        int samplePosition = getSamplePosition(iArr, this.size);
        double[] floorWeights = getFloorWeights(dArr, this.encode);
        int[] inputDimensionSteps = getInputDimensionSteps();
        double[] dArr2 = new double[this.outputDimension];
        int i = this.order;
        if (i == 1) {
            for (int i2 = 0; i2 < this.outputDimension; i2++) {
                dArr2[i2] = interpolateOrder1(floorWeights, samplePosition, inputDimensionSteps, inputDimensionSteps.length, i2);
            }
            return dArr2;
        }
        if (i == 3) {
            for (int i3 = 0; i3 < this.outputDimension; i3++) {
                dArr2[i3] = interpolateOrder3(floorWeights, iArr, samplePosition, inputDimensionSteps, inputDimensionSteps.length, i3);
            }
            return dArr2;
        }
        throw new PdfException(KernelExceptionMessageConstant.PDF_TYPE0_FUNCTION_INVALID_ORDER);
    }

    private double interpolateOrder1(double[] dArr, int i, int[] iArr, int i2, int i3) {
        if (i2 == 0) {
            return getValue(i3, i);
        }
        int i4 = i2 - 1;
        int i5 = iArr[i4];
        int i6 = i4 << 1;
        double dInterpolateOrder1 = interpolateOrder1(dArr, i, iArr, i4, i3);
        int[] iArr2 = this.encode;
        if (iArr2[i6] == iArr2[i6 + 1]) {
            return dInterpolateOrder1;
        }
        return calculateLinearInterpolationFormula(dArr[i4], dInterpolateOrder1, interpolateOrder1(dArr, i + i5, iArr, i4, i3));
    }

    private double interpolateOrder3(double[] dArr, int[] iArr, int i, int[] iArr2, int i2, int i3) {
        if (i2 == 0) {
            return getValue(i3, i);
        }
        int i4 = i2 - 1;
        int i5 = iArr2[i4];
        int i6 = i4 << 1;
        double dInterpolateOrder3 = interpolateOrder3(dArr, iArr, i, iArr2, i4, i3);
        int[] iArr3 = this.encode;
        int i7 = i6 + 1;
        if (iArr3[i6] == iArr3[i7]) {
            return dInterpolateOrder3;
        }
        int i8 = i + i5;
        double dInterpolateOrder32 = interpolateOrder3(dArr, iArr, i8, iArr2, i4, i3);
        int[] iArr4 = this.encode;
        int i9 = iArr4[i7];
        int i10 = iArr4[i6];
        if (i9 - i10 == 1) {
            return calculateLinearInterpolationFormula(dArr[i4], dInterpolateOrder3, dInterpolateOrder32);
        }
        double dInterpolateOrder33 = iArr[i4] > i10 ? interpolateOrder3(dArr, iArr, i - i5, iArr2, i4, i3) : (dInterpolateOrder3 * 2.0d) - dInterpolateOrder32;
        int i11 = iArr[i4];
        int[] iArr5 = this.encode;
        return calculateCubicInterpolationFormula(dArr[i4], dInterpolateOrder33, dInterpolateOrder3, dInterpolateOrder32, i11 < (iArr5[i7] - iArr5[i6]) - 1 ? interpolateOrder3(dArr, iArr, i8 + i5, iArr2, i4, i3) : (2.0d * dInterpolateOrder32) - dInterpolateOrder3);
    }

    private double[] interpolateByCubicSpline(double d, int i) {
        if (this.derivatives == null) {
            calculateSecondDerivatives();
        }
        int[] iArr = this.encode;
        return calculateCubicSplineFormula(getFloorWeight(d, iArr[0], iArr[1]), i);
    }

    private double[] calculateCubicSplineFormula(double d, int i) {
        double[] dArr = new double[this.outputDimension];
        for (int i2 = 0; i2 < this.outputDimension; i2++) {
            double value = getValue(i2, i);
            double value2 = getValue(i2, i + 1);
            double[] dArr2 = this.derivatives[i2];
            int i3 = this.encode[0];
            dArr[i2] = calculateCubicSplineFormula(d, value, value2, dArr2[i - i3], dArr2[(i - i3) + 1]);
        }
        return dArr;
    }

    private void calculateSecondDerivatives() {
        this.derivatives = new double[this.outputDimension][];
        for (int i = 0; i < this.outputDimension; i++) {
            int[] iArr = this.encode;
            int i2 = iArr[1];
            int i3 = iArr[0];
            double[] dArr = new double[(i2 - i3) - 1];
            while (true) {
                int[] iArr2 = this.encode;
                if (i3 < iArr2[1] - 1) {
                    int i4 = i3 + 1;
                    dArr[i3 - iArr2[0]] = ((getValue(i, i3) - (getValue(i, i4) * 2.0d)) + getValue(i, i3 + 2)) * 6.0d;
                    i3 = i4;
                }
            }
            this.derivatives[i] = specialSweepMethod(dArr);
        }
    }

    private double getValue(int i, int i2) {
        return decode(this.sampleExtractor.extract(this.samples, (this.outputDimension * i2) + i), i);
    }

    private int[] getInputDimensionSteps() {
        int length = this.size.length;
        int[] iArr = new int[length];
        iArr[0] = 1;
        for (int i = 1; i < length; i++) {
            int i2 = i - 1;
            iArr[i] = iArr[i2] * this.size[i2];
        }
        return iArr;
    }

    private double decode(long j, int i) {
        int i2 = i << 1;
        double[] dArr = this.decode;
        double d = dArr[i2];
        return d + (((dArr[i2 + 1] - d) * j) / this.decodeLimit);
    }

    private void setErrorMessage(String str) {
        this.errorMessage = str;
        this.isValidated = true;
    }

    private boolean isInvalid() {
        if (this.isValidated) {
            return this.errorMessage != null;
        }
        if (super.getDomain() == null || super.getRange() == null || this.size == null) {
            setErrorMessage(KernelExceptionMessageConstant.PDF_TYPE0_FUNCTION_NOT_NULL_PARAMETERS);
            return true;
        }
        int i = this.order;
        if (i != 1 && i != 3) {
            setErrorMessage(KernelExceptionMessageConstant.PDF_TYPE0_FUNCTION_INVALID_ORDER);
            return true;
        }
        if (getDomain().length == 0 || getDomain().length % 2 == 1) {
            setErrorMessage(KernelExceptionMessageConstant.PDF_TYPE0_FUNCTION_INVALID_DOMAIN);
            return true;
        }
        if (getRange().length == 0 || getRange().length % 2 == 1) {
            setErrorMessage("Invalid encode array for PDF function of type 0");
            return true;
        }
        int length = getDomain().length >> 1;
        int[] iArr = this.size;
        if (iArr == null || iArr.length != length) {
            setErrorMessage(KernelExceptionMessageConstant.PDF_TYPE0_FUNCTION_INVALID_SIZE);
            return true;
        }
        for (int i2 : iArr) {
            if (i2 <= 0) {
                setErrorMessage(KernelExceptionMessageConstant.PDF_TYPE0_FUNCTION_INVALID_SIZE);
                return true;
            }
        }
        if (this.encode.length != getDomain().length) {
            setErrorMessage("Invalid encode array for PDF function of type 0");
            return true;
        }
        int i3 = 0;
        while (true) {
            int[] iArr2 = this.encode;
            if (i3 < iArr2.length) {
                if (iArr2[i3 + 1] < iArr2[i3]) {
                    setErrorMessage("Invalid encode array for PDF function of type 0");
                    return true;
                }
                i3 += 2;
            } else {
                if (this.decode.length != getRange().length) {
                    setErrorMessage(KernelExceptionMessageConstant.PDF_TYPE0_FUNCTION_INVALID_DECODE);
                    return true;
                }
                int iReduce = (Arrays.stream(this.size).reduce(this.outputDimension * this.bitsPerSample, new IntBinaryOperator() { // from class: com.itextpdf.kernel.pdf.function.PdfType0Function$$ExternalSyntheticLambda0
                    @Override // java.util.function.IntBinaryOperator
                    public final int applyAsInt(int i4, int i5) {
                        return PdfType0Function.lambda$isInvalid$0(i4, i5);
                    }
                }) + 7) / 8;
                byte[] bArr = this.samples;
                if (bArr == null || bArr.length < iReduce) {
                    setErrorMessage(KernelExceptionMessageConstant.PDF_TYPE0_FUNCTION_INVALID_SAMPLES);
                    return true;
                }
                this.isValidated = true;
                return false;
            }
        }
    }
}
