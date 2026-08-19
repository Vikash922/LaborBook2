package com.itextpdf.layout.hyphenation;

/* JADX INFO: loaded from: classes6.dex */
public class ByteVector {
    private static final int DEFAULT_BLOCK_SIZE = 2048;
    private byte[] array;
    private int blockSize;

    /* JADX INFO: renamed from: n */
    private int f3208n;

    public ByteVector() {
        this(2048);
    }

    public ByteVector(int i) {
        if (i > 0) {
            this.blockSize = i;
        } else {
            this.blockSize = 2048;
        }
        this.array = new byte[this.blockSize];
        this.f3208n = 0;
    }

    public ByteVector(byte[] bArr) {
        this.blockSize = 2048;
        this.array = bArr;
        this.f3208n = 0;
    }

    public ByteVector(byte[] bArr, int i) {
        if (i > 0) {
            this.blockSize = i;
        } else {
            this.blockSize = 2048;
        }
        this.array = bArr;
        this.f3208n = 0;
    }

    public byte[] getArray() {
        return this.array;
    }

    public int length() {
        return this.f3208n;
    }

    public int capacity() {
        return this.array.length;
    }

    public void put(int i, byte b) {
        this.array[i] = b;
    }

    public byte get(int i) {
        return this.array[i];
    }

    public int alloc(int i) {
        int i2 = this.f3208n;
        byte[] bArr = this.array;
        int length = bArr.length;
        if (i2 + i >= length) {
            byte[] bArr2 = new byte[this.blockSize + length];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            this.array = bArr2;
        }
        this.f3208n += i;
        return i2;
    }

    public void trimToSize() {
        int i = this.f3208n;
        byte[] bArr = this.array;
        if (i < bArr.length) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, i);
            this.array = bArr2;
        }
    }
}
