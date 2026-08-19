package com.itextpdf.p017io.source;

/* JADX INFO: loaded from: classes6.dex */
public class ByteArrayOutputStream extends java.io.ByteArrayOutputStream {
    public ByteArrayOutputStream() {
    }

    public ByteArrayOutputStream(int i) {
        super(i);
    }

    public ByteArrayOutputStream assignBytes(byte[] bArr, int i) {
        this.buf = bArr;
        this.count = i;
        return this;
    }

    public ByteArrayOutputStream assignBytes(byte[] bArr) {
        this.buf = bArr;
        this.count = bArr.length;
        return this;
    }
}
