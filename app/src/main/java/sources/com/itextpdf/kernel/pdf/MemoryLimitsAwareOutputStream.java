package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.MemoryLimitsAwareException;
import java.io.ByteArrayOutputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
class MemoryLimitsAwareOutputStream extends ByteArrayOutputStream {
    private static final int DEFAULT_MAX_STREAM_SIZE = 2147483639;
    private int maxStreamSize;

    public MemoryLimitsAwareOutputStream() {
        this.maxStreamSize = DEFAULT_MAX_STREAM_SIZE;
    }

    public MemoryLimitsAwareOutputStream(int i) {
        super(i);
        this.maxStreamSize = DEFAULT_MAX_STREAM_SIZE;
    }

    public long getMaxStreamSize() {
        return this.maxStreamSize;
    }

    public MemoryLimitsAwareOutputStream setMaxStreamSize(int i) {
        this.maxStreamSize = i;
        return this;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) {
        if (i >= 0) {
            if (i <= bArr.length && i2 >= 0 && (i + i2) - bArr.length <= 0) {
                int i3 = this.count + i2;
                if (i3 < 0) {
                    throw new MemoryLimitsAwareException(KernelExceptionMessageConstant.f2917xce1a18a0);
                }
                if (i3 > this.maxStreamSize) {
                    throw new MemoryLimitsAwareException(KernelExceptionMessageConstant.f2916x3e8b5f7f);
                }
                int length = this.buf.length << 1;
                if (length >= 0 && length - i3 >= 0) {
                    i3 = length;
                }
                int i4 = this.maxStreamSize;
                if (i3 - i4 > 0) {
                    this.buf = Arrays.copyOf(this.buf, i4);
                }
                super.write(bArr, i, i2);
            }
        }
        throw new IndexOutOfBoundsException();
    }
}
