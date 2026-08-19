package com.itextpdf.kernel.pdf.function;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;

/* JADX INFO: loaded from: classes6.dex */
public final class BaseInputOutPutConvertors {

    @FunctionalInterface
    public interface IInputConversionFunction {
        double[] convert(byte[] bArr, int i, int i2);
    }

    @FunctionalInterface
    public interface IOutputConversionFunction {
        byte[] convert(double[] dArr);
    }

    private BaseInputOutPutConvertors() {
    }

    public static IInputConversionFunction getInputConvertor(int i, double d) {
        return getByteBasedInputConvertor(i, (d * (1 << (i * 8))) - 1.0d);
    }

    public static IOutputConversionFunction getOutputConvertor(int i, double d) {
        return getByteBasedOutputConvertor(i, (d * (1 << (i * 8))) - 1.0d);
    }

    private static IInputConversionFunction getByteBasedInputConvertor(final int i, final double d) {
        return new IInputConversionFunction() { // from class: com.itextpdf.kernel.pdf.function.BaseInputOutPutConvertors$$ExternalSyntheticLambda1
            @Override // com.itextpdf.kernel.pdf.function.BaseInputOutPutConvertors.IInputConversionFunction
            public final double[] convert(byte[] bArr, int i2, int i3) {
                return BaseInputOutPutConvertors.lambda$getByteBasedInputConvertor$0(i, d, bArr, i2, i3);
            }
        };
    }

    static /* synthetic */ double[] lambda$getByteBasedInputConvertor$0(int i, double d, byte[] bArr, int i2, int i3) {
        int i4 = i2 + i3;
        if (i4 > bArr.length) {
            throw new IllegalArgumentException(KernelExceptionMessageConstant.INVALID_LENGTH);
        }
        if (i3 % i != 0) {
            throw new IllegalArgumentException(MessageFormatUtil.format(KernelExceptionMessageConstant.INVALID_LENGTH_FOR_WORDSIZE, Integer.valueOf(i)));
        }
        double[] dArr = new double[i3 / i];
        int i5 = 0;
        while (i2 < i4) {
            int i6 = 0;
            for (int i7 = 0; i7 < i; i7++) {
                i6 = (i6 << 8) + (bArr[i2 + i7] & 255);
                i2++;
            }
            dArr[i5] = ((double) i6) / d;
            i5++;
        }
        return dArr;
    }

    private static IOutputConversionFunction getByteBasedOutputConvertor(final int i, final double d) {
        return new IOutputConversionFunction() { // from class: com.itextpdf.kernel.pdf.function.BaseInputOutPutConvertors$$ExternalSyntheticLambda0
            @Override // com.itextpdf.kernel.pdf.function.BaseInputOutPutConvertors.IOutputConversionFunction
            public final byte[] convert(double[] dArr) {
                return BaseInputOutPutConvertors.lambda$getByteBasedOutputConvertor$1(i, d, dArr);
            }
        };
    }

    static /* synthetic */ byte[] lambda$getByteBasedOutputConvertor$1(int i, double d, double[] dArr) {
        int length = dArr.length * i;
        byte[] bArr = new byte[length];
        int i2 = 0;
        for (int i3 = 0; i3 < dArr.length && i2 < length; i3++) {
            int i4 = (int) (dArr[i3] * d);
            int i5 = 0;
            while (i5 < i) {
                bArr[i2] = (byte) (i4 >>> (i5 * 8));
                i5++;
                i2++;
            }
        }
        return bArr;
    }
}
