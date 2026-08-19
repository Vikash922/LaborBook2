package com.itextpdf.layout.hyphenation;

/* JADX INFO: loaded from: classes6.dex */
public class CharVector {
    private static final int DEFAULT_BLOCK_SIZE = 2048;
    private char[] array;
    private int blockSize;

    /* JADX INFO: renamed from: n */
    private int f3209n;

    public CharVector() {
        this(2048);
    }

    public CharVector(int i) {
        if (i > 0) {
            this.blockSize = i;
        } else {
            this.blockSize = 2048;
        }
        this.array = new char[this.blockSize];
        this.f3209n = 0;
    }

    public CharVector(char[] cArr) {
        this.blockSize = 2048;
        this.array = cArr;
        this.f3209n = cArr.length;
    }

    public CharVector(char[] cArr, int i) {
        if (i > 0) {
            this.blockSize = i;
        } else {
            this.blockSize = 2048;
        }
        this.array = cArr;
        this.f3209n = cArr.length;
    }

    public CharVector(CharVector charVector) {
        this.array = (char[]) charVector.array.clone();
        this.blockSize = charVector.blockSize;
        this.f3209n = charVector.f3209n;
    }

    public void clear() {
        this.f3209n = 0;
    }

    public char[] getArray() {
        return this.array;
    }

    public int length() {
        return this.f3209n;
    }

    public int capacity() {
        return this.array.length;
    }

    public void put(int i, char c) {
        this.array[i] = c;
    }

    public char get(int i) {
        return this.array[i];
    }

    public int alloc(int i) {
        int i2 = this.f3209n;
        char[] cArr = this.array;
        int length = cArr.length;
        if (i2 + i >= length) {
            char[] cArr2 = new char[this.blockSize + length];
            System.arraycopy(cArr, 0, cArr2, 0, length);
            this.array = cArr2;
        }
        this.f3209n += i;
        return i2;
    }

    public void trimToSize() {
        int i = this.f3209n;
        char[] cArr = this.array;
        if (i < cArr.length) {
            char[] cArr2 = new char[i];
            System.arraycopy(cArr, 0, cArr2, 0, i);
            this.array = cArr2;
        }
    }
}
