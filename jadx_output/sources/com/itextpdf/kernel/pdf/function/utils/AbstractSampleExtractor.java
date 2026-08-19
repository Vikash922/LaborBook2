package com.itextpdf.kernel.pdf.function.utils;

import com.google.common.base.Ascii;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractSampleExtractor {
    public abstract long extract(byte[] bArr, int i);

    public static AbstractSampleExtractor createExtractor(int i) {
        if (i == 1 || i == 2 || i == 4) {
            return new SampleBitsExtractor(i);
        }
        if (i != 8) {
            if (i == 12) {
                return new Sample12BitsExtractor();
            }
            if (i != 16 && i != 24 && i != 32) {
                throw new IllegalArgumentException(KernelExceptionMessageConstant.PDF_TYPE0_FUNCTION_BITS_PER_SAMPLE_INVALID_VALUE);
            }
        }
        return new SampleBytesExtractor(i);
    }

    private static class SampleBitsExtractor extends AbstractSampleExtractor {
        private final int bitsPerSample;
        private final byte mask;

        public SampleBitsExtractor(int i) {
            this.bitsPerSample = i;
            this.mask = (byte) ((1 << i) - 1);
        }

        @Override // com.itextpdf.kernel.pdf.function.utils.AbstractSampleExtractor
        public long extract(byte[] bArr, int i) {
            int i2 = i * this.bitsPerSample;
            return (bArr[i2 >> 3] >> ((8 - (i2 & 7)) - r0)) & this.mask;
        }
    }

    private static final class SampleBytesExtractor extends AbstractSampleExtractor {
        private final int bytesPerSample;

        public SampleBytesExtractor(int i) {
            this.bytesPerSample = i >> 3;
        }

        @Override // com.itextpdf.kernel.pdf.function.utils.AbstractSampleExtractor
        public long extract(byte[] bArr, int i) {
            int i2 = i * this.bytesPerSample;
            int i3 = i2 + 1;
            long j = bArr[i2] & 255;
            int i4 = 1;
            while (i4 < this.bytesPerSample) {
                j = (j << 8) | ((long) (bArr[i3] & 255));
                i4++;
                i3++;
            }
            return j;
        }
    }

    private static class Sample12BitsExtractor extends AbstractSampleExtractor {
        private Sample12BitsExtractor() {
        }

        @Override // com.itextpdf.kernel.pdf.function.utils.AbstractSampleExtractor
        public long extract(byte[] bArr, int i) {
            int i2;
            int i3;
            int i4 = i * 12;
            int i5 = i4 >> 3;
            if ((i4 & 4) == 0) {
                i2 = (bArr[i5] & 255) << 4;
                i3 = (bArr[i5 + 1] & 240) >> 4;
            } else {
                i2 = (bArr[i5] & Ascii.f393SI) << 8;
                i3 = bArr[i5 + 1] & 255;
            }
            return i3 | i2;
        }
    }
}
