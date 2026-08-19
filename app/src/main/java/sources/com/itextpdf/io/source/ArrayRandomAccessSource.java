package com.itextpdf.io.source;

import com.itextpdf.io.exceptions.IoExceptionMessage;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
class ArrayRandomAccessSource implements IRandomAccessSource {
    private byte[] array;

    public ArrayRandomAccessSource(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("Passed byte array can not be null.");
        }
        this.array = bArr;
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public int get(long j) {
        byte[] bArr = this.array;
        if (bArr == null) {
            throw new IllegalStateException(IoExceptionMessage.ALREADY_CLOSED);
        }
        if (j >= bArr.length) {
            return -1;
        }
        return bArr[(int) j] & 255;
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public int get(long j, byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.array;
        if (bArr2 == null) {
            throw new IllegalStateException(IoExceptionMessage.ALREADY_CLOSED);
        }
        if (j >= bArr2.length) {
            return -1;
        }
        if (((long) i2) + j > bArr2.length) {
            i2 = (int) (((long) bArr2.length) - j);
        }
        System.arraycopy(bArr2, (int) j, bArr, i, i2);
        return i2;
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public long length() {
        if (this.array == null) {
            throw new IllegalStateException(IoExceptionMessage.ALREADY_CLOSED);
        }
        return r0.length;
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public void close() throws IOException {
        this.array = null;
    }
}
